; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/intel/ixgbe/ixgbe_ptp.c_pt.bc'
source_filename = "../drivers/net/ethernet/intel/ixgbe/ixgbe_ptp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon.22 }
%union.anon.22 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ptp_clock_event = type { i32, i32, %union.anon.136 }
%union.anon.136 = type { %struct.pps_event_time }
%struct.pps_event_time = type { %struct.timespec64 }
%struct.timespec64 = type { i64, i32 }
%struct.ixgbe_adapter = type { [128 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, i32, i16, i16, i64, i32, i16, i64, i16, i16, i32, [64 x ptr], ptr, [52 x i8], [64 x ptr], i64, i64, i32, [64 x ptr], i32, i32, i64, i64, i64, i64, i64, i32, i32, i32, [64 x ptr], ptr, ptr, %struct.ixgbe_dcb_config, %struct.ixgbe_dcb_config, i8, i8, i8, i32, i32, i32, [68 x i8], [5 x %struct.ixgbe_ring_feature], ptr, i32, [120 x i8], %struct.ixgbe_ring, %struct.ixgbe_ring, %struct.ixgbe_hw, i16, %struct.ixgbe_hw_stats, i64, i32, i32, i32, i32, i8, i32, i32, %struct.timer_list, %struct.work_struct, %struct.hlist_head, i32, %union.ixgbe_atr_input, i32, i32, i32, %struct.spinlock, %struct.ixgbe_fcoe, ptr, i32, i16, [32 x i8], i16, i32, i32, ptr, %struct.ptp_clock_info, %struct.work_struct, ptr, %struct.hwtstamp_config, i32, i32, i32, i32, %struct.spinlock, %struct.cyclecounter, %struct.timecounter, i32, i32, i32, i32, ptr, [2 x i32], i32, ptr, i32, %struct.vf_macvlans, ptr, i32, i32, ptr, ptr, ptr, ptr, i8, [2 x i32], [10 x ptr], i32, [512 x i8], ptr, ptr, [88 x i8] }
%struct.ixgbe_dcb_config = type { %struct.dcb_support, %struct.dcb_num_tcs, [8 x %struct.tc_configuration], [2 x [8 x i8]], i8, i32, i32 }
%struct.dcb_support = type { i32, i8, i8 }
%struct.dcb_num_tcs = type { i8, i8 }
%struct.tc_configuration = type { [2 x %struct.tc_bw_alloc], i32, i16, i8 }
%struct.tc_bw_alloc = type { i8, i8, i8, i8, i16, i16, i32 }
%struct.ixgbe_ring_feature = type { i16, i16, i16, i16, [120 x i8] }
%struct.ixgbe_ring = type { ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.118, i32, ptr, i32, i32, i16, i8, i8, i16, i16, i32, %union.anon.125, i8, %struct.ixgbe_queue_stats, %struct.u64_stats_sync, %union.anon.127, i16, [86 x i8], %struct.xdp_rxq_info, %struct.spinlock, ptr, i16, i16, [76 x i8] }
%union.anon.118 = type { ptr }
%union.anon.125 = type { i16 }
%struct.ixgbe_queue_stats = type { i64, i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%union.anon.127 = type { %struct.ixgbe_rx_queue_stats }
%struct.ixgbe_rx_queue_stats = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.xdp_rxq_info = type { ptr, i32, i32, %struct.xdp_mem_info, i32, [104 x i8] }
%struct.xdp_mem_info = type { i32, i32 }
%struct.ixgbe_hw = type { ptr, ptr, %struct.ixgbe_mac_info, %struct.ixgbe_addr_filter_info, %struct.ixgbe_fc_info, %struct.ixgbe_phy_info, %struct.ixgbe_link_info, %struct.ixgbe_eeprom_info, %struct.ixgbe_bus_info, %struct.ixgbe_mbx_info, ptr, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8 }
%struct.ixgbe_mac_info = type { %struct.ixgbe_mac_operations, i32, [6 x i8], [6 x i8], [6 x i8], i16, i16, i16, [128 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, %struct.ixgbe_thermal_sensor_data, i8, i8 }
%struct.ixgbe_mac_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ixgbe_thermal_sensor_data = type { [3 x %struct.ixgbe_thermal_diode_data] }
%struct.ixgbe_thermal_diode_data = type { i8, i8, i8, i8 }
%struct.ixgbe_addr_filter_info = type { i32, i32, i32, i32, i8, i8 }
%struct.ixgbe_fc_info = type { [8 x i32], [8 x i32], i16, i8, i8, i8, i8, i32, i32 }
%struct.ixgbe_phy_info = type { %struct.ixgbe_phy_operations, %struct.mdio_if_info, i32, i32, i32, i8, i32, i32, i32, i8, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32 }
%struct.ixgbe_phy_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mdio_if_info = type { i32, i32, i32, ptr, ptr, ptr }
%struct.ixgbe_link_info = type { %struct.ixgbe_link_operations, i8 }
%struct.ixgbe_link_operations = type { ptr, ptr, ptr, ptr }
%struct.ixgbe_eeprom_info = type { %struct.ixgbe_eeprom_operations, i32, i32, i16, i16, i16, i16 }
%struct.ixgbe_eeprom_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ixgbe_bus_info = type { i32, i32, i32, i8, i8, i8 }
%struct.ixgbe_mbx_info = type { ptr, %struct.ixgbe_mbx_stats, i32, i32, i32, i16 }
%struct.ixgbe_mbx_stats = type { i32, i32, i32, i32, i32 }
%struct.ixgbe_hw_stats = type { i64, i64, i64, i64, i64, [8 x i64], i64, i64, i64, i64, i64, i64, i64, [8 x i64], [8 x i64], [8 x i64], [8 x i64], i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [8 x i64], i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [16 x i64], [8 x i64], [16 x i64], [16 x i64], [16 x i64], [16 x i64], [16 x i64], [8 x i64], i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_head = type { ptr }
%union.ixgbe_atr_input = type { %struct.anon.128 }
%struct.anon.128 = type { i8, i8, i16, [4 x i32], [4 x i32], i16, i16, i16, i16 }
%struct.ixgbe_fcoe = type { ptr, %struct.atomic_t, %struct.spinlock, [2048 x %struct.ixgbe_fcoe_ddp], ptr, i32, i32, i8 }
%struct.atomic_t = type { i32 }
%struct.ixgbe_fcoe_ddp = type { i32, i32, i32, ptr, i32, ptr, ptr }
%struct.ptp_clock_info = type { ptr, [32 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.hwtstamp_config = type { i32, i32, i32 }
%struct.spinlock = type { %union.anon.23 }
%union.anon.23 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.24 }
%union.anon.24 = type { i32 }
%struct.cyclecounter = type { ptr, i64, i32, i32 }
%struct.timecounter = type { ptr, i64, i64, i64, i64 }
%struct.vf_macvlans = type { %struct.list_head, i32, i8, i8, [6 x i8] }
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
%struct.refcount_struct = type { %struct.atomic_t }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
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
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.117, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.117 = type { ptr }
%struct.ptp_system_timestamp = type { %struct.timespec64, %struct.timespec64 }

@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"clearing RX Timestamp hang\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"clearing Tx timestamp hang\0A\00", [36 x i8] zeroinitializer }, align 32
@ixgbe_ptp_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&adapter->tmreg_lock\00", [43 x i8] zeroinitializer }, align 32
@ixgbe_ptp_init.__key.3 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"(work_completion)(&adapter->ptp_tx_work)\00", [55 x i8] zeroinitializer }, align 32
@ixgbe_ptp_stop._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 1496, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"removed PHC on %s\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ixgbe_ptp_stop\00", [17 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"drivers/net/ethernet/intel/ixgbe/ixgbe_ptp.c\00", [51 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ixgbe_ptp_stop._entry_ptr = internal global ptr @ixgbe_ptp_stop._entry, section ".printk_index", align 4
@.str.13 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@ixgbe_ptp_create_clock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.7, i32 1410, ptr @.str.17, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ptp_clock_register failed\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ixgbe_ptp_create_clock\00", [41 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@ixgbe_ptp_create_clock._entry_ptr = internal global ptr @ixgbe_ptp_create_clock._entry, section ".printk_index", align 4
@ixgbe_ptp_create_clock._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.16, ptr @.str.7, i32 1413, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"registered PHC device on %s\0A\00", [35 x i8] zeroinitializer }, align 32
@ixgbe_ptp_create_clock._entry_ptr.20 = internal global ptr @ixgbe_ptp_create_clock._entry.18, section ".printk_index", align 4
@ixgbe_ptp_adjfreq_82599._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.7, i32 470, ptr @.str.23, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"PTP ppb adjusted SYSTIME rate overflowed!\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ixgbe_ptp_adjfreq_82599\00", [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@ixgbe_ptp_adjfreq_82599._entry_ptr = internal global ptr @ixgbe_ptp_adjfreq_82599._entry, section ".printk_index", align 4
@ixgbe_ptp_adjfreq_82599._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.7, i32 475, ptr @.str.23, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@ixgbe_ptp_adjfreq_82599._entry_ptr.25 = internal global ptr @ixgbe_ptp_adjfreq_82599._entry.24, section ".printk_index", align 4
@ixgbe_ptp_adjfreq_X550._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.26, ptr @.str.7, i32 513, ptr @.str.23, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ixgbe_ptp_adjfreq_X550\00", [41 x i8] zeroinitializer }, align 32
@ixgbe_ptp_adjfreq_X550._entry_ptr = internal global ptr @ixgbe_ptp_adjfreq_X550._entry, section ".printk_index", align 4
@.str.27 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"clearing Tx Timestamp hang\0A\00", [36 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.28 = internal global [17 x i64] [i64 15, i64 32, i64 0, i64 1, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15]
@__sancov_gen_cov_switch_values.29 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.30 = internal global [7 x i64] [i64 5, i64 32, i64 2, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.31 = internal global [4 x i64] [i64 2, i64 32, i64 8, i64 32]
@__sancov_gen_cov_switch_values.32 = internal global [4 x i64] [i64 2, i64 32, i64 8, i64 32]
@__sancov_gen_cov_switch_values.33 = internal global [7 x i64] [i64 5, i64 32, i64 2, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.34 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 753, i32 3 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 800, i32 3 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 1439, i32 2 }
@___asan_gen_.47 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 1446, i32 2 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 1495, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 174, i32 2 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 1352, i32 5 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 1410, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 1413, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 470, i32 4 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 475, i32 4 }
@___asan_gen_.110 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 513, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.117 = private constant [48 x i8] c"../drivers/net/ethernet/intel/ixgbe/ixgbe_ptp.c\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 869, i32 3 }
@llvm.compiler.used = appending global [34 x ptr] [ptr @ixgbe_ptp_adjfreq_82599._entry, ptr @ixgbe_ptp_adjfreq_82599._entry.24, ptr @ixgbe_ptp_adjfreq_82599._entry_ptr, ptr @ixgbe_ptp_adjfreq_82599._entry_ptr.25, ptr @ixgbe_ptp_adjfreq_X550._entry, ptr @ixgbe_ptp_adjfreq_X550._entry_ptr, ptr @ixgbe_ptp_create_clock._entry, ptr @ixgbe_ptp_create_clock._entry.18, ptr @ixgbe_ptp_create_clock._entry_ptr, ptr @ixgbe_ptp_create_clock._entry_ptr.20, ptr @ixgbe_ptp_stop._entry, ptr @ixgbe_ptp_stop._entry_ptr, ptr @.str, ptr @.str.1, ptr @ixgbe_ptp_init.__key, ptr @.str.2, ptr @ixgbe_ptp_init.__key.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.26, ptr @.str.27], section "llvm.metadata"
@0 = internal global [28 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ixgbe_ptp_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ixgbe_ptp_init.__key.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ixgbe_ptp_stop._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ixgbe_ptp_create_clock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ixgbe_ptp_create_clock._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ixgbe_ptp_adjfreq_82599._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ixgbe_ptp_adjfreq_82599._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ixgbe_ptp_adjfreq_X550._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ixgbe_ptp_check_pps_event(ptr nocapture noundef readonly %adapter) local_unnamed_addr #0 align 64 {
entry:
  %event = alloca %struct.ptp_clock_event, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %event) #8
  %0 = call ptr @memset(ptr %event, i32 255, i32 24)
  %1 = ptrtoint ptr %event to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 2, ptr %event, align 8
  %ptp_clock = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 82
  %2 = ptrtoint ptr %ptp_clock to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ptp_clock, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %type2 = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 54, i32 2, i32 1
  %4 = ptrtoint ptr %type2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %type2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %5)
  %cond = icmp eq i32 %5, 3
  br i1 %cond, label %sw.bb, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @ptp_clock_event(ptr noundef nonnull %3, ptr noundef nonnull %event) #8
  br label %cleanup

cleanup:                                          ; preds = %sw.bb, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %event) #8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ptp_clock_event(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ixgbe_ptp_overflow_check(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %last_overflow_check = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 88
  %0 = ptrtoint ptr %last_overflow_check to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %last_overflow_check, align 4
  %add = add i32 %1, 3000
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %do.body1, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %tmreg_lock = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 91
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %tmreg_lock) #8
  %hw_tc = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 93
  %call6 = tail call i64 @timecounter_read(ptr noundef %hw_tc) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %tmreg_lock, i32 noundef %call3) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %3 = load volatile i32, ptr @jiffies, align 128
  %4 = ptrtoint ptr %last_overflow_check to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %last_overflow_check, align 4
  br label %if.end

if.end:                                           ; preds = %do.body1, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @timecounter_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ixgbe_ptp_rx_hang(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 54
  %call = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 20872) #8
  %and = and i32 %call, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %last_rx_ptp_check = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 89
  %1 = ptrtoint ptr %last_rx_ptp_check to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %0, ptr %last_rx_ptp_check, align 8
  br label %cleanup

if.end:                                           ; preds = %entry
  %last_rx_ptp_check2 = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 89
  %2 = ptrtoint ptr %last_rx_ptp_check2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %last_rx_ptp_check2, align 8
  %num_rx_queues = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 12
  %4 = ptrtoint ptr %num_rx_queues to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_rx_queues, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp36 = icmp sgt i32 %5, 0
  br i1 %cmp36, label %if.end.for.body_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %n.038 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %rx_event.037 = phi i32 [ %spec.select, %for.body.for.body_crit_edge ], [ %3, %if.end.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 25, i32 %n.038
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %last_rx_timestamp = getelementptr inbounds %struct.ixgbe_ring, ptr %7, i32 0, i32 16
  %8 = ptrtoint ptr %last_rx_timestamp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %last_rx_timestamp, align 4
  %sub = sub i32 %rx_event.037, %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp4 = icmp slt i32 %sub, 0
  %spec.select = select i1 %cmp4, i32 %9, i32 %rx_event.037
  %inc = add nuw nsw i32 %n.038, 1
  %exitcond.not = icmp eq i32 %inc, %5
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  %rx_event.0.lcssa = phi i32 [ %3, %if.end.for.end_crit_edge ], [ %spec.select, %for.body.for.end_crit_edge ]
  %add = add i32 %rx_event.0.lcssa, 500
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %10 = load volatile i32, ptr @jiffies, align 128
  %sub8 = sub i32 %add, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub8)
  %cmp9 = icmp slt i32 %sub8, 0
  br i1 %cmp9, label %if.then10, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then10:                                        ; preds = %for.end
  %call11 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 20900) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %11 = load volatile i32, ptr @jiffies, align 128
  %12 = ptrtoint ptr %last_rx_ptp_check2 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %last_rx_ptp_check2, align 8
  %rx_hwtstamp_cleared = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 97
  %13 = ptrtoint ptr %rx_hwtstamp_cleared to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %rx_hwtstamp_cleared, align 4
  %inc13 = add i32 %14, 1
  store i32 %inc13, ptr %rx_hwtstamp_cleared, align 4
  %msg_enable = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 55
  %15 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %msg_enable, align 4
  %17 = and i16 %16, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %tobool15.not = icmp eq i16 %17, 0
  br i1 %tobool15.not, label %if.then10.cleanup_crit_edge, label %if.then16

if.then10.cleanup_crit_edge:                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then16:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #10
  %netdev = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 1
  %18 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %netdev, align 128
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %19, ptr noundef nonnull @.str) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then16, %if.then10.cleanup_crit_edge, %for.end.cleanup_crit_edge, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbe_read_reg(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ixgbe_ptp_tx_hang(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ptp_tx_start = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 87
  %0 = ptrtoint ptr %ptp_tx_start to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ptp_tx_start, align 16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %ptp_tx_skb = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 85
  %3 = ptrtoint ptr %ptp_tx_skb to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ptp_tx_skb, align 128
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %add = add i32 %1, 100
  %sub = sub i32 %add, %2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub)
  %cmp = icmp sgt i32 %sub, -1
  %state = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 5
  %5 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %state, align 4
  %7 = and i32 %6, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool1.not = icmp eq i32 %7, 0
  %brmerge = select i1 %tobool1.not, i1 true, i1 %cmp
  br i1 %brmerge, label %if.end.cleanup_crit_edge, label %if.then5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then5:                                         ; preds = %if.end
  %ptp_tx_work = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 84
  %call6 = tail call zeroext i1 @cancel_work_sync(ptr noundef %ptp_tx_work) #8
  %hw1.i = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 54
  %call.i = tail call i32 @ixgbe_read_reg(ptr noundef %hw1.i, i32 noundef 35848) #8
  %8 = ptrtoint ptr %ptp_tx_skb to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ptp_tx_skb, align 128
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %if.then5.ixgbe_ptp_clear_tx_timestamp.exit_crit_edge, label %if.then.i

if.then5.ixgbe_ptp_clear_tx_timestamp.exit_crit_edge: ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  br label %ixgbe_ptp_clear_tx_timestamp.exit

if.then.i:                                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %9, i32 noundef 1) #8
  %10 = ptrtoint ptr %ptp_tx_skb to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %ptp_tx_skb, align 128
  br label %ixgbe_ptp_clear_tx_timestamp.exit

ixgbe_ptp_clear_tx_timestamp.exit:                ; preds = %if.then.i, %if.then5.ixgbe_ptp_clear_tx_timestamp.exit_crit_edge
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %state, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !64
  tail call void @llvm.prefetch.p0(ptr %state, i32 1, i32 3, i32 1) #8
  %11 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %state, ptr %state, i32 512, ptr elementtype(i32) %state) #8, !srcloc !65
  %tx_hwtstamp_timeouts = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 95
  %12 = ptrtoint ptr %tx_hwtstamp_timeouts to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tx_hwtstamp_timeouts, align 4
  %inc = add i32 %13, 1
  store i32 %inc, ptr %tx_hwtstamp_timeouts, align 4
  %msg_enable = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 55
  %14 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %msg_enable, align 4
  %16 = and i16 %15, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %tobool7.not = icmp eq i16 %16, 0
  br i1 %tobool7.not, label %ixgbe_ptp_clear_tx_timestamp.exit.cleanup_crit_edge, label %if.then8

