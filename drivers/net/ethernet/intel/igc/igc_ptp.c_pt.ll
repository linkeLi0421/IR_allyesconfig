; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/intel/igc/igc_ptp.c_pt.bc'
source_filename = "../drivers/net/ethernet/intel/igc/igc_ptp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon.22 }
%union.anon.22 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.igc_adapter = type { ptr, %struct.ethtool_eee, i16, i32, i32, i32, ptr, i16, i32, i32, [4 x ptr], i32, [4 x ptr], %struct.timer_list, %struct.timer_list, %struct.timer_list, i32, i32, i16, i16, i8, ptr, i32, i32, %struct.work_struct, %struct.work_struct, %struct.work_struct, i8, i8, i32, i32, i32, i64, i64, ptr, %struct.spinlock, %struct.rtnl_link_stats64, %struct.igc_hw, %struct.igc_hw_stats, [8 x ptr], i32, i32, i16, i16, i32, i32, i32, i32, i32, %struct.mutex, %struct.list_head, i32, [128 x i8], i32, %struct.igc_info, i32, ptr, %struct.ptp_clock_info, %struct.work_struct, ptr, %struct.hwtstamp_config, i32, i32, %struct.spinlock, %struct.cyclecounter, %struct.timecounter, %struct.timespec64, i64, %struct.system_time_snapshot, [32 x i8], ptr, i8, [4 x %struct.ptp_pin_desc], [2 x %struct.anon.131] }
%struct.ethtool_eee = type { i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.rtnl_link_stats64 = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.igc_hw = type { ptr, ptr, i32, %struct.igc_mac_info, %struct.igc_fc_info, %struct.igc_nvm_info, %struct.igc_phy_info, %struct.igc_bus_info, %union.anon.127, i16, i16, i16, i16, i8 }
%struct.igc_mac_info = type { %struct.igc_mac_operations, [6 x i8], [6 x i8], i32, i32, i16, i16, [128 x i32], i16, i8, i8, i8, i8, i8, i8 }
%struct.igc_mac_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.igc_fc_info = type { i32, i32, i16, i8, i8, i32, i32 }
%struct.igc_nvm_info = type { %struct.igc_nvm_operations, i32, i16, i16, i16, i16, i16 }
%struct.igc_nvm_operations = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.igc_phy_info = type { %struct.igc_phy_operations, i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8 }
%struct.igc_phy_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.igc_bus_info = type { i16, i16 }
%union.anon.127 = type { %struct.igc_dev_spec_base }
%struct.igc_dev_spec_base = type { i8, i8 }
%struct.igc_hw_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.24 }
%union.anon.24 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.igc_info = type { ptr, ptr, ptr, ptr }
%struct.ptp_clock_info = type { ptr, [32 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.hwtstamp_config = type { i32, i32, i32 }
%struct.spinlock = type { %union.anon.23 }
%union.anon.23 = type { %struct.raw_spinlock }
%struct.cyclecounter = type { ptr, i64, i32, i32 }
%struct.timecounter = type { ptr, i64, i64, i64, i64 }
%struct.timespec64 = type { i64, i32 }
%struct.system_time_snapshot = type { i64, i64, i64, i32, i32, i8 }
%struct.ptp_pin_desc = type { [64 x i8], i32, i32, i32, [5 x i32] }
%struct.anon.131 = type { %struct.timespec64, %struct.timespec64 }
%struct.ifreq = type { %union.anon.19, %union.anon.20 }
%union.anon.19 = type { [16 x i8] }
%union.anon.20 = type { %struct.ifmap }
%struct.ifmap = type { i32, i32, i16, i8, i8, i8 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.116, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.116 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
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
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.126, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.126 = type { ptr }
%struct.ptp_system_timestamp = type { %struct.timespec64, %struct.timespec64 }
%struct.ptp_clock_request = type { i32, %union.anon.128 }
%union.anon.128 = type { %struct.ptp_perout_request }
%struct.ptp_perout_request = type { %union.anon.129, %struct.ptp_clock_time, i32, i32, %union.anon.130 }
%union.anon.129 = type { %struct.ptp_clock_time }
%struct.ptp_clock_time = type { i64, i32, i32 }
%union.anon.130 = type { %struct.ptp_clock_time }
%struct.ptp_extts_request = type { i32, i32, [2 x i32] }
%struct.skb_shared_hwtstamps = type { i64 }

@igc_ptp_rx_pktstamp.__print_once = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Imprecise timestamp\0A\00", [43 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"SDP%d\00", [26 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%pm\00", [28 x i8] zeroinitializer }, align 32
@igc_ptp_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&adapter->tmreg_lock\00", [43 x i8] zeroinitializer }, align 32
@igc_ptp_init.__key.5 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"(work_completion)(&adapter->ptp_tx_work)\00", [55 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ptp_clock_register failed\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"PHC added\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"PHC removed\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Tx timestamp timeout\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@igc_pin_extts.igc_aux0_sel_sdp = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 0, i32 1, i32 2, i32 3], [16 x i8] zeroinitializer }, align 32
@igc_pin_extts.igc_aux1_sel_sdp = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 0, i32 8, i32 16, i32 24], [16 x i8] zeroinitializer }, align 32
@igc_pin_extts.igc_ts_sdp_en = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 256, i32 2048, i32 16384, i32 131072], [16 x i8] zeroinitializer }, align 32
@igc_pin_direction.mask = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 4194304, i32 8388608, i32 1024, i32 2048], [16 x i8] zeroinitializer }, align 32
@igc_pin_perout.igc_aux0_sel_sdp = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 0, i32 1, i32 2, i32 3], [16 x i8] zeroinitializer }, align 32
@igc_pin_perout.igc_aux1_sel_sdp = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 0, i32 8, i32 16, i32 24], [16 x i8] zeroinitializer }, align 32
@igc_pin_perout.igc_ts_sdp_en = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 256, i32 2048, i32 16384, i32 131072], [16 x i8] zeroinitializer }, align 32
@igc_pin_perout.igc_ts_sdp_sel_tt0 = internal constant { [4 x i32], [16 x i8] } zeroinitializer, align 32
@igc_pin_perout.igc_ts_sdp_sel_tt1 = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 64, i32 512, i32 4096, i32 32768], [16 x i8] zeroinitializer }, align 32
@igc_pin_perout.igc_ts_sdp_sel_fc0 = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 128, i32 1024, i32 8192, i32 65536], [16 x i8] zeroinitializer }, align 32
@igc_pin_perout.igc_ts_sdp_sel_fc1 = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 192, i32 1536, i32 12288, i32 98304], [16 x i8] zeroinitializer }, align 32
@igc_pin_perout.igc_ts_sdp_sel_clr = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 192, i32 1536, i32 12288, i32 98304], [16 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/net/ethernet/intel/igc/igc_ptp.c\00", [55 x i8] zeroinitializer }, align 32
@igc_ptp_tx_work.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@igc_ptp_tx_hwtstamp.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 16, i64 10, i64 100, i64 1000, i64 2500]
@__sancov_gen_cov_switch_values.23 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.24 = internal global [17 x i64] [i64 15, i64 32, i64 0, i64 1, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15]
@__sancov_gen_cov_switch_values.25 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.26 = internal global [5 x i64] [i64 3, i64 64, i64 125000000, i64 250000000, i64 500000000]
@__sancov_gen_cov_switch_values.27 = internal global [6 x i64] [i64 4, i64 16, i64 10, i64 100, i64 1000, i64 2500]
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 484, i32 3 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 928, i32 43 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 932, i32 40 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 957, i32 2 }
@___asan_gen_.46 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 958, i32 2 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 970, i32 22 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 972, i32 23 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 1028, i32 32 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 612, i32 31 }
@___asan_gen_.65 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 156, i32 2 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 212, i32 19 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 215, i32 19 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 218, i32 19 }
@___asan_gen_.76 = private unnamed_addr constant [5 x i8] c"mask\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 131, i32 19 }
@___asan_gen_.79 = private unnamed_addr constant [17 x i8] c"igc_aux0_sel_sdp\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 146, i32 19 }
@___asan_gen_.82 = private unnamed_addr constant [17 x i8] c"igc_aux1_sel_sdp\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 149, i32 19 }
@___asan_gen_.85 = private unnamed_addr constant [14 x i8] c"igc_ts_sdp_en\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 152, i32 19 }
@___asan_gen_.88 = private unnamed_addr constant [19 x i8] c"igc_ts_sdp_sel_tt0\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 155, i32 19 }
@___asan_gen_.91 = private unnamed_addr constant [19 x i8] c"igc_ts_sdp_sel_tt1\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 159, i32 19 }
@___asan_gen_.94 = private unnamed_addr constant [19 x i8] c"igc_ts_sdp_sel_fc0\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 163, i32 19 }
@___asan_gen_.97 = private unnamed_addr constant [19 x i8] c"igc_ts_sdp_sel_fc1\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 167, i32 19 }
@___asan_gen_.100 = private unnamed_addr constant [19 x i8] c"igc_ts_sdp_sel_clr\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 171, i32 19 }
@___asan_gen_.103 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.104 = private constant [44 x i8] c"../drivers/net/ethernet/intel/igc/igc_ptp.c\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 854, i32 9 }
@llvm.compiler.used = appending global [26 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @igc_ptp_init.__key, ptr @.str.4, ptr @igc_ptp_init.__key.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.13, ptr @igc_pin_extts.igc_aux0_sel_sdp, ptr @igc_pin_extts.igc_aux1_sel_sdp, ptr @igc_pin_extts.igc_ts_sdp_en, ptr @igc_pin_direction.mask, ptr @igc_pin_perout.igc_aux0_sel_sdp, ptr @igc_pin_perout.igc_aux1_sel_sdp, ptr @igc_pin_perout.igc_ts_sdp_en, ptr @igc_pin_perout.igc_ts_sdp_sel_tt0, ptr @igc_pin_perout.igc_ts_sdp_sel_tt1, ptr @igc_pin_perout.igc_ts_sdp_sel_fc0, ptr @igc_pin_perout.igc_ts_sdp_sel_fc1, ptr @igc_pin_perout.igc_ts_sdp_sel_clr, ptr @.str.14], section "llvm.metadata"
@0 = internal global [26 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igc_ptp_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igc_ptp_init.__key.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igc_pin_extts.igc_aux0_sel_sdp to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igc_pin_extts.igc_aux1_sel_sdp to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igc_pin_extts.igc_ts_sdp_en to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igc_pin_direction.mask to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igc_pin_perout.igc_aux0_sel_sdp to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igc_pin_perout.igc_aux1_sel_sdp to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igc_pin_perout.igc_ts_sdp_en to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igc_pin_perout.igc_ts_sdp_sel_tt0 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igc_pin_perout.igc_ts_sdp_sel_tt1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igc_pin_perout.igc_ts_sdp_sel_fc0 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igc_pin_perout.igc_ts_sdp_sel_fc1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igc_pin_perout.igc_ts_sdp_sel_clr to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @igc_ptp_read(ptr noundef %adapter, ptr nocapture noundef writeonly %ts) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr inbounds %struct.igc_adapter, ptr %adapter, i32 0, i32 37
  %call = tail call i32 @igc_rd32(ptr noundef %hw1, i32 noundef 46592) #9
  %call2 = tail call i32 @igc_rd32(ptr noundef %hw1, i32 noundef 46596) #9
  %conv = zext i32 %call2 to i64
  %0 = ptrtoint ptr %ts to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 %conv, ptr %ts, align 8
  %tv_nsec = getelementptr inbounds %struct.timespec64, ptr %ts, i32 0, i32 1
  %1 = ptrtoint ptr %tv_nsec to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %call, ptr %tv_nsec, align 8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igc_rd32(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @igc_ptp_rx_pktstamp(ptr nocapture noundef readonly %adapter, ptr nocapture noundef readonly %buf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr i32, ptr %buf, i32 2
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %arrayidx1 = getelementptr i32, ptr %buf, i32 3
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx1, align 4
  %link_speed = getelementptr inbounds %struct.igc_adapter, ptr %adapter, i32 0, i32 18
  %4 = ptrtoint ptr %link_speed to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %link_speed, align 8
  %6 = zext i16 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i16 %5, label %sw.default [
    i16 10, label %entry.sw.epilog_crit_edge
    i16 100, label %sw.bb3
    i16 1000, label %sw.bb4
    i16 2500, label %sw.bb5
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %.b9 = load i1, ptr @igc_ptp_rx_pktstamp.__print_once, align 1
  br i1 %.b9, label %sw.default.sw.epilog_crit_edge, label %if.then

sw.default.sw.epilog_crit_edge:                   ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then:                                          ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @igc_ptp_rx_pktstamp.__print_once, align 1
  %7 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %adapter, align 8
  tail call void (ptr, ptr, ptr, ...) @netdev_printk(ptr noundef nonnull @.str, ptr noundef %8, ptr noundef nonnull @.str.1) #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then, %sw.default.sw.epilog_crit_edge, %sw.bb5, %sw.bb4, %sw.bb3, %entry.sw.epilog_crit_edge
  %adjust.0 = phi i32 [ 0, %sw.default.sw.epilog_crit_edge ], [ 0, %if.then ], [ 1485, %sw.bb5 ], [ 300, %sw.bb4 ], [ 185, %sw.bb3 ], [ 6450, %entry.sw.epilog_crit_edge ]
  %9 = tail call i32 @llvm.bswap.i32(i32 %3)
  %conv = zext i32 %9 to i64
  %mul.i = mul nuw nsw i64 %conv, 1000000000
  %10 = tail call i32 @llvm.bswap.i32(i32 %1)
  %conv.i = zext i32 %10 to i64
  %add.i = add nuw nsw i64 %mul.i, %conv.i
  %11 = zext i32 %adjust.0 to i64
  %sub = sub nsw i64 %add.i, %11
  ret i64 %sub
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @igc_ptp_tx_hang(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ptp_tx_start = getelementptr inbounds %struct.igc_adapter, ptr %adapter, i32 0, i32 61
  %0 = ptrtoint ptr %ptp_tx_start to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ptp_tx_start, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %state = getelementptr inbounds %struct.igc_adapter, ptr %adapter, i32 0, i32 3
  %3 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %state, align 4
  %5 = and i32 %4, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %add = add i32 %1, 1500
  %sub = sub i32 %add, %2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %if.then2, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %ptp_tx_work = getelementptr inbounds %struct.igc_adapter, ptr %adapter, i32 0, i32 58
  %call3 = tail call zeroext i1 @cancel_work_sync(ptr noundef %ptp_tx_work) #9
  %hw1.i = getelementptr inbounds %struct.igc_adapter, ptr %adapter, i32 0, i32 37
  %ptp_tx_skb.i = getelementptr inbounds %struct.igc_adapter, ptr %adapter, i32 0, i32 59
  %6 = ptrtoint ptr %ptp_tx_skb.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ptp_tx_skb.i, align 4
  tail call void @__dev_kfree_skb_any(ptr noundef %7, i32 noundef 1) #9
  %8 = ptrtoint ptr %ptp_tx_skb.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %ptp_tx_skb.i, align 4
  %tx_hwtstamp_timeouts.i = getelementptr inbounds %struct.igc_adapter, ptr %adapter, i32 0, i32 44
  %9 = ptrtoint ptr %tx_hwtstamp_timeouts.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %tx_hwtstamp_timeouts.i, align 4
  %inc.i = add i32 %10, 1
  store i32 %inc.i, ptr %tx_hwtstamp_timeouts.i, align 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %state, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !85
  tail call void @llvm.prefetch.p0(ptr %state, i32 1, i32 3, i32 1) #9
  %11 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %state, ptr %state, i32 8, ptr elementtype(i32) %state) #9, !srcloc !86
  %call.i = tail call i32 @igc_rd32(ptr noundef %hw1.i, i32 noundef 46620) #9
  %12 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %adapter, align 8
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %13, ptr noundef nonnull @.str.10) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then2, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @igc_ptp_set_ts_config(ptr noundef %netdev, ptr nocapture noundef readonly %ifr) local_unnamed_addr #0 align 64 {
entry:
  %config = alloca %struct.hwtstamp_config, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %config) #9
  %0 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %config, align 4, !annotation !87
  %1 = getelementptr inbounds %struct.hwtstamp_config, ptr %config, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !87
  %3 = getelementptr inbounds %struct.hwtstamp_config, ptr %config, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4, !annotation !87
  %ifr_ifru = getelementptr inbounds %struct.ifreq, ptr %ifr, i32 0, i32 1
  %5 = ptrtoint ptr %ifr_ifru to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ifr_ifru, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.13, i32 noundef 156) #9
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i, label %entry.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.then11.i.i_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %7 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %6, i32 12, i32 -1226833920) #13, !srcloc !88
  %asmresult.i.i = extractvalue { i32, i32 } %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !89

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %config, i32 noundef 12) #9
  %8 = call i32 @llvm.read_register.i32(metadata !75) #9
  %and.i.i.i.i.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 4
  %10 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #7, !srcloc !90
  %and.i.i.i.i = and i32 %10, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #9, !srcloc !91
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !92
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %config, ptr noundef %6, i32 noundef 12) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %10) #9, !srcloc !91
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !92
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !89

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %entry.if.then11.i.i_crit_edge
  %res.03.i.i = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 12, %entry.if.then11.i.i_crit_edge ], [ 12, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 12, %res.03.i.i
  %add.ptr.i.i = getelementptr i8, ptr %config, i32 %sub.i.i
  %11 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.03.i.i)
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  %call2 = call fastcc i32 @igc_ptp_set_timestamp_mode(ptr noundef %add.ptr.i, ptr noundef nonnull %config)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.then.i17, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i17:                                      ; preds = %if.end
  %tstamp_config = getelementptr i8, ptr %netdev, i32 4768
  %12 = call ptr @memcpy(ptr %tstamp_config, ptr %config, i32 12)
  %13 = ptrtoint ptr %ifr_ifru to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ifr_ifru, align 4
  call void @__might_fault(ptr noundef nonnull @.str.13, i32 noundef 174) #9
  %call.i.i16 = call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i16, label %if.then.i17.cleanup_crit_edge, label %if.end.i.i20