ixgbe_ptp_clear_tx_timestamp.exit.cleanup_crit_edge: ; preds = %ixgbe_ptp_clear_tx_timestamp.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then8:                                         ; preds = %ixgbe_ptp_clear_tx_timestamp.exit
  call void @__sanitizer_cov_trace_pc() #10
  %netdev = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 1
  %17 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %netdev, align 128
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %18, ptr noundef nonnull @.str.1) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then8, %ixgbe_ptp_clear_tx_timestamp.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ixgbe_ptp_rx_pktstamp(ptr nocapture noundef readonly %q_vector, ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  %regval = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %regval) #8
  %0 = ptrtoint ptr %regval to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %regval, align 8, !annotation !66
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %1 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %len, align 4
  %sub = add i32 %2, -8
  %call = call i32 @skb_copy_bits(ptr noundef %skb, i32 noundef %sub, ptr noundef nonnull %regval, i32 noundef 8) #8
  %3 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %len, align 4
  %sub2 = add i32 %4, -8
  %data_len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %5 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %data_len.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i, label %__skb_trim.exit.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = call i32 @___pskb_trim(ptr noundef %skb, i32 noundef %sub2) #8
  br label %__pskb_trim.exit

__skb_trim.exit.i:                                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %sub2, ptr %len, align 4
  %data.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %8 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data.i.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %9, i32 %sub2
  %tail.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %10 = ptrtoint ptr %tail.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %add.ptr.i.i.i.i, ptr %tail.i.i.i.i, align 8
  br label %__pskb_trim.exit

__pskb_trim.exit:                                 ; preds = %__skb_trim.exit.i, %if.then.i
  %11 = ptrtoint ptr %q_vector to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %q_vector, align 128
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %13 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %end.i.i, align 4
  %hwtstamps.i = getelementptr inbounds %struct.skb_shared_info, ptr %14, i32 0, i32 7
  %15 = ptrtoint ptr %regval to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %regval, align 8
  %17 = call i64 @llvm.bswap.i64(i64 %16)
  %18 = ptrtoint ptr %hwtstamps.i to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 0, ptr %hwtstamps.i, align 8
  %type.i = getelementptr inbounds %struct.ixgbe_adapter, ptr %12, i32 0, i32 54, i32 2, i32 1
  %19 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %type.i, align 8
  %.off.i = add i32 %20, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off.i)
  %switch.i = icmp ult i32 %.off.i, 3
  br i1 %switch.i, label %timespec64_to_ns.exit.i, label %__pskb_trim.exit.ixgbe_ptp_convert_to_hwtstamp.exit_crit_edge

__pskb_trim.exit.ixgbe_ptp_convert_to_hwtstamp.exit_crit_edge: ; preds = %__pskb_trim.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %ixgbe_ptp_convert_to_hwtstamp.exit

timespec64_to_ns.exit.i:                          ; preds = %__pskb_trim.exit
  call void @__sanitizer_cov_trace_pc() #10
  %shr.i = lshr i64 %17, 32
  %mul.i.i = mul nuw nsw i64 %shr.i, 1000000000
  %21 = shl i64 %17, 32
  %conv.i.i = ashr exact i64 %21, 32
  %add.i.i = add nsw i64 %mul.i.i, %conv.i.i
  br label %ixgbe_ptp_convert_to_hwtstamp.exit

ixgbe_ptp_convert_to_hwtstamp.exit:               ; preds = %timespec64_to_ns.exit.i, %__pskb_trim.exit.ixgbe_ptp_convert_to_hwtstamp.exit_crit_edge
  %timestamp.addr.0.i = phi i64 [ %17, %__pskb_trim.exit.ixgbe_ptp_convert_to_hwtstamp.exit_crit_edge ], [ %add.i.i, %timespec64_to_ns.exit.i ]
  %tmreg_lock.i = getelementptr inbounds %struct.ixgbe_adapter, ptr %12, i32 0, i32 91
  %call4.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %tmreg_lock.i) #8
  %hw_tc.i = getelementptr inbounds %struct.ixgbe_adapter, ptr %12, i32 0, i32 93
  %call7.i = call i64 @timecounter_cyc2time(ptr noundef %hw_tc.i, i64 noundef %timestamp.addr.0.i) #8
  call void @_raw_spin_unlock_irqrestore(ptr noundef %tmreg_lock.i, i32 noundef %call4.i) #8
  %22 = ptrtoint ptr %hwtstamps.i to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %call7.i, ptr %hwtstamps.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %regval) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ixgbe_ptp_rx_rgtstamp(ptr noundef readonly %q_vector, ptr nocapture noundef readonly %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %q_vector, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %0 = ptrtoint ptr %q_vector to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %q_vector, align 128
  %tobool2.not = icmp eq ptr %1, null
  br i1 %tobool2.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %hw4 = getelementptr inbounds %struct.ixgbe_adapter, ptr %1, i32 0, i32 54
  %call = tail call i32 @ixgbe_read_reg(ptr noundef %hw4, i32 noundef 20872) #8
  %and = and i32 %call, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %call8 = tail call i32 @ixgbe_read_reg(ptr noundef %hw4, i32 noundef 20968) #8
  %conv = zext i32 %call8 to i64
  %call9 = tail call i32 @ixgbe_read_reg(ptr noundef %hw4, i32 noundef 20900) #8
  %conv10 = zext i32 %call9 to i64
  %shl = shl nuw i64 %conv10, 32
  %or11 = or i64 %shl, %conv
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %2 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %end.i.i, align 4
  %hwtstamps.i = getelementptr inbounds %struct.skb_shared_info, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %hwtstamps.i to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 0, ptr %hwtstamps.i, align 8
  %type.i = getelementptr inbounds %struct.ixgbe_adapter, ptr %1, i32 0, i32 54, i32 2, i32 1
  %5 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %type.i, align 8
  %.off.i = add i32 %6, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off.i)
  %switch.i = icmp ult i32 %.off.i, 3
  br i1 %switch.i, label %timespec64_to_ns.exit.i, label %if.end7.ixgbe_ptp_convert_to_hwtstamp.exit_crit_edge

if.end7.ixgbe_ptp_convert_to_hwtstamp.exit_crit_edge: ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %ixgbe_ptp_convert_to_hwtstamp.exit

timespec64_to_ns.exit.i:                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  %mul.i.i = mul nuw nsw i64 %conv10, 1000000000
  %conv.i.i = sext i32 %call8 to i64
  %add.i.i = add nsw i64 %mul.i.i, %conv.i.i
  br label %ixgbe_ptp_convert_to_hwtstamp.exit

ixgbe_ptp_convert_to_hwtstamp.exit:               ; preds = %timespec64_to_ns.exit.i, %if.end7.ixgbe_ptp_convert_to_hwtstamp.exit_crit_edge
  %timestamp.addr.0.i = phi i64 [ %or11, %if.end7.ixgbe_ptp_convert_to_hwtstamp.exit_crit_edge ], [ %add.i.i, %timespec64_to_ns.exit.i ]
  %tmreg_lock.i = getelementptr inbounds %struct.ixgbe_adapter, ptr %1, i32 0, i32 91
  %call4.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %tmreg_lock.i) #8
  %hw_tc.i = getelementptr inbounds %struct.ixgbe_adapter, ptr %1, i32 0, i32 93
  %call7.i = tail call i64 @timecounter_cyc2time(ptr noundef %hw_tc.i, i64 noundef %timestamp.addr.0.i) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %tmreg_lock.i, i32 noundef %call4.i) #8
  %7 = ptrtoint ptr %hwtstamps.i to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %call7.i, ptr %hwtstamps.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %ixgbe_ptp_convert_to_hwtstamp.exit, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ixgbe_ptp_get_ts_config(ptr noundef %adapter, ptr nocapture noundef readonly %ifr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tstamp_config = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 86
  %ifr_ifru = getelementptr inbounds %struct.ifreq, ptr %ifr, i32 0, i32 1
  %0 = ptrtoint ptr %ifr_ifru to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ifr_ifru, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.13, i32 noundef 174) #8
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i, label %entry.copy_to_user.exit.thread_crit_edge, label %if.end.i.i

entry.copy_to_user.exit.thread_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %copy_to_user.exit.thread

if.end.i.i:                                       ; preds = %entry
  %2 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 12, i32 -1226833920) #12, !srcloc !67
  %asmresult.i.i = extractvalue { i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i.i, label %copy_to_user.exit, label %if.end.i.i.copy_to_user.exit.thread_crit_edge

if.end.i.i.copy_to_user.exit.thread_crit_edge:    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %copy_to_user.exit.thread

copy_to_user.exit:                                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %tstamp_config, i32 noundef 12) #8
  %call.i1.i.i = tail call i32 @arm_copy_to_user(ptr noundef %1, ptr noundef %tstamp_config, i32 noundef 12) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i.i)
  %tobool.not = icmp eq i32 %call.i1.i.i, 0
  %spec.select = select i1 %tobool.not, i32 0, i32 -14
  br label %copy_to_user.exit.thread

copy_to_user.exit.thread:                         ; preds = %copy_to_user.exit, %if.end.i.i.copy_to_user.exit.thread_crit_edge, %entry.copy_to_user.exit.thread_crit_edge
  %3 = phi i32 [ -14, %entry.copy_to_user.exit.thread_crit_edge ], [ -14, %if.end.i.i.copy_to_user.exit.thread_crit_edge ], [ %spec.select, %copy_to_user.exit ]
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ixgbe_ptp_set_ts_config(ptr noundef %adapter, ptr nocapture noundef readonly %ifr) local_unnamed_addr #0 align 64 {
entry:
  %config = alloca %struct.hwtstamp_config, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %config) #8
  %0 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %config, align 4, !annotation !66
  %1 = getelementptr inbounds %struct.hwtstamp_config, ptr %config, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !66
  %3 = getelementptr inbounds %struct.hwtstamp_config, ptr %config, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4, !annotation !66
  %ifr_ifru = getelementptr inbounds %struct.ifreq, ptr %ifr, i32 0, i32 1
  %5 = ptrtoint ptr %ifr_ifru to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ifr_ifru, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.13, i32 noundef 156) #8
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i, label %entry.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.then11.i.i_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %7 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %6, i32 12, i32 -1226833920) #12, !srcloc !68
  %asmresult.i.i = extractvalue { i32, i32 } %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !69

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %config, i32 noundef 12) #8
  %8 = call i32 @llvm.read_register.i32(metadata !54) #8
  %and.i.i.i.i.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 4
  %10 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #6, !srcloc !70
  %and.i.i.i.i = and i32 %10, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #8, !srcloc !71
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !72
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %config, ptr noundef %6, i32 noundef 12) #8
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %10) #8, !srcloc !71
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !72
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !69

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %entry.if.then11.i.i_crit_edge
  %res.03.i.i = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 12, %entry.if.then11.i.i_crit_edge ], [ 12, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 12, %res.03.i.i
  %add.ptr.i.i = getelementptr i8, ptr %config, i32 %sub.i.i
  %11 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.03.i.i)
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  %call1 = call fastcc i32 @ixgbe_ptp_set_timestamp_mode(ptr noundef %adapter, ptr noundef nonnull %config)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.then.i15, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.i15:                                      ; preds = %if.end
  %tstamp_config = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 86
  %12 = call ptr @memcpy(ptr %tstamp_config, ptr %config, i32 12)
  %13 = ptrtoint ptr %ifr_ifru to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ifr_ifru, align 4
  call void @__might_fault(ptr noundef nonnull @.str.13, i32 noundef 174) #8
  %call.i.i14 = call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i14, label %if.then.i15.cleanup_crit_edge, label %if.end.i.i18

if.then.i15.cleanup_crit_edge:                    ; preds = %if.then.i15
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i.i18:                                     ; preds = %if.then.i15
  %15 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %14, i32 12, i32 -1226833920) #12, !srcloc !67
  %asmresult.i.i16 = extractvalue { i32, i32 } %15, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i16)
  %cmp.i.i17 = icmp eq i32 %asmresult.i.i16, 0
  br i1 %cmp.i.i17, label %copy_to_user.exit, label %if.end.i.i18.cleanup_crit_edge

if.end.i.i18.cleanup_crit_edge:                   ; preds = %if.end.i.i18
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

copy_to_user.exit:                                ; preds = %if.end.i.i18
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i19 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %config, i32 noundef 12) #8
  %call.i1.i.i = call i32 @arm_copy_to_user(ptr noundef %14, ptr noundef nonnull %config, i32 noundef 12) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i.i)
  %tobool7.not = icmp eq i32 %call.i1.i.i, 0
  %spec.select = select i1 %tobool7.not, i32 0, i32 -14
  br label %cleanup