if.then.i17.cleanup_crit_edge:                    ; preds = %if.then.i17
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i.i20:                                     ; preds = %if.then.i17
  %15 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %14, i32 12, i32 -1226833920) #13, !srcloc !93
  %asmresult.i.i18 = extractvalue { i32, i32 } %15, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i18)
  %cmp.i.i19 = icmp eq i32 %asmresult.i.i18, 0
  br i1 %cmp.i.i19, label %copy_to_user.exit, label %if.end.i.i20.cleanup_crit_edge

if.end.i.i20.cleanup_crit_edge:                   ; preds = %if.end.i.i20
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

copy_to_user.exit:                                ; preds = %if.end.i.i20
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i21 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %config, i32 noundef 12) #9
  %call.i1.i.i = call i32 @arm_copy_to_user(ptr noundef %14, ptr noundef nonnull %config, i32 noundef 12) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i.i)
  %tobool8.not = icmp eq i32 %call.i1.i.i, 0
  %spec.select = select i1 %tobool8.not, i32 0, i32 -14
  br label %cleanup

cleanup:                                          ; preds = %copy_to_user.exit, %if.end.i.i20.cleanup_crit_edge, %if.then.i17.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then11.i.i
  %retval.0 = phi i32 [ %call2, %if.end.cleanup_crit_edge ], [ -14, %if.then11.i.i ], [ -14, %if.then.i17.cleanup_crit_edge ], [ -14, %if.end.i.i20.cleanup_crit_edge ], [ %spec.select, %copy_to_user.exit ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %config) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @igc_ptp_set_timestamp_mode(ptr noundef %adapter, ptr nocapture noundef %config) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_type = getelementptr inbounds %struct.hwtstamp_config, ptr %config, i32 0, i32 1
  %0 = ptrtoint ptr %tx_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tx_type, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.23)
  switch i32 %1, label %entry.return_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %hw_addr3.i = getelementptr inbounds %struct.igc_adapter, ptr %adapter, i32 0, i32 37, i32 1
  %3 = ptrtoint ptr %hw_addr3.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %hw_addr3.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !94
  tail call void @arm_heavy_mb() #9
  %arrayidx.i = getelementptr i8, ptr %4, i32 46612
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i, i32 0) #9, !srcloc !95
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %hw1.i = getelementptr inbounds %struct.igc_adapter, ptr %adapter, i32 0, i32 37
  %hw_addr3.i12 = getelementptr inbounds %struct.igc_adapter, ptr %adapter, i32 0, i32 37, i32 1
  %5 = ptrtoint ptr %hw_addr3.i12 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %hw_addr3.i12, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !96
  tail call void @arm_heavy_mb() #9
  %arrayidx.i13 = getelementptr i8, ptr %6, i32 46612
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i13, i32 805306368) #9, !srcloc !95
  %call.i = tail call i32 @igc_rd32(ptr noundef %hw1.i, i32 noundef 46616) #9
  %call9.i = tail call i32 @igc_rd32(ptr noundef %hw1.i, i32 noundef 46620) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb1, %sw.bb
  %rx_filter = getelementptr inbounds %struct.hwtstamp_config, ptr %config, i32 0, i32 2
  %7 = ptrtoint ptr %rx_filter to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %rx_filter, align 4
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.24)
  switch i32 %8, label %sw.epilog.return_crit_edge [
    i32 0, label %sw.bb2
    i32 4, label %sw.epilog.sw.bb3_crit_edge
    i32 5, label %sw.epilog.sw.bb3_crit_edge30
    i32 12, label %sw.epilog.sw.bb3_crit_edge31
    i32 9, label %sw.epilog.sw.bb3_crit_edge32
    i32 6, label %sw.epilog.sw.bb3_crit_edge33
    i32 13, label %sw.epilog.sw.bb3_crit_edge34
    i32 10, label %sw.epilog.sw.bb3_crit_edge35
    i32 7, label %sw.epilog.sw.bb3_crit_edge36
    i32 14, label %sw.epilog.sw.bb3_crit_edge37
    i32 11, label %sw.epilog.sw.bb3_crit_edge38
    i32 8, label %sw.epilog.sw.bb3_crit_edge39
    i32 3, label %sw.epilog.sw.bb3_crit_edge40
    i32 15, label %sw.epilog.sw.bb3_crit_edge41
    i32 1, label %sw.epilog.sw.bb3_crit_edge42
  ]

sw.epilog.sw.bb3_crit_edge42:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb3

sw.epilog.sw.bb3_crit_edge41:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb3

sw.epilog.sw.bb3_crit_edge40:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb3

sw.epilog.sw.bb3_crit_edge39:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb3

sw.epilog.sw.bb3_crit_edge38:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb3

sw.epilog.sw.bb3_crit_edge37:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb3

sw.epilog.sw.bb3_crit_edge36:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb3

sw.epilog.sw.bb3_crit_edge35:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb3

sw.epilog.sw.bb3_crit_edge34:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb3

sw.epilog.sw.bb3_crit_edge33:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb3

sw.epilog.sw.bb3_crit_edge32:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb3

sw.epilog.sw.bb3_crit_edge31:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb3

sw.epilog.sw.bb3_crit_edge30:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb3

sw.epilog.sw.bb3_crit_edge:                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb3

sw.epilog.return_crit_edge:                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

sw.bb2:                                           ; preds = %sw.epilog
  %hw1.i14 = getelementptr inbounds %struct.igc_adapter, ptr %adapter, i32 0, i32 37
  %hw_addr3.i15 = getelementptr inbounds %struct.igc_adapter, ptr %adapter, i32 0, i32 37, i32 1
  %10 = ptrtoint ptr %hw_addr3.i15 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %hw_addr3.i15, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !97
  tail call void @arm_heavy_mb() #9
  %arrayidx.i16 = getelementptr i8, ptr %11, i32 46624
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i16, i32 0) #9, !srcloc !95
  %num_rx_queues.i = getelementptr inbounds %struct.igc_adapter, ptr %adapter, i32 0, i32 11
  %12 = ptrtoint ptr %num_rx_queues.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_rx_queues.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp50.i = icmp sgt i32 %13, 0
  br i1 %cmp50.i, label %sw.bb2.for.body.i_crit_edge, label %sw.bb2.igc_ptp_disable_rx_timestamp.exit_crit_edge

sw.bb2.igc_ptp_disable_rx_timestamp.exit_crit_edge: ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #11
  br label %igc_ptp_disable_rx_timestamp.exit

sw.bb2.for.body.i_crit_edge:                      ; preds = %sw.bb2
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %sw.bb2.for.body.i_crit_edge
  %i.051.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %sw.bb2.for.body.i_crit_edge ]
  %mul.i = shl i32 %i.051.i, 6
  %add.i = add i32 %mul.i, 49164
  %call.i17 = tail call i32 @igc_rd32(ptr noundef %hw1.i14, i32 noundef %add.i) #9
  %and.i = and i32 %call.i17, -1073741825
  %14 = ptrtoint ptr %hw_addr3.i15 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %hw_addr3.i15, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !98
  tail call void @arm_heavy_mb() #9
  %16 = tail call i32 @llvm.bswap.i32(i32 %and.i) #9
  %arrayidx21.i = getelementptr i8, ptr %15, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx21.i, i32 %16) #9, !srcloc !95
  %inc.i = add nuw nsw i32 %i.051.i, 1
  %17 = ptrtoint ptr %num_rx_queues.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %num_rx_queues.i, align 4
  %cmp.i = icmp slt i32 %inc.i, %18
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.igc_ptp_disable_rx_timestamp.exit_crit_edge

for.body.i.igc_ptp_disable_rx_timestamp.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %igc_ptp_disable_rx_timestamp.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

igc_ptp_disable_rx_timestamp.exit:                ; preds = %for.body.i.igc_ptp_disable_rx_timestamp.exit_crit_edge, %sw.bb2.igc_ptp_disable_rx_timestamp.exit_crit_edge
  %call24.i = tail call i32 @igc_rd32(ptr noundef %hw1.i14, i32 noundef 9220) #9
  %and25.i = and i32 %call24.i, 2147483647
  %19 = ptrtoint ptr %hw_addr3.i15 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile ptr, ptr %hw_addr3.i15, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !99
  tail call void @arm_heavy_mb() #9
  %21 = tail call i32 @llvm.bswap.i32(i32 %and25.i) #9
  %arrayidx36.i = getelementptr i8, ptr %20, i32 9220
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx36.i, i32 %21) #9, !srcloc !95
  br label %return

sw.bb3:                                           ; preds = %sw.epilog.sw.bb3_crit_edge, %sw.epilog.sw.bb3_crit_edge30, %sw.epilog.sw.bb3_crit_edge31, %sw.epilog.sw.bb3_crit_edge32, %sw.epilog.sw.bb3_crit_edge33, %sw.epilog.sw.bb3_crit_edge34, %sw.epilog.sw.bb3_crit_edge35, %sw.epilog.sw.bb3_crit_edge36, %sw.epilog.sw.bb3_crit_edge37, %sw.epilog.sw.bb3_crit_edge38, %sw.epilog.sw.bb3_crit_edge39, %sw.epilog.sw.bb3_crit_edge40, %sw.epilog.sw.bb3_crit_edge41, %sw.epilog.sw.bb3_crit_edge42
  %hw1.i18 = getelementptr inbounds %struct.igc_adapter, ptr %adapter, i32 0, i32 37
  %call.i19 = tail call i32 @igc_rd32(ptr noundef %hw1.i18, i32 noundef 9220) #9
  %or.i = or i32 %call.i19, -2147483648
  %hw_addr3.i20 = getelementptr inbounds %struct.igc_adapter, ptr %adapter, i32 0, i32 37, i32 1
  %22 = ptrtoint ptr %hw_addr3.i20 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile ptr, ptr %hw_addr3.i20, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !100
  tail call void @arm_heavy_mb() #9
  %24 = tail call i32 @llvm.bswap.i32(i32 %or.i) #9
  %arrayidx.i21 = getelementptr i8, ptr %23, i32 9220
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i21, i32 %24) #9, !srcloc !95
  %num_rx_queues.i22 = getelementptr inbounds %struct.igc_adapter, ptr %adapter, i32 0, i32 11
  %25 = ptrtoint ptr %num_rx_queues.i22 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %num_rx_queues.i22, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp51.i = icmp sgt i32 %26, 0
  br i1 %cmp51.i, label %sw.bb3.for.body.i28_crit_edge, label %sw.bb3.igc_ptp_enable_rx_timestamp.exit_crit_edge