cleanup:                                          ; preds = %copy_to_user.exit, %if.end.i.i18.cleanup_crit_edge, %if.then.i15.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then11.i.i
  %retval.0 = phi i32 [ %call1, %if.end.cleanup_crit_edge ], [ -14, %if.then11.i.i ], [ -14, %if.then.i15.cleanup_crit_edge ], [ -14, %if.end.i.i18.cleanup_crit_edge ], [ %spec.select, %copy_to_user.exit ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %config) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ixgbe_ptp_set_timestamp_mode(ptr noundef %adapter, ptr nocapture noundef %config) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 54
  %tx_type = getelementptr inbounds %struct.hwtstamp_config, ptr %config, i32 0, i32 1
  %0 = ptrtoint ptr %tx_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tx_type, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %entry.sw.epilog_crit_edge
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %entry.sw.epilog_crit_edge
  %tsync_tx_ctl.0 = phi i32 [ 16, %entry.sw.epilog_crit_edge ], [ 0, %sw.bb ]
  %rx_filter = getelementptr inbounds %struct.hwtstamp_config, ptr %config, i32 0, i32 2
  %3 = ptrtoint ptr %rx_filter to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %rx_filter, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.28)
  switch i32 %4, label %sw.epilog.sw.default22_crit_edge [
    i32 0, label %sw.bb2
    i32 4, label %sw.bb3
    i32 5, label %sw.bb7
    i32 12, label %sw.epilog.sw.bb12_crit_edge
    i32 9, label %sw.epilog.sw.bb12_crit_edge127
    i32 6, label %sw.epilog.sw.bb12_crit_edge128
    i32 13, label %sw.epilog.sw.bb12_crit_edge129
    i32 10, label %sw.epilog.sw.bb12_crit_edge130
    i32 7, label %sw.epilog.sw.bb12_crit_edge131
    i32 14, label %sw.epilog.sw.bb12_crit_edge132
    i32 11, label %sw.epilog.sw.bb12_crit_edge133
    i32 8, label %sw.epilog.sw.bb12_crit_edge134
    i32 3, label %sw.epilog.sw.bb17_crit_edge
    i32 15, label %sw.epilog.sw.bb17_crit_edge135
    i32 1, label %sw.epilog.sw.bb17_crit_edge136
  ]

sw.epilog.sw.bb17_crit_edge136:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb17

sw.epilog.sw.bb17_crit_edge135:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb17

sw.epilog.sw.bb17_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb17

sw.epilog.sw.bb12_crit_edge134:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb12

sw.epilog.sw.bb12_crit_edge133:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb12

sw.epilog.sw.bb12_crit_edge132:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb12

sw.epilog.sw.bb12_crit_edge131:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb12

sw.epilog.sw.bb12_crit_edge130:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb12

sw.epilog.sw.bb12_crit_edge129:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb12

sw.epilog.sw.bb12_crit_edge128:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb12

sw.epilog.sw.bb12_crit_edge127:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb12

sw.epilog.sw.bb12_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb12

sw.epilog.sw.default22_crit_edge:                 ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.default22

sw.bb2:                                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %flags = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 6
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags, align 4
  %and = and i32 %7, -100663297
  store i32 %and, ptr %flags, align 4
  br label %sw.epilog26

sw.bb3:                                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %flags5 = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 6
  %8 = ptrtoint ptr %flags5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags5, align 4
  %or6 = or i32 %9, 100663296
  store i32 %or6, ptr %flags5, align 4
  br label %sw.epilog26

sw.bb7:                                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %flags10 = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 6
  %10 = ptrtoint ptr %flags10 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags10, align 4
  %or11 = or i32 %11, 100663296
  store i32 %or11, ptr %flags10, align 4
  br label %sw.epilog26

sw.bb12:                                          ; preds = %sw.epilog.sw.bb12_crit_edge, %sw.epilog.sw.bb12_crit_edge127, %sw.epilog.sw.bb12_crit_edge128, %sw.epilog.sw.bb12_crit_edge129, %sw.epilog.sw.bb12_crit_edge130, %sw.epilog.sw.bb12_crit_edge131, %sw.epilog.sw.bb12_crit_edge132, %sw.epilog.sw.bb12_crit_edge133, %sw.epilog.sw.bb12_crit_edge134
  %12 = ptrtoint ptr %rx_filter to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 12, ptr %rx_filter, align 4
  %flags15 = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 6
  %13 = ptrtoint ptr %flags15 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %flags15, align 4
  %or16 = or i32 %14, 100663296
  store i32 %or16, ptr %flags15, align 4
  br label %sw.epilog26

sw.bb17:                                          ; preds = %sw.epilog.sw.bb17_crit_edge, %sw.epilog.sw.bb17_crit_edge135, %sw.epilog.sw.bb17_crit_edge136
  %type = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 54, i32 2, i32 1
  %15 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %16)
  %cmp = icmp ugt i32 %16, 3
  br i1 %cmp, label %if.then, label %sw.bb17.sw.default22_crit_edge

sw.bb17.sw.default22_crit_edge:                   ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.default22

if.then:                                          ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %rx_filter to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %rx_filter, align 4
  %flags20 = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 6
  %18 = ptrtoint ptr %flags20 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %flags20, align 4
  %or21 = or i32 %19, 33554432
  store i32 %or21, ptr %flags20, align 4
  br label %sw.epilog26

sw.default22:                                     ; preds = %sw.bb17.sw.default22_crit_edge, %sw.epilog.sw.default22_crit_edge
  %flags23 = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 6
  %20 = ptrtoint ptr %flags23 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %flags23, align 4
  %and24 = and i32 %21, -100663297
  store i32 %and24, ptr %flags23, align 4
  %22 = ptrtoint ptr %rx_filter to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %rx_filter, align 4
  br label %cleanup

sw.epilog26:                                      ; preds = %if.then, %sw.bb12, %sw.bb7, %sw.bb3, %sw.bb2
  %tsync_rx_ctl.0 = phi i32 [ 24, %if.then ], [ 26, %sw.bb12 ], [ 18, %sw.bb7 ], [ 18, %sw.bb3 ], [ 0, %sw.bb2 ]
  %tsync_rx_mtrl.0 = phi i32 [ 20905984, %if.then ], [ 20905984, %sw.bb12 ], [ 20905985, %sw.bb7 ], [ 20905984, %sw.bb3 ], [ 0, %sw.bb2 ]
  %is_l2.0.off0 = phi i1 [ false, %if.then ], [ true, %sw.bb12 ], [ false, %sw.bb7 ], [ false, %sw.bb3 ], [ false, %sw.bb2 ]
  %type28 = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 54, i32 2, i32 1
  %23 = ptrtoint ptr %type28 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %type28, align 4
  %25 = zext i32 %24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.29)
  switch i32 %24, label %sw.epilog26.sw.epilog50_crit_edge [
    i32 1, label %if.then30
    i32 4, label %sw.epilog26.sw.bb39_crit_edge
    i32 5, label %sw.epilog26.sw.bb39_crit_edge137
    i32 6, label %sw.epilog26.sw.bb39_crit_edge138
  ]

sw.epilog26.sw.bb39_crit_edge138:                 ; preds = %sw.epilog26
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb39

sw.epilog26.sw.bb39_crit_edge137:                 ; preds = %sw.epilog26
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb39

sw.epilog26.sw.bb39_crit_edge:                    ; preds = %sw.epilog26
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb39

sw.epilog26.sw.epilog50_crit_edge:                ; preds = %sw.epilog26
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog50

if.then30:                                        ; preds = %sw.epilog26
  call void @__sanitizer_cov_trace_pc() #10
  %flags31 = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 6
  %26 = ptrtoint ptr %flags31 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %flags31, align 4
  %and32 = and i32 %27, -100663297
  store i32 %and32, ptr %flags31, align 4
  %or33 = or i32 %tsync_rx_ctl.0, %tsync_tx_ctl.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or33)
  %tobool.not = icmp eq i32 %or33, 0
  %. = select i1 %tobool.not, i32 0, i32 -34
  br label %cleanup

sw.bb39:                                          ; preds = %sw.epilog26.sw.bb39_crit_edge, %sw.epilog26.sw.bb39_crit_edge137, %sw.epilog26.sw.bb39_crit_edge138
  %28 = ptrtoint ptr %rx_filter to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %rx_filter, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp41 = icmp eq i32 %29, 0
  br i1 %cmp41, label %sw.bb39.sw.epilog50_crit_edge, label %sw.epilog50.thread

sw.bb39.sw.epilog50_crit_edge:                    ; preds = %sw.bb39
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog50

sw.epilog50.thread:                               ; preds = %sw.bb39
  call void @__sanitizer_cov_trace_pc() #10
  %30 = ptrtoint ptr %rx_filter to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 1, ptr %rx_filter, align 4
  %flags45 = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 6
  %31 = ptrtoint ptr %flags45 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %flags45, align 4
  %or46 = and i32 %32, -100663297
  %and48 = or i32 %or46, 33554432
  store i32 %and48, ptr %flags45, align 4
  br label %if.then52

sw.epilog50:                                      ; preds = %sw.bb39.sw.epilog50_crit_edge, %sw.epilog26.sw.epilog50_crit_edge
  br i1 %is_l2.0.off0, label %sw.epilog50.if.then52_crit_edge, label %if.else

sw.epilog50.if.then52_crit_edge:                  ; preds = %sw.epilog50
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then52

if.then52:                                        ; preds = %sw.epilog50.if.then52_crit_edge, %sw.epilog50.thread
  %tsync_rx_ctl.1126 = phi i32 [ 8388632, %sw.epilog50.thread ], [ %tsync_rx_ctl.0, %sw.epilog50.if.then52_crit_edge ]
  %33 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile ptr, ptr %hw1, align 4
  %tobool.not.i.i = icmp eq ptr %34, null
  br i1 %tobool.not.i.i, label %if.then52.if.end53_crit_edge, label %do.body1.i

if.then52.if.end53_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end53

do.body1.i:                                       ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !73
  tail call void @arm_heavy_mb() #8
  %add.ptr.i = getelementptr i8, ptr %34, i32 20788
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 -142081856) #8, !srcloc !74
  br label %if.end53

if.else:                                          ; preds = %sw.epilog50
  %35 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile ptr, ptr %hw1, align 4
  %tobool.not.i.i107 = icmp eq ptr %36, null
  br i1 %tobool.not.i.i107, label %if.else.if.end53_crit_edge, label %do.body1.i109

if.else.if.end53_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end53

do.body1.i109:                                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !73
  tail call void @arm_heavy_mb() #8
  %add.ptr.i108 = getelementptr i8, ptr %36, i32 20788
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i108, i32 0) #8, !srcloc !74
  br label %if.end53

if.end53:                                         ; preds = %do.body1.i109, %if.else.if.end53_crit_edge, %do.body1.i, %if.then52.if.end53_crit_edge
  %tsync_rx_ctl.1125 = phi i32 [ %tsync_rx_ctl.1126, %if.then52.if.end53_crit_edge ], [ %tsync_rx_ctl.1126, %do.body1.i ], [ %tsync_rx_ctl.0, %if.else.if.end53_crit_edge ], [ %tsync_rx_ctl.0, %do.body1.i109 ]
  %call = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 35840) #8
  %37 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile ptr, ptr %hw1, align 4
  %tobool.not.i.i111 = icmp eq ptr %38, null
  br i1 %tobool.not.i.i111, label %if.end53.ixgbe_write_reg.exit114_crit_edge, label %do.body1.i113

if.end53.ixgbe_write_reg.exit114_crit_edge:       ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  br label %ixgbe_write_reg.exit114

do.body1.i113:                                    ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  %and54 = and i32 %call, -17
  %or55 = or i32 %and54, %tsync_tx_ctl.0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !73
  tail call void @arm_heavy_mb() #8
  %39 = tail call i32 @llvm.bswap.i32(i32 %or55) #8
  %add.ptr.i112 = getelementptr i8, ptr %38, i32 35840
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i112, i32 %39) #8, !srcloc !74
  br label %ixgbe_write_reg.exit114

ixgbe_write_reg.exit114:                          ; preds = %do.body1.i113, %if.end53.ixgbe_write_reg.exit114_crit_edge
  %call56 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 20872) #8
  %40 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile ptr, ptr %hw1, align 4
  %tobool.not.i.i115 = icmp eq ptr %41, null
  br i1 %tobool.not.i.i115, label %ixgbe_write_reg.exit114.ixgbe_write_reg.exit118_crit_edge, label %do.body1.i117

ixgbe_write_reg.exit114.ixgbe_write_reg.exit118_crit_edge: ; preds = %ixgbe_write_reg.exit114
  call void @__sanitizer_cov_trace_pc() #10
  br label %ixgbe_write_reg.exit118

do.body1.i117:                                    ; preds = %ixgbe_write_reg.exit114
  call void @__sanitizer_cov_trace_pc() #10
  %and57 = and i32 %call56, -31
  %or58 = or i32 %and57, %tsync_rx_ctl.1125
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !73
  tail call void @arm_heavy_mb() #8
  %42 = tail call i32 @llvm.bswap.i32(i32 %or58) #8
  %add.ptr.i116 = getelementptr i8, ptr %41, i32 20872
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i116, i32 %42) #8, !srcloc !74
  br label %ixgbe_write_reg.exit118

ixgbe_write_reg.exit118:                          ; preds = %do.body1.i117, %ixgbe_write_reg.exit114.ixgbe_write_reg.exit118_crit_edge
  %43 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile ptr, ptr %hw1, align 4
  %tobool.not.i.i119 = icmp eq ptr %44, null
  br i1 %tobool.not.i.i119, label %ixgbe_write_reg.exit118.ixgbe_write_reg.exit122_crit_edge, label %do.body1.i121

ixgbe_write_reg.exit118.ixgbe_write_reg.exit122_crit_edge: ; preds = %ixgbe_write_reg.exit118
  call void @__sanitizer_cov_trace_pc() #10
  br label %ixgbe_write_reg.exit122

do.body1.i121:                                    ; preds = %ixgbe_write_reg.exit118
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !73
  tail call void @arm_heavy_mb() #8
  %45 = tail call i32 @llvm.bswap.i32(i32 %tsync_rx_mtrl.0) #8
  %add.ptr.i120 = getelementptr i8, ptr %44, i32 20768
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i120, i32 %45) #8, !srcloc !74
  br label %ixgbe_write_reg.exit122

ixgbe_write_reg.exit122:                          ; preds = %do.body1.i121, %ixgbe_write_reg.exit118.ixgbe_write_reg.exit122_crit_edge
  %call59 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 8) #8
  %call.i = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 35848) #8
  %ptp_tx_skb.i = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 85
  %46 = ptrtoint ptr %ptp_tx_skb.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ptp_tx_skb.i, align 128
  %tobool.not.i = icmp eq ptr %47, null
  br i1 %tobool.not.i, label %ixgbe_write_reg.exit122.ixgbe_ptp_clear_tx_timestamp.exit_crit_edge, label %if.then.i

ixgbe_write_reg.exit122.ixgbe_ptp_clear_tx_timestamp.exit_crit_edge: ; preds = %ixgbe_write_reg.exit122
  call void @__sanitizer_cov_trace_pc() #10
  br label %ixgbe_ptp_clear_tx_timestamp.exit

if.then.i:                                        ; preds = %ixgbe_write_reg.exit122
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %47, i32 noundef 1) #8
  %48 = ptrtoint ptr %ptp_tx_skb.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr null, ptr %ptp_tx_skb.i, align 128
  br label %ixgbe_ptp_clear_tx_timestamp.exit

ixgbe_ptp_clear_tx_timestamp.exit:                ; preds = %if.then.i, %ixgbe_write_reg.exit122.ixgbe_ptp_clear_tx_timestamp.exit_crit_edge
  %state.i = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 5
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %state.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !64
  tail call void @llvm.prefetch.p0(ptr %state.i, i32 1, i32 3, i32 1) #8
  %49 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %state.i, ptr %state.i, i32 512, ptr elementtype(i32) %state.i) #8, !srcloc !65
  %call60 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 20900) #8
  br label %cleanup

cleanup:                                          ; preds = %ixgbe_ptp_clear_tx_timestamp.exit, %if.then30, %sw.default22, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -34, %sw.default22 ], [ 0, %ixgbe_ptp_clear_tx_timestamp.exit ], [ -34, %entry.cleanup_crit_edge ], [ %., %if.then30 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ixgbe_ptp_start_cyclecounter(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 54
  %type = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 54, i32 2, i32 1
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.30)
  switch i32 %1, label %entry.cleanup_crit_edge [
    i32 5, label %sw.bb
    i32 6, label %entry.sw.bb4_crit_edge
    i32 4, label %entry.sw.bb4_crit_edge101
    i32 3, label %sw.bb8
    i32 2, label %sw.bb11
  ]

entry.sw.bb4_crit_edge101:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb4

entry.sw.bb4_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb4

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 69976) #8
  %and = and i32 %call, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %spec.select = select i1 %tobool.not, i32 3, i32 1
  %3 = lshr exact i32 %and, 4
  %4 = xor i32 %3, 2
  br label %sw.bb4

sw.bb4:                                           ; preds = %sw.bb, %entry.sw.bb4_crit_edge, %entry.sw.bb4_crit_edge101
  %cc.sroa.8.0 = phi i32 [ 1, %entry.sw.bb4_crit_edge ], [ 1, %entry.sw.bb4_crit_edge101 ], [ %spec.select, %sw.bb ]
  %cc.sroa.10.0 = phi i32 [ 0, %entry.sw.bb4_crit_edge ], [ 0, %entry.sw.bb4_crit_edge101 ], [ %4, %sw.bb ]
  %5 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %hw1, align 4
  %tobool.not.i.i = icmp eq ptr %6, null
  br i1 %tobool.not.i.i, label %sw.bb4.ixgbe_write_reg.exit_crit_edge, label %do.body1.i

sw.bb4.ixgbe_write_reg.exit_crit_edge:            ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #10
  br label %ixgbe_write_reg.exit

do.body1.i:                                       ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !73
  tail call void @arm_heavy_mb() #8
  %add.ptr.i = getelementptr i8, ptr %6, i32 35928
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #8, !srcloc !74
  br label %ixgbe_write_reg.exit

ixgbe_write_reg.exit:                             ; preds = %do.body1.i, %sw.bb4.ixgbe_write_reg.exit_crit_edge
  %7 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %hw1, align 4
  %tobool.not.i.i58 = icmp eq ptr %8, null
  br i1 %tobool.not.i.i58, label %ixgbe_write_reg.exit.ixgbe_write_reg.exit61_crit_edge, label %do.body1.i60

ixgbe_write_reg.exit.ixgbe_write_reg.exit61_crit_edge: ; preds = %ixgbe_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %ixgbe_write_reg.exit61

do.body1.i60:                                     ; preds = %ixgbe_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !73
  tail call void @arm_heavy_mb() #8
  %add.ptr.i59 = getelementptr i8, ptr %8, i32 35852
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i59, i32 0) #8, !srcloc !74
  br label %ixgbe_write_reg.exit61

ixgbe_write_reg.exit61:                           ; preds = %do.body1.i60, %ixgbe_write_reg.exit.ixgbe_write_reg.exit61_crit_edge
  %9 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %hw1, align 4
  %tobool.not.i.i62 = icmp eq ptr %10, null
  br i1 %tobool.not.i.i62, label %ixgbe_write_reg.exit61.ixgbe_write_reg.exit65_crit_edge, label %do.body1.i64

ixgbe_write_reg.exit61.ixgbe_write_reg.exit65_crit_edge: ; preds = %ixgbe_write_reg.exit61
  call void @__sanitizer_cov_trace_pc() #10
  br label %ixgbe_write_reg.exit65

do.body1.i64:                                     ; preds = %ixgbe_write_reg.exit61
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !73
  tail call void @arm_heavy_mb() #8
  %add.ptr.i63 = getelementptr i8, ptr %10, i32 35856
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i63, i32 0) #8, !srcloc !74
  br label %ixgbe_write_reg.exit65

ixgbe_write_reg.exit65:                           ; preds = %do.body1.i64, %ixgbe_write_reg.exit61.ixgbe_write_reg.exit65_crit_edge
  %call5 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 35872) #8
  %11 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %hw1, align 4
  %tobool.not.i.i66 = icmp eq ptr %12, null
  br i1 %tobool.not.i.i66, label %ixgbe_write_reg.exit65.ixgbe_write_reg.exit69_crit_edge, label %do.body1.i68

ixgbe_write_reg.exit65.ixgbe_write_reg.exit69_crit_edge: ; preds = %ixgbe_write_reg.exit65
  call void @__sanitizer_cov_trace_pc() #10
  br label %ixgbe_write_reg.exit69

do.body1.i68:                                     ; preds = %ixgbe_write_reg.exit65
  call void @__sanitizer_cov_trace_pc() #10
  %and6 = and i32 %call5, 2147483647
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !73
  tail call void @arm_heavy_mb() #8
  %13 = tail call i32 @llvm.bswap.i32(i32 %and6) #8
  %add.ptr.i67 = getelementptr i8, ptr %12, i32 35872
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i67, i32 %13) #8, !srcloc !74
  br label %ixgbe_write_reg.exit69

ixgbe_write_reg.exit69:                           ; preds = %do.body1.i68, %ixgbe_write_reg.exit65.ixgbe_write_reg.exit69_crit_edge
  %14 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %hw1, align 4
  %tobool.not.i.i70 = icmp eq ptr %15, null
  br i1 %tobool.not.i.i70, label %ixgbe_write_reg.exit69.ixgbe_write_reg.exit73_crit_edge, label %do.body1.i72

ixgbe_write_reg.exit69.ixgbe_write_reg.exit73_crit_edge: ; preds = %ixgbe_write_reg.exit69
  call void @__sanitizer_cov_trace_pc() #10
  br label %ixgbe_write_reg.exit73

do.body1.i72:                                     ; preds = %ixgbe_write_reg.exit69
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !73
  tail call void @arm_heavy_mb() #8
  %add.ptr.i71 = getelementptr i8, ptr %15, i32 35944
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i71, i32 33554432) #8, !srcloc !74
  br label %ixgbe_write_reg.exit73

ixgbe_write_reg.exit73:                           ; preds = %do.body1.i72, %ixgbe_write_reg.exit69.ixgbe_write_reg.exit73_crit_edge
  %16 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile ptr, ptr %hw1, align 4
  %tobool.not.i.i74 = icmp eq ptr %17, null
  br i1 %tobool.not.i.i74, label %ixgbe_write_reg.exit73.ixgbe_write_reg.exit77_crit_edge, label %do.body1.i76

ixgbe_write_reg.exit73.ixgbe_write_reg.exit77_crit_edge: ; preds = %ixgbe_write_reg.exit73
  call void @__sanitizer_cov_trace_pc() #10
  br label %ixgbe_write_reg.exit77

do.body1.i76:                                     ; preds = %ixgbe_write_reg.exit73
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !73
  tail call void @arm_heavy_mb() #8
  %add.ptr.i75 = getelementptr i8, ptr %17, i32 2176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i75, i32 1) #8, !srcloc !74
  br label %ixgbe_write_reg.exit77

ixgbe_write_reg.exit77:                           ; preds = %do.body1.i76, %ixgbe_write_reg.exit73.ixgbe_write_reg.exit77_crit_edge
  %call7 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 8) #8
  br label %do.body16

sw.bb8:                                           ; preds = %entry
  %link_speed.i = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 61
  %18 = ptrtoint ptr %link_speed.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %link_speed.i, align 4
  %20 = zext i32 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.31)
  switch i32 %19, label %sw.default.i [
    i32 8, label %sw.bb8.ixgbe_ptp_link_speed_adjust.exit_crit_edge
    i32 32, label %sw.bb1.i
  ]

sw.bb8.ixgbe_ptp_link_speed_adjust.exit_crit_edge: ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #10
  br label %ixgbe_ptp_link_speed_adjust.exit

sw.bb1.i:                                         ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #10
  br label %ixgbe_ptp_link_speed_adjust.exit

sw.default.i:                                     ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #10
  br label %ixgbe_ptp_link_speed_adjust.exit

ixgbe_ptp_link_speed_adjust.exit:                 ; preds = %sw.default.i, %sw.bb1.i, %sw.bb8.ixgbe_ptp_link_speed_adjust.exit_crit_edge
  %.sink7.i = phi i32 [ 28, %sw.default.i ], [ 24, %sw.bb1.i ], [ 21, %sw.bb8.ixgbe_ptp_link_speed_adjust.exit_crit_edge ]
  %.sink.i = phi i32 [ 1717986918, %sw.default.i ], [ 1073741824, %sw.bb1.i ], [ 1342177280, %sw.bb8.ixgbe_ptp_link_speed_adjust.exit_crit_edge ]
  %21 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile ptr, ptr %hw1, align 4
  %tobool.not.i.i78 = icmp eq ptr %22, null
  br i1 %tobool.not.i.i78, label %ixgbe_ptp_link_speed_adjust.exit.do.body16_crit_edge, label %do.body1.i80

ixgbe_ptp_link_speed_adjust.exit.do.body16_crit_edge: ; preds = %ixgbe_ptp_link_speed_adjust.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body16

do.body1.i80:                                     ; preds = %ixgbe_ptp_link_speed_adjust.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !73
  tail call void @arm_heavy_mb() #8
  %23 = tail call i32 @llvm.bswap.i32(i32 %.sink.i) #8
  %add.ptr.i79 = getelementptr i8, ptr %22, i32 35860
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i79, i32 %23) #8, !srcloc !74
  br label %do.body16

sw.bb11:                                          ; preds = %entry
  %link_speed.i82 = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 61
  %24 = ptrtoint ptr %link_speed.i82 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %link_speed.i82, align 4
  %26 = zext i32 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.32)
  switch i32 %25, label %sw.default.i84 [
    i32 8, label %sw.bb11.ixgbe_ptp_link_speed_adjust.exit87_crit_edge
    i32 32, label %sw.bb1.i83
  ]

sw.bb11.ixgbe_ptp_link_speed_adjust.exit87_crit_edge: ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #10
  br label %ixgbe_ptp_link_speed_adjust.exit87

sw.bb1.i83:                                       ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #10
  br label %ixgbe_ptp_link_speed_adjust.exit87

sw.default.i84:                                   ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #10
  br label %ixgbe_ptp_link_speed_adjust.exit87

ixgbe_ptp_link_speed_adjust.exit87:               ; preds = %sw.default.i84, %sw.bb1.i83, %sw.bb11.ixgbe_ptp_link_speed_adjust.exit87_crit_edge
  %.sink7.i85 = phi i32 [ 21, %sw.default.i84 ], [ 17, %sw.bb1.i83 ], [ 14, %sw.bb11.ixgbe_ptp_link_speed_adjust.exit87_crit_edge ]
  %.sink.i86 = phi i32 [ 13421772, %sw.default.i84 ], [ 8388608, %sw.bb1.i83 ], [ 10485760, %sw.bb11.ixgbe_ptp_link_speed_adjust.exit87_crit_edge ]
  %27 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile ptr, ptr %hw1, align 4
  %tobool.not.i.i88 = icmp eq ptr %28, null
  br i1 %tobool.not.i.i88, label %ixgbe_ptp_link_speed_adjust.exit87.do.body16_crit_edge, label %do.body1.i90

ixgbe_ptp_link_speed_adjust.exit87.do.body16_crit_edge: ; preds = %ixgbe_ptp_link_speed_adjust.exit87
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body16

do.body1.i90:                                     ; preds = %ixgbe_ptp_link_speed_adjust.exit87
  call void @__sanitizer_cov_trace_pc() #10
  %or = or i32 %.sink.i86, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !73
  tail call void @arm_heavy_mb() #8
  %29 = tail call i32 @llvm.bswap.i32(i32 %or) #8
  %add.ptr.i89 = getelementptr i8, ptr %28, i32 35860
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i89, i32 %29) #8, !srcloc !74
  br label %do.body16

do.body16:                                        ; preds = %do.body1.i90, %ixgbe_ptp_link_speed_adjust.exit87.do.body16_crit_edge, %do.body1.i80, %ixgbe_ptp_link_speed_adjust.exit.do.body16_crit_edge, %ixgbe_write_reg.exit77
  %cc.sroa.8.1 = phi i32 [ %cc.sroa.8.0, %ixgbe_write_reg.exit77 ], [ 1, %ixgbe_ptp_link_speed_adjust.exit.do.body16_crit_edge ], [ 1, %do.body1.i80 ], [ 1, %ixgbe_ptp_link_speed_adjust.exit87.do.body16_crit_edge ], [ 1, %do.body1.i90 ]
  %cc.sroa.10.1 = phi i32 [ %cc.sroa.10.0, %ixgbe_write_reg.exit77 ], [ %.sink7.i, %ixgbe_ptp_link_speed_adjust.exit.do.body16_crit_edge ], [ %.sink7.i, %do.body1.i80 ], [ %.sink7.i85, %ixgbe_ptp_link_speed_adjust.exit87.do.body16_crit_edge ], [ %.sink7.i85, %do.body1.i90 ]
  %cc.sroa.0.0 = phi ptr [ @ixgbe_ptp_read_X550, %ixgbe_write_reg.exit77 ], [ @ixgbe_ptp_read_82599, %ixgbe_ptp_link_speed_adjust.exit.do.body16_crit_edge ], [ @ixgbe_ptp_read_82599, %do.body1.i80 ], [ @ixgbe_ptp_read_82599, %ixgbe_ptp_link_speed_adjust.exit87.do.body16_crit_edge ], [ @ixgbe_ptp_read_82599, %do.body1.i90 ]
  %incval.0 = phi i32 [ 0, %ixgbe_write_reg.exit77 ], [ %.sink.i, %ixgbe_ptp_link_speed_adjust.exit.do.body16_crit_edge ], [ %.sink.i, %do.body1.i80 ], [ %.sink.i86, %ixgbe_ptp_link_speed_adjust.exit87.do.body16_crit_edge ], [ %.sink.i86, %do.body1.i90 ]
  %base_incval = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 94
  %30 = ptrtoint ptr %base_incval to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile i32 %incval.0, ptr %base_incval, align 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !75
  %tmreg_lock = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 91
  %call30 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %tmreg_lock) #8
  %hw_cc = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 92
  %31 = ptrtoint ptr %hw_cc to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %cc.sroa.0.0, ptr %hw_cc, align 16
  %cc.sroa.7.0.hw_cc.sroa_idx = getelementptr inbounds i8, ptr %hw_cc, i32 4
  %32 = ptrtoint ptr %cc.sroa.7.0.hw_cc.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 -1, ptr %cc.sroa.7.0.hw_cc.sroa_idx, align 4
  %cc.sroa.796.0.hw_cc.sroa_idx = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 92, i32 1
  %33 = ptrtoint ptr %cc.sroa.796.0.hw_cc.sroa_idx to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 -1, ptr %cc.sroa.796.0.hw_cc.sroa_idx, align 8
  %cc.sroa.8.0.hw_cc.sroa_idx = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 92, i32 2
  %34 = ptrtoint ptr %cc.sroa.8.0.hw_cc.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %cc.sroa.8.1, ptr %cc.sroa.8.0.hw_cc.sroa_idx, align 16
  %cc.sroa.10.0.hw_cc.sroa_idx = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 92, i32 3
  %35 = ptrtoint ptr %cc.sroa.10.0.hw_cc.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %cc.sroa.10.1, ptr %cc.sroa.10.0.hw_cc.sroa_idx, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %tmreg_lock, i32 noundef %call30) #8
  br label %cleanup