sw.bb3.igc_ptp_enable_rx_timestamp.exit_crit_edge: ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #11
  br label %igc_ptp_enable_rx_timestamp.exit

sw.bb3.for.body.i28_crit_edge:                    ; preds = %sw.bb3
  br label %for.body.i28

for.body.i28:                                     ; preds = %for.body.i28.for.body.i28_crit_edge, %sw.bb3.for.body.i28_crit_edge
  %i.052.i = phi i32 [ %inc.i26, %for.body.i28.for.body.i28_crit_edge ], [ 0, %sw.bb3.for.body.i28_crit_edge ]
  %mul.i23 = shl i32 %i.052.i, 6
  %add.i24 = add i32 %mul.i23, 49164
  %call9.i25 = tail call i32 @igc_rd32(ptr noundef %hw1.i18, i32 noundef %add.i24) #9
  %or10.i = or i32 %call9.i25, 1073741824
  %27 = ptrtoint ptr %hw_addr3.i20 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile ptr, ptr %hw_addr3.i20, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !101
  tail call void @arm_heavy_mb() #9
  %29 = tail call i32 @llvm.bswap.i32(i32 %or10.i) #9
  %arrayidx23.i = getelementptr i8, ptr %28, i32 %add.i24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx23.i, i32 %29) #9, !srcloc !95
  %inc.i26 = add nuw nsw i32 %i.052.i, 1
  %30 = ptrtoint ptr %num_rx_queues.i22 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %num_rx_queues.i22, align 4
  %cmp.i27 = icmp slt i32 %inc.i26, %31
  br i1 %cmp.i27, label %for.body.i28.for.body.i28_crit_edge, label %for.body.i28.igc_ptp_enable_rx_timestamp.exit_crit_edge

for.body.i28.igc_ptp_enable_rx_timestamp.exit_crit_edge: ; preds = %for.body.i28
  call void @__sanitizer_cov_trace_pc() #11
  br label %igc_ptp_enable_rx_timestamp.exit

for.body.i28.for.body.i28_crit_edge:              ; preds = %for.body.i28
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i28

igc_ptp_enable_rx_timestamp.exit:                 ; preds = %for.body.i28.igc_ptp_enable_rx_timestamp.exit_crit_edge, %sw.bb3.igc_ptp_enable_rx_timestamp.exit_crit_edge
  %32 = ptrtoint ptr %hw_addr3.i20 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile ptr, ptr %hw_addr3.i20, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !102
  tail call void @arm_heavy_mb() #9
  %arrayidx36.i29 = getelementptr i8, ptr %33, i32 46624
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx36.i29, i32 402915328) #9, !srcloc !95
  %34 = ptrtoint ptr %rx_filter to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 1, ptr %rx_filter, align 4
  br label %return

return:                                           ; preds = %igc_ptp_enable_rx_timestamp.exit, %igc_ptp_disable_rx_timestamp.exit, %sw.epilog.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -34, %entry.return_crit_edge ], [ -34, %sw.epilog.return_crit_edge ], [ 0, %igc_ptp_enable_rx_timestamp.exit ], [ 0, %igc_ptp_disable_rx_timestamp.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @igc_ptp_get_ts_config(ptr noundef %netdev, ptr nocapture noundef readonly %ifr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tstamp_config = getelementptr i8, ptr %netdev, i32 4768
  %ifr_ifru = getelementptr inbounds %struct.ifreq, ptr %ifr, i32 0, i32 1
  %0 = ptrtoint ptr %ifr_ifru to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ifr_ifru, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.13, i32 noundef 174) #9
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i, label %entry.copy_to_user.exit.thread_crit_edge, label %if.end.i.i

entry.copy_to_user.exit.thread_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %copy_to_user.exit.thread

if.end.i.i:                                       ; preds = %entry
  %2 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 12, i32 -1226833920) #13, !srcloc !93
  %asmresult.i.i = extractvalue { i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i.i, label %copy_to_user.exit, label %if.end.i.i.copy_to_user.exit.thread_crit_edge

if.end.i.i.copy_to_user.exit.thread_crit_edge:    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %copy_to_user.exit.thread

copy_to_user.exit:                                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %tstamp_config, i32 noundef 12) #9
  %call.i1.i.i = tail call i32 @arm_copy_to_user(ptr noundef %1, ptr noundef %tstamp_config, i32 noundef 12) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i.i)
  %tobool.not = icmp eq i32 %call.i1.i.i, 0
  %spec.select = select i1 %tobool.not, i32 0, i32 -14
  br label %copy_to_user.exit.thread

copy_to_user.exit.thread:                         ; preds = %copy_to_user.exit, %if.end.i.i.copy_to_user.exit.thread_crit_edge, %entry.copy_to_user.exit.thread_crit_edge
  %3 = phi i32 [ -14, %entry.copy_to_user.exit.thread_crit_edge ], [ -14, %if.end.i.i.copy_to_user.exit.thread_crit_edge ], [ %spec.select, %copy_to_user.exit ]
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @igc_ptp_init(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  %tmp = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 8
  %type = getelementptr inbounds %struct.igc_adapter, ptr %adapter, i32 0, i32 37, i32 3, i32 3
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cond = icmp eq i32 %3, 1
  br i1 %cond, label %for.body.preheader, label %sw.default

for.body.preheader:                               ; preds = %entry
  %arrayidx = getelementptr %struct.igc_adapter, ptr %adapter, i32 0, i32 72, i32 0
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %arrayidx, i32 noundef 64, ptr noundef nonnull @.str.2, i32 noundef 0)
  %index = getelementptr %struct.igc_adapter, ptr %adapter, i32 0, i32 72, i32 0, i32 1
  %4 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %index, align 4
  %func = getelementptr %struct.igc_adapter, ptr %adapter, i32 0, i32 72, i32 0, i32 2
  %5 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %func, align 4
  %arrayidx.1 = getelementptr %struct.igc_adapter, ptr %adapter, i32 0, i32 72, i32 1
  %call.1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %arrayidx.1, i32 noundef 64, ptr noundef nonnull @.str.2, i32 noundef 1)
  %index.1 = getelementptr %struct.igc_adapter, ptr %adapter, i32 0, i32 72, i32 1, i32 1
  %6 = ptrtoint ptr %index.1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %index.1, align 4
  %func.1 = getelementptr %struct.igc_adapter, ptr %adapter, i32 0, i32 72, i32 1, i32 2
  %7 = ptrtoint ptr %func.1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %func.1, align 4
  %arrayidx.2 = getelementptr %struct.igc_adapter, ptr %adapter, i32 0, i32 72, i32 2
  %call.2 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %arrayidx.2, i32 noundef 64, ptr noundef nonnull @.str.2, i32 noundef 2)
  %index.2 = getelementptr %struct.igc_adapter, ptr %adapter, i32 0, i32 72, i32 2, i32 1
  %8 = ptrtoint ptr %index.2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 2, ptr %index.2, align 4
  %func.2 = getelementptr %struct.igc_adapter, ptr %adapter, i32 0, i32 72, i32 2, i32 2
  %9 = ptrtoint ptr %func.2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %func.2, align 4
  %arrayidx.3 = getelementptr %struct.igc_adapter, ptr %adapter, i32 0, i32 72, i32 3
  %call.3 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %arrayidx.3, i32 noundef 64, ptr noundef nonnull @.str.2, i32 noundef 3)
  %index.3 = getelementptr %struct.igc_adapter, ptr %adapter, i32 0, i32 72, i32 3, i32 1
  %10 = ptrtoint ptr %index.3 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 3, ptr %index.3, align 4
  %func.3 = getelementptr %struct.igc_adapter, ptr %adapter, i32 0, i32 72, i32 3, i32 2
  %11 = ptrtoint ptr %func.3 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %func.3, align 4
  %ptp_caps = getelementptr inbounds %struct.igc_adapter, ptr %adapter, i32 0, i32 57
  %name3 = getelementptr inbounds %struct.igc_adapter, ptr %adapter, i32 0, i32 57, i32 1
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 86
  %12 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev_addr, align 64
  %call5 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name3, i32 noundef 16, ptr noundef nonnull @.str.3, ptr noundef %13)
  %14 = ptrtoint ptr %ptp_caps to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %ptp_caps, align 4
  %max_adj = getelementptr inbounds %struct.igc_adapter, ptr %adapter, i32 0, i32 57, i32 2
  %15 = ptrtoint ptr %max_adj to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 62499999, ptr %max_adj, align 4
  %adjfine = getelementptr inbounds %struct.igc_adapter, ptr %adapter, i32 0, i32 57, i32 9
  %16 = ptrtoint ptr %adjfine to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @igc_ptp_adjfine_i225, ptr %adjfine, align 4
  %adjtime = getelementptr inbounds %struct.igc_adapter, ptr %adapter, i32 0, i32 57, i32 12
  %17 = ptrtoint ptr %adjtime to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @igc_ptp_adjtime_i225, ptr %adjtime, align 4
  %gettimex64 = getelementptr inbounds %struct.igc_adapter, ptr %adapter, i32 0, i32 57, i32 14
  %18 = ptrtoint ptr %gettimex64 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @igc_ptp_gettimex64_i225, ptr %gettimex64, align 4
  %settime64 = getelementptr inbounds %struct.igc_adapter, ptr %adapter, i32 0, i32 57, i32 16
  %19 = ptrtoint ptr %settime64 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @igc_ptp_settime_i225, ptr %settime64, align 4
  %enable = getelementptr inbounds %struct.igc_adapter, ptr %adapter, i32 0, i32 57, i32 17
  %20 = ptrtoint ptr %enable to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @igc_ptp_feature_enable_i225, ptr %enable, align 4
  %pps = getelementptr inbounds %struct.igc_adapter, ptr %adapter, i32 0, i32 57, i32 7
  %21 = ptrtoint ptr %pps to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %pps, align 4
  %pin_config = getelementptr inbounds %struct.igc_adapter, ptr %adapter, i32 0, i32 57, i32 8
  %22 = ptrtoint ptr %pin_config to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %arrayidx, ptr %pin_config, align 4
  %n_ext_ts = getelementptr inbounds %struct.igc_adapter, ptr %adapter, i32 0, i32 57, i32 4
  %23 = ptrtoint ptr %n_ext_ts to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 2, ptr %n_ext_ts, align 4
  %n_per_out = getelementptr inbounds %struct.igc_adapter, ptr %adapter, i32 0, i32 57, i32 5
  %24 = ptrtoint ptr %n_per_out to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 2, ptr %n_per_out, align 4
  %n_pins = getelementptr inbounds %struct.igc_adapter, ptr %adapter, i32 0, i32 57, i32 6
  %25 = ptrtoint ptr %n_pins to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 4, ptr %n_pins, align 4
  %verify = getelementptr inbounds %struct.igc_adapter, ptr %adapter, i32 0, i32 57, i32 18
  %26 = ptrtoint ptr %verify to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @igc_ptp_verify_pin, ptr %verify, align 4
  %tmreg_lock = getelementptr inbounds %struct.igc_adapter, ptr %adapter, i32 0, i32 63
  tail call void @__raw_spin_lock_init(ptr noundef %tmreg_lock, ptr noundef nonnull @.str.4, ptr noundef nonnull @igc_ptp_init.__key, i16 noundef signext 3) #9
  %ptp_tx_work = getelementptr inbounds %struct.igc_adapter, ptr %adapter, i32 0, i32 58
  tail call void @__init_work(ptr noundef %ptp_tx_work, i32 noundef 0) #9
  %27 = ptrtoint ptr %ptp_tx_work to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 -64, ptr %ptp_tx_work, align 8
  %lockdep_map = getelementptr inbounds %struct.igc_adapter, ptr %adapter, i32 0, i32 58, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.6, ptr noundef nonnull @igc_ptp_init.__key.5, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  %entry28 = getelementptr inbounds %struct.igc_adapter, ptr %adapter, i32 0, i32 58, i32 1
  %28 = ptrtoint ptr %entry28 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %entry28, ptr %entry28, align 4
  %prev.i = getelementptr inbounds %struct.igc_adapter, ptr %adapter, i32 0, i32 58, i32 1, i32 1
  %29 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %entry28, ptr %prev.i, align 4
  %func30 = getelementptr inbounds %struct.igc_adapter, ptr %adapter, i32 0, i32 58, i32 2
  %30 = ptrtoint ptr %func30 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @igc_ptp_tx_work, ptr %func30, align 4
  %rx_filter = getelementptr inbounds %struct.igc_adapter, ptr %adapter, i32 0, i32 60, i32 2
  %31 = ptrtoint ptr %rx_filter to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %rx_filter, align 8
  %tx_type = getelementptr inbounds %struct.igc_adapter, ptr %adapter, i32 0, i32 60, i32 1
  %32 = ptrtoint ptr %tx_type to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %tx_type, align 4
  %prev_ptp_time = getelementptr inbounds %struct.igc_adapter, ptr %adapter, i32 0, i32 66
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp) #9
  %call.i = tail call i64 @ktime_get_with_offset(i32 noundef 0) #9
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %tmp, i64 noundef %call.i) #9
  %33 = call ptr @memcpy(ptr %prev_ptp_time, ptr %tmp, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp) #9
  %call35 = call i64 @ktime_get() #9
  %ptp_reset_start = getelementptr inbounds %struct.igc_adapter, ptr %adapter, i32 0, i32 67
  %34 = ptrtoint ptr %ptp_reset_start to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 %call35, ptr %ptp_reset_start, align 8
  %pdev = getelementptr inbounds %struct.igc_adapter, ptr %adapter, i32 0, i32 34
  %35 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %36, i32 0, i32 44
  %call37 = call ptr @ptp_clock_register(ptr noundef %ptp_caps, ptr noundef %dev) #9
  %ptp_clock38 = getelementptr inbounds %struct.igc_adapter, ptr %adapter, i32 0, i32 56
  %37 = ptrtoint ptr %ptp_clock38 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call37, ptr %ptp_clock38, align 8
  %cmp.i = icmp ugt ptr %call37, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then41, label %if.else

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %ptp_clock = getelementptr inbounds %struct.igc_adapter, ptr %adapter, i32 0, i32 56
  %38 = ptrtoint ptr %ptp_clock to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr null, ptr %ptp_clock, align 8
  br label %cleanup