cleanup:                                          ; preds = %do.body16, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @ixgbe_ptp_read_X550(ptr noundef %cc) #0 align 64 {
timespec64_to_ns.exit:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr i8, ptr %cc, i32 -61008
  %call = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 35928) #8
  %call2 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 35852) #8
  %call3 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 35856) #8
  %conv = zext i32 %call3 to i64
  %mul.i = mul nuw nsw i64 %conv, 1000000000
  %conv.i = sext i32 %call2 to i64
  %add.i = add nsw i64 %mul.i, %conv.i
  ret i64 %add.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @ixgbe_ptp_read_82599(ptr noundef %cc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr i8, ptr %cc, i32 -61008
  %call = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 35852) #8
  %conv = zext i32 %call to i64
  %call2 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 35856) #8
  %conv3 = zext i32 %call2 to i64
  %shl = shl nuw i64 %conv3, 32
  %or4 = or i64 %shl, %conv
  ret i64 %or4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ixgbe_ptp_reset(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tstamp_config = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 86
  %call = tail call fastcc i32 @ixgbe_ptp_set_timestamp_mode(ptr noundef %adapter, ptr noundef %tstamp_config)
  %type = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 54, i32 2, i32 1
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @ixgbe_ptp_start_cyclecounter(ptr noundef %adapter)
  %tmreg_lock = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 91
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %tmreg_lock) #8
  %hw_tc = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 93
  %hw_cc = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 92
  %call.i = tail call i64 @ktime_get_with_offset(i32 noundef 0) #8
  tail call void @timecounter_init(ptr noundef %hw_tc, ptr noundef %hw_cc, i64 noundef %call.i) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %tmreg_lock, i32 noundef %call5) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %last_overflow_check = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 88
  %3 = ptrtoint ptr %last_overflow_check to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %last_overflow_check, align 4
  %ptp_setup_sdp = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 98
  %4 = ptrtoint ptr %ptp_setup_sdp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ptp_setup_sdp, align 32
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.then11

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %5(ptr noundef %adapter) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then11, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @timecounter_init(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ixgbe_ptp_init(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tmreg_lock = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 91
  tail call void @__raw_spin_lock_init(ptr noundef %tmreg_lock, ptr noundef nonnull @.str.2, ptr noundef nonnull @ixgbe_ptp_init.__key, i16 noundef signext 3) #8
  %netdev1.i = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 1
  %0 = ptrtoint ptr %netdev1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netdev1.i, align 128
  %ptp_clock.i = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 82
  %2 = ptrtoint ptr %ptp_clock.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ptp_clock.i, align 4
  %tobool.not.i.i = icmp eq ptr %3, null
  %cmp.i.i = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i = or i1 %tobool.not.i.i, %cmp.i.i
  br i1 %spec.select.i.i, label %if.end.i, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body2

if.end.i:                                         ; preds = %entry
  %type.i = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 54, i32 2, i32 1
  %4 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %type.i, align 8
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.33)
  switch i32 %5, label %ixgbe_ptp_create_clock.exit.thread19 [
    i32 3, label %sw.bb.i
    i32 2, label %sw.bb16.i
    i32 4, label %if.end.i.sw.bb45.i_crit_edge
    i32 5, label %if.end.i.sw.bb45.i_crit_edge22
    i32 6, label %if.end.i.sw.bb45.i_crit_edge23
  ]

if.end.i.sw.bb45.i_crit_edge23:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb45.i

if.end.i.sw.bb45.i_crit_edge22:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb45.i

if.end.i.sw.bb45.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb45.i

sw.bb.i:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %ptp_caps.i = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 83
  %name.i = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 83, i32 1
  %call4.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name.i, i32 noundef 32, ptr noundef nonnull @.str.14, ptr noundef %1) #8
  %7 = ptrtoint ptr %ptp_caps.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %ptp_caps.i, align 8
  %max_adj.i = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 83, i32 2
  %8 = ptrtoint ptr %max_adj.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 250000000, ptr %max_adj.i, align 4
  %n_alarm.i = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 83, i32 3
  %9 = ptrtoint ptr %n_alarm.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %n_alarm.i, align 8
  %n_ext_ts.i = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 83, i32 4
  %10 = ptrtoint ptr %n_ext_ts.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %n_ext_ts.i, align 4
  %n_per_out.i = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 83, i32 5
  %11 = ptrtoint ptr %n_per_out.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %n_per_out.i, align 8
  %pps.i = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 83, i32 7
  %12 = ptrtoint ptr %pps.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %pps.i, align 8
  %adjfreq.i = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 83, i32 10
  %13 = ptrtoint ptr %adjfreq.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @ixgbe_ptp_adjfreq_82599, ptr %adjfreq.i, align 4
  %adjtime.i = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 83, i32 12
  %14 = ptrtoint ptr %adjtime.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @ixgbe_ptp_adjtime, ptr %adjtime.i, align 4
  %gettimex64.i = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 83, i32 14
  %15 = ptrtoint ptr %gettimex64.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @ixgbe_ptp_gettimex, ptr %gettimex64.i, align 4
  %settime64.i = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 83, i32 16
  %16 = ptrtoint ptr %settime64.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @ixgbe_ptp_settime, ptr %settime64.i, align 4
  %enable.i = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 83, i32 17
  %17 = ptrtoint ptr %enable.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @ixgbe_ptp_feature_enable, ptr %enable.i, align 8
  %ptp_setup_sdp.i = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 98
  %18 = ptrtoint ptr %ptp_setup_sdp.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @ixgbe_ptp_setup_sdp_X540, ptr %ptp_setup_sdp.i, align 32
  br label %sw.epilog.i

sw.bb16.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %ptp_caps17.i = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 83
  %name18.i = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 83, i32 1
  %call22.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name18.i, i32 noundef 32, ptr noundef nonnull @.str.14, ptr noundef %1) #8
  %19 = ptrtoint ptr %ptp_caps17.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %ptp_caps17.i, align 8
  %max_adj26.i = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 83, i32 2
  %20 = ptrtoint ptr %max_adj26.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 250000000, ptr %max_adj26.i, align 4
  %n_alarm28.i = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 83, i32 3
  %21 = ptrtoint ptr %n_alarm28.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %n_alarm28.i, align 8
  %n_ext_ts30.i = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 83, i32 4
  %22 = ptrtoint ptr %n_ext_ts30.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %n_ext_ts30.i, align 4
  %n_per_out32.i = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 83, i32 5
  %23 = ptrtoint ptr %n_per_out32.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %n_per_out32.i, align 8
  %pps34.i = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 83, i32 7
  %24 = ptrtoint ptr %pps34.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %pps34.i, align 8
  %adjfreq36.i = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 83, i32 10
  %25 = ptrtoint ptr %adjfreq36.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @ixgbe_ptp_adjfreq_82599, ptr %adjfreq36.i, align 4
  %adjtime38.i = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 83, i32 12
  %26 = ptrtoint ptr %adjtime38.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @ixgbe_ptp_adjtime, ptr %adjtime38.i, align 4
  %gettimex6440.i = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 83, i32 14
  %27 = ptrtoint ptr %gettimex6440.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @ixgbe_ptp_gettimex, ptr %gettimex6440.i, align 4
  %settime6442.i = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 83, i32 16
  %28 = ptrtoint ptr %settime6442.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @ixgbe_ptp_settime, ptr %settime6442.i, align 4
  %enable44.i = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 83, i32 17
  %29 = ptrtoint ptr %enable44.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @ixgbe_ptp_feature_enable, ptr %enable44.i, align 8
  br label %sw.epilog.i

sw.bb45.i:                                        ; preds = %if.end.i.sw.bb45.i_crit_edge, %if.end.i.sw.bb45.i_crit_edge22, %if.end.i.sw.bb45.i_crit_edge23
  %ptp_caps46.i = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 83
  %name47.i = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 83, i32 1
  %call51.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name47.i, i32 noundef 16, ptr noundef nonnull @.str.14, ptr noundef %1) #8
  %30 = ptrtoint ptr %ptp_caps46.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %ptp_caps46.i, align 8
  %max_adj55.i = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 83, i32 2
  %31 = ptrtoint ptr %max_adj55.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 30000000, ptr %max_adj55.i, align 4
  %n_alarm57.i = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 83, i32 3
  %32 = ptrtoint ptr %n_alarm57.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %n_alarm57.i, align 8
  %n_ext_ts59.i = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 83, i32 4
  %33 = ptrtoint ptr %n_ext_ts59.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %n_ext_ts59.i, align 4
  %n_per_out61.i = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 83, i32 5
  %34 = ptrtoint ptr %n_per_out61.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %n_per_out61.i, align 8
  %pps63.i = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 83, i32 7
  %35 = ptrtoint ptr %pps63.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 1, ptr %pps63.i, align 8
  %adjfreq65.i = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 83, i32 10
  %36 = ptrtoint ptr %adjfreq65.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @ixgbe_ptp_adjfreq_X550, ptr %adjfreq65.i, align 4
  %adjtime67.i = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 83, i32 12
  %37 = ptrtoint ptr %adjtime67.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @ixgbe_ptp_adjtime, ptr %adjtime67.i, align 4
  %gettimex6469.i = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 83, i32 14
  %38 = ptrtoint ptr %gettimex6469.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @ixgbe_ptp_gettimex, ptr %gettimex6469.i, align 4
  %settime6471.i = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 83, i32 16
  %39 = ptrtoint ptr %settime6471.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @ixgbe_ptp_settime, ptr %settime6471.i, align 4
  %enable73.i = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 83, i32 17
  %40 = ptrtoint ptr %enable73.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @ixgbe_ptp_feature_enable, ptr %enable73.i, align 8
  %ptp_setup_sdp74.i = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 98
  %41 = ptrtoint ptr %ptp_setup_sdp74.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @ixgbe_ptp_setup_sdp_X550, ptr %ptp_setup_sdp74.i, align 32
  br label %sw.epilog.i

ixgbe_ptp_create_clock.exit.thread19:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %42 = ptrtoint ptr %ptp_clock.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr null, ptr %ptp_clock.i, align 4
  %ptp_setup_sdp76.i = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 98
  %43 = ptrtoint ptr %ptp_setup_sdp76.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr null, ptr %ptp_setup_sdp76.i, align 32
  br label %return

sw.epilog.i:                                      ; preds = %sw.bb45.i, %sw.bb16.i, %sw.bb.i
  %ptp_caps77.i = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 83
  %pdev.i = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 3
  %44 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %pdev.i, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %45, i32 0, i32 44
  %call78.i = tail call ptr @ptp_clock_register(ptr noundef %ptp_caps77.i, ptr noundef %dev.i) #8
  %46 = ptrtoint ptr %ptp_clock.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call78.i, ptr %ptp_clock.i, align 4
  %cmp.i157.i = icmp ugt ptr %call78.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i157.i, label %ixgbe_ptp_create_clock.exit, label %if.else.i

if.else.i:                                        ; preds = %sw.epilog.i
  %tobool.not.i = icmp eq ptr %call78.i, null
  br i1 %tobool.not.i, label %if.else.i.if.end98.i_crit_edge, label %do.end92.i

if.else.i.if.end98.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end98.i

do.end92.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %47 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %pdev.i, align 8
  %dev94.i = getelementptr inbounds %struct.pci_dev, ptr %48, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev94.i, ptr noundef nonnull @.str.19, ptr noundef %1) #11
  br label %if.end98.i

if.end98.i:                                       ; preds = %do.end92.i, %if.else.i.if.end98.i_crit_edge
  %rx_filter.i = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 86, i32 2
  %49 = ptrtoint ptr %rx_filter.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %rx_filter.i, align 4
  %tx_type.i = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 86, i32 1
  %50 = ptrtoint ptr %tx_type.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %tx_type.i, align 4
  br label %do.body2

ixgbe_ptp_create_clock.exit:                      ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #10
  %51 = ptrtoint ptr %ptp_clock.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr null, ptr %ptp_clock.i, align 4
  %52 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %pdev.i, align 8
  %dev87.i = getelementptr inbounds %struct.pci_dev, ptr %53, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev87.i, ptr noundef nonnull @.str.15) #11
  br label %return

do.body2:                                         ; preds = %if.end98.i, %entry.do.body2_crit_edge
  %ptp_tx_work = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 84
  tail call void @__init_work(ptr noundef %ptp_tx_work, i32 noundef 0) #8
  %54 = ptrtoint ptr %ptp_tx_work to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 -64, ptr %ptp_tx_work, align 4
  %lockdep_map = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 84, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.4, ptr noundef nonnull @ixgbe_ptp_init.__key.3, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %entry6 = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 84, i32 1
  %55 = ptrtoint ptr %entry6 to i32
  call void @__asan_store4_noabort(i32 %55)
  store volatile ptr %entry6, ptr %entry6, align 4
  %prev.i = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 84, i32 1, i32 1
  %56 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %entry6, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 84, i32 2
  %57 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr @ixgbe_ptp_tx_hwtstamp_work, ptr %func, align 4
  tail call void @ixgbe_ptp_reset(ptr noundef %adapter)
  %state = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 5
  tail call void @_set_bit(i32 noundef 8, ptr noundef %state) #8
  br label %return

return:                                           ; preds = %do.body2, %ixgbe_ptp_create_clock.exit, %ixgbe_ptp_create_clock.exit.thread19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ixgbe_ptp_tx_hwtstamp_work(ptr noundef %work) #0 align 64 {
entry:
  %shhwtstamps.i = alloca %struct.skb_shared_hwtstamps, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ptp_tx_start = getelementptr i8, ptr %work, i32 60
  %0 = ptrtoint ptr %ptp_tx_start to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ptp_tx_start, align 16
  %add = add i32 %1, 100
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  %ptp_tx_skb = getelementptr i8, ptr %work, i32 44
  %3 = ptrtoint ptr %ptp_tx_skb to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ptp_tx_skb, align 128
  %tobool.not = icmp eq ptr %4, null
  %hw1.i = getelementptr i8, ptr %work, i32 -60884
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call.i = tail call i32 @ixgbe_read_reg(ptr noundef %hw1.i, i32 noundef 35848) #8
  %5 = ptrtoint ptr %ptp_tx_skb to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ptp_tx_skb, align 128
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %if.then.ixgbe_ptp_clear_tx_timestamp.exit_crit_edge, label %if.then.i

if.then.ixgbe_ptp_clear_tx_timestamp.exit_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %ixgbe_ptp_clear_tx_timestamp.exit

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %6, i32 noundef 1) #8
  %7 = ptrtoint ptr %ptp_tx_skb to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %ptp_tx_skb, align 128
  br label %ixgbe_ptp_clear_tx_timestamp.exit

ixgbe_ptp_clear_tx_timestamp.exit:                ; preds = %if.then.i, %if.then.ixgbe_ptp_clear_tx_timestamp.exit_crit_edge
  %state.i = getelementptr i8, ptr %work, i32 -64580
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %state.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !64
  tail call void @llvm.prefetch.p0(ptr %state.i, i32 1, i32 3, i32 1) #8
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %state.i, ptr %state.i, i32 512, ptr elementtype(i32) %state.i) #8, !srcloc !65
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call i32 @ixgbe_read_reg(ptr noundef %hw1.i, i32 noundef 35840) #8
  %and = and i32 %call, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.end
  %9 = ptrtoint ptr %ptp_tx_skb to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ptp_tx_skb, align 128
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %shhwtstamps.i) #8
  %call.i27 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1.i, i32 noundef 35844) #8
  %conv.i = zext i32 %call.i27 to i64
  %call2.i = tail call i32 @ixgbe_read_reg(ptr noundef %hw1.i, i32 noundef 35848) #8
  %conv3.i = zext i32 %call2.i to i64
  %shl.i = shl nuw i64 %conv3.i, 32
  %or4.i = or i64 %shl.i, %conv.i
  %type.i.i = getelementptr i8, ptr %work, i32 -60604
  %11 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %type.i.i, align 8
  %.off.i.i = add i32 %12, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off.i.i)
  %switch.i.i = icmp ult i32 %.off.i.i, 3
  br i1 %switch.i.i, label %timespec64_to_ns.exit.i.i, label %if.then3.ixgbe_ptp_tx_hwtstamp.exit_crit_edge

if.then3.ixgbe_ptp_tx_hwtstamp.exit_crit_edge:    ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  br label %ixgbe_ptp_tx_hwtstamp.exit

timespec64_to_ns.exit.i.i:                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  %mul.i.i.i = mul nuw nsw i64 %conv3.i, 1000000000
  %conv.i.i.i = sext i32 %call.i27 to i64
  %add.i.i.i = add nsw i64 %mul.i.i.i, %conv.i.i.i
  br label %ixgbe_ptp_tx_hwtstamp.exit

ixgbe_ptp_tx_hwtstamp.exit:                       ; preds = %timespec64_to_ns.exit.i.i, %if.then3.ixgbe_ptp_tx_hwtstamp.exit_crit_edge
  %timestamp.addr.0.i.i = phi i64 [ %or4.i, %if.then3.ixgbe_ptp_tx_hwtstamp.exit_crit_edge ], [ %add.i.i.i, %timespec64_to_ns.exit.i.i ]
  %tmreg_lock.i.i = getelementptr i8, ptr %work, i32 76
  %call4.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %tmreg_lock.i.i) #8
  %hw_tc.i.i = getelementptr i8, ptr %work, i32 148
  %call7.i.i = tail call i64 @timecounter_cyc2time(ptr noundef %hw_tc.i.i, i64 noundef %timestamp.addr.0.i.i) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %tmreg_lock.i.i, i32 noundef %call4.i.i) #8
  %13 = ptrtoint ptr %shhwtstamps.i to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %call7.i.i, ptr %shhwtstamps.i, align 8
  %14 = ptrtoint ptr %ptp_tx_skb to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %ptp_tx_skb, align 128
  %state.i28 = getelementptr i8, ptr %work, i32 -64580
  %call.i.i.i29 = tail call zeroext i1 @__kasan_check_write(ptr noundef %state.i28, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !64
  tail call void @llvm.prefetch.p0(ptr %state.i28, i32 1, i32 3, i32 1) #8
  %15 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %state.i28, ptr %state.i28, i32 512, ptr elementtype(i32) %state.i28) #8, !srcloc !65
  call void @skb_tstamp_tx(ptr noundef %10, ptr noundef nonnull %shhwtstamps.i) #8
  call void @__dev_kfree_skb_any(ptr noundef %10, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %shhwtstamps.i) #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  br i1 %cmp, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.end4
  %call.i31 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1.i, i32 noundef 35848) #8
  %16 = ptrtoint ptr %ptp_tx_skb to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ptp_tx_skb, align 128
  %tobool.not.i33 = icmp eq ptr %17, null
  br i1 %tobool.not.i33, label %if.then6.ixgbe_ptp_clear_tx_timestamp.exit37_crit_edge, label %if.then.i34