if.then41:                                        ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #11
  %39 = ptrtoint ptr %ptp_clock38 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr null, ptr %ptp_clock38, align 8
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %1, ptr noundef nonnull @.str.7) #12
  br label %cleanup

if.else:                                          ; preds = %for.body.preheader
  %tobool.not = icmp eq ptr %call37, null
  br i1 %tobool.not, label %if.else.cleanup_crit_edge, label %if.then44

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then44:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %1, ptr noundef nonnull @.str.8) #12
  %ptp_flags = getelementptr inbounds %struct.igc_adapter, ptr %adapter, i32 0, i32 62
  %40 = ptrtoint ptr %ptp_flags to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %ptp_flags, align 8
  %or = or i32 %41, 1
  store i32 %or, ptr %ptp_flags, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then44, %if.else.cleanup_crit_edge, %if.then41, %sw.default
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @igc_ptp_adjfine_i225(ptr noundef %ptp, i32 noundef %scaled_ppm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.abs.i32(i32 %scaled_ppm, i1 false)
  %conv = sext i32 %0 to i64
  %shl = shl nsw i64 %conv, 14
  %1 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 -2972493582642298179, i64 %shl) #13, !srcloc !103
  %2 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -2972493582642298179, i64 %shl, i64 %1, i32 0) #13, !srcloc !104
  %asmresult10.i.i.i = extractvalue { i64, i32 } %2, 0
  %div1581.i.i = lshr i64 %asmresult10.i.i.i, 16
  %3 = trunc i64 %div1581.i.i to i32
  %conv2 = and i32 %3, 2147483647
  %4 = and i32 %scaled_ppm, -2147483648
  %inca.0 = or i32 %conv2, %4
  %hw_addr7 = getelementptr i8, ptr %ptp, i32 -1616
  %5 = ptrtoint ptr %hw_addr7 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %hw_addr7, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !105
  tail call void @arm_heavy_mb() #9
  %7 = tail call i32 @llvm.bswap.i32(i32 %inca.0)
  %arrayidx = getelementptr i8, ptr %6, i32 46600
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx, i32 %7) #9, !srcloc !95
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @igc_ptp_adjtime_i225(ptr noundef %ptp, i64 noundef %delta) #0 align 64 {
entry:
  %then = alloca %struct.timespec64, align 8
  %tmp6 = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %then) #9
  %0 = call ptr @memset(ptr %then, i32 255, i32 16)
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %then, i64 noundef %delta) #9
  %tmreg_lock = getelementptr i8, ptr %ptp, i32 176
  %call3 = call i32 @_raw_spin_lock_irqsave(ptr noundef %tmreg_lock) #9
  %hw1.i = getelementptr i8, ptr %ptp, i32 -1620
  %call.i = call i32 @igc_rd32(ptr noundef %hw1.i, i32 noundef 46592) #9
  %call2.i = call i32 @igc_rd32(ptr noundef %hw1.i, i32 noundef 46596) #9
  %conv.i = zext i32 %call2.i to i64
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp6) #9
  %1 = ptrtoint ptr %then to i32
  call void @__asan_load8_noabort(i32 %1)
  %.fca.0.load = load i64, ptr %then, align 8
  %.fca.1.gep = getelementptr inbounds [2 x i64], ptr %then, i32 0, i32 1
  %2 = ptrtoint ptr %.fca.1.gep to i32
  call void @__asan_load8_noabort(i32 %2)
  %.fca.1.load = load i64, ptr %.fca.1.gep, align 8
  %rhs.sroa.2.8.extract.shift.i = lshr i64 %.fca.1.load, 32
  %rhs.sroa.2.8.extract.trunc.i = trunc i64 %rhs.sroa.2.8.extract.shift.i to i32
  %3 = call ptr @memset(ptr %tmp6, i32 255, i32 16)
  %add.i = add i64 %.fca.0.load, %conv.i
  %add3.i = add i32 %call.i, %rhs.sroa.2.8.extract.trunc.i
  %conv.i17 = sext i32 %add3.i to i64
  call void @set_normalized_timespec64(ptr noundef nonnull %tmp6, i64 noundef %add.i, i64 noundef %conv.i17) #9
  %4 = ptrtoint ptr %tmp6 to i32
  call void @__asan_load8_noabort(i32 %4)
  %now.sroa.0.0.copyload20 = load i64, ptr %tmp6, align 8
  %now.sroa.7.0.tmp6.sroa_idx = getelementptr inbounds i8, ptr %tmp6, i32 8
  %5 = ptrtoint ptr %now.sroa.7.0.tmp6.sroa_idx to i32
  call void @__asan_load8_noabort(i32 %5)
  %now.sroa.7.0.copyload21 = load i64, ptr %now.sroa.7.0.tmp6.sroa_idx, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp6) #9
  %hw_addr3.i = getelementptr i8, ptr %ptp, i32 -1616
  %6 = ptrtoint ptr %hw_addr3.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %hw_addr3.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !106
  call void @arm_heavy_mb() #9
  %now.sroa.7.8.extract.shift = lshr i64 %now.sroa.7.0.copyload21, 32
  %now.sroa.7.8.extract.trunc = trunc i64 %now.sroa.7.8.extract.shift to i32
  %8 = call i32 @llvm.bswap.i32(i32 %now.sroa.7.8.extract.trunc) #9
  %arrayidx.i = getelementptr i8, ptr %7, i32 46592
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i, i32 %8) #9, !srcloc !95
  %9 = ptrtoint ptr %hw_addr3.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %hw_addr3.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !107
  call void @arm_heavy_mb() #9
  %conv.i19 = trunc i64 %now.sroa.0.0.copyload20 to i32
  %11 = call i32 @llvm.bswap.i32(i32 %conv.i19) #9
  %arrayidx19.i = getelementptr i8, ptr %10, i32 46596
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx19.i, i32 %11) #9, !srcloc !95
  call void @_raw_spin_unlock_irqrestore(ptr noundef %tmreg_lock, i32 noundef %call3) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %then) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @igc_ptp_gettimex64_i225(ptr noundef %ptp, ptr nocapture noundef writeonly %ts, ptr noundef %sts) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr i8, ptr %ptp, i32 -1620
  %tmreg_lock = getelementptr i8, ptr %ptp, i32 176
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %tmreg_lock) #9
  %tobool.not.i = icmp eq ptr %sts, null
  br i1 %tobool.not.i, label %ptp_read_system_postts.exit.critedge, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @ktime_get_real_ts64(ptr noundef nonnull %sts) #9
  %call7.c18 = tail call i32 @igc_rd32(ptr noundef %hw1, i32 noundef 46592) #9
  %tv_nsec.c19 = getelementptr inbounds %struct.timespec64, ptr %ts, i32 0, i32 1
  %0 = ptrtoint ptr %tv_nsec.c19 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %call7.c18, ptr %tv_nsec.c19, align 8
  %call8.c20 = tail call i32 @igc_rd32(ptr noundef %hw1, i32 noundef 46596) #9
  %conv9.c21 = zext i32 %call8.c20 to i64
  %1 = ptrtoint ptr %ts to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 %conv9.c21, ptr %ts, align 8
  %post_ts.i = getelementptr inbounds %struct.ptp_system_timestamp, ptr %sts, i32 0, i32 1
  tail call void @ktime_get_real_ts64(ptr noundef %post_ts.i) #9
  br label %ptp_read_system_postts.exit

ptp_read_system_postts.exit.critedge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call7.c = tail call i32 @igc_rd32(ptr noundef %hw1, i32 noundef 46592) #9
  %tv_nsec.c = getelementptr inbounds %struct.timespec64, ptr %ts, i32 0, i32 1
  %2 = ptrtoint ptr %tv_nsec.c to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %call7.c, ptr %tv_nsec.c, align 8
  %call8.c = tail call i32 @igc_rd32(ptr noundef %hw1, i32 noundef 46596) #9
  %conv9.c = zext i32 %call8.c to i64
  %3 = ptrtoint ptr %ts to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %conv9.c, ptr %ts, align 8
  br label %ptp_read_system_postts.exit

ptp_read_system_postts.exit:                      ; preds = %ptp_read_system_postts.exit.critedge, %if.then.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %tmreg_lock, i32 noundef %call4) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @igc_ptp_settime_i225(ptr noundef %ptp, ptr nocapture noundef readonly %ts) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tmreg_lock = getelementptr i8, ptr %ptp, i32 176
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %tmreg_lock) #9
  %hw_addr3.i = getelementptr i8, ptr %ptp, i32 -1616
  %0 = ptrtoint ptr %hw_addr3.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %hw_addr3.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !106
  tail call void @arm_heavy_mb() #9
  %tv_nsec.i = getelementptr inbounds %struct.timespec64, ptr %ts, i32 0, i32 1
  %2 = ptrtoint ptr %tv_nsec.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tv_nsec.i, align 8
  %4 = tail call i32 @llvm.bswap.i32(i32 %3) #9
  %arrayidx.i = getelementptr i8, ptr %1, i32 46592
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i, i32 %4) #9, !srcloc !95
  %5 = ptrtoint ptr %hw_addr3.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %hw_addr3.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !107
  tail call void @arm_heavy_mb() #9
  %7 = ptrtoint ptr %ts to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %ts, align 8
  %conv.i = trunc i64 %8 to i32
  %9 = tail call i32 @llvm.bswap.i32(i32 %conv.i) #9
  %arrayidx19.i = getelementptr i8, ptr %6, i32 46596
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx19.i, i32 %9) #9, !srcloc !95
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %tmreg_lock, i32 noundef %call3) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @igc_ptp_feature_enable_i225(ptr noundef %ptp, ptr nocapture noundef readonly %rq, i32 noundef %on) #0 align 64 {
entry:
  %ctrl.i390 = alloca i32, align 4
  %ctrl_ext.i391 = alloca i32, align 4
  %ctrl.i = alloca i32, align 4
  %ctrl_ext.i = alloca i32, align 4
  %tmp102 = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr i8, ptr %ptp, i32 -1620
  %0 = ptrtoint ptr %rq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rq, align 8
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %1, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb67
    i32 2, label %do.body243
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %3 = getelementptr inbounds %struct.ptp_clock_request, ptr %rq, i32 0, i32 1
  %flags2 = getelementptr inbounds %struct.ptp_extts_request, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %flags2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %5)
  %tobool.not = icmp ult i32 %5, 16
  br i1 %tobool.not, label %if.end, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  %6 = and i32 %5, 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %6)
  %7 = icmp ne i32 %6, 9
  %and11 = and i32 %5, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %and11)
  %cmp.not = icmp eq i32 %and11, 6
  %or.cond380 = or i1 %7, %cmp.not
  br i1 %or.cond380, label %if.end13, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end13:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %on)
  %tobool14.not = icmp eq i32 %on, 0
  br i1 %tobool14.not, label %if.end13.if.end19_crit_edge, label %if.then15

if.end13.if.end19_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

if.then15:                                        ; preds = %if.end13
  %ptp_clock = getelementptr i8, ptr %ptp, i32 -4
  %8 = ptrtoint ptr %ptp_clock to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ptp_clock, align 8
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %3, align 8
  %call = tail call i32 @ptp_find_pin(ptr noundef %9, i32 noundef 1, i32 noundef %11) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp16 = icmp slt i32 %call, 0
  br i1 %cmp16, label %if.then15.cleanup_crit_edge, label %if.then15.if.end19_crit_edge

if.then15.if.end19_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

if.then15.cleanup_crit_edge:                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end19:                                         ; preds = %if.then15.if.end19_crit_edge, %if.end13.if.end19_crit_edge
  %pin.0 = phi i32 [ %call, %if.then15.if.end19_crit_edge ], [ -1, %if.end13.if.end19_crit_edge ]
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %3, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp21 = icmp eq i32 %13, 1
  %. = select i1 %cmp21, i32 64, i32 32
  %.381 = select i1 %cmp21, i32 1024, i32 256
  %tmreg_lock = getelementptr i8, ptr %ptp, i32 176
  %call28 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %tmreg_lock) #9
  %call31 = tail call i32 @igc_rd32(ptr noundef %hw1, i32 noundef 46656) #9
  %call32 = tail call i32 @igc_rd32(ptr noundef %hw1, i32 noundef 46708) #9
  br i1 %tobool14.not, label %if.else37, label %if.then34

if.then34:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %3, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ctrl.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ctrl_ext.i)
  %call.i = tail call i32 @igc_rd32(ptr noundef %hw1, i32 noundef 0) #9
  %16 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %call.i, ptr %ctrl.i, align 4
  %call2.i = tail call i32 @igc_rd32(ptr noundef %hw1, i32 noundef 24) #9
  %17 = ptrtoint ptr %ctrl_ext.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %call2.i, ptr %ctrl_ext.i, align 4
  %call3.i = tail call i32 @igc_rd32(ptr noundef %hw1, i32 noundef 60) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %pin.0)
  %cmp.i.i = icmp slt i32 %pin.0, 2
  %ctrl.ctrl_ext.i.i = select i1 %cmp.i.i, ptr %ctrl.i, ptr %ctrl_ext.i
  %arrayidx1.i.i = getelementptr [4 x i32], ptr @igc_pin_direction.mask, i32 0, i32 %pin.0
  %18 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx1.i.i, align 4
  %neg.i.i = xor i32 %19, -1
  %20 = ptrtoint ptr %ctrl.ctrl_ext.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %ctrl.ctrl_ext.i.i, align 4
  %and.i.i = and i32 %21, %neg.i.i
  store i32 %and.i.i, ptr %ctrl.ctrl_ext.i.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @igc_pin_extts.igc_ts_sdp_en, i32 0, i32 %pin.0
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx.i, align 4
  %neg.i = xor i32 %23, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %15)
  %cmp.i = icmp eq i32 %15, 1
  %..i = select i1 %cmp.i, i32 -57, i32 -8
  %igc_pin_extts.igc_aux1_sel_sdp.igc_pin_extts.igc_aux0_sel_sdp.i = select i1 %cmp.i, ptr @igc_pin_extts.igc_aux1_sel_sdp, ptr @igc_pin_extts.igc_aux0_sel_sdp
  %.60.i = select i1 %cmp.i, i32 32, i32 4
  %and.i = and i32 %call3.i, %..i
  %and4.i = and i32 %and.i, %neg.i
  %arrayidx5.i = getelementptr [4 x i32], ptr %igc_pin_extts.igc_aux1_sel_sdp.igc_pin_extts.igc_aux0_sel_sdp.i, i32 0, i32 %pin.0
  %24 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx5.i, align 4
  %or.i = or i32 %25, %.60.i
  %or6.i = or i32 %or.i, %and4.i
  %hw_addr12.i = getelementptr i8, ptr %ptp, i32 -1616
  %26 = ptrtoint ptr %hw_addr12.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile ptr, ptr %hw_addr12.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  tail call void @arm_heavy_mb() #9
  %28 = tail call i32 @llvm.bswap.i32(i32 %or6.i) #9
  %arrayidx16.i = getelementptr i8, ptr %27, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx16.i, i32 %28) #9, !srcloc !95
  %29 = ptrtoint ptr %hw_addr12.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile ptr, ptr %hw_addr12.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  tail call void @arm_heavy_mb() #9
  %31 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %ctrl.i.0.ctrl.i.0.ctrl.0.ctrl.0..i = load i32, ptr %ctrl.i, align 4
  %32 = tail call i32 @llvm.bswap.i32(i32 %ctrl.i.0.ctrl.i.0.ctrl.0.ctrl.0..i) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 %32) #9, !srcloc !95
  %33 = ptrtoint ptr %hw_addr12.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile ptr, ptr %hw_addr12.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !110
  tail call void @arm_heavy_mb() #9
  %35 = ptrtoint ptr %ctrl_ext.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %ctrl_ext.i.0.ctrl_ext.i.0.ctrl_ext.0.ctrl_ext.0..i = load i32, ptr %ctrl_ext.i, align 4
  %36 = tail call i32 @llvm.bswap.i32(i32 %ctrl_ext.i.0.ctrl_ext.i.0.ctrl_ext.0.ctrl_ext.0..i) #9
  %arrayidx42.i = getelementptr i8, ptr %34, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx42.i, i32 %36) #9, !srcloc !95
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ctrl_ext.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ctrl.i)
  %or = or i32 %call31, %.381
  %or36 = or i32 %call32, %.
  br label %do.body42

if.else37:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  %neg = xor i32 %.381, -1
  %and38 = and i32 %call31, %neg
  %neg39 = xor i32 %., -1
  %and40 = and i32 %call32, %neg39
  br label %do.body42

do.body42:                                        ; preds = %if.else37, %if.then34
  %tsauxc.0 = phi i32 [ %or, %if.then34 ], [ %and38, %if.else37 ]
  %tsim.0 = phi i32 [ %or36, %if.then34 ], [ %and40, %if.else37 ]
  %hw_addr47 = getelementptr i8, ptr %ptp, i32 -1616
  %37 = ptrtoint ptr %hw_addr47 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile ptr, ptr %hw_addr47, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !111
  tail call void @arm_heavy_mb() #9
  %39 = tail call i32 @llvm.bswap.i32(i32 %tsauxc.0)
  %arrayidx = getelementptr i8, ptr %38, i32 46656
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx, i32 %39) #9, !srcloc !95
  %40 = ptrtoint ptr %hw_addr47 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile ptr, ptr %hw_addr47, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !112
  tail call void @arm_heavy_mb() #9
  %42 = tail call i32 @llvm.bswap.i32(i32 %tsim.0)
  %arrayidx63 = getelementptr i8, ptr %41, i32 46708
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx63, i32 %42) #9, !srcloc !95
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %tmreg_lock, i32 noundef %call28) #9
  br label %cleanup

sw.bb67:                                          ; preds = %entry
  %43 = getelementptr inbounds %struct.ptp_clock_request, ptr %rq, i32 0, i32 1
  %flags68 = getelementptr inbounds %struct.ptp_clock_request, ptr %rq, i32 0, i32 1, i32 0, i32 3
  %44 = ptrtoint ptr %flags68 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %flags68, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool69.not = icmp eq i32 %45, 0
  br i1 %tobool69.not, label %if.end71, label %sw.bb67.cleanup_crit_edge

sw.bb67.cleanup_crit_edge:                        ; preds = %sw.bb67
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end71:                                         ; preds = %sw.bb67
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %on)
  %tobool72.not = icmp eq i32 %on, 0
  br i1 %tobool72.not, label %if.end71.if.end81_crit_edge, label %if.then73

if.end71.if.end81_crit_edge:                      ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end81

if.then73:                                        ; preds = %if.end71
  %ptp_clock74 = getelementptr i8, ptr %ptp, i32 -4
  %46 = ptrtoint ptr %ptp_clock74 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ptp_clock74, align 8
  %index75 = getelementptr inbounds %struct.ptp_clock_request, ptr %rq, i32 0, i32 1, i32 0, i32 2
  %48 = ptrtoint ptr %index75 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %index75, align 8
  %call76 = tail call i32 @ptp_find_pin(ptr noundef %47, i32 noundef 2, i32 noundef %49) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76)
  %cmp77 = icmp slt i32 %call76, 0
  br i1 %cmp77, label %if.then73.cleanup_crit_edge, label %if.then73.if.end81_crit_edge

if.then73.if.end81_crit_edge:                     ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end81

if.then73.cleanup_crit_edge:                      ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end81:                                         ; preds = %if.then73.if.end81_crit_edge, %if.end71.if.end81_crit_edge
  %pin.1 = phi i32 [ %call76, %if.then73.if.end81_crit_edge ], [ -1, %if.end71.if.end81_crit_edge ]
  %period = getelementptr inbounds %struct.ptp_clock_request, ptr %rq, i32 0, i32 1, i32 0, i32 1
  %50 = ptrtoint ptr %period to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %period, align 8
  %nsec = getelementptr inbounds %struct.ptp_clock_request, ptr %rq, i32 0, i32 1, i32 0, i32 1, i32 1
  %52 = ptrtoint ptr %nsec to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %nsec, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 9223372035, i64 %51)
  %cmp.i389 = icmp sgt i64 %51, 9223372035
  br i1 %cmp.i389, label %if.end81.timespec64_to_ns.exit_crit_edge, label %if.end.i

if.end81.timespec64_to_ns.exit_crit_edge:         ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #11
  br label %timespec64_to_ns.exit

if.end.i:                                         ; preds = %if.end81
  call void @__sanitizer_cov_trace_const_cmp8(i64 -9223372035, i64 %51)
  %cmp2.i = icmp slt i64 %51, -9223372035
  br i1 %cmp2.i, label %if.end.i.timespec64_to_ns.exit_crit_edge, label %if.end4.i

if.end.i.timespec64_to_ns.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %timespec64_to_ns.exit

if.end4.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %mul.i = mul nsw i64 %51, 1000000000
  %conv.i = sext i32 %53 to i64
  %add.i = add i64 %mul.i, %conv.i
  br label %timespec64_to_ns.exit

timespec64_to_ns.exit:                            ; preds = %if.end4.i, %if.end.i.timespec64_to_ns.exit_crit_edge, %if.end81.timespec64_to_ns.exit_crit_edge
  %retval.0.i = phi i64 [ %add.i, %if.end4.i ], [ 9223372036854775807, %if.end81.timespec64_to_ns.exit_crit_edge ], [ -9223372036854775808, %if.end.i.timespec64_to_ns.exit_crit_edge ]
  %shr = ashr i64 %retval.0.i, 1
  br i1 %tobool72.not, label %timespec64_to_ns.exit.if.end101_crit_edge, label %land.lhs.true85

timespec64_to_ns.exit.if.end101_crit_edge:        ; preds = %timespec64_to_ns.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end101

land.lhs.true85:                                  ; preds = %timespec64_to_ns.exit
  %retval.0.i.fr = freeze i64 %retval.0.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 140000002, i64 %retval.0.i.fr)
  %cmp86 = icmp slt i64 %retval.0.i.fr, 140000002
  br i1 %cmp86, label %if.then96, label %switch.early.test

switch.early.test:                                ; preds = %land.lhs.true85
  call void @__sanitizer_cov_trace_switch(i64 %shr, ptr @__sancov_gen_cov_switch_values.26)
  switch i64 %shr, label %switch.early.test.if.end101_crit_edge [
    i64 500000000, label %switch.early.test.if.then96.thread_crit_edge
    i64 250000000, label %switch.early.test.if.then96.thread_crit_edge412
    i64 125000000, label %switch.early.test.if.then96.thread_crit_edge413
  ]

switch.early.test.if.then96.thread_crit_edge413:  ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then96.thread

switch.early.test.if.then96.thread_crit_edge412:  ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then96.thread

switch.early.test.if.then96.thread_crit_edge:     ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then96.thread

switch.early.test.if.end101_crit_edge:            ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end101

if.then96.thread:                                 ; preds = %switch.early.test.if.then96.thread_crit_edge, %switch.early.test.if.then96.thread_crit_edge412, %switch.early.test.if.then96.thread_crit_edge413
  br label %if.end101

if.then96:                                        ; preds = %land.lhs.true85
  call void @__sanitizer_cov_trace_const_cmp8(i64 16, i64 %retval.0.i.fr)
  %cmp97 = icmp slt i64 %retval.0.i.fr, 16
  br i1 %cmp97, label %if.then96.cleanup_crit_edge, label %if.then96.if.end101_crit_edge

if.then96.if.end101_crit_edge:                    ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end101

if.then96.cleanup_crit_edge:                      ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end101:                                        ; preds = %if.then96.if.end101_crit_edge, %if.then96.thread, %switch.early.test.if.end101_crit_edge, %timespec64_to_ns.exit.if.end101_crit_edge
  %tobool112.not = phi i1 [ true, %timespec64_to_ns.exit.if.end101_crit_edge ], [ true, %switch.early.test.if.end101_crit_edge ], [ false, %if.then96.if.end101_crit_edge ], [ false, %if.then96.thread ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp102) #9
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %tmp102, i64 noundef %shr) #9
  %54 = ptrtoint ptr %tmp102 to i32
  call void @__asan_load8_noabort(i32 %54)
  %ts.sroa.0.0.copyload407 = load i64, ptr %tmp102, align 8
  %ts.sroa.7.0.tmp102.sroa_idx = getelementptr inbounds i8, ptr %tmp102, i32 8
  %55 = ptrtoint ptr %ts.sroa.7.0.tmp102.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %55)
  %ts.sroa.7.0.copyload408 = load i32, ptr %ts.sroa.7.0.tmp102.sroa_idx, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp102) #9
  %index103 = getelementptr inbounds %struct.ptp_clock_request, ptr %rq, i32 0, i32 1, i32 0, i32 2
  %56 = ptrtoint ptr %index103 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %index103, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %57)
  %cmp104 = icmp eq i32 %57, 1
  br i1 %cmp104, label %if.then106, label %if.else111

if.then106:                                       ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #11
  %.385 = select i1 %tobool112.not, i32 16, i32 0
  %.386 = select i1 %tobool112.not, i32 2, i32 32
  br label %do.body118

if.else111:                                       ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #11
  %.387 = select i1 %tobool112.not, i32 8, i32 0
  %.388 = select i1 %tobool112.not, i32 1, i32 4
  br label %do.body118

do.body118:                                       ; preds = %if.else111, %if.then106
  %freqout.0 = phi i32 [ 46680, %if.then106 ], [ 46676, %if.else111 ]
  %trgttimh.0 = phi i32 [ 46672, %if.then106 ], [ 46664, %if.else111 ]
  %trgttiml.0 = phi i32 [ 46668, %if.then106 ], [ 46660, %if.else111 ]
  %tsim_mask.3 = phi i32 [ %.385, %if.then106 ], [ %.387, %if.else111 ]
  %tsauxc_mask.3 = phi i32 [ %.386, %if.then106 ], [ %.388, %if.else111 ]
  %tmreg_lock124 = getelementptr i8, ptr %ptp, i32 176
  %call126 = call i32 @_raw_spin_lock_irqsave(ptr noundef %tmreg_lock124) #9
  %call131 = call i32 @igc_rd32(ptr noundef %hw1, i32 noundef 46656) #9
  %call132 = call i32 @igc_rd32(ptr noundef %hw1, i32 noundef 46708) #9
  %58 = ptrtoint ptr %index103 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %index103, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %59)
  %cmp134 = icmp eq i32 %59, 1
  %tsauxc.1.v = select i1 %cmp134, i32 -35, i32 -6
  %tsauxc.1 = and i32 %tsauxc.1.v, %call131
  %tsim.1.v = select i1 %cmp134, i32 -17, i32 -9
  %tsim.1 = and i32 %tsim.1.v, %call132
  br i1 %tobool72.not, label %do.body118.do.body214_crit_edge, label %if.then144