if.then6.ixgbe_ptp_clear_tx_timestamp.exit37_crit_edge: ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  br label %ixgbe_ptp_clear_tx_timestamp.exit37

if.then.i34:                                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %17, i32 noundef 1) #8
  %18 = ptrtoint ptr %ptp_tx_skb to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %ptp_tx_skb, align 128
  br label %ixgbe_ptp_clear_tx_timestamp.exit37

ixgbe_ptp_clear_tx_timestamp.exit37:              ; preds = %if.then.i34, %if.then6.ixgbe_ptp_clear_tx_timestamp.exit37_crit_edge
  %state.i35 = getelementptr i8, ptr %work, i32 -64580
  %call.i.i.i36 = tail call zeroext i1 @__kasan_check_write(ptr noundef %state.i35, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !64
  tail call void @llvm.prefetch.p0(ptr %state.i35, i32 1, i32 3, i32 1) #8
  %19 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %state.i35, ptr %state.i35, i32 512, ptr elementtype(i32) %state.i35) #8, !srcloc !65
  %tx_hwtstamp_timeouts = getelementptr i8, ptr %work, i32 192
  %20 = ptrtoint ptr %tx_hwtstamp_timeouts to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %tx_hwtstamp_timeouts, align 4
  %inc = add i32 %21, 1
  store i32 %inc, ptr %tx_hwtstamp_timeouts, align 4
  %msg_enable = getelementptr i8, ptr %work, i32 -59584
  %22 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %msg_enable, align 4
  %24 = and i16 %23, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %24)
  %tobool8.not = icmp eq i16 %24, 0
  br i1 %tobool8.not, label %ixgbe_ptp_clear_tx_timestamp.exit37.cleanup_crit_edge, label %if.then9

ixgbe_ptp_clear_tx_timestamp.exit37.cleanup_crit_edge: ; preds = %ixgbe_ptp_clear_tx_timestamp.exit37
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then9:                                         ; preds = %ixgbe_ptp_clear_tx_timestamp.exit37
  call void @__sanitizer_cov_trace_pc() #10
  %netdev = getelementptr i8, ptr %work, i32 -64596
  %25 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %netdev, align 128
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %26, ptr noundef nonnull @.str.27) #11
  br label %cleanup

if.else:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %27 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %27, ptr noundef %work) #8
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then9, %ixgbe_ptp_clear_tx_timestamp.exit37.cleanup_crit_edge, %ixgbe_ptp_tx_hwtstamp.exit, %ixgbe_ptp_clear_tx_timestamp.exit
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ixgbe_ptp_suspend(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 5
  %call = tail call i32 @_test_and_clear_bit(i32 noundef 8, ptr noundef %state) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  %flags2 = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 7
  %0 = ptrtoint ptr %flags2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags2, align 8
  %and = and i32 %1, -1025
  store i32 %and, ptr %flags2, align 8
  %ptp_setup_sdp = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 98
  %2 = ptrtoint ptr %ptp_setup_sdp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ptp_setup_sdp, align 32
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %if.end.if.end4_crit_edge, label %if.then2

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %3(ptr noundef %adapter) #8
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end.if.end4_crit_edge
  %ptp_tx_work = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 84
  %call5 = tail call zeroext i1 @cancel_work_sync(ptr noundef %ptp_tx_work) #8
  %hw1.i = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 54
  %call.i = tail call i32 @ixgbe_read_reg(ptr noundef %hw1.i, i32 noundef 35848) #8
  %ptp_tx_skb.i = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 85
  %4 = ptrtoint ptr %ptp_tx_skb.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ptp_tx_skb.i, align 128
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.end4.ixgbe_ptp_clear_tx_timestamp.exit_crit_edge, label %if.then.i

if.end4.ixgbe_ptp_clear_tx_timestamp.exit_crit_edge: ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %ixgbe_ptp_clear_tx_timestamp.exit

if.then.i:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %5, i32 noundef 1) #8
  %6 = ptrtoint ptr %ptp_tx_skb.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %ptp_tx_skb.i, align 128
  br label %ixgbe_ptp_clear_tx_timestamp.exit

ixgbe_ptp_clear_tx_timestamp.exit:                ; preds = %if.then.i, %if.end4.ixgbe_ptp_clear_tx_timestamp.exit_crit_edge
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %state, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !64
  tail call void @llvm.prefetch.p0(ptr %state, i32 1, i32 3, i32 1) #8
  %7 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %state, ptr %state, i32 512, ptr elementtype(i32) %state) #8, !srcloc !65
  br label %return

return:                                           ; preds = %ixgbe_ptp_clear_tx_timestamp.exit, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ixgbe_ptp_stop(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @ixgbe_ptp_suspend(ptr noundef %adapter)
  %ptp_clock = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 82
  %0 = ptrtoint ptr %ptp_clock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ptp_clock, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 @ptp_clock_unregister(ptr noundef nonnull %1) #8
  %2 = ptrtoint ptr %ptp_clock to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %ptp_clock, align 4
  %pdev = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 3
  %3 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 44
  %netdev = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 1
  %5 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %netdev, align 128
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.5, ptr noundef %6) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ptp_clock_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___pskb_trim(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @timecounter_cyc2time(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_with_offset(i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ixgbe_ptp_adjfreq_82599(ptr noundef %ptp, i32 noundef %ppb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr i8, ptr %ptp, i32 -60776
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ppb)
  %cmp = icmp slt i32 %ppb, 0
  %0 = tail call i32 @llvm.abs.i32(i32 %ppb, i1 false)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !76
  %base_incval = getelementptr i8, ptr %ptp, i32 296
  %1 = ptrtoint ptr %base_incval to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %base_incval, align 16
  %conv = zext i32 %2 to i64
  %conv9 = sext i32 %0 to i64
  %mul = mul nsw i64 %conv, %conv9
  %3 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -8543223759426509417, i64 %mul, i32 0) #12, !srcloc !77
  %asmresult.i.i.i = extractvalue { i64, i32 } %3, 0
  %asmresult4.i.i.i = extractvalue { i64, i32 } %3, 1
  %4 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -8543223759426509417, i64 %mul, i64 %asmresult.i.i.i, i32 %asmresult4.i.i.i) #12, !srcloc !78
  %asmresult10.i.i.i = extractvalue { i64, i32 } %4, 0
  %div158.i.i52 = lshr i64 %asmresult10.i.i.i, 29
  %conv11 = and i64 %div158.i.i52, 4294967295
  %5 = sub nsw i64 0, %conv11
  %cond.p = select i1 %cmp, i64 %5, i64 %conv11
  %cond = add nsw i64 %cond.p, %conv
  %type = getelementptr i8, ptr %ptp, i32 -60496
  %6 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %type, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.34)
  switch i32 %7, label %entry.sw.epilog_crit_edge [
    i32 3, label %sw.bb
    i32 2, label %sw.bb22
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967295, i64 %cond)
  %cmp14 = icmp ugt i64 %cond, 4294967295
  br i1 %cmp14, label %do.end19, label %sw.bb.if.end20_crit_edge

sw.bb.if.end20_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

do.end19:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %pdev = getelementptr i8, ptr %ptp, i32 -64480
  %9 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.21) #11
  br label %if.end20

if.end20:                                         ; preds = %do.end19, %sw.bb.if.end20_crit_edge
  %11 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %hw1, align 4
  %tobool.not.i.i = icmp eq ptr %12, null
  br i1 %tobool.not.i.i, label %if.end20.sw.epilog_crit_edge, label %do.body1.i

if.end20.sw.epilog_crit_edge:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

do.body1.i:                                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  %conv21 = trunc i64 %cond to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !73
  tail call void @arm_heavy_mb() #8
  %13 = tail call i32 @llvm.bswap.i32(i32 %conv21) #8
  %add.ptr.i = getelementptr i8, ptr %12, i32 35860
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %13) #8, !srcloc !74
  br label %sw.epilog

sw.bb22:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp8(i64 16777215, i64 %cond)
  %cmp23 = icmp ugt i64 %cond, 16777215
  br i1 %cmp23, label %do.end28, label %sw.bb22.if.end31_crit_edge

sw.bb22.if.end31_crit_edge:                       ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31

do.end28:                                         ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #10
  %pdev29 = getelementptr i8, ptr %ptp, i32 -64480
  %14 = ptrtoint ptr %pdev29 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pdev29, align 8
  %dev30 = getelementptr inbounds %struct.pci_dev, ptr %15, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev30, ptr noundef nonnull @.str.21) #11
  br label %if.end31

if.end31:                                         ; preds = %do.end28, %sw.bb22.if.end31_crit_edge
  %16 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile ptr, ptr %hw1, align 4
  %tobool.not.i.i48 = icmp eq ptr %17, null
  br i1 %tobool.not.i.i48, label %if.end31.sw.epilog_crit_edge, label %do.body1.i50

if.end31.sw.epilog_crit_edge:                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

do.body1.i50:                                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  %conv32 = trunc i64 %cond to i32
  %and = and i32 %conv32, 16777215
  %or = or i32 %and, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !73
  tail call void @arm_heavy_mb() #8
  %18 = tail call i32 @llvm.bswap.i32(i32 %or) #8
  %add.ptr.i49 = getelementptr i8, ptr %17, i32 35860
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i49, i32 %18) #8, !srcloc !74
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.body1.i50, %if.end31.sw.epilog_crit_edge, %do.body1.i, %if.end20.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ixgbe_ptp_adjtime(ptr noundef %ptp, i64 noundef %delta) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tmreg_lock = getelementptr i8, ptr %ptp, i32 184
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %tmreg_lock) #8
  %nsec.i = getelementptr i8, ptr %ptp, i32 272
  %0 = ptrtoint ptr %nsec.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %nsec.i, align 8
  %add.i = add i64 %1, %delta
  store i64 %add.i, ptr %nsec.i, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %tmreg_lock, i32 noundef %call3) #8
  %ptp_setup_sdp = getelementptr i8, ptr %ptp, i32 312
  %2 = ptrtoint ptr %ptp_setup_sdp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ptp_setup_sdp, align 32
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr = getelementptr i8, ptr %ptp, i32 -65000
  tail call void %3(ptr noundef %add.ptr) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ixgbe_ptp_gettimex(ptr noundef %ptp, ptr nocapture noundef %ts, ptr noundef %sts) #0 align 64 {
entry:
  %tmp19 = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr i8, ptr %ptp, i32 -60776
  %tmreg_lock = getelementptr i8, ptr %ptp, i32 184
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %tmreg_lock) #8
  %type = getelementptr i8, ptr %ptp, i32 -60496
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 8
  %.off = add i32 %1, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off)
  %switch = icmp ult i32 %.off, 3
  %tobool.not.i = icmp eq ptr %sts, null
  br i1 %switch, label %sw.bb, label %sw.default

sw.bb:                                            ; preds = %entry
  br i1 %tobool.not.i, label %ptp_read_system_prets.exit.thread, label %if.then.i36

ptp_read_system_prets.exit.thread:                ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %call846 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 35928) #8
  br label %timespec64_to_ns.exit

if.then.i36:                                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ktime_get_real_ts64(ptr noundef nonnull %sts) #8
  %call8 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 35928) #8
  %post_ts.i = getelementptr inbounds %struct.ptp_system_timestamp, ptr %sts, i32 0, i32 1
  tail call void @ktime_get_real_ts64(ptr noundef %post_ts.i) #8
  br label %timespec64_to_ns.exit

timespec64_to_ns.exit:                            ; preds = %if.then.i36, %ptp_read_system_prets.exit.thread
  %call9 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 35852) #8
  %tv_nsec = getelementptr inbounds %struct.timespec64, ptr %ts, i32 0, i32 1
  %2 = ptrtoint ptr %tv_nsec to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %call9, ptr %tv_nsec, align 8
  %call10 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 35856) #8
  %conv11 = zext i32 %call10 to i64
  %3 = ptrtoint ptr %ts to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %conv11, ptr %ts, align 8
  %mul.i = mul nuw nsw i64 %conv11, 1000000000
  %4 = ptrtoint ptr %tv_nsec to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tv_nsec, align 8
  %conv.i = sext i32 %5 to i64
  %add.i = add nsw i64 %mul.i, %conv.i
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br i1 %tobool.not.i, label %ptp_read_system_prets.exit40.thread, label %if.then.i43

ptp_read_system_prets.exit40.thread:              ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #10
  %call1347 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 35852) #8
  br label %ptp_read_system_postts.exit45

if.then.i43:                                      ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ktime_get_real_ts64(ptr noundef nonnull %sts) #8
  %call13 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 35852) #8
  %post_ts.i42 = getelementptr inbounds %struct.ptp_system_timestamp, ptr %sts, i32 0, i32 1
  tail call void @ktime_get_real_ts64(ptr noundef %post_ts.i42) #8
  br label %ptp_read_system_postts.exit45

ptp_read_system_postts.exit45:                    ; preds = %if.then.i43, %ptp_read_system_prets.exit40.thread
  %conv1449.in = phi i32 [ %call1347, %ptp_read_system_prets.exit40.thread ], [ %call13, %if.then.i43 ]
  %conv1449 = zext i32 %conv1449.in to i64
  %call15 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 35856) #8
  %conv16 = zext i32 %call15 to i64
  %shl = shl nuw i64 %conv16, 32
  %or = or i64 %shl, %conv1449
  br label %sw.epilog

sw.epilog:                                        ; preds = %ptp_read_system_postts.exit45, %timespec64_to_ns.exit
  %stamp.0 = phi i64 [ %or, %ptp_read_system_postts.exit45 ], [ %add.i, %timespec64_to_ns.exit ]
  %hw_tc = getelementptr i8, ptr %ptp, i32 256
  %call17 = tail call i64 @timecounter_cyc2time(ptr noundef %hw_tc, i64 noundef %stamp.0) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %tmreg_lock, i32 noundef %call4) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp19) #8
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %tmp19, i64 noundef %call17) #8
  %6 = call ptr @memcpy(ptr %ts, ptr %tmp19, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp19) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ixgbe_ptp_settime(ptr noundef %ptp, ptr nocapture noundef readonly %ts) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ts to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %ts, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 9223372035, i64 %1)
  %cmp.i = icmp sgt i64 %1, 9223372035
  br i1 %cmp.i, label %entry.timespec64_to_ns.exit_crit_edge, label %if.end.i

entry.timespec64_to_ns.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %timespec64_to_ns.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp8(i64 -9223372035, i64 %1)
  %cmp2.i = icmp slt i64 %1, -9223372035
  br i1 %cmp2.i, label %if.end.i.timespec64_to_ns.exit_crit_edge, label %if.end4.i

if.end.i.timespec64_to_ns.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %timespec64_to_ns.exit

if.end4.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %mul.i = mul nsw i64 %1, 1000000000
  %tv_nsec.i = getelementptr inbounds %struct.timespec64, ptr %ts, i32 0, i32 1
  %2 = ptrtoint ptr %tv_nsec.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tv_nsec.i, align 8
  %conv.i = sext i32 %3 to i64
  %add.i = add i64 %mul.i, %conv.i
  br label %timespec64_to_ns.exit

timespec64_to_ns.exit:                            ; preds = %if.end4.i, %if.end.i.timespec64_to_ns.exit_crit_edge, %entry.timespec64_to_ns.exit_crit_edge
  %retval.0.i = phi i64 [ %add.i, %if.end4.i ], [ 9223372036854775807, %entry.timespec64_to_ns.exit_crit_edge ], [ -9223372036854775808, %if.end.i.timespec64_to_ns.exit_crit_edge ]
  %tmreg_lock = getelementptr i8, ptr %ptp, i32 184
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %tmreg_lock) #8
  %hw_tc = getelementptr i8, ptr %ptp, i32 256
  %hw_cc = getelementptr i8, ptr %ptp, i32 232
  tail call void @timecounter_init(ptr noundef %hw_tc, ptr noundef %hw_cc, i64 noundef %retval.0.i) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %tmreg_lock, i32 noundef %call4) #8
  %ptp_setup_sdp = getelementptr i8, ptr %ptp, i32 312
  %4 = ptrtoint ptr %ptp_setup_sdp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ptp_setup_sdp, align 32
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %timespec64_to_ns.exit.if.end_crit_edge, label %if.then

timespec64_to_ns.exit.if.end_crit_edge:           ; preds = %timespec64_to_ns.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %timespec64_to_ns.exit
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr = getelementptr i8, ptr %ptp, i32 -65000
  tail call void %5(ptr noundef %add.ptr) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %timespec64_to_ns.exit.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ixgbe_ptp_feature_enable(ptr noundef %ptp, ptr nocapture noundef readonly %rq, i32 noundef %on) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %ptp, i32 -65000
  %0 = ptrtoint ptr %rq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rq, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp.not = icmp eq i32 %1, 2
  br i1 %cmp.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %ptp_setup_sdp = getelementptr i8, ptr %ptp, i32 312
  %2 = ptrtoint ptr %ptp_setup_sdp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ptp_setup_sdp, align 32
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %on)
  %tobool1.not = icmp eq i32 %on, 0
  %flags23 = getelementptr i8, ptr %ptp, i32 -64464
  %4 = ptrtoint ptr %flags23 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags23, align 8
  %and = and i32 %5, -1025
  %masksel = select i1 %tobool1.not, i32 0, i32 1024
  %and.sink = or i32 %and, %masksel
  store i32 %and.sink, ptr %flags23, align 8
  tail call void %3(ptr noundef %add.ptr) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -524, %lor.lhs.false.cleanup_crit_edge ], [ -524, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ixgbe_ptp_setup_sdp_X540(ptr noundef %adapter) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 54
  %0 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %hw1, align 4
  %tobool.not.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i, label %entry.ixgbe_write_reg.exit_crit_edge, label %do.body1.i

entry.ixgbe_write_reg.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %ixgbe_write_reg.exit

do.body1.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !73
  tail call void @arm_heavy_mb() #8
  %add.ptr.i = getelementptr i8, ptr %1, i32 35872
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #8, !srcloc !74
  br label %ixgbe_write_reg.exit

ixgbe_write_reg.exit:                             ; preds = %do.body1.i, %entry.ixgbe_write_reg.exit_crit_edge
  %call = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 8) #8
  %flags2 = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 7
  %2 = ptrtoint ptr %flags2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags2, align 8
  %and = and i32 %3, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %ixgbe_write_reg.exit.cleanup_crit_edge, label %if.end

ixgbe_write_reg.exit.cleanup_crit_edge:           ; preds = %ixgbe_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %ixgbe_write_reg.exit
  %call2 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 32) #8
  %or = or i32 %call2, 65792
  %shift = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 92, i32 3
  %4 = ptrtoint ptr %shift to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %shift, align 4
  %sh_prom = zext i32 %5 to i64
  %shl = shl i64 500000000, %sh_prom
  %mult = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 92, i32 2
  %6 = ptrtoint ptr %mult to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mult, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %shl)
  %cmp164.i.i = icmp ult i64 %shl, 4294967296
  br i1 %cmp164.i.i, label %if.then168.i.i, label %if.else174.i.i, !prof !69

if.then168.i.i:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %conv169.i.i = trunc i64 %shl to i32
  %div172.i.i = udiv i32 %conv169.i.i, %7
  br label %div_u64.exit

if.else174.i.i:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %8 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %7, i64 %shl) #12, !srcloc !79
  %asmresult1.i.i.i = extractvalue { i64, i64 } %8, 1
  %extract.t201 = trunc i64 %asmresult1.i.i.i to i32
  %extract206 = lshr i64 %asmresult1.i.i.i, 32
  %extract.t207 = trunc i64 %extract206 to i32
  br label %div_u64.exit

div_u64.exit:                                     ; preds = %if.else174.i.i, %if.then168.i.i
  %dividend.addr.0.i.i.off0 = phi i32 [ %div172.i.i, %if.then168.i.i ], [ %extract.t201, %if.else174.i.i ]
  %dividend.addr.0.i.i.off32 = phi i32 [ 0, %if.then168.i.i ], [ %extract.t207, %if.else174.i.i ]
  %tmreg_lock = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 91
  %call8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %tmreg_lock) #8
  %hw_tc = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 93
  %call11 = tail call i64 @timecounter_read(ptr noundef %hw_tc) #8
  %cycle_last = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 93, i32 1
  %9 = ptrtoint ptr %cycle_last to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %cycle_last, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %tmreg_lock, i32 noundef %call8) #8
  %conv14.i = trunc i64 %call11 to i32
  %11 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -8543223759426509417, i64 %call11, i32 0) #12, !srcloc !77
  %asmresult.i.i = extractvalue { i64, i32 } %11, 0
  %asmresult4.i.i = extractvalue { i64, i32 } %11, 1
  %12 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -8543223759426509417, i64 %call11, i64 %asmresult.i.i, i32 %asmresult4.i.i) #12, !srcloc !78
  %asmresult10.i.i = extractvalue { i64, i32 } %12, 0
  %div158.i210 = lshr i64 %asmresult10.i.i, 29
  %conv159.i = trunc i64 %div158.i210 to i32
  %mul160.i.neg.neg = mul i32 %conv159.i, 1000000000
  %sub161.i.neg = sub i32 1000000000, %conv14.i
  %sub = add i32 %sub161.i.neg, %mul160.i.neg.neg
  %conv17 = zext i32 %sub to i64
  %13 = ptrtoint ptr %shift to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %shift, align 4
  %sh_prom19 = zext i32 %14 to i64
  %shl20 = shl i64 %conv17, %sh_prom19
  %15 = ptrtoint ptr %mult to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %mult, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %shl20)
  %cmp164.i.i166 = icmp ult i64 %shl20, 4294967296
  br i1 %cmp164.i.i166, label %if.then168.i.i171, label %if.else174.i.i173, !prof !69

if.then168.i.i171:                                ; preds = %div_u64.exit
  call void @__sanitizer_cov_trace_pc() #10
  %conv169.i.i168 = trunc i64 %shl20 to i32
  %div172.i.i169 = udiv i32 %conv169.i.i168, %16
  %conv173.i.i170 = zext i32 %div172.i.i169 to i64
  br label %div_u64.exit175

if.else174.i.i173:                                ; preds = %div_u64.exit
  call void @__sanitizer_cov_trace_pc() #10
  %17 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %16, i64 %shl20) #12, !srcloc !79
  %asmresult1.i.i.i172 = extractvalue { i64, i64 } %17, 1
  br label %div_u64.exit175

div_u64.exit175:                                  ; preds = %if.else174.i.i173, %if.then168.i.i171
  %dividend.addr.0.i.i174 = phi i64 [ %conv173.i.i170, %if.then168.i.i171 ], [ %asmresult1.i.i.i172, %if.else174.i.i173 ]
  %add = add i64 %dividend.addr.0.i.i174, %10
  %conv23 = trunc i64 %add to i32
  %shr24 = lshr i64 %add, 32
  %conv25 = trunc i64 %shr24 to i32
  %18 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile ptr, ptr %hw1, align 4
  %tobool.not.i.i176 = icmp eq ptr %19, null
  br i1 %tobool.not.i.i176, label %div_u64.exit175.ixgbe_write_reg.exit179_crit_edge, label %do.body1.i178

div_u64.exit175.ixgbe_write_reg.exit179_crit_edge: ; preds = %div_u64.exit175
  call void @__sanitizer_cov_trace_pc() #10
  br label %ixgbe_write_reg.exit179

do.body1.i178:                                    ; preds = %div_u64.exit175
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !73
  tail call void @arm_heavy_mb() #8
  %20 = tail call i32 @llvm.bswap.i32(i32 %dividend.addr.0.i.i.off0) #8
  %add.ptr.i177 = getelementptr i8, ptr %19, i32 35892
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i177, i32 %20) #8, !srcloc !74
  br label %ixgbe_write_reg.exit179

ixgbe_write_reg.exit179:                          ; preds = %do.body1.i178, %div_u64.exit175.ixgbe_write_reg.exit179_crit_edge
  %21 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile ptr, ptr %hw1, align 4
  %tobool.not.i.i180 = icmp eq ptr %22, null
  br i1 %tobool.not.i.i180, label %ixgbe_write_reg.exit179.ixgbe_write_reg.exit183_crit_edge, label %do.body1.i182

ixgbe_write_reg.exit179.ixgbe_write_reg.exit183_crit_edge: ; preds = %ixgbe_write_reg.exit179
  call void @__sanitizer_cov_trace_pc() #10
  br label %ixgbe_write_reg.exit183

do.body1.i182:                                    ; preds = %ixgbe_write_reg.exit179
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !73
  tail call void @arm_heavy_mb() #8
  %23 = tail call i32 @llvm.bswap.i32(i32 %dividend.addr.0.i.i.off32) #8
  %add.ptr.i181 = getelementptr i8, ptr %22, i32 35896
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i181, i32 %23) #8, !srcloc !74
  br label %ixgbe_write_reg.exit183

ixgbe_write_reg.exit183:                          ; preds = %do.body1.i182, %ixgbe_write_reg.exit179.ixgbe_write_reg.exit183_crit_edge
  %24 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile ptr, ptr %hw1, align 4
  %tobool.not.i.i184 = icmp eq ptr %25, null
  br i1 %tobool.not.i.i184, label %ixgbe_write_reg.exit183.ixgbe_write_reg.exit187_crit_edge, label %do.body1.i186

ixgbe_write_reg.exit183.ixgbe_write_reg.exit187_crit_edge: ; preds = %ixgbe_write_reg.exit183
  call void @__sanitizer_cov_trace_pc() #10
  br label %ixgbe_write_reg.exit187

do.body1.i186:                                    ; preds = %ixgbe_write_reg.exit183
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !73
  tail call void @arm_heavy_mb() #8
  %26 = tail call i32 @llvm.bswap.i32(i32 %conv23) #8
  %add.ptr.i185 = getelementptr i8, ptr %25, i32 35876
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i185, i32 %26) #8, !srcloc !74
  br label %ixgbe_write_reg.exit187

ixgbe_write_reg.exit187:                          ; preds = %do.body1.i186, %ixgbe_write_reg.exit183.ixgbe_write_reg.exit187_crit_edge
  %27 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile ptr, ptr %hw1, align 4
  %tobool.not.i.i188 = icmp eq ptr %28, null
  br i1 %tobool.not.i.i188, label %ixgbe_write_reg.exit187.ixgbe_write_reg.exit191_crit_edge, label %do.body1.i190

ixgbe_write_reg.exit187.ixgbe_write_reg.exit191_crit_edge: ; preds = %ixgbe_write_reg.exit187
  call void @__sanitizer_cov_trace_pc() #10
  br label %ixgbe_write_reg.exit191

do.body1.i190:                                    ; preds = %ixgbe_write_reg.exit187
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !73
  tail call void @arm_heavy_mb() #8
  %29 = tail call i32 @llvm.bswap.i32(i32 %conv25) #8
  %add.ptr.i189 = getelementptr i8, ptr %28, i32 35880
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i189, i32 %29) #8, !srcloc !74
  br label %ixgbe_write_reg.exit191

ixgbe_write_reg.exit191:                          ; preds = %do.body1.i190, %ixgbe_write_reg.exit187.ixgbe_write_reg.exit191_crit_edge
  %30 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile ptr, ptr %hw1, align 4
  %tobool.not.i.i192 = icmp eq ptr %31, null
  br i1 %tobool.not.i.i192, label %ixgbe_write_reg.exit191.ixgbe_write_reg.exit195_crit_edge, label %do.body1.i194

ixgbe_write_reg.exit191.ixgbe_write_reg.exit195_crit_edge: ; preds = %ixgbe_write_reg.exit191
  call void @__sanitizer_cov_trace_pc() #10
  br label %ixgbe_write_reg.exit195

do.body1.i194:                                    ; preds = %ixgbe_write_reg.exit191
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !73
  tail call void @arm_heavy_mb() #8
  %32 = tail call i32 @llvm.bswap.i32(i32 %or) #8
  %add.ptr.i193 = getelementptr i8, ptr %31, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i193, i32 %32) #8, !srcloc !74
  br label %ixgbe_write_reg.exit195

ixgbe_write_reg.exit195:                          ; preds = %do.body1.i194, %ixgbe_write_reg.exit191.ixgbe_write_reg.exit195_crit_edge
  %33 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile ptr, ptr %hw1, align 4
  %tobool.not.i.i196 = icmp eq ptr %34, null
  br i1 %tobool.not.i.i196, label %ixgbe_write_reg.exit195.ixgbe_write_reg.exit199_crit_edge, label %do.body1.i198

ixgbe_write_reg.exit195.ixgbe_write_reg.exit199_crit_edge: ; preds = %ixgbe_write_reg.exit195
  call void @__sanitizer_cov_trace_pc() #10
  br label %ixgbe_write_reg.exit199

do.body1.i198:                                    ; preds = %ixgbe_write_reg.exit195
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !73
  tail call void @arm_heavy_mb() #8
  %add.ptr.i197 = getelementptr i8, ptr %34, i32 35872
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i197, i32 1275068416) #8, !srcloc !74
  br label %ixgbe_write_reg.exit199

ixgbe_write_reg.exit199:                          ; preds = %do.body1.i198, %ixgbe_write_reg.exit195.ixgbe_write_reg.exit199_crit_edge
  %call26 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 8) #8
  br label %cleanup

cleanup:                                          ; preds = %ixgbe_write_reg.exit199, %ixgbe_write_reg.exit.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ixgbe_ptp_adjfreq_X550(ptr noundef %ptp, i32 noundef %ppb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.abs.i32(i32 %ppb, i1 false)
  %conv = sext i32 %0 to i64
  %mul = mul i64 %conv, 53687091200
  %1 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -8543223759426509417, i64 %mul, i32 0) #12, !srcloc !77
  %asmresult.i.i.i = extractvalue { i64, i32 } %1, 0
  %asmresult4.i.i.i = extractvalue { i64, i32 } %1, 1
  %2 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -8543223759426509417, i64 %mul, i64 %asmresult.i.i.i, i32 %asmresult4.i.i.i) #12, !srcloc !78
  %asmresult10.i.i.i = extractvalue { i64, i32 } %2, 0
  %div158.i.i17 = lshr i64 %asmresult10.i.i.i, 29
  call void @__sanitizer_cov_trace_const_cmp8(i64 1152921504069976063, i64 %asmresult10.i.i.i)
  %cmp2 = icmp ugt i64 %asmresult10.i.i.i, 1152921504069976063
  br i1 %cmp2, label %do.end, label %entry.if.end5_crit_edge

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %pdev = getelementptr i8, ptr %ptp, i32 -64480
  %3 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.21) #11
  br label %if.end5

if.end5:                                          ; preds = %do.end, %entry.if.end5_crit_edge
  %hw1 = getelementptr i8, ptr %ptp, i32 -60776
  %5 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %hw1, align 4
  %tobool.not.i.i = icmp eq ptr %6, null
  br i1 %tobool.not.i.i, label %if.end5.ixgbe_write_reg.exit_crit_edge, label %do.body1.i

if.end5.ixgbe_write_reg.exit_crit_edge:           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %ixgbe_write_reg.exit

do.body1.i:                                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %7 = trunc i64 %div158.i.i17 to i32
  %conv6 = and i32 %7, 2147483647
  %8 = and i32 %ppb, -2147483648
  %spec.select16 = or i32 %conv6, %8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !73
  tail call void @arm_heavy_mb() #8
  %9 = tail call i32 @llvm.bswap.i32(i32 %spec.select16) #8
  %add.ptr.i = getelementptr i8, ptr %6, i32 35860
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %9) #8, !srcloc !74
  br label %ixgbe_write_reg.exit

ixgbe_write_reg.exit:                             ; preds = %do.body1.i, %if.end5.ixgbe_write_reg.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ixgbe_ptp_setup_sdp_X550(ptr noundef %adapter) #0 align 64 {
entry:
  %tmp22 = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 54
  %0 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %hw1, align 4
  %tobool.not.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i, label %entry.ixgbe_write_reg.exit_crit_edge, label %do.body1.i

entry.ixgbe_write_reg.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %ixgbe_write_reg.exit