do.body118.do.body214_crit_edge:                  ; preds = %do.body118
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body214

if.then144:                                       ; preds = %do.body118
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ctrl.i390)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ctrl_ext.i391)
  %call.i393 = call i32 @igc_rd32(ptr noundef %hw1, i32 noundef 0) #9
  %60 = ptrtoint ptr %ctrl.i390 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %call.i393, ptr %ctrl.i390, align 4
  %call2.i394 = call i32 @igc_rd32(ptr noundef %hw1, i32 noundef 24) #9
  %61 = ptrtoint ptr %ctrl_ext.i391 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %call2.i394, ptr %ctrl_ext.i391, align 4
  %call3.i395 = call i32 @igc_rd32(ptr noundef %hw1, i32 noundef 60) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %pin.1)
  %cmp.i.i396 = icmp slt i32 %pin.1, 2
  %ctrl.ctrl_ext.i.i397 = select i1 %cmp.i.i396, ptr %ctrl.i390, ptr %ctrl_ext.i391
  %arrayidx1.i.i398 = getelementptr [4 x i32], ptr @igc_pin_direction.mask, i32 0, i32 %pin.1
  %62 = ptrtoint ptr %arrayidx1.i.i398 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx1.i.i398, align 4
  %64 = ptrtoint ptr %ctrl.ctrl_ext.i.i397 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %ctrl.ctrl_ext.i.i397, align 4
  %or.i.i = or i32 %65, %63
  store i32 %or.i.i, ptr %ctrl.ctrl_ext.i.i397, align 4
  %arrayidx.i399 = getelementptr [4 x i32], ptr @igc_pin_perout.igc_aux0_sel_sdp, i32 0, i32 %pin.1
  %66 = ptrtoint ptr %arrayidx.i399 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %arrayidx.i399, align 4
  %arrayidx6.i = getelementptr [4 x i32], ptr @igc_pin_perout.igc_aux1_sel_sdp, i32 0, i32 %pin.1
  %68 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %arrayidx6.i, align 4
  %arrayidx11.i = getelementptr [4 x i32], ptr @igc_pin_perout.igc_ts_sdp_sel_clr, i32 0, i32 %pin.1
  %70 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %arrayidx11.i, align 4
  %igc_pin_perout.igc_ts_sdp_sel_fc1.igc_pin_perout.igc_ts_sdp_sel_fc0.i = select i1 %cmp134, ptr @igc_pin_perout.igc_ts_sdp_sel_fc1, ptr @igc_pin_perout.igc_ts_sdp_sel_fc0
  %igc_pin_perout.igc_ts_sdp_sel_tt1.igc_pin_perout.igc_ts_sdp_sel_tt0.i = select i1 %cmp134, ptr @igc_pin_perout.igc_ts_sdp_sel_tt1, ptr @igc_pin_perout.igc_ts_sdp_sel_tt0
  %igc_pin_perout.igc_ts_sdp_sel_tt1.sink.i = select i1 %tobool112.not, ptr %igc_pin_perout.igc_ts_sdp_sel_tt1.igc_pin_perout.igc_ts_sdp_sel_tt0.i, ptr %igc_pin_perout.igc_ts_sdp_sel_fc1.igc_pin_perout.igc_ts_sdp_sel_fc0.i
  %arrayidx23.i = getelementptr [4 x i32], ptr %igc_pin_perout.igc_ts_sdp_sel_tt1.sink.i, i32 0, i32 %pin.1
  %and.i400 = and i32 %call3.i395, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i400, i32 %67)
  %cmp.i401 = icmp eq i32 %and.i400, %67
  %and4.i402 = and i32 %call3.i395, -5
  %spec.select.i = select i1 %cmp.i401, i32 %and4.i402, i32 %call3.i395
  %and5.i = and i32 %spec.select.i, 24
  call void @__sanitizer_cov_trace_cmp4(i32 %and5.i, i32 %69)
  %cmp7.i = icmp eq i32 %and5.i, %69
  %and9.i = and i32 %spec.select.i, -33
  %tssdp.1.i = select i1 %cmp7.i, i32 %and9.i, i32 %spec.select.i
  %neg.i403 = xor i32 %71, -1
  %and12.i = and i32 %tssdp.1.i, %neg.i403
  %72 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %.pn.i = load i32, ptr %arrayidx23.i, align 4
  %arrayidx30.i = getelementptr [4 x i32], ptr @igc_pin_perout.igc_ts_sdp_en, i32 0, i32 %pin.1
  %73 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %arrayidx30.i, align 4
  %tssdp.2.i = or i32 %74, %.pn.i
  %or31.i = or i32 %tssdp.2.i, %and12.i
  %hw_addr33.i = getelementptr i8, ptr %ptp, i32 -1616
  %75 = ptrtoint ptr %hw_addr33.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load volatile ptr, ptr %hw_addr33.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !113
  call void @arm_heavy_mb() #9
  %77 = call i32 @llvm.bswap.i32(i32 %or31.i) #9
  %arrayidx37.i = getelementptr i8, ptr %76, i32 60
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx37.i, i32 %77) #9, !srcloc !95
  %78 = ptrtoint ptr %hw_addr33.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load volatile ptr, ptr %hw_addr33.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !114
  call void @arm_heavy_mb() #9
  %80 = ptrtoint ptr %ctrl.i390 to i32
  call void @__asan_load4_noabort(i32 %80)
  %ctrl.i390.0.ctrl.i390.0.ctrl.0.ctrl.0..i404 = load i32, ptr %ctrl.i390, align 4
  %81 = call i32 @llvm.bswap.i32(i32 %ctrl.i390.0.ctrl.i390.0.ctrl.0.ctrl.0..i404) #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %79, i32 %81) #9, !srcloc !95
  %82 = ptrtoint ptr %hw_addr33.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load volatile ptr, ptr %hw_addr33.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !115
  call void @arm_heavy_mb() #9
  %84 = ptrtoint ptr %ctrl_ext.i391 to i32
  call void @__asan_load4_noabort(i32 %84)
  %ctrl_ext.i391.0.ctrl_ext.i391.0.ctrl_ext.0.ctrl_ext.0..i405 = load i32, ptr %ctrl_ext.i391, align 4
  %85 = call i32 @llvm.bswap.i32(i32 %ctrl_ext.i391.0.ctrl_ext.i391.0.ctrl_ext.0.ctrl_ext.0..i405) #9
  %arrayidx63.i = getelementptr i8, ptr %83, i32 24
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx63.i, i32 %85) #9, !srcloc !95
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ctrl_ext.i391)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ctrl.i390)
  %86 = ptrtoint ptr %43 to i32
  call void @__asan_load8_noabort(i32 %86)
  %87 = load i64, ptr %43, align 8
  %perout = getelementptr i8, ptr %ptp, i32 772
  %arrayidx147 = getelementptr [2 x %struct.anon.131], ptr %perout, i32 0, i32 %59
  %88 = ptrtoint ptr %arrayidx147 to i32
  call void @__asan_store8_noabort(i32 %88)
  store i64 %87, ptr %arrayidx147, align 8
  %nsec149 = getelementptr inbounds %struct.ptp_clock_request, ptr %rq, i32 0, i32 1, i32 0, i32 0, i32 0, i32 1
  %89 = ptrtoint ptr %nsec149 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %nsec149, align 8
  %tv_nsec153 = getelementptr inbounds %struct.timespec64, ptr %arrayidx147, i32 0, i32 1
  %91 = ptrtoint ptr %tv_nsec153 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %90, ptr %tv_nsec153, align 8
  %period157 = getelementptr inbounds %struct.anon.131, ptr %arrayidx147, i32 0, i32 1
  %92 = ptrtoint ptr %period157 to i32
  call void @__asan_store8_noabort(i32 %92)
  store i64 %ts.sroa.0.0.copyload407, ptr %period157, align 8
  %tv_nsec163 = getelementptr inbounds %struct.anon.131, ptr %arrayidx147, i32 0, i32 1, i32 1
  %93 = ptrtoint ptr %tv_nsec163 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %ts.sroa.7.0.copyload408, ptr %tv_nsec163, align 8
  %94 = ptrtoint ptr %hw_addr33.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load volatile ptr, ptr %hw_addr33.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !116
  call void @arm_heavy_mb() #9
  %96 = ptrtoint ptr %43 to i32
  call void @__asan_load8_noabort(i32 %96)
  %97 = load i64, ptr %43, align 8
  %conv175 = trunc i64 %97 to i32
  %98 = call i32 @llvm.bswap.i32(i32 %conv175)
  %arrayidx176 = getelementptr i8, ptr %95, i32 %trgttimh.0
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx176, i32 %98) #9, !srcloc !95
  %99 = ptrtoint ptr %hw_addr33.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load volatile ptr, ptr %hw_addr33.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !117
  call void @arm_heavy_mb() #9
  %101 = ptrtoint ptr %nsec149 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %nsec149, align 8
  %103 = call i32 @llvm.bswap.i32(i32 %102)
  %arrayidx191 = getelementptr i8, ptr %100, i32 %trgttiml.0
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx191, i32 %103) #9, !srcloc !95
  br i1 %tobool112.not, label %if.then144.if.end210_crit_edge, label %do.body196

if.then144.if.end210_crit_edge:                   ; preds = %if.then144
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end210

do.body196:                                       ; preds = %if.then144
  call void @__sanitizer_cov_trace_pc() #11
  %104 = ptrtoint ptr %hw_addr33.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load volatile ptr, ptr %hw_addr33.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !118
  call void @arm_heavy_mb() #9
  %conv206 = trunc i64 %shr to i32
  %106 = call i32 @llvm.bswap.i32(i32 %conv206)
  %arrayidx207 = getelementptr i8, ptr %105, i32 %freqout.0
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx207, i32 %106) #9, !srcloc !95
  br label %if.end210

if.end210:                                        ; preds = %do.body196, %if.then144.if.end210_crit_edge
  %or211 = or i32 %tsauxc.1, %tsauxc_mask.3
  %or212 = or i32 %tsim.1, %tsim_mask.3
  br label %do.body214

do.body214:                                       ; preds = %if.end210, %do.body118.do.body214_crit_edge
  %tsauxc.2 = phi i32 [ %or211, %if.end210 ], [ %tsauxc.1, %do.body118.do.body214_crit_edge ]
  %tsim.2 = phi i32 [ %or212, %if.end210 ], [ %tsim.1, %do.body118.do.body214_crit_edge ]
  %hw_addr220 = getelementptr i8, ptr %ptp, i32 -1616
  %107 = ptrtoint ptr %hw_addr220 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load volatile ptr, ptr %hw_addr220, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !119
  call void @arm_heavy_mb() #9
  %109 = call i32 @llvm.bswap.i32(i32 %tsauxc.2)
  %arrayidx224 = getelementptr i8, ptr %108, i32 46656
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx224, i32 %109) #9, !srcloc !95
  %110 = ptrtoint ptr %hw_addr220 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load volatile ptr, ptr %hw_addr220, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !120
  call void @arm_heavy_mb() #9
  %112 = call i32 @llvm.bswap.i32(i32 %tsim.2)
  %arrayidx237 = getelementptr i8, ptr %111, i32 46708
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx237, i32 %112) #9, !srcloc !95
  call void @_raw_spin_unlock_irqrestore(ptr noundef %tmreg_lock124, i32 noundef %call126) #9
  br label %cleanup

do.body243:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %tmreg_lock249 = getelementptr i8, ptr %ptp, i32 176
  %call251 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %tmreg_lock249) #9
  %call256 = tail call i32 @igc_rd32(ptr noundef %hw1, i32 noundef 46708) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %on)
  %tobool257 = icmp ne i32 %on, 0
  %and261 = and i32 %call256, -2
  %masksel = zext i1 %tobool257 to i32
  %tsim.3 = or i32 %and261, %masksel
  %pps_sys_wrap_on = getelementptr i8, ptr %ptp, i32 384
  %frombool = zext i1 %tobool257 to i8
  %113 = ptrtoint ptr %pps_sys_wrap_on to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 %frombool, ptr %pps_sys_wrap_on, align 4
  %hw_addr270 = getelementptr i8, ptr %ptp, i32 -1616
  %114 = ptrtoint ptr %hw_addr270 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load volatile ptr, ptr %hw_addr270, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !121
  tail call void @arm_heavy_mb() #9
  %116 = tail call i32 @llvm.bswap.i32(i32 %tsim.3)
  %arrayidx274 = getelementptr i8, ptr %115, i32 46708
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx274, i32 %116) #9, !srcloc !95
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %tmreg_lock249, i32 noundef %call251) #9
  br label %cleanup

cleanup:                                          ; preds = %do.body243, %do.body214, %if.then96.cleanup_crit_edge, %if.then73.cleanup_crit_edge, %sw.bb67.cleanup_crit_edge, %do.body42, %if.then15.cleanup_crit_edge, %if.end.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body243 ], [ 0, %do.body214 ], [ 0, %do.body42 ], [ -95, %sw.bb.cleanup_crit_edge ], [ -95, %if.end.cleanup_crit_edge ], [ -16, %if.then15.cleanup_crit_edge ], [ -95, %sw.bb67.cleanup_crit_edge ], [ -16, %if.then73.cleanup_crit_edge ], [ -22, %if.then96.cleanup_crit_edge ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @igc_ptp_verify_pin(ptr nocapture noundef readnone %ptp, i32 noundef %pin, i32 noundef %func, i32 noundef %chan) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %func)
  %cond = icmp eq i32 %func, 3
  %. = sext i1 %cond to i32
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @igc_ptp_tx_work(ptr noundef %work) #0 align 64 {
entry:
  %shhwtstamps.i = alloca %struct.skb_shared_hwtstamps, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr i8, ptr %work, i32 -2368
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state, align 4
  %2 = and i32 %1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %hw1 = getelementptr i8, ptr %work, i32 -1728
  %call2 = tail call i32 @igc_rd32(ptr noundef %hw1, i32 noundef 46612) #9
  %and = and i32 %call2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %land.rhs, label %if.end45

land.rhs:                                         ; preds = %if.end
  %.b52 = load i1, ptr @igc_ptp_tx_work.__already_done, align 1
  br i1 %.b52, label %land.rhs.cleanup_crit_edge, label %if.then12, !prof !89

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then12:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @igc_ptp_tx_work.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 705, i32 noundef 9, ptr noundef null) #9
  br label %cleanup

if.end45:                                         ; preds = %if.end
  %ptp_tx_skb.i = getelementptr i8, ptr %work, i32 44
  %3 = ptrtoint ptr %ptp_tx_skb.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ptp_tx_skb.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %shhwtstamps.i) #9
  %5 = ptrtoint ptr %shhwtstamps.i to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 -1, ptr %shhwtstamps.i, align 8, !annotation !87
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %land.rhs.i, label %if.end40.i

land.rhs.i:                                       ; preds = %if.end45
  %.b65.i = load i1, ptr @igc_ptp_tx_hwtstamp.__already_done, align 1
  br i1 %.b65.i, label %land.rhs.i.igc_ptp_tx_hwtstamp.exit_crit_edge, label %if.then.i, !prof !89

land.rhs.i.igc_ptp_tx_hwtstamp.exit_crit_edge:    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %igc_ptp_tx_hwtstamp.exit

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @igc_ptp_tx_hwtstamp.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 649, i32 noundef 9, ptr noundef null) #9
  br label %igc_ptp_tx_hwtstamp.exit

if.end40.i:                                       ; preds = %if.end45
  %call.i = tail call i32 @igc_rd32(ptr noundef %hw1, i32 noundef 46616) #9
  %call41.i = tail call i32 @igc_rd32(ptr noundef %hw1, i32 noundef 46620) #9
  %type.i.i = getelementptr i8, ptr %work, i32 -1668
  %6 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cond.i.i = icmp eq i32 %7, 1
  br i1 %cond.i.i, label %sw.bb.i.i, label %if.end40.i.igc_ptp_systim_to_hwtstamp.exit.i_crit_edge

if.end40.i.igc_ptp_systim_to_hwtstamp.exit.i_crit_edge: ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %igc_ptp_systim_to_hwtstamp.exit.i

sw.bb.i.i:                                        ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv42.i = zext i32 %call41.i to i64
  %conv.i = zext i32 %call.i to i64
  %mul.i.i.i = mul nuw nsw i64 %conv42.i, 1000000000
  %add.i.i.i = add nuw nsw i64 %mul.i.i.i, %conv.i
  %8 = ptrtoint ptr %shhwtstamps.i to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %add.i.i.i, ptr %shhwtstamps.i, align 8
  br label %igc_ptp_systim_to_hwtstamp.exit.i

igc_ptp_systim_to_hwtstamp.exit.i:                ; preds = %sw.bb.i.i, %if.end40.i.igc_ptp_systim_to_hwtstamp.exit.i_crit_edge
  %link_speed.i = getelementptr i8, ptr %work, i32 -2152
  %9 = ptrtoint ptr %link_speed.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %link_speed.i, align 8
  %11 = zext i16 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.27)
  switch i16 %10, label %igc_ptp_systim_to_hwtstamp.exit.i.sw.epilog.i_crit_edge [
    i16 10, label %sw.bb.i
    i16 100, label %sw.bb44.i
    i16 1000, label %sw.bb45.i
    i16 2500, label %sw.bb46.i
  ]

igc_ptp_systim_to_hwtstamp.exit.i.sw.epilog.i_crit_edge: ; preds = %igc_ptp_systim_to_hwtstamp.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %igc_ptp_systim_to_hwtstamp.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

sw.bb44.i:                                        ; preds = %igc_ptp_systim_to_hwtstamp.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

sw.bb45.i:                                        ; preds = %igc_ptp_systim_to_hwtstamp.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

sw.bb46.i:                                        ; preds = %igc_ptp_systim_to_hwtstamp.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb46.i, %sw.bb45.i, %sw.bb44.i, %sw.bb.i, %igc_ptp_systim_to_hwtstamp.exit.i.sw.epilog.i_crit_edge
  %adjust.0.i = phi i32 [ 0, %igc_ptp_systim_to_hwtstamp.exit.i.sw.epilog.i_crit_edge ], [ 1325, %sw.bb46.i ], [ 80, %sw.bb45.i ], [ 58, %sw.bb44.i ], [ 240, %sw.bb.i ]
  %12 = ptrtoint ptr %shhwtstamps.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %shhwtstamps.i, align 8
  %14 = zext i32 %adjust.0.i to i64
  %add.i = add i64 %13, %14
  store i64 %add.i, ptr %shhwtstamps.i, align 8
  %15 = ptrtoint ptr %ptp_tx_skb.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %ptp_tx_skb.i, align 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %state, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !85
  tail call void @llvm.prefetch.p0(ptr %state, i32 1, i32 3, i32 1) #9
  %16 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %state, ptr %state, i32 8, ptr elementtype(i32) %state) #9, !srcloc !86
  call void @skb_tstamp_tx(ptr noundef nonnull %4, ptr noundef nonnull %shhwtstamps.i) #9
  call void @__dev_kfree_skb_any(ptr noundef nonnull %4, i32 noundef 1) #9
  br label %igc_ptp_tx_hwtstamp.exit

igc_ptp_tx_hwtstamp.exit:                         ; preds = %sw.epilog.i, %if.then.i, %land.rhs.i.igc_ptp_tx_hwtstamp.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %shhwtstamps.i) #9
  br label %cleanup

cleanup:                                          ; preds = %igc_ptp_tx_hwtstamp.exit, %if.then12, %land.rhs.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ns_to_timespec64(ptr sret(%struct.timespec64) align 8, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ptp_clock_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @igc_ptp_suspend(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ptp_flags = getelementptr inbounds %struct.igc_adapter, ptr %adapter, i32 0, i32 62
  %0 = ptrtoint ptr %ptp_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ptp_flags, align 8
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end4_crit_edge, label %if.end

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

if.end:                                           ; preds = %entry
  %ptp_tx_work = getelementptr inbounds %struct.igc_adapter, ptr %adapter, i32 0, i32 58
  %call = tail call zeroext i1 @cancel_work_sync(ptr noundef %ptp_tx_work) #9
  %ptp_tx_skb = getelementptr inbounds %struct.igc_adapter, ptr %adapter, i32 0, i32 59
  %2 = ptrtoint ptr %ptp_tx_skb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ptp_tx_skb, align 4
  tail call void @__dev_kfree_skb_any(ptr noundef %3, i32 noundef 1) #9
  %4 = ptrtoint ptr %ptp_tx_skb to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %ptp_tx_skb, align 4
  %state = getelementptr inbounds %struct.igc_adapter, ptr %adapter, i32 0, i32 3
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %state, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !85
  tail call void @llvm.prefetch.p0(ptr %state, i32 1, i32 3, i32 1) #9
  %5 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %state, ptr %state, i32 8, ptr elementtype(i32) %state) #9, !srcloc !86
  %pdev = getelementptr inbounds %struct.igc_adapter, ptr %adapter, i32 0, i32 34
  %6 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdev, align 8
  %call2 = tail call zeroext i1 @pci_device_is_present(ptr noundef %7) #9
  br i1 %call2, label %if.then3, label %if.end.if.end4_crit_edge

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %prev_ptp_time.i = getelementptr inbounds %struct.igc_adapter, ptr %adapter, i32 0, i32 66
  %hw1.i.i = getelementptr inbounds %struct.igc_adapter, ptr %adapter, i32 0, i32 37
  %call.i.i11 = tail call i32 @igc_rd32(ptr noundef %hw1.i.i, i32 noundef 46592) #9
  %call2.i.i = tail call i32 @igc_rd32(ptr noundef %hw1.i.i, i32 noundef 46596) #9
  %conv.i.i = zext i32 %call2.i.i to i64
  %8 = ptrtoint ptr %prev_ptp_time.i to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %conv.i.i, ptr %prev_ptp_time.i, align 8
  %tv_nsec.i.i = getelementptr inbounds %struct.igc_adapter, ptr %adapter, i32 0, i32 66, i32 1
  %9 = ptrtoint ptr %tv_nsec.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %call.i.i11, ptr %tv_nsec.i.i, align 8
  %call.i = tail call i64 @ktime_get() #9
  %ptp_reset_start.i = getelementptr inbounds %struct.igc_adapter, ptr %adapter, i32 0, i32 67
  %10 = ptrtoint ptr %ptp_reset_start.i to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %call.i, ptr %ptp_reset_start.i, align 8
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge, %entry.if.end4_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @pci_device_is_present(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @igc_ptp_stop(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @igc_ptp_suspend(ptr noundef %adapter)
  %ptp_clock = getelementptr inbounds %struct.igc_adapter, ptr %adapter, i32 0, i32 56
  %0 = ptrtoint ptr %ptp_clock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ptp_clock, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 @ptp_clock_unregister(ptr noundef nonnull %1) #9
  %2 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %adapter, align 8
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %3, ptr noundef nonnull @.str.9) #12
  %ptp_flags = getelementptr inbounds %struct.igc_adapter, ptr %adapter, i32 0, i32 62
  %4 = ptrtoint ptr %ptp_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ptp_flags, align 8
  %and = and i32 %5, -2
  store i32 %and, ptr %ptp_flags, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ptp_clock_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @igc_ptp_reset(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  %dividend.addr.i.i.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr inbounds %struct.igc_adapter, ptr %adapter, i32 0, i32 37
  %tstamp_config = getelementptr inbounds %struct.igc_adapter, ptr %adapter, i32 0, i32 60
  %call = tail call fastcc i32 @igc_ptp_set_timestamp_mode(ptr noundef %adapter, ptr noundef %tstamp_config)
  %tmreg_lock = getelementptr inbounds %struct.igc_adapter, ptr %adapter, i32 0, i32 63
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %tmreg_lock) #9
  %type = getelementptr inbounds %struct.igc_adapter, ptr %adapter, i32 0, i32 37, i32 3, i32 3
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cond150 = icmp eq i32 %1, 1
  br i1 %cond150, label %sw.bb, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

sw.bb:                                            ; preds = %entry
  %call8 = tail call i32 @igc_rd32(ptr noundef %hw1, i32 noundef 46604) #9
  %or = or i32 %call8, 1073741824
  %hw_addr14 = getelementptr inbounds %struct.igc_adapter, ptr %adapter, i32 0, i32 37, i32 1
  %2 = ptrtoint ptr %hw_addr14 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %hw_addr14, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !122
  tail call void @arm_heavy_mb() #9
  %4 = tail call i32 @llvm.bswap.i32(i32 %or)
  %arrayidx = getelementptr i8, ptr %3, i32 46604
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx, i32 %4) #9, !srcloc !95
  %5 = ptrtoint ptr %hw_addr14 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %hw_addr14, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !123
  tail call void @arm_heavy_mb() #9
  %arrayidx30 = getelementptr i8, ptr %6, i32 46656
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx30, i32 0) #9, !srcloc !95
  %7 = ptrtoint ptr %hw_addr14 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %hw_addr14, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !124
  tail call void @arm_heavy_mb() #9
  %arrayidx43 = getelementptr i8, ptr %8, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx43, i32 0) #9, !srcloc !95
  %9 = ptrtoint ptr %hw_addr14 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %hw_addr14, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !125
  tail call void @arm_heavy_mb() #9
  %pps_sys_wrap_on = getelementptr inbounds %struct.igc_adapter, ptr %adapter, i32 0, i32 71
  %11 = ptrtoint ptr %pps_sys_wrap_on to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %pps_sys_wrap_on, align 4, !range !126
  %13 = or i8 %12, 2
  %or57 = zext i8 %13 to i32
  %14 = shl nuw nsw i32 %or57, 24
  %arrayidx58 = getelementptr i8, ptr %10, i32 46708
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx58, i32 %14) #9, !srcloc !95
  %15 = ptrtoint ptr %hw_addr14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %hw_addr14, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !127
  tail call void @arm_heavy_mb() #9
  %arrayidx71 = getelementptr i8, ptr %16, i32 5384
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx71, i32 2048) #9, !srcloc !95
  %17 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %18)
  %cmp142 = icmp eq i32 %18, 1
  br i1 %cmp142, label %if.then144, label %if.else