do.body1.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !73
  tail call void @arm_heavy_mb() #8
  %add.ptr.i = getelementptr i8, ptr %1, i32 35872
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #8, !srcloc !74
  br label %ixgbe_write_reg.exit

ixgbe_write_reg.exit:                             ; preds = %do.body1.i, %entry.ixgbe_write_reg.exit_crit_edge
  %call = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 8) #8
  %flags2 = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 7
  %2 = ptrtoint ptr %flags2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags2, align 8
  %and = and i32 %3, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %ixgbe_write_reg.exit.cleanup_crit_edge, label %if.end

ixgbe_write_reg.exit.cleanup_crit_edge:           ; preds = %ixgbe_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %ixgbe_write_reg.exit
  %call2 = tail call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 32) #8
  %or = or i32 %call2, 65792
  %shift = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 92, i32 3
  %4 = ptrtoint ptr %shift to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %shift, align 4
  %sh_prom = zext i32 %5 to i64
  %shl = shl i64 500000000, %sh_prom
  %mult = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 92, i32 2
  %6 = ptrtoint ptr %mult to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mult, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %shl)
  %cmp164.i.i = icmp ult i64 %shl, 4294967296
  br i1 %cmp164.i.i, label %if.then168.i.i, label %if.else174.i.i, !prof !69

if.then168.i.i:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %conv169.i.i = trunc i64 %shl to i32
  %div172.i.i = udiv i32 %conv169.i.i, %7
  br label %div_u64.exit

if.else174.i.i:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %8 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %7, i64 %shl) #12, !srcloc !79
  %asmresult1.i.i.i = extractvalue { i64, i64 } %8, 1
  %extract.t200 = trunc i64 %asmresult1.i.i.i to i32
  br label %div_u64.exit

div_u64.exit:                                     ; preds = %if.else174.i.i, %if.then168.i.i
  %dividend.addr.0.i.i.off0 = phi i32 [ %div172.i.i, %if.then168.i.i ], [ %extract.t200, %if.else174.i.i ]
  %tmreg_lock = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 91
  %call7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %tmreg_lock) #8
  %hw_tc = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 93
  %call10 = tail call i64 @timecounter_read(ptr noundef %hw_tc) #8
  %cycle_last = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 93, i32 1
  %9 = ptrtoint ptr %cycle_last to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %cycle_last, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %tmreg_lock, i32 noundef %call7) #8
  %conv14.i = trunc i64 %call10 to i32
  %11 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -8543223759426509417, i64 %call10, i32 0) #12, !srcloc !77
  %asmresult.i.i = extractvalue { i64, i32 } %11, 0
  %asmresult4.i.i = extractvalue { i64, i32 } %11, 1
  %12 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -8543223759426509417, i64 %call10, i64 %asmresult.i.i, i32 %asmresult4.i.i) #12, !srcloc !78
  %asmresult10.i.i = extractvalue { i64, i32 } %12, 0
  %div158.i202 = lshr i64 %asmresult10.i.i, 29
  %conv159.i = trunc i64 %div158.i202 to i32
  %mul160.i.neg.neg = mul i32 %conv159.i, 1000000000
  %sub161.i.neg = sub i32 1000000000, %conv14.i
  %sub = add i32 %sub161.i.neg, %mul160.i.neg.neg
  %conv16 = zext i32 %sub to i64
  %13 = ptrtoint ptr %shift to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %shift, align 4
  %sh_prom18 = zext i32 %14 to i64
  %shl19 = shl i64 %conv16, %sh_prom18
  %15 = ptrtoint ptr %mult to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %mult, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %shl19)
  %cmp164.i.i165 = icmp ult i64 %shl19, 4294967296
  br i1 %cmp164.i.i165, label %if.then168.i.i170, label %if.else174.i.i172, !prof !69

if.then168.i.i170:                                ; preds = %div_u64.exit
  call void @__sanitizer_cov_trace_pc() #10
  %conv169.i.i167 = trunc i64 %shl19 to i32
  %div172.i.i168 = udiv i32 %conv169.i.i167, %16
  %conv173.i.i169 = zext i32 %div172.i.i168 to i64
  br label %div_u64.exit174

if.else174.i.i172:                                ; preds = %div_u64.exit
  call void @__sanitizer_cov_trace_pc() #10
  %17 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %16, i64 %shl19) #12, !srcloc !79
  %asmresult1.i.i.i171 = extractvalue { i64, i64 } %17, 1
  br label %div_u64.exit174

div_u64.exit174:                                  ; preds = %if.else174.i.i172, %if.then168.i.i170
  %dividend.addr.0.i.i173 = phi i64 [ %conv173.i.i169, %if.then168.i.i170 ], [ %asmresult1.i.i.i171, %if.else174.i.i172 ]
  %add = add i64 %dividend.addr.0.i.i173, %10
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp22) #8
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %tmp22, i64 noundef %add) #8
  %18 = ptrtoint ptr %tmp22 to i32
  call void @__asan_load8_noabort(i32 %18)
  %ts.sroa.0.0.copyload37 = load i64, ptr %tmp22, align 8
  %ts.sroa.5.0.tmp22.sroa_idx = getelementptr inbounds i8, ptr %tmp22, i32 8
  %19 = ptrtoint ptr %ts.sroa.5.0.tmp22.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %19)
  %ts.sroa.5.0.copyload38 = load i32, ptr %ts.sroa.5.0.tmp22.sroa_idx, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp22) #8
  %conv23 = trunc i64 %ts.sroa.0.0.copyload37 to i32
  %20 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile ptr, ptr %hw1, align 4
  %tobool.not.i.i175 = icmp eq ptr %21, null
  br i1 %tobool.not.i.i175, label %div_u64.exit174.ixgbe_write_reg.exit178_crit_edge, label %do.body1.i177

div_u64.exit174.ixgbe_write_reg.exit178_crit_edge: ; preds = %div_u64.exit174
  call void @__sanitizer_cov_trace_pc() #10
  br label %ixgbe_write_reg.exit178

do.body1.i177:                                    ; preds = %div_u64.exit174
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !73
  call void @arm_heavy_mb() #8
  %22 = call i32 @llvm.bswap.i32(i32 %dividend.addr.0.i.i.off0) #8
  %add.ptr.i176 = getelementptr i8, ptr %21, i32 35892
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i176, i32 %22) #8, !srcloc !74
  br label %ixgbe_write_reg.exit178

ixgbe_write_reg.exit178:                          ; preds = %do.body1.i177, %div_u64.exit174.ixgbe_write_reg.exit178_crit_edge
  %23 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile ptr, ptr %hw1, align 4
  %tobool.not.i.i179 = icmp eq ptr %24, null
  br i1 %tobool.not.i.i179, label %ixgbe_write_reg.exit178.ixgbe_write_reg.exit182_crit_edge, label %do.body1.i181

ixgbe_write_reg.exit178.ixgbe_write_reg.exit182_crit_edge: ; preds = %ixgbe_write_reg.exit178
  call void @__sanitizer_cov_trace_pc() #10
  br label %ixgbe_write_reg.exit182

do.body1.i181:                                    ; preds = %ixgbe_write_reg.exit178
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !73
  call void @arm_heavy_mb() #8
  %25 = call i32 @llvm.bswap.i32(i32 %ts.sroa.5.0.copyload38) #8
  %add.ptr.i180 = getelementptr i8, ptr %24, i32 35876
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i180, i32 %25) #8, !srcloc !74
  br label %ixgbe_write_reg.exit182

ixgbe_write_reg.exit182:                          ; preds = %do.body1.i181, %ixgbe_write_reg.exit178.ixgbe_write_reg.exit182_crit_edge
  %26 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile ptr, ptr %hw1, align 4
  %tobool.not.i.i183 = icmp eq ptr %27, null
  br i1 %tobool.not.i.i183, label %ixgbe_write_reg.exit182.ixgbe_write_reg.exit186_crit_edge, label %do.body1.i185

ixgbe_write_reg.exit182.ixgbe_write_reg.exit186_crit_edge: ; preds = %ixgbe_write_reg.exit182
  call void @__sanitizer_cov_trace_pc() #10
  br label %ixgbe_write_reg.exit186

do.body1.i185:                                    ; preds = %ixgbe_write_reg.exit182
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !73
  call void @arm_heavy_mb() #8
  %28 = call i32 @llvm.bswap.i32(i32 %conv23) #8
  %add.ptr.i184 = getelementptr i8, ptr %27, i32 35880
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i184, i32 %28) #8, !srcloc !74
  br label %ixgbe_write_reg.exit186

ixgbe_write_reg.exit186:                          ; preds = %do.body1.i185, %ixgbe_write_reg.exit182.ixgbe_write_reg.exit186_crit_edge
  %29 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile ptr, ptr %hw1, align 4
  %tobool.not.i.i187 = icmp eq ptr %30, null
  br i1 %tobool.not.i.i187, label %ixgbe_write_reg.exit186.ixgbe_write_reg.exit190_crit_edge, label %do.body1.i189

ixgbe_write_reg.exit186.ixgbe_write_reg.exit190_crit_edge: ; preds = %ixgbe_write_reg.exit186
  call void @__sanitizer_cov_trace_pc() #10
  br label %ixgbe_write_reg.exit190

do.body1.i189:                                    ; preds = %ixgbe_write_reg.exit186
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !73
  call void @arm_heavy_mb() #8
  %31 = call i32 @llvm.bswap.i32(i32 %or) #8
  %add.ptr.i188 = getelementptr i8, ptr %30, i32 32
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i188, i32 %31) #8, !srcloc !74
  br label %ixgbe_write_reg.exit190

ixgbe_write_reg.exit190:                          ; preds = %do.body1.i189, %ixgbe_write_reg.exit186.ixgbe_write_reg.exit190_crit_edge
  %32 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile ptr, ptr %hw1, align 4
  %tobool.not.i.i191 = icmp eq ptr %33, null
  br i1 %tobool.not.i.i191, label %ixgbe_write_reg.exit190.ixgbe_write_reg.exit194_crit_edge, label %do.body1.i193

ixgbe_write_reg.exit190.ixgbe_write_reg.exit194_crit_edge: ; preds = %ixgbe_write_reg.exit190
  call void @__sanitizer_cov_trace_pc() #10
  br label %ixgbe_write_reg.exit194

do.body1.i193:                                    ; preds = %ixgbe_write_reg.exit190
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !73
  call void @arm_heavy_mb() #8
  %add.ptr.i192 = getelementptr i8, ptr %33, i32 60
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i192, i32 -2147418112) #8, !srcloc !74
  br label %ixgbe_write_reg.exit194

ixgbe_write_reg.exit194:                          ; preds = %do.body1.i193, %ixgbe_write_reg.exit190.ixgbe_write_reg.exit194_crit_edge
  %34 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile ptr, ptr %hw1, align 4
  %tobool.not.i.i195 = icmp eq ptr %35, null
  br i1 %tobool.not.i.i195, label %ixgbe_write_reg.exit194.ixgbe_write_reg.exit198_crit_edge, label %do.body1.i197

ixgbe_write_reg.exit194.ixgbe_write_reg.exit198_crit_edge: ; preds = %ixgbe_write_reg.exit194
  call void @__sanitizer_cov_trace_pc() #10
  br label %ixgbe_write_reg.exit198

do.body1.i197:                                    ; preds = %ixgbe_write_reg.exit194
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !73
  call void @arm_heavy_mb() #8
  %add.ptr.i196 = getelementptr i8, ptr %35, i32 35872
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i196, i32 1426063424) #8, !srcloc !74
  br label %ixgbe_write_reg.exit198

ixgbe_write_reg.exit198:                          ; preds = %do.body1.i197, %ixgbe_write_reg.exit194.ixgbe_write_reg.exit198_crit_edge
  %call24 = call i32 @ixgbe_read_reg(ptr noundef %hw1, i32 noundef 8) #8
  br label %cleanup

cleanup:                                          ; preds = %ixgbe_write_reg.exit198, %ixgbe_write_reg.exit.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ptp_clock_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ns_to_timespec64(ptr sret(%struct.timespec64) align 8, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ktime_get_real_ts64(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_tstamp_tx(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nounwind readonly }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !12, !13, !14, !15, !16, !17, !18, !20, !22, !23, !25, !27, !29, !31, !32, !33, !34, !35, !37, !38, !39, !41, !42, !43, !44, !45, !47, !48, !50, !51, !52}
!llvm.named.register.sp = !{!54}
!llvm.module.flags = !{!55, !56, !57, !58, !59, !60, !61, !62}
!llvm.ident = !{!63}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_ptp.c", i32 753, i32 3}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_ptp.c", i32 800, i32 3}
!4 = !{ptr @ixgbe_ptp_init.__key, !5, !"__key", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_ptp.c", i32 1439, i32 2}
!6 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @ixgbe_ptp_init.__key.3, !8, !"__key", i1 false, i1 false}
!8 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_ptp.c", i32 1446, i32 2}
!9 = !{ptr @.str.4, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_ptp.c", i32 1495, i32 3}
!12 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.8, !11, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.9, !11, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @ixgbe_ptp_stop._entry, !11, !"_entry", i1 false, i1 false}
!17 = !{ptr @ixgbe_ptp_stop._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!18 = distinct !{null, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../include/linux/skbuff.h", i32 2789, i32 6}
!20 = distinct !{null, !21, !"__already_done", i1 false, i1 false}
!21 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!22 = distinct !{null, !21, !"<string literal>", i1 false, i1 false}
!23 = distinct !{null, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!25 = !{ptr @.str.13, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!27 = !{ptr @.str.14, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_ptp.c", i32 1352, i32 5}
!29 = !{ptr @.str.15, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_ptp.c", i32 1410, i32 3}
!31 = !{ptr @.str.16, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.17, !30, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @ixgbe_ptp_create_clock._entry, !30, !"_entry", i1 false, i1 false}
!34 = !{ptr @ixgbe_ptp_create_clock._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.19, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_ptp.c", i32 1413, i32 3}
!37 = !{ptr @ixgbe_ptp_create_clock._entry.18, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @ixgbe_ptp_create_clock._entry_ptr.20, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.21, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_ptp.c", i32 470, i32 4}
!41 = !{ptr @.str.22, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.23, !40, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @ixgbe_ptp_adjfreq_82599._entry, !40, !"_entry", i1 false, i1 false}
!44 = !{ptr @ixgbe_ptp_adjfreq_82599._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @ixgbe_ptp_adjfreq_82599._entry.24, !46, !"_entry", i1 false, i1 false}
!46 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_ptp.c", i32 475, i32 4}
!47 = !{ptr @ixgbe_ptp_adjfreq_82599._entry_ptr.25, !46, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.26, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_ptp.c", i32 513, i32 3}
!50 = !{ptr @ixgbe_ptp_adjfreq_X550._entry, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @ixgbe_ptp_adjfreq_X550._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.27, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_ptp.c", i32 869, i32 3}
!54 = !{!"sp"}
!55 = !{i32 1, !"wchar_size", i32 2}
!56 = !{i32 1, !"min_enum_size", i32 4}
!57 = !{i32 8, !"branch-target-enforcement", i32 0}
!58 = !{i32 8, !"sign-return-address", i32 0}
!59 = !{i32 8, !"sign-return-address-all", i32 0}
!60 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!61 = !{i32 7, !"uwtable", i32 1}
!62 = !{i32 7, !"frame-pointer", i32 2}
!63 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!64 = !{i64 2148338951}
!65 = !{i64 2148249370, i64 2148249402, i64 2148249431, i64 2148249465, i64 2148249496, i64 2148249519}
!66 = !{!"auto-init"}
!67 = !{i64 2153956438, i64 2153956463}
!68 = !{i64 2153955757, i64 2153955782}
!69 = !{!"branch_weights", i32 2000, i32 1}
!70 = !{i64 6451312}
!71 = !{i64 6451509}
!72 = !{i64 2153936742}
!73 = !{i64 2157303062}
!74 = !{i64 5059393}
!75 = !{i64 2157483458}
!76 = !{i64 2157450101}
!77 = !{i64 1593429, i64 1593456, i64 1593478, i64 1593506}
!78 = !{i64 1593837, i64 1593864, i64 1593897, i64 1593918, i64 1593945, i64 1593971}
!79 = !{i64 2149078973, i64 2149079253, i64 2149079587, i64 2149079921}