if.then144:                                       ; preds = %sw.bb
  %prev_ptp_time.i = getelementptr inbounds %struct.igc_adapter, ptr %adapter, i32 0, i32 66
  %19 = ptrtoint ptr %prev_ptp_time.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %ts.sroa.0.0.copyload7.i = load i64, ptr %prev_ptp_time.i, align 8
  %ts.sroa.7.0.prev_ptp_time.sroa_idx.i = getelementptr inbounds %struct.igc_adapter, ptr %adapter, i32 0, i32 66, i32 1
  %20 = ptrtoint ptr %ts.sroa.7.0.prev_ptp_time.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %ts.sroa.7.0.copyload8.i = load i32, ptr %ts.sroa.7.0.prev_ptp_time.sroa_idx.i, align 8
  %call.i = tail call i64 @ktime_get() #9
  %ptp_reset_start.i = getelementptr inbounds %struct.igc_adapter, ptr %adapter, i32 0, i32 67
  %21 = ptrtoint ptr %ptp_reset_start.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %ptp_reset_start.i, align 8
  %sub.i = sub i64 %call.i, %22
  %conv.i.i = sext i32 %ts.sroa.7.0.copyload8.i to i64
  %add.i.i = add i64 %sub.i, %conv.i.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %dividend.addr.i.i.i) #9
  %23 = ptrtoint ptr %dividend.addr.i.i.i to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %add.i.i, ptr %dividend.addr.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 999999999, i64 %add.i.i)
  %cmp1.i.i.i = icmp ugt i64 %add.i.i, 999999999
  %extract.t.i.i = trunc i64 %add.i.i to i32
  br i1 %cmp1.i.i.i, label %if.then144.while.body.i.i.i_crit_edge, label %if.then144.igc_ptp_time_restore.exit_crit_edge

if.then144.igc_ptp_time_restore.exit_crit_edge:   ; preds = %if.then144
  call void @__sanitizer_cov_trace_pc() #11
  br label %igc_ptp_time_restore.exit

if.then144.while.body.i.i.i_crit_edge:            ; preds = %if.then144
  br label %while.body.i.i.i

while.body.i.i.i:                                 ; preds = %while.body.i.i.i.while.body.i.i.i_crit_edge, %if.then144.while.body.i.i.i_crit_edge
  %ret.02.i.i.i = phi i32 [ %inc.i.i.i, %while.body.i.i.i.while.body.i.i.i_crit_edge ], [ 0, %if.then144.while.body.i.i.i_crit_edge ]
  %24 = phi i64 [ %sub.i.i.i, %while.body.i.i.i.while.body.i.i.i_crit_edge ], [ %add.i.i, %if.then144.while.body.i.i.i_crit_edge ]
  call void asm "", "=*rm,0"(ptr nonnull elementtype(i64) %dividend.addr.i.i.i, i64 %24) #9, !srcloc !128
  %25 = ptrtoint ptr %dividend.addr.i.i.i to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %dividend.addr.i.i.i, align 8
  %sub.i.i.i = add i64 %26, -1000000000
  store i64 %sub.i.i.i, ptr %dividend.addr.i.i.i, align 8
  %inc.i.i.i = add i32 %ret.02.i.i.i, 1
  %cmp.i.i.i = icmp ugt i64 %sub.i.i.i, 999999999
  br i1 %cmp.i.i.i, label %while.body.i.i.i.while.body.i.i.i_crit_edge, label %__iter_div_u64_rem.exit.loopexit.i.i

while.body.i.i.i.while.body.i.i.i_crit_edge:      ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i.i.i

__iter_div_u64_rem.exit.loopexit.i.i:             ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %extract.t7.le.i.i = trunc i64 %sub.i.i.i to i32
  br label %igc_ptp_time_restore.exit

igc_ptp_time_restore.exit:                        ; preds = %__iter_div_u64_rem.exit.loopexit.i.i, %if.then144.igc_ptp_time_restore.exit_crit_edge
  %.lcssa.i.off0.i.i = phi i32 [ %extract.t.i.i, %if.then144.igc_ptp_time_restore.exit_crit_edge ], [ %extract.t7.le.i.i, %__iter_div_u64_rem.exit.loopexit.i.i ]
  %ret.0.lcssa.i.i.i = phi i32 [ 0, %if.then144.igc_ptp_time_restore.exit_crit_edge ], [ %inc.i.i.i, %__iter_div_u64_rem.exit.loopexit.i.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %dividend.addr.i.i.i) #9
  %27 = ptrtoint ptr %hw_addr14 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile ptr, ptr %hw_addr14, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !106
  call void @arm_heavy_mb() #9
  %29 = call i32 @llvm.bswap.i32(i32 %.lcssa.i.off0.i.i) #9
  %arrayidx.i.i = getelementptr i8, ptr %28, i32 46592
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i.i, i32 %29) #9, !srcloc !95
  %30 = ptrtoint ptr %hw_addr14 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile ptr, ptr %hw_addr14, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !107
  call void @arm_heavy_mb() #9
  %32 = trunc i64 %ts.sroa.0.0.copyload7.i to i32
  %conv.i5.i = add i32 %ret.0.lcssa.i.i.i, %32
  %33 = call i32 @llvm.bswap.i32(i32 %conv.i5.i) #9
  %arrayidx19.i.i = getelementptr i8, ptr %31, i32 46596
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx19.i.i, i32 %33) #9, !srcloc !95
  br label %out

if.else:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %tc = getelementptr inbounds %struct.igc_adapter, ptr %adapter, i32 0, i32 65
  %cc = getelementptr inbounds %struct.igc_adapter, ptr %adapter, i32 0, i32 64
  %call.i174 = tail call i64 @ktime_get_with_offset(i32 noundef 0) #9
  tail call void @timecounter_init(ptr noundef %tc, ptr noundef %cc, i64 noundef %call.i174) #9
  br label %out

out:                                              ; preds = %if.else, %igc_ptp_time_restore.exit, %entry.out_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %tmreg_lock, i32 noundef %call4) #9
  %call149 = call i32 @igc_rd32(ptr noundef %hw1, i32 noundef 8) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @timecounter_init(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_normalized_timespec64(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ktime_get_real_ts64(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ptp_find_pin(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_tstamp_tx(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_with_offset(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind readonly }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !8, !10, !11, !13, !14, !16, !18, !20, !22, !24, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73}
!llvm.named.register.sp = !{!75}
!llvm.module.flags = !{!76, !77, !78, !79, !80, !81, !82, !83}
!llvm.ident = !{!84}

!0 = distinct !{null, !1, !"__print_once", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/intel/igc/igc_ptp.c", i32 484, i32 3}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/intel/igc/igc_ptp.c", i32 928, i32 43}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/intel/igc/igc_ptp.c", i32 932, i32 40}
!8 = !{ptr @igc_ptp_init.__key, !9, !"__key", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/intel/igc/igc_ptp.c", i32 957, i32 2}
!10 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @igc_ptp_init.__key.5, !12, !"__key", i1 false, i1 false}
!12 = !{!"../drivers/net/ethernet/intel/igc/igc_ptp.c", i32 958, i32 2}
!13 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/intel/igc/igc_ptp.c", i32 970, i32 22}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/intel/igc/igc_ptp.c", i32 972, i32 23}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/intel/igc/igc_ptp.c", i32 1028, i32 32}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/intel/igc/igc_ptp.c", i32 612, i32 31}
!22 = distinct !{null, !23, !"__already_done", i1 false, i1 false}
!23 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!24 = distinct !{null, !23, !"<string literal>", i1 false, i1 false}
!25 = distinct !{null, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!27 = !{ptr @.str.13, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!29 = !{ptr @igc_pin_extts.igc_aux0_sel_sdp, !30, !"igc_aux0_sel_sdp", i1 false, i1 false}
!30 = !{!"../drivers/net/ethernet/intel/igc/igc_ptp.c", i32 212, i32 19}
!31 = !{ptr @igc_pin_extts.igc_aux1_sel_sdp, !32, !"igc_aux1_sel_sdp", i1 false, i1 false}
!32 = !{!"../drivers/net/ethernet/intel/igc/igc_ptp.c", i32 215, i32 19}
!33 = !{ptr @igc_pin_extts.igc_ts_sdp_en, !34, !"igc_ts_sdp_en", i1 false, i1 false}
!34 = !{!"../drivers/net/ethernet/intel/igc/igc_ptp.c", i32 218, i32 19}
!35 = !{ptr @igc_pin_direction.mask, !36, !"mask", i1 false, i1 false}
!36 = !{!"../drivers/net/ethernet/intel/igc/igc_ptp.c", i32 131, i32 19}
!37 = !{ptr @igc_pin_perout.igc_aux0_sel_sdp, !38, !"igc_aux0_sel_sdp", i1 false, i1 false}
!38 = !{!"../drivers/net/ethernet/intel/igc/igc_ptp.c", i32 146, i32 19}
!39 = !{ptr @igc_pin_perout.igc_aux1_sel_sdp, !40, !"igc_aux1_sel_sdp", i1 false, i1 false}
!40 = !{!"../drivers/net/ethernet/intel/igc/igc_ptp.c", i32 149, i32 19}
!41 = !{ptr @igc_pin_perout.igc_ts_sdp_en, !42, !"igc_ts_sdp_en", i1 false, i1 false}
!42 = !{!"../drivers/net/ethernet/intel/igc/igc_ptp.c", i32 152, i32 19}
!43 = !{ptr @igc_pin_perout.igc_ts_sdp_sel_tt0, !44, !"igc_ts_sdp_sel_tt0", i1 false, i1 false}
!44 = !{!"../drivers/net/ethernet/intel/igc/igc_ptp.c", i32 155, i32 19}
!45 = !{ptr @igc_pin_perout.igc_ts_sdp_sel_tt1, !46, !"igc_ts_sdp_sel_tt1", i1 false, i1 false}
!46 = !{!"../drivers/net/ethernet/intel/igc/igc_ptp.c", i32 159, i32 19}
!47 = !{ptr @igc_pin_perout.igc_ts_sdp_sel_fc0, !48, !"igc_ts_sdp_sel_fc0", i1 false, i1 false}
!48 = !{!"../drivers/net/ethernet/intel/igc/igc_ptp.c", i32 163, i32 19}
!49 = !{ptr @igc_pin_perout.igc_ts_sdp_sel_fc1, !50, !"igc_ts_sdp_sel_fc1", i1 false, i1 false}
!50 = !{!"../drivers/net/ethernet/intel/igc/igc_ptp.c", i32 167, i32 19}
!51 = !{ptr @igc_pin_perout.igc_ts_sdp_sel_clr, !52, !"igc_ts_sdp_sel_clr", i1 false, i1 false}
!52 = !{!"../drivers/net/ethernet/intel/igc/igc_ptp.c", i32 171, i32 19}
!53 = !{ptr @.str.14, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/ethernet/intel/igc/igc_ptp.c", i32 854, i32 9}
!55 = distinct !{null, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/net/ethernet/intel/igc/igc_ptp.c", i32 858, i32 32}
!57 = distinct !{null, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/net/ethernet/intel/igc/igc_ptp.c", i32 877, i32 31}
!59 = distinct !{null, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/net/ethernet/intel/igc/igc_ptp.c", i32 798, i32 22}
!61 = distinct !{null, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/net/ethernet/intel/igc/igc_ptp.c", i32 801, i32 22}
!63 = distinct !{null, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/net/ethernet/intel/igc/igc_ptp.c", i32 804, i32 22}
!65 = distinct !{null, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/net/ethernet/intel/igc/igc_ptp.c", i32 807, i32 22}
!67 = distinct !{null, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/net/ethernet/intel/igc/igc_ptp.c", i32 810, i32 22}
!69 = distinct !{null, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/net/ethernet/intel/igc/igc_ptp.c", i32 813, i32 22}
!71 = distinct !{null, !72, !"__already_done", i1 false, i1 false}
!72 = !{!"../drivers/net/ethernet/intel/igc/igc_ptp.c", i32 705, i32 6}
!73 = distinct !{null, !74, !"__already_done", i1 false, i1 false}
!74 = !{!"../drivers/net/ethernet/intel/igc/igc_ptp.c", i32 649, i32 6}
!75 = !{!"sp"}
!76 = !{i32 1, !"wchar_size", i32 2}
!77 = !{i32 1, !"min_enum_size", i32 4}
!78 = !{i32 8, !"branch-target-enforcement", i32 0}
!79 = !{i32 8, !"sign-return-address", i32 0}
!80 = !{i32 8, !"sign-return-address-all", i32 0}
!81 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!82 = !{i32 7, !"uwtable", i32 1}
!83 = !{i32 7, !"frame-pointer", i32 2}
!84 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!85 = !{i64 2148642961}
!86 = !{i64 2148553356, i64 2148553388, i64 2148553417, i64 2148553451, i64 2148553482, i64 2148553505}
!87 = !{!"auto-init"}
!88 = !{i64 2153921054, i64 2153921079}
!89 = !{!"branch_weights", i32 2000, i32 1}
!90 = !{i64 6416609}
!91 = !{i64 6416806}
!92 = !{i64 2153902039}
!93 = !{i64 2153921735, i64 2153921760}
!94 = !{i64 2156805921}
!95 = !{i64 5024690}
!96 = !{i64 2156809366}
!97 = !{i64 2156785098}
!98 = !{i64 2156788625}
!99 = !{i64 2156792080}
!100 = !{i64 2156795516}
!101 = !{i64 2156799101}
!102 = !{i64 2156802536}
!103 = !{i64 909282, i64 909309}
!104 = !{i64 909977, i64 910004, i64 910037, i64 910058, i64 910085, i64 910111}
!105 = !{i64 2156723461}
!106 = !{i64 2156711352}
!107 = !{i64 2156718840}
!108 = !{i64 2156742609}
!109 = !{i64 2156746006}
!110 = !{i64 2156749408}
!111 = !{i64 2156754924}
!112 = !{i64 2156758324}
!113 = !{i64 2156732125}
!114 = !{i64 2156735522}
!115 = !{i64 2156738924}
!116 = !{i64 2156763221}
!117 = !{i64 2156766729}
!118 = !{i64 2156770202}
!119 = !{i64 2156773594}
!120 = !{i64 2156776994}
!121 = !{i64 2156780952}
!122 = !{i64 2156837274}
!123 = !{i64 2156840672}
!124 = !{i64 2156844061}
!125 = !{i64 2156847817}
!126 = !{i8 0, i8 2}
!127 = !{i64 2156851633}
!128 = !{i64 1413990}
