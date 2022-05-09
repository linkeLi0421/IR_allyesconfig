; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/intel/igb/igb_ptp.c_pt.bc'
source_filename = "../drivers/net/ethernet/intel/igb/igb_ptp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.22 }
%union.anon.22 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.igb_adapter = type { [128 x i32], ptr, ptr, i32, i32, i32, [10 x %struct.msix_entry], i32, i32, i16, i16, i16, i32, i32, [16 x ptr], i32, [16 x ptr], i32, i32, %struct.timer_list, %struct.timer_list, i16, i32, i32, i32, i16, i16, ptr, %struct.work_struct, %struct.work_struct, i8, i8, %struct.timer_list, i32, ptr, %struct.spinlock, %struct.rtnl_link_stats64, %struct.e1000_hw, %struct.e1000_hw_stats, %struct.e1000_phy_info, i32, [28 x i8], %struct.igb_ring, %struct.igb_ring, i32, [8 x ptr], i32, i32, i16, i16, i32, ptr, i32, i32, i32, ptr, ptr, %struct.ptp_clock_info, %struct.delayed_work, %struct.work_struct, ptr, %struct.hwtstamp_config, i32, i32, i32, i32, %struct.spinlock, %struct.cyclecounter, %struct.timecounter, i32, i32, i32, i8, [4 x %struct.ptp_pin_desc], [2 x %struct.anon.133], [32 x i8], ptr, i8, %struct.i2c_algo_bit_data, %struct.i2c_adapter, ptr, i32, [128 x i8], i32, i32, %struct.e1000_info, i16, %struct.hlist_head, %struct.hlist_head, i32, %struct.spinlock, [3 x i8], ptr, %struct.vf_mac_filter, ptr, [60 x i8] }
%struct.msix_entry = type { i32, i16 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.rtnl_link_stats64 = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.e1000_hw = type { ptr, ptr, ptr, i32, %struct.e1000_mac_info, %struct.e1000_fc_info, %struct.e1000_phy_info, %struct.e1000_nvm_info, %struct.e1000_bus_info, %struct.e1000_mbx_info, %struct.e1000_host_mng_dhcp_cookie, %union.anon.129, i16, i16, i16, i16, i8 }
%struct.e1000_mac_info = type { %struct.e1000_mac_operations, [6 x i8], [6 x i8], i32, i32, i32, i32, i32, i32, i16, i16, [128 x i32], i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.e1000_thermal_sensor_data }
%struct.e1000_mac_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.e1000_thermal_sensor_data = type { [3 x %struct.e1000_thermal_diode_data] }
%struct.e1000_thermal_diode_data = type { i8, i8, i8, i8 }
%struct.e1000_fc_info = type { i32, i32, i16, i8, i8, i32, i32 }
%struct.e1000_nvm_info = type { %struct.e1000_nvm_operations, i32, i32, i32, i32, i16, i16, i16, i16, i16 }
%struct.e1000_nvm_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.e1000_bus_info = type { i32, i32, i32, i32, i16, i16 }
%struct.e1000_mbx_info = type { %struct.e1000_mbx_operations, %struct.e1000_mbx_stats, i32, i32, i16 }
%struct.e1000_mbx_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.e1000_mbx_stats = type { i32, i32, i32, i32, i32 }
%struct.e1000_host_mng_dhcp_cookie = type { i32, i8, i8, i16, i32, i16, i8, i8 }
%union.anon.129 = type { %struct.e1000_dev_spec_82575 }
%struct.e1000_dev_spec_82575 = type { i8, i8, i8, i8, %struct.e1000_sfp_flags, i8, i8, i8, i8 }
%struct.e1000_sfp_flags = type { i8 }
%struct.e1000_hw_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.e1000_phy_info = type { %struct.e1000_phy_operations, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, [4 x i16], i8, i8, i8, i8, i8, i8, i8 }
%struct.e1000_phy_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.igb_ring = type { ptr, ptr, ptr, ptr, %union.anon.121, ptr, i32, ptr, i32, i32, i16, i8, i8, i8, i8, i32, i32, i32, i32, i16, i16, i16, %union.anon.125, [88 x i8], %struct.xdp_rxq_info }
%union.anon.121 = type { ptr }
%union.anon.125 = type { %struct.anon.126 }
%struct.anon.126 = type { %struct.igb_tx_queue_stats, %struct.u64_stats_sync, %struct.u64_stats_sync }
%struct.igb_tx_queue_stats = type { i64, i64, i64, i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.xdp_rxq_info = type { ptr, i32, i32, %struct.xdp_mem_info, i32, [104 x i8] }
%struct.xdp_mem_info = type { i32, i32 }
%struct.ptp_clock_info = type { ptr, [32 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.hwtstamp_config = type { i32, i32, i32 }
%struct.cyclecounter = type { ptr, i64, i32, i32 }
%struct.timecounter = type { ptr, i64, i64, i64, i64 }
%struct.ptp_pin_desc = type { [64 x i8], i32, i32, i32, [5 x i32] }
%struct.anon.133 = type { %struct.timespec64, %struct.timespec64 }
%struct.timespec64 = type { i64, i32 }
%struct.i2c_algo_bit_data = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.24 }
%union.anon.24 = type { i32 }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.e1000_info = type { ptr, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.spinlock = type { %union.anon.23 }
%union.anon.23 = type { %struct.raw_spinlock }
%struct.vf_mac_filter = type { %struct.list_head, i32, i8, [6 x i8] }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.128, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.128 = type { ptr }
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
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.120, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.120 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.ptp_system_timestamp = type { %struct.timespec64, %struct.timespec64 }
%struct.ptp_clock_request = type { i32, %union.anon.130 }
%union.anon.130 = type { %struct.ptp_perout_request }
%struct.ptp_perout_request = type { %union.anon.131, %struct.ptp_clock_time, i32, i32, %union.anon.132 }
%union.anon.131 = type { %struct.ptp_clock_time }
%struct.ptp_clock_time = type { i64, i32, i32 }
%union.anon.132 = type { %struct.ptp_clock_time }
%struct.ptp_extts_request = type { i32, i32, [2 x i32] }

@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@igb_ptp_rx_hang._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 923, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"clearing Rx timestamp hang\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"igb_ptp_rx_hang\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/net/ethernet/intel/igb/igb_ptp.c\00", [55 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@igb_ptp_rx_hang._entry_ptr = internal global ptr @igb_ptp_rx_hang._entry, section ".printk_index", align 4
@igb_ptp_tx_hang._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 957, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"clearing Tx timestamp hang\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"igb_ptp_tx_hang\00", [16 x i8] zeroinitializer }, align 32
@igb_ptp_tx_hang._entry_ptr = internal global ptr @igb_ptp_tx_hang._entry, section ".printk_index", align 4
@.str.7 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%pm\00", [28 x i8] zeroinitializer }, align 32
@igb_ptp_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&adapter->tmreg_lock\00", [43 x i8] zeroinitializer }, align 32
@igb_ptp_init.__key.9 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"(work_completion)(&adapter->ptp_tx_work)\00", [55 x i8] zeroinitializer }, align 32
@igb_ptp_init.__key.11 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"(work_completion)(&(&adapter->ptp_overflow_work)->work)\00", [40 x i8] zeroinitializer }, align 32
@igb_ptp_init.__key.13 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"&(&adapter->ptp_overflow_work)->timer\00", [58 x i8] zeroinitializer }, align 32
@igb_ptp_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.2, i32 1426, ptr @.str.17, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ptp_clock_register failed\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"igb_ptp_init\00", [19 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@igb_ptp_init._entry_ptr = internal global ptr @igb_ptp_init._entry, section ".printk_index", align 4
@igb_ptp_init._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.16, ptr @.str.2, i32 1429, ptr @.str.20, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"added PHC on %s\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@igb_ptp_init._entry_ptr.21 = internal global ptr @igb_ptp_init._entry.18, section ".printk_index", align 4
@igb_ptp_stop._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.2, i32 1487, ptr @.str.20, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"removed PHC on %s\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"igb_ptp_stop\00", [19 x i8] zeroinitializer }, align 32
@igb_ptp_stop._entry_ptr = internal global ptr @igb_ptp_stop._entry, section ".printk_index", align 4
@.str.26 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@igb_pin_extts.aux0_sel_sdp = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 0, i32 1, i32 2, i32 3], [16 x i8] zeroinitializer }, align 32
@igb_pin_extts.aux1_sel_sdp = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 0, i32 8, i32 16, i32 24], [16 x i8] zeroinitializer }, align 32
@igb_pin_extts.ts_sdp_en = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 256, i32 2048, i32 16384, i32 131072], [16 x i8] zeroinitializer }, align 32
@igb_pin_direction.mask = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 4194304, i32 8388608, i32 1024, i32 2048], [16 x i8] zeroinitializer }, align 32
@igb_pin_perout.aux0_sel_sdp = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 0, i32 1, i32 2, i32 3], [16 x i8] zeroinitializer }, align 32
@igb_pin_perout.aux1_sel_sdp = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 0, i32 8, i32 16, i32 24], [16 x i8] zeroinitializer }, align 32
@igb_pin_perout.ts_sdp_en = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 256, i32 2048, i32 16384, i32 131072], [16 x i8] zeroinitializer }, align 32
@igb_pin_perout.ts_sdp_sel_tt0 = internal constant { [4 x i32], [16 x i8] } zeroinitializer, align 32
@igb_pin_perout.ts_sdp_sel_tt1 = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 64, i32 512, i32 4096, i32 32768], [16 x i8] zeroinitializer }, align 32
@igb_pin_perout.ts_sdp_sel_fc0 = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 128, i32 1024, i32 8192, i32 65536], [16 x i8] zeroinitializer }, align 32
@igb_pin_perout.ts_sdp_sel_fc1 = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 192, i32 1536, i32 12288, i32 98304], [16 x i8] zeroinitializer }, align 32
@igb_pin_perout.ts_sdp_sel_clr = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 192, i32 1536, i32 12288, i32 98304], [16 x i8] zeroinitializer }, align 32
@igb_ptp_tx_work._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.27, ptr @.str.2, i32 856, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"igb_ptp_tx_work\00", [16 x i8] zeroinitializer }, align 32
@igb_ptp_tx_work._entry_ptr = internal global ptr @igb_ptp_tx_work._entry, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@igb_ptp_overflow_check.__UNIQUE_ID_ddebug409 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.28, ptr @.str.29, ptr @.str.2, ptr @.str.30, i8 0, i8 -36, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"igb\00", [28 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"igb_ptp_overflow_check\00", [41 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"igb overflow check at %lld.%09lu\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"SDP%d\00", [26 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.32 = internal global [5 x i64] [i64 3, i64 16, i64 10, i64 100, i64 1000]
@__sancov_gen_cov_switch_values.33 = internal global [8 x i64] [i64 6, i64 32, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.34 = internal global [5 x i64] [i64 3, i64 16, i64 10, i64 100, i64 1000]
@__sancov_gen_cov_switch_values.35 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.36 = internal global [17 x i64] [i64 15, i64 32, i64 0, i64 1, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15]
@__sancov_gen_cov_switch_values.37 = internal global [8 x i64] [i64 6, i64 32, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.38 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.39 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.40 = internal global [5 x i64] [i64 3, i64 64, i64 125000000, i64 250000000, i64 500000000]
@__sancov_gen_cov_switch_values.41 = internal global [8 x i64] [i64 6, i64 32, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.42 = internal global [5 x i64] [i64 3, i64 16, i64 10, i64 100, i64 1000]
@__sancov_gen_cov_switch_values.43 = internal global [8 x i64] [i64 6, i64 32, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 923, i32 3 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 957, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 1347, i32 40 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 1410, i32 2 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 1411, i32 2 }
@___asan_gen_.92 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 1414, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 1426, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 1428, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 1486, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 174, i32 2 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 411, i32 19 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 414, i32 19 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 417, i32 19 }
@___asan_gen_.140 = private unnamed_addr constant [5 x i8] c"mask\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 396, i32 19 }
@___asan_gen_.143 = private unnamed_addr constant [13 x i8] c"aux0_sel_sdp\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 447, i32 19 }
@___asan_gen_.146 = private unnamed_addr constant [13 x i8] c"aux1_sel_sdp\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 450, i32 19 }
@___asan_gen_.149 = private unnamed_addr constant [10 x i8] c"ts_sdp_en\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 453, i32 19 }
@___asan_gen_.152 = private unnamed_addr constant [15 x i8] c"ts_sdp_sel_tt0\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 456, i32 19 }
@___asan_gen_.155 = private unnamed_addr constant [15 x i8] c"ts_sdp_sel_tt1\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 460, i32 19 }
@___asan_gen_.158 = private unnamed_addr constant [15 x i8] c"ts_sdp_sel_fc0\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 464, i32 19 }
@___asan_gen_.161 = private unnamed_addr constant [15 x i8] c"ts_sdp_sel_fc1\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 468, i32 19 }
@___asan_gen_.164 = private unnamed_addr constant [15 x i8] c"ts_sdp_sel_clr\00", align 1
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 472, i32 19 }
@___asan_gen_.167 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 856, i32 3 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 879, i32 2 }
@___asan_gen_.182 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.183 = private constant [44 x i8] c"../drivers/net/ethernet/intel/igb/igb_ptp.c\00", align 1
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 1445, i32 42 }
@llvm.compiler.used = appending global [53 x ptr] [ptr @igb_ptp_init._entry, ptr @igb_ptp_init._entry.18, ptr @igb_ptp_init._entry_ptr, ptr @igb_ptp_init._entry_ptr.21, ptr @igb_ptp_rx_hang._entry, ptr @igb_ptp_rx_hang._entry_ptr, ptr @igb_ptp_stop._entry, ptr @igb_ptp_stop._entry_ptr, ptr @igb_ptp_tx_hang._entry, ptr @igb_ptp_tx_hang._entry_ptr, ptr @igb_ptp_tx_work._entry, ptr @igb_ptp_tx_work._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @igb_ptp_init.__key, ptr @.str.8, ptr @igb_ptp_init.__key.9, ptr @.str.10, ptr @igb_ptp_init.__key.11, ptr @.str.12, ptr @igb_ptp_init.__key.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @.str.26, ptr @igb_pin_extts.aux0_sel_sdp, ptr @igb_pin_extts.aux1_sel_sdp, ptr @igb_pin_extts.ts_sdp_en, ptr @igb_pin_direction.mask, ptr @igb_pin_perout.aux0_sel_sdp, ptr @igb_pin_perout.aux1_sel_sdp, ptr @igb_pin_perout.ts_sdp_en, ptr @igb_pin_perout.ts_sdp_sel_tt0, ptr @igb_pin_perout.ts_sdp_sel_tt1, ptr @igb_pin_perout.ts_sdp_sel_fc0, ptr @igb_pin_perout.ts_sdp_sel_fc1, ptr @igb_pin_perout.ts_sdp_sel_clr, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31], section "llvm.metadata"
@0 = internal global [47 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igb_ptp_rx_hang._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igb_ptp_tx_hang._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igb_ptp_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igb_ptp_init.__key.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igb_ptp_init.__key.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igb_ptp_init.__key.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igb_ptp_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igb_ptp_init._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igb_ptp_stop._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igb_pin_extts.aux0_sel_sdp to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igb_pin_extts.aux1_sel_sdp to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igb_pin_extts.ts_sdp_en to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igb_pin_direction.mask to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igb_pin_perout.aux0_sel_sdp to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igb_pin_perout.aux1_sel_sdp to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igb_pin_perout.ts_sdp_en to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igb_pin_perout.ts_sdp_sel_tt0 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igb_pin_perout.ts_sdp_sel_tt1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igb_pin_perout.ts_sdp_sel_fc0 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igb_pin_perout.ts_sdp_sel_fc1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igb_pin_perout.ts_sdp_sel_clr to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igb_ptp_tx_work._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @igb_ptp_rx_hang(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr inbounds %struct.igb_adapter, ptr %adapter, i32 0, i32 37
  %call = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 46624) #9
  %type = getelementptr inbounds %struct.igb_adapter, ptr %adapter, i32 0, i32 37, i32 4, i32 3
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp.not = icmp eq i32 %1, 2
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %and = and i32 %call, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %last_rx_ptp_check = getelementptr inbounds %struct.igb_adapter, ptr %adapter, i32 0, i32 63
  %3 = ptrtoint ptr %last_rx_ptp_check to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %last_rx_ptp_check, align 4
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %last_rx_ptp_check4 = getelementptr inbounds %struct.igb_adapter, ptr %adapter, i32 0, i32 63
  %4 = ptrtoint ptr %last_rx_ptp_check4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %last_rx_ptp_check4, align 4
  %last_rx_timestamp = getelementptr inbounds %struct.igb_adapter, ptr %adapter, i32 0, i32 64
  %6 = ptrtoint ptr %last_rx_timestamp to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %last_rx_timestamp, align 32
  %sub = sub i32 %5, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp5 = icmp slt i32 %sub, 0
  %spec.select = select i1 %cmp5, i32 %7, i32 %5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %8 = load volatile i32, ptr @jiffies, align 128
  %add = sub i32 500, %8
  %sub9 = add i32 %add, %spec.select
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub9)
  %cmp10 = icmp slt i32 %sub9, 0
  br i1 %cmp10, label %if.then11, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then11:                                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  %call12 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 46632) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %9 = load volatile i32, ptr @jiffies, align 128
  %10 = ptrtoint ptr %last_rx_ptp_check4 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %last_rx_ptp_check4, align 4
  %rx_hwtstamp_cleared = getelementptr inbounds %struct.igb_adapter, ptr %adapter, i32 0, i32 71
  %11 = ptrtoint ptr %rx_hwtstamp_cleared to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %rx_hwtstamp_cleared, align 32
  %inc = add i32 %12, 1
  store i32 %inc, ptr %rx_hwtstamp_cleared, align 32
  %pdev = getelementptr inbounds %struct.igb_adapter, ptr %adapter, i32 0, i32 34
  %13 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pdev, align 16
  %dev = getelementptr inbounds %struct.pci_dev, ptr %14, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then11, %if.end3.cleanup_crit_edge, %if.then2, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igb_rd32(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @igb_ptp_tx_hang(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr inbounds %struct.igb_adapter, ptr %adapter, i32 0, i32 37
  %ptp_tx_start = getelementptr inbounds %struct.igb_adapter, ptr %adapter, i32 0, i32 62
  %0 = ptrtoint ptr %ptp_tx_start to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ptp_tx_start, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %ptp_tx_skb = getelementptr inbounds %struct.igb_adapter, ptr %adapter, i32 0, i32 60
  %3 = ptrtoint ptr %ptp_tx_skb to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ptp_tx_skb, align 8
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %add = add i32 %1, 1500
  %sub = sub i32 %add, %2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub)
  %cmp = icmp sgt i32 %sub, -1
  %state = getelementptr inbounds %struct.igb_adapter, ptr %adapter, i32 0, i32 3
  %5 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %state, align 4
  %7 = and i32 %6, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool2.not = icmp eq i32 %7, 0
  %brmerge = select i1 %tobool2.not, i1 true, i1 %cmp
  br i1 %brmerge, label %if.end.cleanup_crit_edge, label %if.then6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %ptp_tx_work = getelementptr inbounds %struct.igb_adapter, ptr %adapter, i32 0, i32 59
  %call7 = tail call zeroext i1 @cancel_work_sync(ptr noundef %ptp_tx_work) #9
  %8 = ptrtoint ptr %ptp_tx_skb to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ptp_tx_skb, align 8
  tail call void @__dev_kfree_skb_any(ptr noundef %9, i32 noundef 1) #9
  %10 = ptrtoint ptr %ptp_tx_skb to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %ptp_tx_skb, align 8
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %state, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !94
  tail call void @llvm.prefetch.p0(ptr %state, i32 1, i32 3, i32 1) #9
  %11 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %state, ptr %state, i32 8, ptr elementtype(i32) %state) #9, !srcloc !95
  %tx_hwtstamp_timeouts = getelementptr inbounds %struct.igb_adapter, ptr %adapter, i32 0, i32 69
  %12 = ptrtoint ptr %tx_hwtstamp_timeouts to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tx_hwtstamp_timeouts, align 8
  %inc = add i32 %13, 1
  store i32 %inc, ptr %tx_hwtstamp_timeouts, align 8
  %call11 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 46620) #9
  %pdev = getelementptr inbounds %struct.igb_adapter, ptr %adapter, i32 0, i32 34
  %14 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pdev, align 16
  %dev = getelementptr inbounds %struct.pci_dev, ptr %15, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.5) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then6, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @igb_ptp_rx_pktstamp(ptr nocapture noundef readonly %q_vector, ptr nocapture noundef readonly %va, ptr nocapture noundef writeonly %timestamp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %q_vector to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %q_vector, align 128
  %ptp_flags = getelementptr inbounds %struct.igb_adapter, ptr %1, i32 0, i32 65
  %2 = ptrtoint ptr %ptp_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ptp_flags, align 4
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %va to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %va, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %5)
  %tobool2.not = icmp eq i64 %5, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %arrayidx5 = getelementptr i64, ptr %va, i32 1
  %6 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %arrayidx5, align 8
  %8 = tail call i64 @llvm.bswap.i64(i64 %7)
  %type.i = getelementptr inbounds %struct.igb_adapter, ptr %1, i32 0, i32 37, i32 4, i32 3
  %9 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %type.i, align 16
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values)
  switch i32 %10, label %if.end4.igb_ptp_systim_to_hwtstamp.exit_crit_edge [
    i32 2, label %if.end4.do.body1.i_crit_edge
    i32 3, label %if.end4.do.body1.i_crit_edge18
    i32 5, label %if.end4.do.body1.i_crit_edge19
    i32 4, label %if.end4.do.body1.i_crit_edge20
    i32 6, label %if.end4.sw.bb8.i_crit_edge
    i32 7, label %if.end4.sw.bb8.i_crit_edge21
  ]

if.end4.sw.bb8.i_crit_edge21:                     ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb8.i

if.end4.sw.bb8.i_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb8.i

if.end4.do.body1.i_crit_edge20:                   ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body1.i

if.end4.do.body1.i_crit_edge19:                   ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body1.i

if.end4.do.body1.i_crit_edge18:                   ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body1.i

if.end4.do.body1.i_crit_edge:                     ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body1.i

if.end4.igb_ptp_systim_to_hwtstamp.exit_crit_edge: ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %igb_ptp_systim_to_hwtstamp.exit

do.body1.i:                                       ; preds = %if.end4.do.body1.i_crit_edge, %if.end4.do.body1.i_crit_edge18, %if.end4.do.body1.i_crit_edge19, %if.end4.do.body1.i_crit_edge20
  %tmreg_lock.i = getelementptr inbounds %struct.igb_adapter, ptr %1, i32 0, i32 66
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %tmreg_lock.i) #9
  %tc.i = getelementptr inbounds %struct.igb_adapter, ptr %1, i32 0, i32 68
  %call5.i = tail call i64 @timecounter_cyc2time(ptr noundef %tc.i, i64 noundef %8) #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %tmreg_lock.i, i32 noundef %call2.i) #9
  br label %igb_ptp_systim_to_hwtstamp.exitthread-pre-split

sw.bb8.i:                                         ; preds = %if.end4.sw.bb8.i_crit_edge, %if.end4.sw.bb8.i_crit_edge21
  %shr.i = lshr i64 %8, 32
  %mul.i.i = mul nuw nsw i64 %shr.i, 1000000000
  %conv.i.i = and i64 %8, 4294967295
  %add.i.i = add nuw nsw i64 %mul.i.i, %conv.i.i
  br label %igb_ptp_systim_to_hwtstamp.exitthread-pre-split

igb_ptp_systim_to_hwtstamp.exitthread-pre-split:  ; preds = %sw.bb8.i, %do.body1.i
  %ts.sroa.0.0.ph = phi i64 [ %call5.i, %do.body1.i ], [ %add.i.i, %sw.bb8.i ]
  %12 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pr = load i32, ptr %type.i, align 16
  br label %igb_ptp_systim_to_hwtstamp.exit

igb_ptp_systim_to_hwtstamp.exit:                  ; preds = %igb_ptp_systim_to_hwtstamp.exitthread-pre-split, %if.end4.igb_ptp_systim_to_hwtstamp.exit_crit_edge
  %13 = phi i32 [ %.pr, %igb_ptp_systim_to_hwtstamp.exitthread-pre-split ], [ %10, %if.end4.igb_ptp_systim_to_hwtstamp.exit_crit_edge ]
  %ts.sroa.0.0 = phi i64 [ %ts.sroa.0.0.ph, %igb_ptp_systim_to_hwtstamp.exitthread-pre-split ], [ -1, %if.end4.igb_ptp_systim_to_hwtstamp.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %13)
  %cmp = icmp eq i32 %13, 6
  br i1 %cmp, label %if.then6, label %igb_ptp_systim_to_hwtstamp.exit.if.end9_crit_edge

igb_ptp_systim_to_hwtstamp.exit.if.end9_crit_edge: ; preds = %igb_ptp_systim_to_hwtstamp.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.then6:                                         ; preds = %igb_ptp_systim_to_hwtstamp.exit
  %link_speed = getelementptr inbounds %struct.igb_adapter, ptr %1, i32 0, i32 25
  %14 = ptrtoint ptr %link_speed to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %link_speed, align 8
  %16 = zext i16 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.32)
  switch i16 %15, label %if.then6.if.end9_crit_edge [
    i16 10, label %sw.bb
    i16 100, label %sw.bb7
    i16 1000, label %sw.bb8
  ]

if.then6.if.end9_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

sw.bb:                                            ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

sw.bb7:                                           ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

sw.bb8:                                           ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.end9:                                          ; preds = %sw.bb8, %sw.bb7, %sw.bb, %if.then6.if.end9_crit_edge, %igb_ptp_systim_to_hwtstamp.exit.if.end9_crit_edge
  %adjust.0 = phi i32 [ 0, %if.then6.if.end9_crit_edge ], [ 448, %sw.bb8 ], [ 2213, %sw.bb7 ], [ 20662, %sw.bb ], [ 0, %igb_ptp_systim_to_hwtstamp.exit.if.end9_crit_edge ]
  %17 = zext i32 %adjust.0 to i64
  %sub = sub i64 %ts.sroa.0.0, %17
  %18 = ptrtoint ptr %timestamp to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %sub, ptr %timestamp, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 16, %if.end9 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @igb_ptp_rx_rgtstamp(ptr nocapture noundef readonly %q_vector, ptr nocapture noundef readonly %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %q_vector to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %q_vector, align 128
  %hw2 = getelementptr inbounds %struct.igb_adapter, ptr %1, i32 0, i32 37
  %ptp_flags = getelementptr inbounds %struct.igb_adapter, ptr %1, i32 0, i32 65
  %2 = ptrtoint ptr %ptp_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ptp_flags, align 4
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call i32 @igb_rd32(ptr noundef %hw2, i32 noundef 46624) #9
  %and3 = and i32 %call, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call7 = tail call i32 @igb_rd32(ptr noundef %hw2, i32 noundef 46628) #9
  %conv = zext i32 %call7 to i64
  %call8 = tail call i32 @igb_rd32(ptr noundef %hw2, i32 noundef 46632) #9
  %conv9 = zext i32 %call8 to i64
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %4 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %end.i.i, align 4
  %hwtstamps.i = getelementptr inbounds %struct.skb_shared_info, ptr %5, i32 0, i32 7
  %type.i = getelementptr inbounds %struct.igb_adapter, ptr %1, i32 0, i32 37, i32 4, i32 3
  %6 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %type.i, align 16
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.33)
  switch i32 %7, label %if.end6.igb_ptp_systim_to_hwtstamp.exit_crit_edge [
    i32 2, label %if.end6.do.body1.i_crit_edge
    i32 3, label %if.end6.do.body1.i_crit_edge39
    i32 5, label %if.end6.do.body1.i_crit_edge40
    i32 4, label %if.end6.do.body1.i_crit_edge41
    i32 6, label %if.end6.sw.bb8.i_crit_edge
    i32 7, label %if.end6.sw.bb8.i_crit_edge42
  ]

if.end6.sw.bb8.i_crit_edge42:                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb8.i

if.end6.sw.bb8.i_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb8.i

if.end6.do.body1.i_crit_edge41:                   ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body1.i

if.end6.do.body1.i_crit_edge40:                   ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body1.i

if.end6.do.body1.i_crit_edge39:                   ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body1.i

if.end6.do.body1.i_crit_edge:                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body1.i

if.end6.igb_ptp_systim_to_hwtstamp.exit_crit_edge: ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %igb_ptp_systim_to_hwtstamp.exit

do.body1.i:                                       ; preds = %if.end6.do.body1.i_crit_edge, %if.end6.do.body1.i_crit_edge39, %if.end6.do.body1.i_crit_edge40, %if.end6.do.body1.i_crit_edge41
  %shl = shl nuw i64 %conv9, 32
  %or = or i64 %shl, %conv
  %tmreg_lock.i = getelementptr inbounds %struct.igb_adapter, ptr %1, i32 0, i32 66
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %tmreg_lock.i) #9
  %tc.i = getelementptr inbounds %struct.igb_adapter, ptr %1, i32 0, i32 68
  %call5.i = tail call i64 @timecounter_cyc2time(ptr noundef %tc.i, i64 noundef %or) #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %tmreg_lock.i, i32 noundef %call2.i) #9
  br label %sw.epilog.sink.split.i

sw.bb8.i:                                         ; preds = %if.end6.sw.bb8.i_crit_edge, %if.end6.sw.bb8.i_crit_edge42
  %mul.i.i = mul nuw nsw i64 %conv9, 1000000000
  %add.i.i = add nuw nsw i64 %mul.i.i, %conv
  br label %sw.epilog.sink.split.i

sw.epilog.sink.split.i:                           ; preds = %sw.bb8.i, %do.body1.i
  %add.i.sink.i = phi i64 [ %add.i.i, %sw.bb8.i ], [ %call5.i, %do.body1.i ]
  %9 = ptrtoint ptr %hwtstamps.i to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %add.i.sink.i, ptr %hwtstamps.i, align 8
  %10 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pr = load i32, ptr %type.i, align 16
  br label %igb_ptp_systim_to_hwtstamp.exit

igb_ptp_systim_to_hwtstamp.exit:                  ; preds = %sw.epilog.sink.split.i, %if.end6.igb_ptp_systim_to_hwtstamp.exit_crit_edge
  %11 = phi i32 [ %7, %if.end6.igb_ptp_systim_to_hwtstamp.exit_crit_edge ], [ %.pr, %sw.epilog.sink.split.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %11)
  %cmp = icmp eq i32 %11, 6
  br i1 %cmp, label %if.then13, label %igb_ptp_systim_to_hwtstamp.exit.if.end17_crit_edge

igb_ptp_systim_to_hwtstamp.exit.if.end17_crit_edge: ; preds = %igb_ptp_systim_to_hwtstamp.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

if.then13:                                        ; preds = %igb_ptp_systim_to_hwtstamp.exit
  %link_speed = getelementptr inbounds %struct.igb_adapter, ptr %1, i32 0, i32 25
  %12 = ptrtoint ptr %link_speed to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %link_speed, align 8
  %14 = zext i16 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.34)
  switch i16 %13, label %if.then13.if.end17_crit_edge [
    i16 10, label %sw.bb
    i16 100, label %sw.bb15
    i16 1000, label %sw.bb16
  ]

if.then13.if.end17_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

sw.bb:                                            ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

sw.bb15:                                          ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

sw.bb16:                                          ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

if.end17:                                         ; preds = %sw.bb16, %sw.bb15, %sw.bb, %if.then13.if.end17_crit_edge, %igb_ptp_systim_to_hwtstamp.exit.if.end17_crit_edge
  %adjust.0 = phi i32 [ 0, %if.then13.if.end17_crit_edge ], [ 448, %sw.bb16 ], [ 2213, %sw.bb15 ], [ 20662, %sw.bb ], [ 0, %igb_ptp_systim_to_hwtstamp.exit.if.end17_crit_edge ]
  %15 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %end.i.i, align 4
  %hwtstamps.i36 = getelementptr inbounds %struct.skb_shared_info, ptr %16, i32 0, i32 7
  %17 = ptrtoint ptr %hwtstamps.i36 to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %hwtstamps.i36, align 8
  %19 = zext i32 %adjust.0 to i64
  %sub = sub i64 %18, %19
  store i64 %sub, ptr %hwtstamps.i36, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %20 = load volatile i32, ptr @jiffies, align 128
  %last_rx_timestamp = getelementptr inbounds %struct.igb_adapter, ptr %1, i32 0, i32 64
  %21 = ptrtoint ptr %last_rx_timestamp to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %last_rx_timestamp, align 32
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @igb_ptp_get_ts_config(ptr noundef %netdev, ptr nocapture noundef readonly %ifr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tstamp_config = getelementptr i8, ptr %netdev, i32 6476
  %ifr_ifru = getelementptr inbounds %struct.ifreq, ptr %ifr, i32 0, i32 1
  %0 = ptrtoint ptr %ifr_ifru to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ifr_ifru, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.26, i32 noundef 174) #9
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i, label %entry.copy_to_user.exit.thread_crit_edge, label %if.end.i.i

entry.copy_to_user.exit.thread_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %copy_to_user.exit.thread

if.end.i.i:                                       ; preds = %entry
  %2 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 12, i32 -1226833920) #13, !srcloc !96
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
define dso_local i32 @igb_ptp_set_ts_config(ptr noundef %netdev, ptr nocapture noundef readonly %ifr) local_unnamed_addr #0 align 64 {
entry:
  %config = alloca %struct.hwtstamp_config, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %config) #9
  %0 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %config, align 4, !annotation !97
  %1 = getelementptr inbounds %struct.hwtstamp_config, ptr %config, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !97
  %3 = getelementptr inbounds %struct.hwtstamp_config, ptr %config, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4, !annotation !97
  %ifr_ifru = getelementptr inbounds %struct.ifreq, ptr %ifr, i32 0, i32 1
  %5 = ptrtoint ptr %ifr_ifru to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ifr_ifru, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.26, i32 noundef 156) #9
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i, label %entry.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.then11.i.i_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %7 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %6, i32 12, i32 -1226833920) #13, !srcloc !98
  %asmresult.i.i = extractvalue { i32, i32 } %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !99

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %config, i32 noundef 12) #9
  %8 = call i32 @llvm.read_register.i32(metadata !84) #9
  %and.i.i.i.i.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 4
  %10 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #8, !srcloc !100
  %and.i.i.i.i = and i32 %10, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #9, !srcloc !101
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !102
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %config, ptr noundef %6, i32 noundef 12) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %10) #9, !srcloc !101
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !102
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !99

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
  %call2 = call fastcc i32 @igb_ptp_set_timestamp_mode(ptr noundef %add.ptr.i, ptr noundef nonnull %config)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.then.i17, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i17:                                      ; preds = %if.end
  %tstamp_config = getelementptr i8, ptr %netdev, i32 6476
  %12 = call ptr @memcpy(ptr %tstamp_config, ptr %config, i32 12)
  %13 = ptrtoint ptr %ifr_ifru to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ifr_ifru, align 4
  call void @__might_fault(ptr noundef nonnull @.str.26, i32 noundef 174) #9
  %call.i.i16 = call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i16, label %if.then.i17.cleanup_crit_edge, label %if.end.i.i20

if.then.i17.cleanup_crit_edge:                    ; preds = %if.then.i17
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i.i20:                                     ; preds = %if.then.i17
  %15 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %14, i32 12, i32 -1226833920) #13, !srcloc !96
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
define internal fastcc i32 @igb_ptp_set_timestamp_mode(ptr noundef %adapter, ptr nocapture noundef %config) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr inbounds %struct.igb_adapter, ptr %adapter, i32 0, i32 37
  %tx_type = getelementptr inbounds %struct.hwtstamp_config, ptr %config, i32 0, i32 1
  %0 = ptrtoint ptr %tx_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tx_type, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.35)
  switch i32 %1, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %entry.sw.epilog_crit_edge
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %entry.sw.epilog_crit_edge
  %tsync_tx_ctl.0 = phi i32 [ 16, %entry.sw.epilog_crit_edge ], [ 0, %sw.bb ]
  %rx_filter = getelementptr inbounds %struct.hwtstamp_config, ptr %config, i32 0, i32 2
  %3 = ptrtoint ptr %rx_filter to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %rx_filter, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.36)
  switch i32 %4, label %sw.epilog.sw.default12_crit_edge [
    i32 0, label %sw.epilog.sw.epilog14_crit_edge
    i32 4, label %sw.bb3
    i32 5, label %sw.bb4
    i32 12, label %sw.epilog.sw.bb6_crit_edge
    i32 9, label %sw.epilog.sw.bb6_crit_edge383
    i32 6, label %sw.epilog.sw.bb6_crit_edge384
    i32 13, label %sw.epilog.sw.bb6_crit_edge385
    i32 10, label %sw.epilog.sw.bb6_crit_edge386
    i32 7, label %sw.epilog.sw.bb6_crit_edge387
    i32 14, label %sw.epilog.sw.bb6_crit_edge388
    i32 11, label %sw.epilog.sw.bb6_crit_edge389
    i32 8, label %sw.epilog.sw.bb6_crit_edge390
    i32 3, label %sw.epilog.sw.bb9_crit_edge
    i32 15, label %sw.epilog.sw.bb9_crit_edge391
    i32 1, label %sw.epilog.sw.bb9_crit_edge392
  ]

sw.epilog.sw.bb9_crit_edge392:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb9

sw.epilog.sw.bb9_crit_edge391:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb9

sw.epilog.sw.bb9_crit_edge:                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb9

sw.epilog.sw.bb6_crit_edge390:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb6

sw.epilog.sw.bb6_crit_edge389:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb6

sw.epilog.sw.bb6_crit_edge388:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb6

sw.epilog.sw.bb6_crit_edge387:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb6

sw.epilog.sw.bb6_crit_edge386:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb6

sw.epilog.sw.bb6_crit_edge385:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb6

sw.epilog.sw.bb6_crit_edge384:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb6

sw.epilog.sw.bb6_crit_edge383:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb6

sw.epilog.sw.bb6_crit_edge:                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb6

sw.epilog.sw.epilog14_crit_edge:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog14

sw.epilog.sw.default12_crit_edge:                 ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.default12

sw.bb3:                                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog14

sw.bb4:                                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog14

sw.bb6:                                           ; preds = %sw.epilog.sw.bb6_crit_edge, %sw.epilog.sw.bb6_crit_edge383, %sw.epilog.sw.bb6_crit_edge384, %sw.epilog.sw.bb6_crit_edge385, %sw.epilog.sw.bb6_crit_edge386, %sw.epilog.sw.bb6_crit_edge387, %sw.epilog.sw.bb6_crit_edge388, %sw.epilog.sw.bb6_crit_edge389, %sw.epilog.sw.bb6_crit_edge390
  %6 = ptrtoint ptr %rx_filter to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 12, ptr %rx_filter, align 4
  br label %sw.epilog14

sw.bb9:                                           ; preds = %sw.epilog.sw.bb9_crit_edge, %sw.epilog.sw.bb9_crit_edge391, %sw.epilog.sw.bb9_crit_edge392
  %type = getelementptr inbounds %struct.igb_adapter, ptr %adapter, i32 0, i32 37, i32 4, i32 3
  %7 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %8)
  %cmp.not = icmp eq i32 %8, 2
  br i1 %cmp.not, label %sw.bb9.sw.default12_crit_edge, label %if.then

sw.bb9.sw.default12_crit_edge:                    ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.default12

if.then:                                          ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %rx_filter to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %rx_filter, align 4
  br label %sw.epilog14

sw.default12:                                     ; preds = %sw.bb9.sw.default12_crit_edge, %sw.epilog.sw.default12_crit_edge
  %10 = ptrtoint ptr %rx_filter to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %rx_filter, align 4
  br label %cleanup

sw.epilog14:                                      ; preds = %if.then, %sw.bb6, %sw.bb4, %sw.bb3, %sw.epilog.sw.epilog14_crit_edge
  %is_l2.0.off0 = phi i1 [ false, %if.then ], [ true, %sw.bb6 ], [ false, %sw.bb4 ], [ false, %sw.bb3 ], [ false, %sw.epilog.sw.epilog14_crit_edge ]
  %is_l4.0.off0 = phi i1 [ false, %if.then ], [ true, %sw.bb6 ], [ true, %sw.bb4 ], [ true, %sw.bb3 ], [ false, %sw.epilog.sw.epilog14_crit_edge ]
  %tsync_rx_cfg.0 = phi i32 [ 0, %if.then ], [ 0, %sw.bb6 ], [ 16777216, %sw.bb4 ], [ 0, %sw.bb3 ], [ %4, %sw.epilog.sw.epilog14_crit_edge ]
  %tobool26.not = phi i1 [ false, %if.then ], [ false, %sw.bb6 ], [ false, %sw.bb4 ], [ false, %sw.bb3 ], [ true, %sw.epilog.sw.epilog14_crit_edge ]
  %tsync_rx_ctl.0 = phi i32 [ 24, %if.then ], [ 26, %sw.bb6 ], [ 18, %sw.bb4 ], [ 18, %sw.bb3 ], [ %4, %sw.epilog.sw.epilog14_crit_edge ]
  %type16 = getelementptr inbounds %struct.igb_adapter, ptr %adapter, i32 0, i32 37, i32 4, i32 3
  %11 = ptrtoint ptr %type16 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %type16, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp17 = icmp eq i32 %12, 1
  br i1 %cmp17, label %if.then18, label %if.end22

if.then18:                                        ; preds = %sw.epilog14
  call void @__sanitizer_cov_trace_pc() #11
  %or19 = or i32 %tsync_rx_ctl.0, %tsync_tx_ctl.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or19)
  %tobool.not = icmp eq i32 %or19, 0
  %. = select i1 %tobool.not, i32 0, i32 -22
  br label %cleanup

if.end22:                                         ; preds = %sw.epilog14
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %12)
  %cmp25 = icmp ult i32 %12, 3
  %brmerge = or i1 %tobool26.not, %cmp25
  %tsync_rx_ctl.0.mux = select i1 %cmp25, i32 %tsync_rx_ctl.0, i32 0
  br i1 %brmerge, label %if.end22.if.end52_crit_edge, label %if.then27

if.end22.if.end52_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end52

if.then27:                                        ; preds = %if.end22
  %13 = ptrtoint ptr %rx_filter to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %rx_filter, align 4
  %14 = ptrtoint ptr %type16 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %type16, align 4
  %16 = and i32 %15, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %16)
  %switch = icmp eq i32 %16, 6
  br i1 %switch, label %if.then36, label %if.then27.if.end52_crit_edge

if.then27.if.end52_crit_edge:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end52

if.then36:                                        ; preds = %if.then27
  %call = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 9220) #9
  %hw_addr39 = getelementptr inbounds %struct.igb_adapter, ptr %adapter, i32 0, i32 37, i32 1
  %17 = ptrtoint ptr %hw_addr39 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile ptr, ptr %hw_addr39, align 4
  %tobool40.not = icmp eq ptr %18, null
  br i1 %tobool40.not, label %if.then36.if.end52_crit_edge, label %do.body45, !prof !103

if.then36.if.end52_crit_edge:                     ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end52

do.body45:                                        ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #11
  %or37 = or i32 %call, -2147483648
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !104
  tail call void @arm_heavy_mb() #9
  %19 = tail call i32 @llvm.bswap.i32(i32 %or37)
  %arrayidx = getelementptr i8, ptr %18, i32 9220
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx, i32 %19) #9, !srcloc !105
  br label %if.end52

if.end52:                                         ; preds = %do.body45, %if.then36.if.end52_crit_edge, %if.then27.if.end52_crit_edge, %if.end22.if.end52_crit_edge
  %is_l2.1.off0 = phi i1 [ %is_l2.0.off0, %if.end22.if.end52_crit_edge ], [ true, %if.then27.if.end52_crit_edge ], [ true, %do.body45 ], [ true, %if.then36.if.end52_crit_edge ]
  %is_l4.1.off0 = phi i1 [ %is_l4.0.off0, %if.end22.if.end52_crit_edge ], [ true, %if.then27.if.end52_crit_edge ], [ true, %do.body45 ], [ true, %if.then36.if.end52_crit_edge ]
  %tsync_rx_ctl.1 = phi i32 [ %tsync_rx_ctl.0.mux, %if.end22.if.end52_crit_edge ], [ 24, %if.then27.if.end52_crit_edge ], [ 24, %do.body45 ], [ 24, %if.then36.if.end52_crit_edge ]
  %call53 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 46612) #9
  %hw_addr61 = getelementptr inbounds %struct.igb_adapter, ptr %adapter, i32 0, i32 37, i32 1
  %20 = ptrtoint ptr %hw_addr61 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile ptr, ptr %hw_addr61, align 4
  %tobool62.not = icmp eq ptr %21, null
  br i1 %tobool62.not, label %if.end52.if.end76_crit_edge, label %do.body72, !prof !103

if.end52.if.end76_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end76

do.body72:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #11
  %and = and i32 %call53, -17
  %or54 = or i32 %and, %tsync_tx_ctl.0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !106
  tail call void @arm_heavy_mb() #9
  %22 = tail call i32 @llvm.bswap.i32(i32 %or54)
  %arrayidx75 = getelementptr i8, ptr %21, i32 46612
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx75, i32 %22) #9, !srcloc !105
  br label %if.end76

if.end76:                                         ; preds = %do.body72, %if.end52.if.end76_crit_edge
  %call79 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 46624) #9
  %23 = ptrtoint ptr %hw_addr61 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile ptr, ptr %hw_addr61, align 4
  %tobool89.not = icmp eq ptr %24, null
  br i1 %tobool89.not, label %if.end76.if.end103_crit_edge, label %do.body99, !prof !103

if.end76.if.end103_crit_edge:                     ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end103

do.body99:                                        ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #11
  %and80 = and i32 %call79, -31
  %or81 = or i32 %and80, %tsync_rx_ctl.1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !107
  tail call void @arm_heavy_mb() #9
  %25 = tail call i32 @llvm.bswap.i32(i32 %or81)
  %arrayidx102 = getelementptr i8, ptr %24, i32 46624
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx102, i32 %25) #9, !srcloc !105
  br label %if.end103

if.end103:                                        ; preds = %do.body99, %if.end76.if.end103_crit_edge
  %26 = ptrtoint ptr %hw_addr61 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile ptr, ptr %hw_addr61, align 4
  %tobool113.not = icmp eq ptr %27, null
  br i1 %tobool113.not, label %if.end103.if.end127_crit_edge, label %do.body123, !prof !103

if.end103.if.end127_crit_edge:                    ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end127

do.body123:                                       ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  tail call void @arm_heavy_mb() #9
  %arrayidx126 = getelementptr i8, ptr %27, i32 24400
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx126, i32 %tsync_rx_cfg.0) #9, !srcloc !105
  br label %if.end127

if.end127:                                        ; preds = %do.body123, %if.end103.if.end127_crit_edge
  %28 = ptrtoint ptr %hw_addr61 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile ptr, ptr %hw_addr61, align 4
  %tobool139.not = icmp eq ptr %29, null
  br i1 %is_l2.1.off0, label %do.body132, label %do.body156

do.body132:                                       ; preds = %if.end127
  br i1 %tobool139.not, label %do.body132.if.end180_crit_edge, label %do.body149, !prof !103

do.body132.if.end180_crit_edge:                   ; preds = %do.body132
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end180

do.body149:                                       ; preds = %do.body132
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  tail call void @arm_heavy_mb() #9
  %arrayidx152 = getelementptr i8, ptr %29, i32 23740
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx152, i32 -142081980) #9, !srcloc !105
  br label %if.end180

do.body156:                                       ; preds = %if.end127
  br i1 %tobool139.not, label %do.body156.if.end180_crit_edge, label %do.body173, !prof !103

do.body156.if.end180_crit_edge:                   ; preds = %do.body156
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end180

do.body173:                                       ; preds = %do.body156
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !110
  tail call void @arm_heavy_mb() #9
  %arrayidx176 = getelementptr i8, ptr %29, i32 23740
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx176, i32 0) #9, !srcloc !105
  br label %if.end180

if.end180:                                        ; preds = %do.body173, %do.body156.if.end180_crit_edge, %do.body149, %do.body132.if.end180_crit_edge
  %30 = ptrtoint ptr %hw_addr61 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile ptr, ptr %hw_addr61, align 4
  %tobool191.not = icmp eq ptr %31, null
  br i1 %is_l4.1.off0, label %if.then182, label %do.body287

if.then182:                                       ; preds = %if.end180
  br i1 %tobool191.not, label %if.then182.if.end205_crit_edge, label %do.body201, !prof !103

if.then182.if.end205_crit_edge:                   ; preds = %if.then182
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end205

do.body201:                                       ; preds = %if.then182
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !111
  tail call void @arm_heavy_mb() #9
  %arrayidx204 = getelementptr i8, ptr %31, i32 23180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx204, i32 1057030144) #9, !srcloc !105
  br label %if.end205

if.end205:                                        ; preds = %do.body201, %if.then182.if.end205_crit_edge
  %32 = ptrtoint ptr %hw_addr61 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile ptr, ptr %hw_addr61, align 4
  %tobool215.not = icmp eq ptr %33, null
  br i1 %tobool215.not, label %if.end205.if.end229_crit_edge, label %do.body225, !prof !103

if.end205.if.end229_crit_edge:                    ; preds = %if.end205
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end229

do.body225:                                       ; preds = %if.end205
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !112
  tail call void @arm_heavy_mb() #9
  %arrayidx228 = getelementptr i8, ptr %33, i32 23212
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx228, i32 1050624) #9, !srcloc !105
  br label %if.end229

if.end229:                                        ; preds = %do.body225, %if.end205.if.end229_crit_edge
  %34 = ptrtoint ptr %type16 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %type16, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %35)
  %cmp234 = icmp eq i32 %35, 2
  br i1 %cmp234, label %do.body236, label %if.end229.do.body262_crit_edge

if.end229.do.body262_crit_edge:                   ; preds = %if.end229
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body262

do.body236:                                       ; preds = %if.end229
  %36 = ptrtoint ptr %hw_addr61 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile ptr, ptr %hw_addr61, align 4
  %tobool243.not = icmp eq ptr %37, null
  br i1 %tobool243.not, label %do.body236.do.body262_crit_edge, label %do.body253, !prof !103

do.body236.do.body262_crit_edge:                  ; preds = %do.body236
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body262

do.body253:                                       ; preds = %do.body236
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !113
  tail call void @arm_heavy_mb() #9
  %arrayidx256 = getelementptr i8, ptr %37, i32 22988
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx256, i32 1057030144) #9, !srcloc !105
  br label %do.body262

do.body262:                                       ; preds = %do.body253, %do.body236.do.body262_crit_edge, %if.end229.do.body262_crit_edge
  %ftqf.0 = phi i32 [ -402620399, %if.end229.do.body262_crit_edge ], [ 1744863249, %do.body253 ], [ 1744863249, %do.body236.do.body262_crit_edge ]
  %38 = ptrtoint ptr %hw_addr61 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile ptr, ptr %hw_addr61, align 4
  %tobool269.not = icmp eq ptr %39, null
  br i1 %tobool269.not, label %do.body262.if.end311_crit_edge, label %do.body279, !prof !103

do.body262.if.end311_crit_edge:                   ; preds = %do.body262
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end311

do.body279:                                       ; preds = %do.body262
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !114
  tail call void @arm_heavy_mb() #9
  %40 = tail call i32 @llvm.bswap.i32(i32 %ftqf.0)
  %arrayidx282 = getelementptr i8, ptr %39, i32 23020
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx282, i32 %40) #9, !srcloc !105
  br label %if.end311

do.body287:                                       ; preds = %if.end180
  br i1 %tobool191.not, label %do.body287.if.end311_crit_edge, label %do.body304, !prof !103

do.body287.if.end311_crit_edge:                   ; preds = %do.body287
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end311

do.body304:                                       ; preds = %do.body287
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !115
  tail call void @arm_heavy_mb() #9
  %arrayidx307 = getelementptr i8, ptr %31, i32 23020
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx307, i32 240) #9, !srcloc !105
  br label %if.end311

if.end311:                                        ; preds = %do.body304, %do.body287.if.end311_crit_edge, %do.body279, %do.body262.if.end311_crit_edge
  %call312 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 8) #9
  %call313 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 46616) #9
  %call314 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 46620) #9
  %call315 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 46628) #9
  %call316 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 46632) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end311, %if.then18, %sw.default12, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -34, %sw.default12 ], [ 0, %if.end311 ], [ -34, %entry.cleanup_crit_edge ], [ %., %if.then18 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @igb_ptp_init(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %netdev2 = getelementptr inbounds %struct.igb_adapter, ptr %adapter, i32 0, i32 1
  %0 = ptrtoint ptr %netdev2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netdev2, align 128
  %type = getelementptr inbounds %struct.igb_adapter, ptr %adapter, i32 0, i32 37, i32 4, i32 3
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.37)
  switch i32 %3, label %sw.default [
    i32 2, label %sw.bb
    i32 3, label %entry.sw.bb15_crit_edge
    i32 5, label %entry.sw.bb15_crit_edge249
    i32 4, label %entry.sw.bb15_crit_edge250
    i32 6, label %entry.sw.bb53_crit_edge
    i32 7, label %entry.sw.bb53_crit_edge251
  ]

entry.sw.bb53_crit_edge251:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb53

entry.sw.bb53_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb53

entry.sw.bb15_crit_edge250:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb15

entry.sw.bb15_crit_edge249:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb15

entry.sw.bb15_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb15

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %ptp_caps = getelementptr inbounds %struct.igb_adapter, ptr %adapter, i32 0, i32 57
  %name = getelementptr inbounds %struct.igb_adapter, ptr %adapter, i32 0, i32 57, i32 1
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 86
  %5 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev_addr, align 64
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name, i32 noundef 16, ptr noundef nonnull @.str.7, ptr noundef %6)
  %7 = ptrtoint ptr %ptp_caps to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %ptp_caps, align 4
  %max_adj = getelementptr inbounds %struct.igb_adapter, ptr %adapter, i32 0, i32 57, i32 2
  %8 = ptrtoint ptr %max_adj to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 999999881, ptr %max_adj, align 4
  %n_ext_ts = getelementptr inbounds %struct.igb_adapter, ptr %adapter, i32 0, i32 57, i32 4
  %9 = ptrtoint ptr %n_ext_ts to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %n_ext_ts, align 4
  %pps = getelementptr inbounds %struct.igb_adapter, ptr %adapter, i32 0, i32 57, i32 7
  %10 = ptrtoint ptr %pps to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %pps, align 4
  %adjfreq = getelementptr inbounds %struct.igb_adapter, ptr %adapter, i32 0, i32 57, i32 10
  %11 = ptrtoint ptr %adjfreq to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @igb_ptp_adjfreq_82576, ptr %adjfreq, align 4
  %adjtime = getelementptr inbounds %struct.igb_adapter, ptr %adapter, i32 0, i32 57, i32 12
  %12 = ptrtoint ptr %adjtime to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @igb_ptp_adjtime_82576, ptr %adjtime, align 4
  %gettimex64 = getelementptr inbounds %struct.igb_adapter, ptr %adapter, i32 0, i32 57, i32 14
  %13 = ptrtoint ptr %gettimex64 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @igb_ptp_gettimex_82576, ptr %gettimex64, align 4
  %settime64 = getelementptr inbounds %struct.igb_adapter, ptr %adapter, i32 0, i32 57, i32 16
  %14 = ptrtoint ptr %settime64 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @igb_ptp_settime_82576, ptr %settime64, align 4
  %enable = getelementptr inbounds %struct.igb_adapter, ptr %adapter, i32 0, i32 57, i32 17
  %15 = ptrtoint ptr %enable to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @igb_ptp_feature_enable, ptr %enable, align 4
  %cc = getelementptr inbounds %struct.igb_adapter, ptr %adapter, i32 0, i32 67
  %16 = ptrtoint ptr %cc to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @igb_ptp_read_82576, ptr %cc, align 8
  %mask = getelementptr inbounds %struct.igb_adapter, ptr %adapter, i32 0, i32 67, i32 1
  %17 = ptrtoint ptr %mask to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 -1, ptr %mask, align 8
  %mult = getelementptr inbounds %struct.igb_adapter, ptr %adapter, i32 0, i32 67, i32 2
  %18 = ptrtoint ptr %mult to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %mult, align 8
  %shift = getelementptr inbounds %struct.igb_adapter, ptr %adapter, i32 0, i32 67, i32 3
  %19 = ptrtoint ptr %shift to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 19, ptr %shift, align 4
  %ptp_flags = getelementptr inbounds %struct.igb_adapter, ptr %adapter, i32 0, i32 65
  %20 = ptrtoint ptr %ptp_flags to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %ptp_flags, align 4
  %or = or i32 %21, 2
  store i32 %or, ptr %ptp_flags, align 4
  br label %do.body

sw.bb15:                                          ; preds = %entry.sw.bb15_crit_edge, %entry.sw.bb15_crit_edge249, %entry.sw.bb15_crit_edge250
  %arrayidx.i = getelementptr %struct.igb_adapter, ptr %adapter, i32 0, i32 73, i32 0
  %call.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %arrayidx.i, i32 noundef 64, ptr noundef nonnull @.str.31, i32 noundef 0) #9
  %index.i = getelementptr %struct.igb_adapter, ptr %adapter, i32 0, i32 73, i32 0, i32 1
  %22 = ptrtoint ptr %index.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %index.i, align 4
  %func.i = getelementptr %struct.igb_adapter, ptr %adapter, i32 0, i32 73, i32 0, i32 2
  %23 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %func.i, align 4
  %arrayidx.1.i = getelementptr %struct.igb_adapter, ptr %adapter, i32 0, i32 73, i32 1
  %call.1.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %arrayidx.1.i, i32 noundef 64, ptr noundef nonnull @.str.31, i32 noundef 1) #9
  %index.1.i = getelementptr %struct.igb_adapter, ptr %adapter, i32 0, i32 73, i32 1, i32 1
  %24 = ptrtoint ptr %index.1.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1, ptr %index.1.i, align 4
  %func.1.i = getelementptr %struct.igb_adapter, ptr %adapter, i32 0, i32 73, i32 1, i32 2
  %25 = ptrtoint ptr %func.1.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %func.1.i, align 4
  %arrayidx.2.i = getelementptr %struct.igb_adapter, ptr %adapter, i32 0, i32 73, i32 2
  %call.2.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %arrayidx.2.i, i32 noundef 64, ptr noundef nonnull @.str.31, i32 noundef 2) #9
  %index.2.i = getelementptr %struct.igb_adapter, ptr %adapter, i32 0, i32 73, i32 2, i32 1
  %26 = ptrtoint ptr %index.2.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 2, ptr %index.2.i, align 4
  %func.2.i = getelementptr %struct.igb_adapter, ptr %adapter, i32 0, i32 73, i32 2, i32 2
  %27 = ptrtoint ptr %func.2.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %func.2.i, align 4
  %arrayidx.3.i = getelementptr %struct.igb_adapter, ptr %adapter, i32 0, i32 73, i32 3
  %call.3.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %arrayidx.3.i, i32 noundef 64, ptr noundef nonnull @.str.31, i32 noundef 3) #9
  %index.3.i = getelementptr %struct.igb_adapter, ptr %adapter, i32 0, i32 73, i32 3, i32 1
  %28 = ptrtoint ptr %index.3.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 3, ptr %index.3.i, align 4
  %func.3.i = getelementptr %struct.igb_adapter, ptr %adapter, i32 0, i32 73, i32 3, i32 2
  %29 = ptrtoint ptr %func.3.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %func.3.i, align 4
  %ptp_caps16 = getelementptr inbounds %struct.igb_adapter, ptr %adapter, i32 0, i32 57
  %name17 = getelementptr inbounds %struct.igb_adapter, ptr %adapter, i32 0, i32 57, i32 1
  %dev_addr19 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 86
  %30 = ptrtoint ptr %dev_addr19 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev_addr19, align 64
  %call20 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name17, i32 noundef 16, ptr noundef nonnull @.str.7, ptr noundef %31)
  %32 = ptrtoint ptr %ptp_caps16 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %ptp_caps16, align 4
  %max_adj24 = getelementptr inbounds %struct.igb_adapter, ptr %adapter, i32 0, i32 57, i32 2
  %33 = ptrtoint ptr %max_adj24 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 62499999, ptr %max_adj24, align 4
  %n_ext_ts26 = getelementptr inbounds %struct.igb_adapter, ptr %adapter, i32 0, i32 57, i32 4
  %34 = ptrtoint ptr %n_ext_ts26 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 2, ptr %n_ext_ts26, align 4
  %n_per_out = getelementptr inbounds %struct.igb_adapter, ptr %adapter, i32 0, i32 57, i32 5
  %35 = ptrtoint ptr %n_per_out to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 2, ptr %n_per_out, align 4
  %n_pins = getelementptr inbounds %struct.igb_adapter, ptr %adapter, i32 0, i32 57, i32 6
  %36 = ptrtoint ptr %n_pins to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 4, ptr %n_pins, align 4
  %pps30 = getelementptr inbounds %struct.igb_adapter, ptr %adapter, i32 0, i32 57, i32 7
  %37 = ptrtoint ptr %pps30 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %pps30, align 4
  %pin_config = getelementptr inbounds %struct.igb_adapter, ptr %adapter, i32 0, i32 57, i32 8
  %38 = ptrtoint ptr %pin_config to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %arrayidx.i, ptr %pin_config, align 4
  %adjfine = getelementptr inbounds %struct.igb_adapter, ptr %adapter, i32 0, i32 57, i32 9
  %39 = ptrtoint ptr %adjfine to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @igb_ptp_adjfine_82580, ptr %adjfine, align 4
  %adjtime35 = getelementptr inbounds %struct.igb_adapter, ptr %adapter, i32 0, i32 57, i32 12
  %40 = ptrtoint ptr %adjtime35 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @igb_ptp_adjtime_82576, ptr %adjtime35, align 4
  %gettimex6437 = getelementptr inbounds %struct.igb_adapter, ptr %adapter, i32 0, i32 57, i32 14
  %41 = ptrtoint ptr %gettimex6437 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @igb_ptp_gettimex_82580, ptr %gettimex6437, align 4
  %settime6439 = getelementptr inbounds %struct.igb_adapter, ptr %adapter, i32 0, i32 57, i32 16
  %42 = ptrtoint ptr %settime6439 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @igb_ptp_settime_82576, ptr %settime6439, align 4
  %enable41 = getelementptr inbounds %struct.igb_adapter, ptr %adapter, i32 0, i32 57, i32 17
  %43 = ptrtoint ptr %enable41 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @igb_ptp_feature_enable_82580, ptr %enable41, align 4
  %verify = getelementptr inbounds %struct.igb_adapter, ptr %adapter, i32 0, i32 57, i32 18
  %44 = ptrtoint ptr %verify to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @igb_ptp_verify_pin, ptr %verify, align 4
  %cc43 = getelementptr inbounds %struct.igb_adapter, ptr %adapter, i32 0, i32 67
  %45 = ptrtoint ptr %cc43 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr @igb_ptp_read_82580, ptr %cc43, align 8
  %mask46 = getelementptr inbounds %struct.igb_adapter, ptr %adapter, i32 0, i32 67, i32 1
  %46 = ptrtoint ptr %mask46 to i32
  call void @__asan_store8_noabort(i32 %46)
  store i64 1099511627775, ptr %mask46, align 8
  %mult48 = getelementptr inbounds %struct.igb_adapter, ptr %adapter, i32 0, i32 67, i32 2
  %47 = ptrtoint ptr %mult48 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 1, ptr %mult48, align 8
  %shift50 = getelementptr inbounds %struct.igb_adapter, ptr %adapter, i32 0, i32 67, i32 3
  %48 = ptrtoint ptr %shift50 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %shift50, align 4
  %ptp_flags51 = getelementptr inbounds %struct.igb_adapter, ptr %adapter, i32 0, i32 65
  %49 = ptrtoint ptr %ptp_flags51 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %ptp_flags51, align 4
  %or52 = or i32 %50, 2
  store i32 %or52, ptr %ptp_flags51, align 4
  br label %do.body

sw.bb53:                                          ; preds = %entry.sw.bb53_crit_edge, %entry.sw.bb53_crit_edge251
  %arrayidx.i232 = getelementptr %struct.igb_adapter, ptr %adapter, i32 0, i32 73, i32 0
  %call.i233 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %arrayidx.i232, i32 noundef 64, ptr noundef nonnull @.str.31, i32 noundef 0) #9
  %index.i234 = getelementptr %struct.igb_adapter, ptr %adapter, i32 0, i32 73, i32 0, i32 1
  %51 = ptrtoint ptr %index.i234 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %index.i234, align 4
  %func.i235 = getelementptr %struct.igb_adapter, ptr %adapter, i32 0, i32 73, i32 0, i32 2
  %52 = ptrtoint ptr %func.i235 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 0, ptr %func.i235, align 4
  %arrayidx.1.i236 = getelementptr %struct.igb_adapter, ptr %adapter, i32 0, i32 73, i32 1
  %call.1.i237 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %arrayidx.1.i236, i32 noundef 64, ptr noundef nonnull @.str.31, i32 noundef 1) #9
  %index.1.i238 = getelementptr %struct.igb_adapter, ptr %adapter, i32 0, i32 73, i32 1, i32 1
  %53 = ptrtoint ptr %index.1.i238 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 1, ptr %index.1.i238, align 4
  %func.1.i239 = getelementptr %struct.igb_adapter, ptr %adapter, i32 0, i32 73, i32 1, i32 2
  %54 = ptrtoint ptr %func.1.i239 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 0, ptr %func.1.i239, align 4
  %arrayidx.2.i240 = getelementptr %struct.igb_adapter, ptr %adapter, i32 0, i32 73, i32 2
  %call.2.i241 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %arrayidx.2.i240, i32 noundef 64, ptr noundef nonnull @.str.31, i32 noundef 2) #9
  %index.2.i242 = getelementptr %struct.igb_adapter, ptr %adapter, i32 0, i32 73, i32 2, i32 1
  %55 = ptrtoint ptr %index.2.i242 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 2, ptr %index.2.i242, align 4
  %func.2.i243 = getelementptr %struct.igb_adapter, ptr %adapter, i32 0, i32 73, i32 2, i32 2
  %56 = ptrtoint ptr %func.2.i243 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 0, ptr %func.2.i243, align 4
  %arrayidx.3.i244 = getelementptr %struct.igb_adapter, ptr %adapter, i32 0, i32 73, i32 3
  %call.3.i245 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %arrayidx.3.i244, i32 noundef 64, ptr noundef nonnull @.str.31, i32 noundef 3) #9
  %index.3.i246 = getelementptr %struct.igb_adapter, ptr %adapter, i32 0, i32 73, i32 3, i32 1
  %57 = ptrtoint ptr %index.3.i246 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 3, ptr %index.3.i246, align 4
  %func.3.i247 = getelementptr %struct.igb_adapter, ptr %adapter, i32 0, i32 73, i32 3, i32 2
  %58 = ptrtoint ptr %func.3.i247 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 0, ptr %func.3.i247, align 4
  %ptp_caps54 = getelementptr inbounds %struct.igb_adapter, ptr %adapter, i32 0, i32 57
  %name55 = getelementptr inbounds %struct.igb_adapter, ptr %adapter, i32 0, i32 57, i32 1
  %dev_addr57 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 86
  %59 = ptrtoint ptr %dev_addr57 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dev_addr57, align 64
  %call58 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name55, i32 noundef 16, ptr noundef nonnull @.str.7, ptr noundef %60)
  %61 = ptrtoint ptr %ptp_caps54 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr null, ptr %ptp_caps54, align 4
  %max_adj62 = getelementptr inbounds %struct.igb_adapter, ptr %adapter, i32 0, i32 57, i32 2
  %62 = ptrtoint ptr %max_adj62 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 62499999, ptr %max_adj62, align 4
  %n_ext_ts64 = getelementptr inbounds %struct.igb_adapter, ptr %adapter, i32 0, i32 57, i32 4
  %63 = ptrtoint ptr %n_ext_ts64 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 2, ptr %n_ext_ts64, align 4
  %n_per_out66 = getelementptr inbounds %struct.igb_adapter, ptr %adapter, i32 0, i32 57, i32 5
  %64 = ptrtoint ptr %n_per_out66 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 2, ptr %n_per_out66, align 4
  %n_pins68 = getelementptr inbounds %struct.igb_adapter, ptr %adapter, i32 0, i32 57, i32 6
  %65 = ptrtoint ptr %n_pins68 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 4, ptr %n_pins68, align 4
  %pps70 = getelementptr inbounds %struct.igb_adapter, ptr %adapter, i32 0, i32 57, i32 7
  %66 = ptrtoint ptr %pps70 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 1, ptr %pps70, align 4
  %pin_config74 = getelementptr inbounds %struct.igb_adapter, ptr %adapter, i32 0, i32 57, i32 8
  %67 = ptrtoint ptr %pin_config74 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %arrayidx.i232, ptr %pin_config74, align 4
  %adjfine76 = getelementptr inbounds %struct.igb_adapter, ptr %adapter, i32 0, i32 57, i32 9
  %68 = ptrtoint ptr %adjfine76 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr @igb_ptp_adjfine_82580, ptr %adjfine76, align 4
  %adjtime78 = getelementptr inbounds %struct.igb_adapter, ptr %adapter, i32 0, i32 57, i32 12
  %69 = ptrtoint ptr %adjtime78 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr @igb_ptp_adjtime_i210, ptr %adjtime78, align 4
  %gettimex6480 = getelementptr inbounds %struct.igb_adapter, ptr %adapter, i32 0, i32 57, i32 14
  %70 = ptrtoint ptr %gettimex6480 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr @igb_ptp_gettimex_i210, ptr %gettimex6480, align 4
  %settime6482 = getelementptr inbounds %struct.igb_adapter, ptr %adapter, i32 0, i32 57, i32 16
  %71 = ptrtoint ptr %settime6482 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr @igb_ptp_settime_i210, ptr %settime6482, align 4
  %enable84 = getelementptr inbounds %struct.igb_adapter, ptr %adapter, i32 0, i32 57, i32 17
  %72 = ptrtoint ptr %enable84 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr @igb_ptp_feature_enable_i210, ptr %enable84, align 4
  %verify86 = getelementptr inbounds %struct.igb_adapter, ptr %adapter, i32 0, i32 57, i32 18
  %73 = ptrtoint ptr %verify86 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr @igb_ptp_verify_pin, ptr %verify86, align 4
  br label %do.body

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %ptp_clock = getelementptr inbounds %struct.igb_adapter, ptr %adapter, i32 0, i32 56
  %74 = ptrtoint ptr %ptp_clock to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr null, ptr %ptp_clock, align 8
  br label %cleanup

do.body:                                          ; preds = %sw.bb53, %sw.bb15, %sw.bb
  %tmreg_lock = getelementptr inbounds %struct.igb_adapter, ptr %adapter, i32 0, i32 66
  tail call void @__raw_spin_lock_init(ptr noundef %tmreg_lock, ptr noundef nonnull @.str.8, ptr noundef nonnull @igb_ptp_init.__key, i16 noundef signext 3) #9
  %ptp_tx_work = getelementptr inbounds %struct.igb_adapter, ptr %adapter, i32 0, i32 59
  tail call void @__init_work(ptr noundef %ptp_tx_work, i32 noundef 0) #9
  %75 = ptrtoint ptr %ptp_tx_work to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 -64, ptr %ptp_tx_work, align 4
  %lockdep_map = getelementptr inbounds %struct.igb_adapter, ptr %adapter, i32 0, i32 59, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.10, ptr noundef nonnull @igb_ptp_init.__key.9, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  %entry92 = getelementptr inbounds %struct.igb_adapter, ptr %adapter, i32 0, i32 59, i32 1
  %76 = ptrtoint ptr %entry92 to i32
  call void @__asan_store4_noabort(i32 %76)
  store volatile ptr %entry92, ptr %entry92, align 4
  %prev.i = getelementptr inbounds %struct.igb_adapter, ptr %adapter, i32 0, i32 59, i32 1, i32 1
  %77 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %entry92, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.igb_adapter, ptr %adapter, i32 0, i32 59, i32 2
  %78 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr @igb_ptp_tx_work, ptr %func, align 4
  %ptp_flags96 = getelementptr inbounds %struct.igb_adapter, ptr %adapter, i32 0, i32 65
  %79 = ptrtoint ptr %ptp_flags96 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %ptp_flags96, align 4
  %and = and i32 %80, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.if.end_crit_edge, label %do.body98

do.body.if.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.body98:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %ptp_overflow_work = getelementptr inbounds %struct.igb_adapter, ptr %adapter, i32 0, i32 58
  tail call void @__init_work(ptr noundef %ptp_overflow_work, i32 noundef 0) #9
  %81 = ptrtoint ptr %ptp_overflow_work to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 -64, ptr %ptp_overflow_work, align 8
  %lockdep_map106 = getelementptr inbounds %struct.igb_adapter, ptr %adapter, i32 0, i32 58, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map106, ptr noundef nonnull @.str.12, ptr noundef nonnull @igb_ptp_init.__key.11, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  %entry109 = getelementptr inbounds %struct.igb_adapter, ptr %adapter, i32 0, i32 58, i32 0, i32 1
  %82 = ptrtoint ptr %entry109 to i32
  call void @__asan_store4_noabort(i32 %82)
  store volatile ptr %entry109, ptr %entry109, align 4
  %prev.i248 = getelementptr inbounds %struct.igb_adapter, ptr %adapter, i32 0, i32 58, i32 0, i32 1, i32 1
  %83 = ptrtoint ptr %prev.i248 to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %entry109, ptr %prev.i248, align 4
  %func112 = getelementptr inbounds %struct.igb_adapter, ptr %adapter, i32 0, i32 58, i32 0, i32 2
  %84 = ptrtoint ptr %func112 to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr @igb_ptp_overflow_check, ptr %func112, align 4
  %timer = getelementptr inbounds %struct.igb_adapter, ptr %adapter, i32 0, i32 58, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.14, ptr noundef nonnull @igb_ptp_init.__key.13) #9
  br label %if.end

if.end:                                           ; preds = %do.body98, %do.body.if.end_crit_edge
  %rx_filter = getelementptr inbounds %struct.igb_adapter, ptr %adapter, i32 0, i32 61, i32 2
  %85 = ptrtoint ptr %rx_filter to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 0, ptr %rx_filter, align 4
  %tx_type = getelementptr inbounds %struct.igb_adapter, ptr %adapter, i32 0, i32 61, i32 1
  %86 = ptrtoint ptr %tx_type to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 0, ptr %tx_type, align 4
  tail call void @igb_ptp_reset(ptr noundef %adapter)
  %ptp_caps122 = getelementptr inbounds %struct.igb_adapter, ptr %adapter, i32 0, i32 57
  %pdev = getelementptr inbounds %struct.igb_adapter, ptr %adapter, i32 0, i32 34
  %87 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %pdev, align 16
  %dev = getelementptr inbounds %struct.pci_dev, ptr %88, i32 0, i32 44
  %call123 = tail call ptr @ptp_clock_register(ptr noundef %ptp_caps122, ptr noundef %dev) #9
  %ptp_clock124 = getelementptr inbounds %struct.igb_adapter, ptr %adapter, i32 0, i32 56
  %89 = ptrtoint ptr %ptp_clock124 to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %call123, ptr %ptp_clock124, align 8
  %cmp.i = icmp ugt ptr %call123, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then127, label %if.else

if.then127:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %90 = ptrtoint ptr %ptp_clock124 to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr null, ptr %ptp_clock124, align 8
  %91 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %pdev, align 16
  %dev133 = getelementptr inbounds %struct.pci_dev, ptr %92, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev133, ptr noundef nonnull @.str.15) #12
  br label %cleanup

if.else:                                          ; preds = %if.end
  %tobool135.not = icmp eq ptr %call123, null
  br i1 %tobool135.not, label %if.else.cleanup_crit_edge, label %do.end139

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end139:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %93 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %pdev, align 16
  %dev141 = getelementptr inbounds %struct.pci_dev, ptr %94, i32 0, i32 44
  %95 = ptrtoint ptr %netdev2 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %netdev2, align 128
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev141, ptr noundef nonnull @.str.19, ptr noundef %96) #12
  %97 = ptrtoint ptr %ptp_flags96 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %ptp_flags96, align 4
  %or146 = or i32 %98, 1
  store i32 %or146, ptr %ptp_flags96, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end139, %if.else.cleanup_crit_edge, %if.then127, %sw.default
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @igb_ptp_adjfreq_82576(ptr noundef %ptp, i32 noundef %ppb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.abs.i32(i32 %ppb, i1 false)
  %conv = sext i32 %0 to i64
  %shl = shl nsw i64 %conv, 14
  %1 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -8543223759426509417, i64 %shl, i32 0) #13, !srcloc !116
  %asmresult.i.i.i = extractvalue { i64, i32 } %1, 0
  %asmresult4.i.i.i = extractvalue { i64, i32 } %1, 1
  %2 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -8543223759426509417, i64 %shl, i64 %asmresult.i.i.i, i32 %asmresult4.i.i.i) #13, !srcloc !117
  %hw_addr11 = getelementptr i8, ptr %ptp, i32 -2632
  %3 = ptrtoint ptr %hw_addr11 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %hw_addr11, align 4
  %tobool12.not = icmp eq ptr %4, null
  br i1 %tobool12.not, label %entry.if.end20_crit_edge, label %do.body17, !prof !103

entry.if.end20_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

do.body17:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ppb)
  %cmp = icmp slt i32 %ppb, 0
  %asmresult10.i.i.i = extractvalue { i64, i32 } %2, 0
  %div158.i.i31 = lshr i64 %asmresult10.i.i.i, 20
  %5 = trunc i64 %div158.i.i31 to i32
  %6 = sub i32 0, %5
  %incvalue.0.p = select i1 %cmp, i32 %6, i32 %5
  %incvalue.0 = add i32 %incvalue.0.p, 8388608
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !118
  tail call void @arm_heavy_mb() #9
  %and = and i32 %incvalue.0, 16777215
  %or = or i32 %and, 16777216
  %7 = tail call i32 @llvm.bswap.i32(i32 %or)
  %arrayidx = getelementptr i8, ptr %4, i32 46600
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx, i32 %7) #9, !srcloc !105
  br label %if.end20

if.end20:                                         ; preds = %do.body17, %entry.if.end20_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @igb_ptp_adjtime_82576(ptr noundef %ptp, i64 noundef %delta) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tmreg_lock = getelementptr i8, ptr %ptp, i32 284
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %tmreg_lock) #9
  %nsec.i = getelementptr i8, ptr %ptp, i32 372
  %0 = ptrtoint ptr %nsec.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %nsec.i, align 8
  %add.i = add i64 %1, %delta
  store i64 %add.i, ptr %nsec.i, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %tmreg_lock, i32 noundef %call3) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @igb_ptp_gettimex_82576(ptr noundef %ptp, ptr nocapture noundef writeonly %ts, ptr noundef %sts) #0 align 64 {
entry:
  %tmp13 = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr i8, ptr %ptp, i32 -2636
  %tmreg_lock = getelementptr i8, ptr %ptp, i32 284
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %tmreg_lock) #9
  %tobool.not.i = icmp eq ptr %sts, null
  br i1 %tobool.not.i, label %ptp_read_system_prets.exit.thread, label %if.then.i20

ptp_read_system_prets.exit.thread:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call721 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 46592) #9
  br label %ptp_read_system_postts.exit

if.then.i20:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @ktime_get_real_ts64(ptr noundef nonnull %sts) #9
  %call7 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 46592) #9
  %post_ts.i = getelementptr inbounds %struct.ptp_system_timestamp, ptr %sts, i32 0, i32 1
  tail call void @ktime_get_real_ts64(ptr noundef %post_ts.i) #9
  br label %ptp_read_system_postts.exit

ptp_read_system_postts.exit:                      ; preds = %if.then.i20, %ptp_read_system_prets.exit.thread
  %call722 = phi i32 [ %call721, %ptp_read_system_prets.exit.thread ], [ %call7, %if.then.i20 ]
  %call8 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 46596) #9
  %tc = getelementptr i8, ptr %ptp, i32 356
  %conv9 = zext i32 %call8 to i64
  %shl = shl nuw i64 %conv9, 32
  %conv10 = zext i32 %call722 to i64
  %or = or i64 %shl, %conv10
  %call11 = tail call i64 @timecounter_cyc2time(ptr noundef %tc, i64 noundef %or) #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %tmreg_lock, i32 noundef %call4) #9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp13) #9
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %tmp13, i64 noundef %call11) #9
  %0 = call ptr @memcpy(ptr %ts, ptr %tmp13, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp13) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @igb_ptp_settime_82576(ptr noundef %ptp, ptr nocapture noundef readonly %ts) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ts to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %ts, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 9223372035, i64 %1)
  %cmp.i = icmp sgt i64 %1, 9223372035
  br i1 %cmp.i, label %entry.timespec64_to_ns.exit_crit_edge, label %if.end.i

entry.timespec64_to_ns.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %timespec64_to_ns.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp8(i64 -9223372035, i64 %1)
  %cmp2.i = icmp slt i64 %1, -9223372035
  br i1 %cmp2.i, label %if.end.i.timespec64_to_ns.exit_crit_edge, label %if.end4.i

if.end.i.timespec64_to_ns.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %timespec64_to_ns.exit

if.end4.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
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
  %tmreg_lock = getelementptr i8, ptr %ptp, i32 284
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %tmreg_lock) #9
  %tc = getelementptr i8, ptr %ptp, i32 356
  %cc = getelementptr i8, ptr %ptp, i32 332
  tail call void @timecounter_init(ptr noundef %tc, ptr noundef %cc, i64 noundef %retval.0.i) #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %tmreg_lock, i32 noundef %call4) #9
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @igb_ptp_feature_enable(ptr nocapture noundef readnone %ptp, ptr nocapture noundef readnone %rq, i32 noundef %on) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -95
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @igb_ptp_read_82576(ptr noundef %cc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr i8, ptr %cc, i32 -2968
  %call = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 46592) #9
  %call2 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 46596) #9
  %conv = zext i32 %call2 to i64
  %shl = shl nuw i64 %conv, 32
  %conv3 = zext i32 %call to i64
  %or = or i64 %shl, %conv3
  ret i64 %or
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @igb_ptp_adjfine_82580(ptr noundef %ptp, i32 noundef %scaled_ppm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.abs.i32(i32 %scaled_ppm, i1 false)
  %conv = sext i32 %0 to i64
  %shl = shl nsw i64 %conv, 13
  %1 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %shl) #13, !srcloc !119
  %2 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %shl, i64 %1, i32 0) #13, !srcloc !117
  %hw_addr7 = getelementptr i8, ptr %ptp, i32 -2632
  %3 = ptrtoint ptr %hw_addr7 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %hw_addr7, align 4
  %tobool8.not = icmp eq ptr %4, null
  br i1 %tobool8.not, label %entry.if.end16_crit_edge, label %do.body13, !prof !103

entry.if.end16_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

do.body13:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %asmresult10.i.i.i = extractvalue { i64, i32 } %2, 0
  %div158.i.i25 = lshr i64 %asmresult10.i.i.i, 12
  %5 = trunc i64 %div158.i.i25 to i32
  %conv2 = and i32 %5, 2147483647
  %6 = and i32 %scaled_ppm, -2147483648
  %inca.0 = or i32 %conv2, %6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !120
  tail call void @arm_heavy_mb() #9
  %7 = tail call i32 @llvm.bswap.i32(i32 %inca.0)
  %arrayidx = getelementptr i8, ptr %4, i32 46600
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx, i32 %7) #9, !srcloc !105
  br label %if.end16

if.end16:                                         ; preds = %do.body13, %entry.if.end16_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @igb_ptp_gettimex_82580(ptr noundef %ptp, ptr nocapture noundef writeonly %ts, ptr noundef %sts) #0 align 64 {
entry:
  %tmp14 = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr i8, ptr %ptp, i32 -2636
  %tmreg_lock = getelementptr i8, ptr %ptp, i32 284
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %tmreg_lock) #9
  %tobool.not.i = icmp eq ptr %sts, null
  br i1 %tobool.not.i, label %ptp_read_system_prets.exit.thread, label %if.then.i22

ptp_read_system_prets.exit.thread:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call723 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 46840) #9
  br label %ptp_read_system_postts.exit

if.then.i22:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @ktime_get_real_ts64(ptr noundef nonnull %sts) #9
  %call7 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 46840) #9
  %post_ts.i = getelementptr inbounds %struct.ptp_system_timestamp, ptr %sts, i32 0, i32 1
  tail call void @ktime_get_real_ts64(ptr noundef %post_ts.i) #9
  br label %ptp_read_system_postts.exit

ptp_read_system_postts.exit:                      ; preds = %if.then.i22, %ptp_read_system_prets.exit.thread
  %call8 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 46592) #9
  %call9 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 46596) #9
  %tc = getelementptr i8, ptr %ptp, i32 356
  %conv10 = zext i32 %call9 to i64
  %shl = shl nuw i64 %conv10, 32
  %conv11 = zext i32 %call8 to i64
  %or = or i64 %shl, %conv11
  %call12 = tail call i64 @timecounter_cyc2time(ptr noundef %tc, i64 noundef %or) #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %tmreg_lock, i32 noundef %call4) #9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp14) #9
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %tmp14, i64 noundef %call12) #9
  %0 = call ptr @memcpy(ptr %ts, ptr %tmp14, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp14) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @igb_ptp_feature_enable_82580(ptr noundef %ptp, ptr nocapture noundef readonly %rq, i32 noundef %on) #0 align 64 {
entry:
  %tmp94 = alloca %struct.timespec64, align 8
  %tmp178 = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %ptp, i32 -3916
  %hw1 = getelementptr i8, ptr %ptp, i32 -2636
  %0 = ptrtoint ptr %rq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rq, align 8
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.38)
  switch i32 %1, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb72
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
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %on)
  %tobool3.not = icmp eq i32 %on, 0
  br i1 %tobool3.not, label %if.end.if.end7_crit_edge, label %if.then4

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.then4:                                         ; preds = %if.end
  %ptp_clock = getelementptr i8, ptr %ptp, i32 -4
  %6 = ptrtoint ptr %ptp_clock to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ptp_clock, align 8
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %3, align 8
  %call = tail call i32 @ptp_find_pin(ptr noundef %7, i32 noundef 1, i32 noundef %9) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then4.cleanup_crit_edge, label %if.then4.if.end7_crit_edge

if.then4.if.end7_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.then4.cleanup_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end7:                                          ; preds = %if.then4.if.end7_crit_edge, %if.end.if.end7_crit_edge
  %pin.0 = phi i32 [ %call, %if.then4.if.end7_crit_edge ], [ -1, %if.end.if.end7_crit_edge ]
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %3, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp9 = icmp eq i32 %11, 1
  %. = select i1 %cmp9, i32 64, i32 32
  %.421 = select i1 %cmp9, i32 1024, i32 256
  %tmreg_lock = getelementptr i8, ptr %ptp, i32 284
  %call16 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %tmreg_lock) #9
  %call19 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 46656) #9
  %call20 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 46708) #9
  br i1 %tobool3.not, label %if.else25, label %if.then22

if.then22:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %3, align 8
  tail call fastcc void @igb_pin_extts(ptr noundef %add.ptr, i32 noundef %13, i32 noundef %pin.0)
  %or = or i32 %call19, %.421
  %or24 = or i32 %call20, %.
  br label %do.body30

if.else25:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  %neg = xor i32 %.421, -1
  %and26 = and i32 %call19, %neg
  %neg27 = xor i32 %., -1
  %and28 = and i32 %call20, %neg27
  br label %do.body30

do.body30:                                        ; preds = %if.else25, %if.then22
  %tsim.0 = phi i32 [ %or24, %if.then22 ], [ %and28, %if.else25 ]
  %tsauxc.0 = phi i32 [ %or, %if.then22 ], [ %and26, %if.else25 ]
  %hw_addr35 = getelementptr i8, ptr %ptp, i32 -2632
  %14 = ptrtoint ptr %hw_addr35 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %hw_addr35, align 4
  %tobool36.not = icmp eq ptr %15, null
  br i1 %tobool36.not, label %do.body30.if.end44_crit_edge, label %do.body41, !prof !103

do.body30.if.end44_crit_edge:                     ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end44

do.body41:                                        ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !121
  tail call void @arm_heavy_mb() #9
  %16 = tail call i32 @llvm.bswap.i32(i32 %tsauxc.0)
  %arrayidx = getelementptr i8, ptr %15, i32 46656
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx, i32 %16) #9, !srcloc !105
  br label %if.end44

if.end44:                                         ; preds = %do.body41, %do.body30.if.end44_crit_edge
  %17 = ptrtoint ptr %hw_addr35 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile ptr, ptr %hw_addr35, align 4
  %tobool54.not = icmp eq ptr %18, null
  br i1 %tobool54.not, label %if.end44.if.end68_crit_edge, label %do.body64, !prof !103

if.end44.if.end68_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end68

do.body64:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !122
  tail call void @arm_heavy_mb() #9
  %19 = tail call i32 @llvm.bswap.i32(i32 %tsim.0)
  %arrayidx67 = getelementptr i8, ptr %18, i32 46708
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx67, i32 %19) #9, !srcloc !105
  br label %if.end68

if.end68:                                         ; preds = %do.body64, %if.end44.if.end68_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %tmreg_lock, i32 noundef %call16) #9
  br label %cleanup

sw.bb72:                                          ; preds = %entry
  %flags73 = getelementptr inbounds %struct.ptp_clock_request, ptr %rq, i32 0, i32 1, i32 0, i32 3
  %20 = ptrtoint ptr %flags73 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %flags73, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool74.not = icmp eq i32 %21, 0
  br i1 %tobool74.not, label %if.end76, label %sw.bb72.cleanup_crit_edge

sw.bb72.cleanup_crit_edge:                        ; preds = %sw.bb72
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end76:                                         ; preds = %sw.bb72
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %on)
  %tobool77.not = icmp eq i32 %on, 0
  br i1 %tobool77.not, label %if.end76.if.end86_crit_edge, label %if.then78

if.end76.if.end86_crit_edge:                      ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end86

if.then78:                                        ; preds = %if.end76
  %ptp_clock79 = getelementptr i8, ptr %ptp, i32 -4
  %22 = ptrtoint ptr %ptp_clock79 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ptp_clock79, align 8
  %index80 = getelementptr inbounds %struct.ptp_clock_request, ptr %rq, i32 0, i32 1, i32 0, i32 2
  %24 = ptrtoint ptr %index80 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %index80, align 8
  %call81 = tail call i32 @ptp_find_pin(ptr noundef %23, i32 noundef 2, i32 noundef %25) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81)
  %cmp82 = icmp slt i32 %call81, 0
  br i1 %cmp82, label %if.then78.cleanup_crit_edge, label %if.then78.if.end86_crit_edge

if.then78.if.end86_crit_edge:                     ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end86

if.then78.cleanup_crit_edge:                      ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end86:                                         ; preds = %if.then78.if.end86_crit_edge, %if.end76.if.end86_crit_edge
  %pin.1 = phi i32 [ %call81, %if.then78.if.end86_crit_edge ], [ -1, %if.end76.if.end86_crit_edge ]
  %period = getelementptr inbounds %struct.ptp_clock_request, ptr %rq, i32 0, i32 1, i32 0, i32 1
  %26 = ptrtoint ptr %period to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %period, align 8
  %nsec = getelementptr inbounds %struct.ptp_clock_request, ptr %rq, i32 0, i32 1, i32 0, i32 1, i32 1
  %28 = ptrtoint ptr %nsec to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %nsec, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 9223372035, i64 %27)
  %cmp.i = icmp sgt i64 %27, 9223372035
  br i1 %cmp.i, label %if.end86.if.end93_crit_edge, label %if.end.i

if.end86.if.end93_crit_edge:                      ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end93

if.end.i:                                         ; preds = %if.end86
  call void @__sanitizer_cov_trace_const_cmp8(i64 -9223372035, i64 %27)
  %cmp2.i = icmp slt i64 %27, -9223372035
  br i1 %cmp2.i, label %if.end.i.timespec64_to_ns.exit_crit_edge, label %if.end4.i

if.end.i.timespec64_to_ns.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %timespec64_to_ns.exit

if.end4.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %mul.i = mul nsw i64 %27, 1000000000
  %conv.i = sext i32 %29 to i64
  %add.i = add i64 %mul.i, %conv.i
  br label %timespec64_to_ns.exit

timespec64_to_ns.exit:                            ; preds = %if.end4.i, %if.end.i.timespec64_to_ns.exit_crit_edge
  %retval.0.i = phi i64 [ %add.i, %if.end4.i ], [ -9223372036854775808, %if.end.i.timespec64_to_ns.exit_crit_edge ]
  %shr = ashr i64 %retval.0.i, 1
  %tobool77.not.not = xor i1 %tobool77.not, true
  call void @__sanitizer_cov_trace_const_cmp8(i64 16, i64 %retval.0.i)
  %cmp90 = icmp slt i64 %retval.0.i, 16
  %or.cond = select i1 %tobool77.not.not, i1 %cmp90, i1 false
  %extract.t = trunc i64 %retval.0.i to i32
  br i1 %or.cond, label %timespec64_to_ns.exit.cleanup_crit_edge, label %timespec64_to_ns.exit.if.end93_crit_edge

timespec64_to_ns.exit.if.end93_crit_edge:         ; preds = %timespec64_to_ns.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end93

timespec64_to_ns.exit.cleanup_crit_edge:          ; preds = %timespec64_to_ns.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end93:                                         ; preds = %timespec64_to_ns.exit.if.end93_crit_edge, %if.end86.if.end93_crit_edge
  %shr571 = phi i64 [ %shr, %timespec64_to_ns.exit.if.end93_crit_edge ], [ 4611686018427387903, %if.end86.if.end93_crit_edge ]
  %retval.0.i570.off0 = phi i32 [ %extract.t, %timespec64_to_ns.exit.if.end93_crit_edge ], [ -1, %if.end86.if.end93_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp94) #9
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %tmp94, i64 noundef %shr571) #9
  %30 = ptrtoint ptr %tmp94 to i32
  call void @__asan_load8_noabort(i32 %30)
  %ts.sroa.0.0.copyload559 = load i64, ptr %tmp94, align 8
  %ts.sroa.7.0.tmp94.sroa_idx = getelementptr inbounds i8, ptr %tmp94, i32 8
  %31 = ptrtoint ptr %ts.sroa.7.0.tmp94.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %31)
  %ts.sroa.7.0.copyload560 = load i32, ptr %ts.sroa.7.0.tmp94.sroa_idx, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp94) #9
  %index95 = getelementptr inbounds %struct.ptp_clock_request, ptr %rq, i32 0, i32 1, i32 0, i32 2
  %32 = ptrtoint ptr %index95 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %index95, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %33)
  %cmp96 = icmp eq i32 %33, 1
  %.422 = select i1 %cmp96, i32 46672, i32 46664
  %.423 = select i1 %cmp96, i32 46668, i32 46660
  %.424 = select i1 %cmp96, i32 16, i32 8
  %.425 = select i1 %cmp96, i32 2, i32 1
  %tmreg_lock108 = getelementptr i8, ptr %ptp, i32 284
  %call110 = call i32 @_raw_spin_lock_irqsave(ptr noundef %tmreg_lock108) #9
  %call115 = call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 46656) #9
  %call116 = call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 46708) #9
  %34 = ptrtoint ptr %index95 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %index95, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %35)
  %cmp118 = icmp eq i32 %35, 1
  %tsim.1.v = select i1 %cmp118, i32 -17, i32 -9
  %tsim.1 = and i32 %tsim.1.v, %call116
  %tsauxc.1.v = select i1 %cmp118, i32 -163, i32 -22
  %tsauxc.1 = and i32 %tsauxc.1.v, %call115
  br i1 %tobool77.not, label %if.end93.do.body256_crit_edge, label %if.then128

if.end93.do.body256_crit_edge:                    ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body256

if.then128:                                       ; preds = %if.end93
  %call130 = call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 46840) #9
  %call131 = call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 46592) #9
  %call132 = call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 46596) #9
  %and133 = and i32 %call132, 255
  %conv134 = zext i32 %and133 to i64
  %shl = shl nuw nsw i64 %conv134, 32
  %conv135 = zext i32 %call131 to i64
  %or136 = or i64 %shl, %conv135
  %tc = getelementptr i8, ptr %ptp, i32 356
  %call137 = call i64 @timecounter_cyc2time(ptr noundef %tc, i64 noundef %or136) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %pin.1)
  %cmp138 = icmp slt i32 %pin.1, 2
  %cond150 = select i1 %cmp118, i32 128, i32 64
  %cond = select i1 %cmp118, i32 524288, i32 262144
  %.sink = select i1 %cmp138, i32 0, i32 24
  %cond150.sink = select i1 %cmp138, i32 %cond, i32 %cond150
  %call151 = call i32 @igb_rd32(ptr noundef %hw1, i32 noundef %.sink) #9
  %and152 = and i32 %call151, %cond150.sink
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and152)
  %level.0.in.not = icmp eq i32 %and152, 0
  %conv156 = trunc i64 %shr571 to i32
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %call137)
  %cmp164.i = icmp ult i64 %call137, 4294967296
  br i1 %cmp164.i, label %if.then168.i, label %if.else174.i, !prof !99

if.then168.i:                                     ; preds = %if.then128
  call void @__sanitizer_cov_trace_pc() #11
  %conv169.i = trunc i64 %call137 to i32
  %rem170.i = urem i32 %conv169.i, %conv156
  br label %div_u64_rem.exit

if.else174.i:                                     ; preds = %if.then128
  call void @__sanitizer_cov_trace_pc() #11
  %36 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %conv156, i64 %call137) #13, !srcloc !123
  %asmresult.i261.i = extractvalue { i64, i64 } %36, 0
  %shr.i.i = lshr i64 %asmresult.i261.i, 32
  %conv.i.i = trunc i64 %shr.i.i to i32
  br label %div_u64_rem.exit

div_u64_rem.exit:                                 ; preds = %if.else174.i, %if.then168.i
  %__rem.0.i = phi i32 [ %rem170.i, %if.then168.i ], [ %conv.i.i, %if.else174.i ]
  %conv158 = zext i32 %__rem.0.i to i64
  %conv160 = and i32 %retval.0.i570.off0, -2
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %call137)
  %cmp164.i543 = icmp ult i64 %call137, 4294967296
  br i1 %cmp164.i543, label %if.then168.i549, label %if.else174.i554, !prof !99

if.then168.i549:                                  ; preds = %div_u64_rem.exit
  call void @__sanitizer_cov_trace_pc() #11
  %conv169.i545 = trunc i64 %call137 to i32
  %rem170.i546 = urem i32 %conv169.i545, %conv160
  br label %div_u64_rem.exit557

if.else174.i554:                                  ; preds = %div_u64_rem.exit
  call void @__sanitizer_cov_trace_pc() #11
  %37 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %conv160, i64 %call137) #13, !srcloc !123
  %asmresult.i261.i550 = extractvalue { i64, i64 } %37, 0
  %shr.i.i552 = lshr i64 %asmresult.i261.i550, 32
  %conv.i.i553 = trunc i64 %shr.i.i552 to i32
  br label %div_u64_rem.exit557

div_u64_rem.exit557:                              ; preds = %if.else174.i554, %if.then168.i549
  %__rem.0.i556 = phi i32 [ %rem170.i546, %if.then168.i549 ], [ %conv.i.i553, %if.else174.i554 ]
  %conv162 = zext i32 %__rem.0.i556 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %shr571, i64 %conv162)
  %cmp163 = icmp sgt i64 %shr571, %conv162
  %add169 = select i1 %level.0.in.not, i64 %shr571, i64 0
  %add175 = select i1 %level.0.in.not, i64 0, i64 %shr571
  %add169.pn = select i1 %cmp163, i64 %add169, i64 %add175
  %sub = add nsw i64 %or136, %shr571
  %add = sub i64 %sub, %conv158
  %systim.0 = add i64 %add, %add169.pn
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp178) #9
  %sub180 = sub nsw i64 %shr571, %conv162
  %add181 = add i64 %sub180, %systim.0
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %tmp178, i64 noundef %add181) #9
  %38 = ptrtoint ptr %tmp178 to i32
  call void @__asan_load8_noabort(i32 %38)
  %start.sroa.0.0.copyload358 = load i64, ptr %tmp178, align 8
  %start.sroa.5.0.tmp178.sroa_idx = getelementptr inbounds i8, ptr %tmp178, i32 8
  %39 = ptrtoint ptr %start.sroa.5.0.tmp178.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %39)
  %start.sroa.5.0.copyload359 = load i32, ptr %start.sroa.5.0.tmp178.sroa_idx, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp178) #9
  call fastcc void @igb_pin_perout(ptr noundef %add.ptr, i32 noundef %35, i32 noundef %pin.1, i32 noundef 0)
  %perout = getelementptr i8, ptr %ptp, i32 796
  %arrayidx183 = getelementptr [2 x %struct.anon.133], ptr %perout, i32 0, i32 %35
  %40 = ptrtoint ptr %arrayidx183 to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 %start.sroa.0.0.copyload358, ptr %arrayidx183, align 8
  %tv_nsec190 = getelementptr inbounds %struct.timespec64, ptr %arrayidx183, i32 0, i32 1
  %41 = ptrtoint ptr %tv_nsec190 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %start.sroa.5.0.copyload359, ptr %tv_nsec190, align 8
  %period194 = getelementptr inbounds %struct.anon.133, ptr %arrayidx183, i32 0, i32 1
  %42 = ptrtoint ptr %period194 to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 %ts.sroa.0.0.copyload559, ptr %period194, align 8
  %tv_nsec200 = getelementptr inbounds %struct.anon.133, ptr %arrayidx183, i32 0, i32 1, i32 1
  %43 = ptrtoint ptr %tv_nsec200 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %ts.sroa.7.0.copyload560, ptr %tv_nsec200, align 8
  %hw_addr207 = getelementptr i8, ptr %ptp, i32 -2632
  %44 = ptrtoint ptr %hw_addr207 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile ptr, ptr %hw_addr207, align 4
  %tobool208.not = icmp eq ptr %45, null
  br i1 %tobool208.not, label %div_u64_rem.exit557.if.end223_crit_edge, label %do.body218, !prof !103

div_u64_rem.exit557.if.end223_crit_edge:          ; preds = %div_u64_rem.exit557
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end223

do.body218:                                       ; preds = %div_u64_rem.exit557
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !124
  call void @arm_heavy_mb() #9
  %conv221 = trunc i64 %systim.0 to i32
  %46 = call i32 @llvm.bswap.i32(i32 %conv221)
  %arrayidx222 = getelementptr i8, ptr %45, i32 %.423
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx222, i32 %46) #9, !srcloc !105
  br label %if.end223

if.end223:                                        ; preds = %do.body218, %div_u64_rem.exit557.if.end223_crit_edge
  %47 = ptrtoint ptr %hw_addr207 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile ptr, ptr %hw_addr207, align 4
  %tobool233.not = icmp eq ptr %48, null
  br i1 %tobool233.not, label %if.end223.if.end250_crit_edge, label %do.body243, !prof !103

if.end223.if.end250_crit_edge:                    ; preds = %if.end223
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end250

do.body243:                                       ; preds = %if.end223
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !125
  call void @arm_heavy_mb() #9
  %sh.diff = lshr i64 %systim.0, 8
  %tr.sh.diff = trunc i64 %sh.diff to i32
  %and248 = and i32 %tr.sh.diff, -16777216
  %arrayidx249 = getelementptr i8, ptr %48, i32 %.422
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx249, i32 %and248) #9, !srcloc !105
  br label %if.end250

if.end250:                                        ; preds = %do.body243, %if.end223.if.end250_crit_edge
  %or253 = or i32 %tsauxc.1, %.425
  %or254 = or i32 %tsim.1, %.424
  br label %do.body256

do.body256:                                       ; preds = %if.end250, %if.end93.do.body256_crit_edge
  %tsim.2 = phi i32 [ %or254, %if.end250 ], [ %tsim.1, %if.end93.do.body256_crit_edge ]
  %tsauxc.2 = phi i32 [ %or253, %if.end250 ], [ %tsauxc.1, %if.end93.do.body256_crit_edge ]
  %hw_addr262 = getelementptr i8, ptr %ptp, i32 -2632
  %49 = ptrtoint ptr %hw_addr262 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile ptr, ptr %hw_addr262, align 4
  %tobool263.not = icmp eq ptr %50, null
  br i1 %tobool263.not, label %do.body256.if.end277_crit_edge, label %do.body273, !prof !103

do.body256.if.end277_crit_edge:                   ; preds = %do.body256
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end277

do.body273:                                       ; preds = %do.body256
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !126
  call void @arm_heavy_mb() #9
  %51 = call i32 @llvm.bswap.i32(i32 %tsauxc.2)
  %arrayidx276 = getelementptr i8, ptr %50, i32 46656
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx276, i32 %51) #9, !srcloc !105
  br label %if.end277

if.end277:                                        ; preds = %do.body273, %do.body256.if.end277_crit_edge
  %52 = ptrtoint ptr %hw_addr262 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile ptr, ptr %hw_addr262, align 4
  %tobool287.not = icmp eq ptr %53, null
  br i1 %tobool287.not, label %if.end277.if.end301_crit_edge, label %do.body297, !prof !103

if.end277.if.end301_crit_edge:                    ; preds = %if.end277
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end301

do.body297:                                       ; preds = %if.end277
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !127
  call void @arm_heavy_mb() #9
  %54 = call i32 @llvm.bswap.i32(i32 %tsim.2)
  %arrayidx300 = getelementptr i8, ptr %53, i32 46708
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx300, i32 %54) #9, !srcloc !105
  br label %if.end301

if.end301:                                        ; preds = %do.body297, %if.end277.if.end301_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %tmreg_lock108, i32 noundef %call110) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end301, %timespec64_to_ns.exit.cleanup_crit_edge, %if.then78.cleanup_crit_edge, %sw.bb72.cleanup_crit_edge, %if.end68, %if.then4.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end301 ], [ 0, %if.end68 ], [ -95, %sw.bb.cleanup_crit_edge ], [ -16, %if.then4.cleanup_crit_edge ], [ -95, %sw.bb72.cleanup_crit_edge ], [ -16, %if.then78.cleanup_crit_edge ], [ -22, %timespec64_to_ns.exit.cleanup_crit_edge ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @igb_ptp_verify_pin(ptr nocapture noundef readnone %ptp, i32 noundef %pin, i32 noundef %func, i32 noundef %chan) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %func)
  %cond = icmp eq i32 %func, 3
  %. = sext i1 %cond to i32
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @igb_ptp_read_82580(ptr noundef %cc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr i8, ptr %cc, i32 -2968
  %call = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 46840) #9
  %call2 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 46592) #9
  %call3 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 46596) #9
  %conv = zext i32 %call3 to i64
  %shl = shl nuw i64 %conv, 32
  %conv4 = zext i32 %call2 to i64
  %or = or i64 %shl, %conv4
  ret i64 %or
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @igb_ptp_adjtime_i210(ptr noundef %ptp, i64 noundef %delta) #0 align 64 {
entry:
  %then = alloca %struct.timespec64, align 8
  %tmp6 = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %then) #9
  %0 = call ptr @memset(ptr %then, i32 255, i32 16)
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %then, i64 noundef %delta) #9
  %tmreg_lock = getelementptr i8, ptr %ptp, i32 284
  %call3 = call i32 @_raw_spin_lock_irqsave(ptr noundef %tmreg_lock) #9
  %hw1.i = getelementptr i8, ptr %ptp, i32 -2636
  %call.i = call i32 @igb_rd32(ptr noundef %hw1.i, i32 noundef 46840) #9
  %call2.i = call i32 @igb_rd32(ptr noundef %hw1.i, i32 noundef 46592) #9
  %call3.i = call i32 @igb_rd32(ptr noundef %hw1.i, i32 noundef 46596) #9
  %conv.i = zext i32 %call3.i to i64
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
  %add3.i = add i32 %call2.i, %rhs.sroa.2.8.extract.trunc.i
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
  %hw_addr3.i = getelementptr i8, ptr %ptp, i32 -2632
  %6 = ptrtoint ptr %hw_addr3.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %hw_addr3.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %do.body7.i, !prof !103

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

do.body7.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !128
  call void @arm_heavy_mb() #9
  %now.sroa.7.8.extract.shift = lshr i64 %now.sroa.7.0.copyload21, 32
  %now.sroa.7.8.extract.trunc = trunc i64 %now.sroa.7.8.extract.shift to i32
  %8 = call i32 @llvm.bswap.i32(i32 %now.sroa.7.8.extract.trunc) #9
  %arrayidx.i = getelementptr i8, ptr %7, i32 46592
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i, i32 %8) #9, !srcloc !105
  br label %if.end.i

if.end.i:                                         ; preds = %do.body7.i, %entry.if.end.i_crit_edge
  %9 = ptrtoint ptr %hw_addr3.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %hw_addr3.i, align 4
  %tobool19.not.i = icmp eq ptr %10, null
  br i1 %tobool19.not.i, label %if.end.i.igb_ptp_write_i210.exit_crit_edge, label %do.body29.i, !prof !103

if.end.i.igb_ptp_write_i210.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %igb_ptp_write_i210.exit

do.body29.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !129
  call void @arm_heavy_mb() #9
  %conv.i19 = trunc i64 %now.sroa.0.0.copyload20 to i32
  %11 = call i32 @llvm.bswap.i32(i32 %conv.i19) #9
  %arrayidx32.i = getelementptr i8, ptr %10, i32 46596
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx32.i, i32 %11) #9, !srcloc !105
  br label %igb_ptp_write_i210.exit

igb_ptp_write_i210.exit:                          ; preds = %do.body29.i, %if.end.i.igb_ptp_write_i210.exit_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %tmreg_lock, i32 noundef %call3) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %then) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @igb_ptp_gettimex_i210(ptr noundef %ptp, ptr nocapture noundef writeonly %ts, ptr noundef %sts) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr i8, ptr %ptp, i32 -2636
  %tmreg_lock = getelementptr i8, ptr %ptp, i32 284
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %tmreg_lock) #9
  %tobool.not.i = icmp eq ptr %sts, null
  br i1 %tobool.not.i, label %ptp_read_system_prets.exit.thread, label %if.then.i19

ptp_read_system_prets.exit.thread:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call720 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 46840) #9
  br label %ptp_read_system_postts.exit

if.then.i19:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @ktime_get_real_ts64(ptr noundef nonnull %sts) #9
  %call7 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 46840) #9
  %post_ts.i = getelementptr inbounds %struct.ptp_system_timestamp, ptr %sts, i32 0, i32 1
  tail call void @ktime_get_real_ts64(ptr noundef %post_ts.i) #9
  br label %ptp_read_system_postts.exit

ptp_read_system_postts.exit:                      ; preds = %if.then.i19, %ptp_read_system_prets.exit.thread
  %call8 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 46592) #9
  %tv_nsec = getelementptr inbounds %struct.timespec64, ptr %ts, i32 0, i32 1
  %0 = ptrtoint ptr %tv_nsec to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %call8, ptr %tv_nsec, align 8
  %call9 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 46596) #9
  %conv10 = zext i32 %call9 to i64
  %1 = ptrtoint ptr %ts to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 %conv10, ptr %ts, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %tmreg_lock, i32 noundef %call4) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @igb_ptp_settime_i210(ptr noundef %ptp, ptr nocapture noundef readonly %ts) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tmreg_lock = getelementptr i8, ptr %ptp, i32 284
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %tmreg_lock) #9
  %hw_addr3.i = getelementptr i8, ptr %ptp, i32 -2632
  %0 = ptrtoint ptr %hw_addr3.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %hw_addr3.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %do.body7.i, !prof !103

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

do.body7.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !128
  tail call void @arm_heavy_mb() #9
  %tv_nsec.i = getelementptr inbounds %struct.timespec64, ptr %ts, i32 0, i32 1
  %2 = ptrtoint ptr %tv_nsec.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tv_nsec.i, align 8
  %4 = tail call i32 @llvm.bswap.i32(i32 %3) #9
  %arrayidx.i = getelementptr i8, ptr %1, i32 46592
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i, i32 %4) #9, !srcloc !105
  br label %if.end.i

if.end.i:                                         ; preds = %do.body7.i, %entry.if.end.i_crit_edge
  %5 = ptrtoint ptr %hw_addr3.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %hw_addr3.i, align 4
  %tobool19.not.i = icmp eq ptr %6, null
  br i1 %tobool19.not.i, label %if.end.i.igb_ptp_write_i210.exit_crit_edge, label %do.body29.i, !prof !103

if.end.i.igb_ptp_write_i210.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %igb_ptp_write_i210.exit

do.body29.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !129
  tail call void @arm_heavy_mb() #9
  %7 = ptrtoint ptr %ts to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %ts, align 8
  %conv.i = trunc i64 %8 to i32
  %9 = tail call i32 @llvm.bswap.i32(i32 %conv.i) #9
  %arrayidx32.i = getelementptr i8, ptr %6, i32 46596
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx32.i, i32 %9) #9, !srcloc !105
  br label %igb_ptp_write_i210.exit

igb_ptp_write_i210.exit:                          ; preds = %do.body29.i, %if.end.i.igb_ptp_write_i210.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %tmreg_lock, i32 noundef %call3) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @igb_ptp_feature_enable_i210(ptr noundef %ptp, ptr nocapture noundef readonly %rq, i32 noundef %on) #0 align 64 {
entry:
  %tmp119 = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %ptp, i32 -3916
  %hw1 = getelementptr i8, ptr %ptp, i32 -2636
  %0 = ptrtoint ptr %rq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rq, align 8
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.39)
  switch i32 %1, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb84
    i32 2, label %do.body314
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
  %or.cond474 = or i1 %7, %cmp.not
  br i1 %or.cond474, label %if.end13, label %if.end.cleanup_crit_edge

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
  %.475 = select i1 %cmp21, i32 1024, i32 256
  %tmreg_lock = getelementptr i8, ptr %ptp, i32 284
  %call28 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %tmreg_lock) #9
  %call31 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 46656) #9
  %call32 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 46708) #9
  br i1 %tobool14.not, label %if.else37, label %if.then34

if.then34:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %3, align 8
  tail call fastcc void @igb_pin_extts(ptr noundef %add.ptr, i32 noundef %15, i32 noundef %pin.0)
  %or = or i32 %call31, %.475
  %or36 = or i32 %call32, %.
  br label %do.body42

if.else37:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  %neg = xor i32 %.475, -1
  %and38 = and i32 %call31, %neg
  %neg39 = xor i32 %., -1
  %and40 = and i32 %call32, %neg39
  br label %do.body42

do.body42:                                        ; preds = %if.else37, %if.then34
  %tsim.0 = phi i32 [ %or36, %if.then34 ], [ %and40, %if.else37 ]
  %tsauxc.0 = phi i32 [ %or, %if.then34 ], [ %and38, %if.else37 ]
  %hw_addr47 = getelementptr i8, ptr %ptp, i32 -2632
  %16 = ptrtoint ptr %hw_addr47 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile ptr, ptr %hw_addr47, align 4
  %tobool48.not = icmp eq ptr %17, null
  br i1 %tobool48.not, label %do.body42.if.end56_crit_edge, label %do.body53, !prof !103

do.body42.if.end56_crit_edge:                     ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end56

do.body53:                                        ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !130
  tail call void @arm_heavy_mb() #9
  %18 = tail call i32 @llvm.bswap.i32(i32 %tsauxc.0)
  %arrayidx = getelementptr i8, ptr %17, i32 46656
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx, i32 %18) #9, !srcloc !105
  br label %if.end56

if.end56:                                         ; preds = %do.body53, %do.body42.if.end56_crit_edge
  %19 = ptrtoint ptr %hw_addr47 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile ptr, ptr %hw_addr47, align 4
  %tobool66.not = icmp eq ptr %20, null
  br i1 %tobool66.not, label %if.end56.if.end80_crit_edge, label %do.body76, !prof !103

if.end56.if.end80_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end80

do.body76:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !131
  tail call void @arm_heavy_mb() #9
  %21 = tail call i32 @llvm.bswap.i32(i32 %tsim.0)
  %arrayidx79 = getelementptr i8, ptr %20, i32 46708
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx79, i32 %21) #9, !srcloc !105
  br label %if.end80

if.end80:                                         ; preds = %do.body76, %if.end56.if.end80_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %tmreg_lock, i32 noundef %call28) #9
  br label %cleanup

sw.bb84:                                          ; preds = %entry
  %22 = getelementptr inbounds %struct.ptp_clock_request, ptr %rq, i32 0, i32 1
  %flags85 = getelementptr inbounds %struct.ptp_clock_request, ptr %rq, i32 0, i32 1, i32 0, i32 3
  %23 = ptrtoint ptr %flags85 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %flags85, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool86.not = icmp eq i32 %24, 0
  br i1 %tobool86.not, label %if.end88, label %sw.bb84.cleanup_crit_edge

sw.bb84.cleanup_crit_edge:                        ; preds = %sw.bb84
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end88:                                         ; preds = %sw.bb84
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %on)
  %tobool89.not = icmp eq i32 %on, 0
  br i1 %tobool89.not, label %if.end88.if.end98_crit_edge, label %if.then90

if.end88.if.end98_crit_edge:                      ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end98

if.then90:                                        ; preds = %if.end88
  %ptp_clock91 = getelementptr i8, ptr %ptp, i32 -4
  %25 = ptrtoint ptr %ptp_clock91 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ptp_clock91, align 8
  %index92 = getelementptr inbounds %struct.ptp_clock_request, ptr %rq, i32 0, i32 1, i32 0, i32 2
  %27 = ptrtoint ptr %index92 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %index92, align 8
  %call93 = tail call i32 @ptp_find_pin(ptr noundef %26, i32 noundef 2, i32 noundef %28) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call93)
  %cmp94 = icmp slt i32 %call93, 0
  br i1 %cmp94, label %if.then90.cleanup_crit_edge, label %if.then90.if.end98_crit_edge

if.then90.if.end98_crit_edge:                     ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end98

if.then90.cleanup_crit_edge:                      ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end98:                                         ; preds = %if.then90.if.end98_crit_edge, %if.end88.if.end98_crit_edge
  %pin.1 = phi i32 [ %call93, %if.then90.if.end98_crit_edge ], [ -1, %if.end88.if.end98_crit_edge ]
  %period = getelementptr inbounds %struct.ptp_clock_request, ptr %rq, i32 0, i32 1, i32 0, i32 1
  %29 = ptrtoint ptr %period to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %period, align 8
  %nsec = getelementptr inbounds %struct.ptp_clock_request, ptr %rq, i32 0, i32 1, i32 0, i32 1, i32 1
  %31 = ptrtoint ptr %nsec to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %nsec, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 9223372035, i64 %30)
  %cmp.i = icmp sgt i64 %30, 9223372035
  br i1 %cmp.i, label %if.end98.timespec64_to_ns.exit_crit_edge, label %if.end.i

if.end98.timespec64_to_ns.exit_crit_edge:         ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #11
  br label %timespec64_to_ns.exit

if.end.i:                                         ; preds = %if.end98
  call void @__sanitizer_cov_trace_const_cmp8(i64 -9223372035, i64 %30)
  %cmp2.i = icmp slt i64 %30, -9223372035
  br i1 %cmp2.i, label %if.end.i.timespec64_to_ns.exit_crit_edge, label %if.end4.i

if.end.i.timespec64_to_ns.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %timespec64_to_ns.exit

if.end4.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %mul.i = mul nsw i64 %30, 1000000000
  %conv.i = sext i32 %32 to i64
  %add.i = add i64 %mul.i, %conv.i
  br label %timespec64_to_ns.exit

timespec64_to_ns.exit:                            ; preds = %if.end4.i, %if.end.i.timespec64_to_ns.exit_crit_edge, %if.end98.timespec64_to_ns.exit_crit_edge
  %retval.0.i = phi i64 [ %add.i, %if.end4.i ], [ 9223372036854775807, %if.end98.timespec64_to_ns.exit_crit_edge ], [ -9223372036854775808, %if.end.i.timespec64_to_ns.exit_crit_edge ]
  %shr = ashr i64 %retval.0.i, 1
  br i1 %tobool89.not, label %timespec64_to_ns.exit.if.end118_crit_edge, label %land.lhs.true102

timespec64_to_ns.exit.if.end118_crit_edge:        ; preds = %timespec64_to_ns.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end118

land.lhs.true102:                                 ; preds = %timespec64_to_ns.exit
  %retval.0.i.fr = freeze i64 %retval.0.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 140000002, i64 %retval.0.i.fr)
  %cmp103 = icmp slt i64 %retval.0.i.fr, 140000002
  br i1 %cmp103, label %if.then113, label %switch.early.test

switch.early.test:                                ; preds = %land.lhs.true102
  call void @__sanitizer_cov_trace_switch(i64 %shr, ptr @__sancov_gen_cov_switch_values.40)
  switch i64 %shr, label %switch.early.test.if.end118_crit_edge [
    i64 500000000, label %switch.early.test.if.then113.thread_crit_edge
    i64 250000000, label %switch.early.test.if.then113.thread_crit_edge489
    i64 125000000, label %switch.early.test.if.then113.thread_crit_edge490
  ]

switch.early.test.if.then113.thread_crit_edge490: ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then113.thread

switch.early.test.if.then113.thread_crit_edge489: ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then113.thread

switch.early.test.if.then113.thread_crit_edge:    ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then113.thread

switch.early.test.if.end118_crit_edge:            ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end118

if.then113.thread:                                ; preds = %switch.early.test.if.then113.thread_crit_edge, %switch.early.test.if.then113.thread_crit_edge489, %switch.early.test.if.then113.thread_crit_edge490
  br label %if.end118

if.then113:                                       ; preds = %land.lhs.true102
  call void @__sanitizer_cov_trace_const_cmp8(i64 16, i64 %retval.0.i.fr)
  %cmp114 = icmp slt i64 %retval.0.i.fr, 16
  br i1 %cmp114, label %if.then113.cleanup_crit_edge, label %if.then113.if.end118_crit_edge

if.then113.if.end118_crit_edge:                   ; preds = %if.then113
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end118

if.then113.cleanup_crit_edge:                     ; preds = %if.then113
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end118:                                        ; preds = %if.then113.if.end118_crit_edge, %if.then113.thread, %switch.early.test.if.end118_crit_edge, %timespec64_to_ns.exit.if.end118_crit_edge
  %tobool129.not = phi i1 [ true, %timespec64_to_ns.exit.if.end118_crit_edge ], [ true, %switch.early.test.if.end118_crit_edge ], [ false, %if.then113.if.end118_crit_edge ], [ false, %if.then113.thread ]
  %use_freq.0 = phi i32 [ 0, %timespec64_to_ns.exit.if.end118_crit_edge ], [ 0, %switch.early.test.if.end118_crit_edge ], [ 1, %if.then113.if.end118_crit_edge ], [ 1, %if.then113.thread ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp119) #9
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %tmp119, i64 noundef %shr) #9
  %33 = ptrtoint ptr %tmp119 to i32
  call void @__asan_load8_noabort(i32 %33)
  %ts.sroa.0.0.copyload484 = load i64, ptr %tmp119, align 8
  %ts.sroa.7.0.tmp119.sroa_idx = getelementptr inbounds i8, ptr %tmp119, i32 8
  %34 = ptrtoint ptr %ts.sroa.7.0.tmp119.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %34)
  %ts.sroa.7.0.copyload485 = load i32, ptr %ts.sroa.7.0.tmp119.sroa_idx, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp119) #9
  %index120 = getelementptr inbounds %struct.ptp_clock_request, ptr %rq, i32 0, i32 1, i32 0, i32 2
  %35 = ptrtoint ptr %index120 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %index120, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %36)
  %cmp121 = icmp eq i32 %36, 1
  br i1 %cmp121, label %if.then123, label %if.else128

if.then123:                                       ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #11
  %.479 = select i1 %tobool129.not, i32 16, i32 0
  %.480 = select i1 %tobool129.not, i32 2, i32 160
  br label %do.body135

if.else128:                                       ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #11
  %.481 = select i1 %tobool129.not, i32 8, i32 0
  %.482 = select i1 %tobool129.not, i32 1, i32 20
  br label %do.body135

do.body135:                                       ; preds = %if.else128, %if.then123
  %freqout.0 = phi i32 [ 46680, %if.then123 ], [ 46676, %if.else128 ]
  %trgttimh.0 = phi i32 [ 46672, %if.then123 ], [ 46664, %if.else128 ]
  %trgttiml.0 = phi i32 [ 46668, %if.then123 ], [ 46660, %if.else128 ]
  %tsim_mask.3 = phi i32 [ %.479, %if.then123 ], [ %.481, %if.else128 ]
  %tsauxc_mask.3 = phi i32 [ %.480, %if.then123 ], [ %.482, %if.else128 ]
  %tmreg_lock141 = getelementptr i8, ptr %ptp, i32 284
  %call143 = call i32 @_raw_spin_lock_irqsave(ptr noundef %tmreg_lock141) #9
  %call148 = call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 46656) #9
  %call149 = call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 46708) #9
  %37 = ptrtoint ptr %index120 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %index120, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %38)
  %cmp151 = icmp eq i32 %38, 1
  %tsim.1.v = select i1 %cmp151, i32 -17, i32 -9
  %tsim.1 = and i32 %tsim.1.v, %call149
  %tsauxc.1.v = select i1 %cmp151, i32 -163, i32 -22
  %tsauxc.1 = and i32 %tsauxc.1.v, %call148
  br i1 %tobool89.not, label %do.body135.do.body263_crit_edge, label %if.then161

do.body135.do.body263_crit_edge:                  ; preds = %do.body135
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body263

if.then161:                                       ; preds = %do.body135
  call fastcc void @igb_pin_perout(ptr noundef %add.ptr, i32 noundef %38, i32 noundef %pin.1, i32 noundef %use_freq.0)
  %39 = ptrtoint ptr %22 to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %22, align 8
  %perout = getelementptr i8, ptr %ptp, i32 796
  %arrayidx164 = getelementptr [2 x %struct.anon.133], ptr %perout, i32 0, i32 %38
  %41 = ptrtoint ptr %arrayidx164 to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 %40, ptr %arrayidx164, align 8
  %nsec166 = getelementptr inbounds %struct.ptp_clock_request, ptr %rq, i32 0, i32 1, i32 0, i32 0, i32 0, i32 1
  %42 = ptrtoint ptr %nsec166 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %nsec166, align 8
  %tv_nsec170 = getelementptr inbounds %struct.timespec64, ptr %arrayidx164, i32 0, i32 1
  %44 = ptrtoint ptr %tv_nsec170 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %tv_nsec170, align 8
  %period174 = getelementptr inbounds %struct.anon.133, ptr %arrayidx164, i32 0, i32 1
  %45 = ptrtoint ptr %period174 to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 %ts.sroa.0.0.copyload484, ptr %period174, align 8
  %tv_nsec180 = getelementptr inbounds %struct.anon.133, ptr %arrayidx164, i32 0, i32 1, i32 1
  %46 = ptrtoint ptr %tv_nsec180 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %ts.sroa.7.0.copyload485, ptr %tv_nsec180, align 8
  %hw_addr187 = getelementptr i8, ptr %ptp, i32 -2632
  %47 = ptrtoint ptr %hw_addr187 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile ptr, ptr %hw_addr187, align 4
  %tobool188.not = icmp eq ptr %48, null
  br i1 %tobool188.not, label %if.then161.if.end204_crit_edge, label %do.body198, !prof !103

if.then161.if.end204_crit_edge:                   ; preds = %if.then161
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end204

do.body198:                                       ; preds = %if.then161
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !132
  call void @arm_heavy_mb() #9
  %49 = ptrtoint ptr %22 to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %22, align 8
  %conv202 = trunc i64 %50 to i32
  %51 = call i32 @llvm.bswap.i32(i32 %conv202)
  %arrayidx203 = getelementptr i8, ptr %48, i32 %trgttimh.0
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx203, i32 %51) #9, !srcloc !105
  br label %if.end204

if.end204:                                        ; preds = %do.body198, %if.then161.if.end204_crit_edge
  %52 = ptrtoint ptr %hw_addr187 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile ptr, ptr %hw_addr187, align 4
  %tobool214.not = icmp eq ptr %53, null
  br i1 %tobool214.not, label %if.end204.if.end229_crit_edge, label %do.body224, !prof !103

if.end204.if.end229_crit_edge:                    ; preds = %if.end204
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end229

do.body224:                                       ; preds = %if.end204
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !133
  call void @arm_heavy_mb() #9
  %54 = ptrtoint ptr %nsec166 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %nsec166, align 8
  %56 = call i32 @llvm.bswap.i32(i32 %55)
  %arrayidx228 = getelementptr i8, ptr %53, i32 %trgttiml.0
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx228, i32 %56) #9, !srcloc !105
  br label %if.end229

if.end229:                                        ; preds = %do.body224, %if.end204.if.end229_crit_edge
  br i1 %tobool129.not, label %if.end229.if.end259_crit_edge, label %do.body234

if.end229.if.end259_crit_edge:                    ; preds = %if.end229
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end259

do.body234:                                       ; preds = %if.end229
  %57 = ptrtoint ptr %hw_addr187 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load volatile ptr, ptr %hw_addr187, align 4
  %tobool241.not = icmp eq ptr %58, null
  br i1 %tobool241.not, label %do.body234.if.end259_crit_edge, label %do.body251, !prof !103

do.body234.if.end259_crit_edge:                   ; preds = %do.body234
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end259

do.body251:                                       ; preds = %do.body234
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !134
  call void @arm_heavy_mb() #9
  %conv254 = trunc i64 %shr to i32
  %59 = call i32 @llvm.bswap.i32(i32 %conv254)
  %arrayidx255 = getelementptr i8, ptr %58, i32 %freqout.0
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx255, i32 %59) #9, !srcloc !105
  br label %if.end259

if.end259:                                        ; preds = %do.body251, %do.body234.if.end259_crit_edge, %if.end229.if.end259_crit_edge
  %or260 = or i32 %tsauxc.1, %tsauxc_mask.3
  %or261 = or i32 %tsim.1, %tsim_mask.3
  br label %do.body263

do.body263:                                       ; preds = %if.end259, %do.body135.do.body263_crit_edge
  %tsim.2 = phi i32 [ %or261, %if.end259 ], [ %tsim.1, %do.body135.do.body263_crit_edge ]
  %tsauxc.2 = phi i32 [ %or260, %if.end259 ], [ %tsauxc.1, %do.body135.do.body263_crit_edge ]
  %hw_addr269 = getelementptr i8, ptr %ptp, i32 -2632
  %60 = ptrtoint ptr %hw_addr269 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load volatile ptr, ptr %hw_addr269, align 4
  %tobool270.not = icmp eq ptr %61, null
  br i1 %tobool270.not, label %do.body263.if.end284_crit_edge, label %do.body280, !prof !103

do.body263.if.end284_crit_edge:                   ; preds = %do.body263
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end284

do.body280:                                       ; preds = %do.body263
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !135
  call void @arm_heavy_mb() #9
  %62 = call i32 @llvm.bswap.i32(i32 %tsauxc.2)
  %arrayidx283 = getelementptr i8, ptr %61, i32 46656
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx283, i32 %62) #9, !srcloc !105
  br label %if.end284

if.end284:                                        ; preds = %do.body280, %do.body263.if.end284_crit_edge
  %63 = ptrtoint ptr %hw_addr269 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load volatile ptr, ptr %hw_addr269, align 4
  %tobool294.not = icmp eq ptr %64, null
  br i1 %tobool294.not, label %if.end284.if.end308_crit_edge, label %do.body304, !prof !103

if.end284.if.end308_crit_edge:                    ; preds = %if.end284
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end308

do.body304:                                       ; preds = %if.end284
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !136
  call void @arm_heavy_mb() #9
  %65 = call i32 @llvm.bswap.i32(i32 %tsim.2)
  %arrayidx307 = getelementptr i8, ptr %64, i32 46708
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx307, i32 %65) #9, !srcloc !105
  br label %if.end308

if.end308:                                        ; preds = %do.body304, %if.end284.if.end308_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %tmreg_lock141, i32 noundef %call143) #9
  br label %cleanup

do.body314:                                       ; preds = %entry
  %tmreg_lock320 = getelementptr i8, ptr %ptp, i32 284
  %call322 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %tmreg_lock320) #9
  %call327 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 46708) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %on)
  %tobool328 = icmp ne i32 %on, 0
  %pps_sys_wrap_on = getelementptr i8, ptr %ptp, i32 408
  %frombool = zext i1 %tobool328 to i8
  %66 = ptrtoint ptr %pps_sys_wrap_on to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %frombool, ptr %pps_sys_wrap_on, align 4
  %hw_addr345 = getelementptr i8, ptr %ptp, i32 -2632
  %67 = ptrtoint ptr %hw_addr345 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load volatile ptr, ptr %hw_addr345, align 4
  %tobool346.not = icmp eq ptr %68, null
  br i1 %tobool346.not, label %do.body314.if.end360_crit_edge, label %do.body356, !prof !103

do.body314.if.end360_crit_edge:                   ; preds = %do.body314
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end360

do.body356:                                       ; preds = %do.body314
  call void @__sanitizer_cov_trace_pc() #11
  %and332 = and i32 %call327, -2
  %masksel = zext i1 %tobool328 to i32
  %tsim.3 = or i32 %and332, %masksel
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !137
  tail call void @arm_heavy_mb() #9
  %69 = tail call i32 @llvm.bswap.i32(i32 %tsim.3)
  %arrayidx359 = getelementptr i8, ptr %68, i32 46708
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx359, i32 %69) #9, !srcloc !105
  br label %if.end360

if.end360:                                        ; preds = %do.body356, %do.body314.if.end360_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %tmreg_lock320, i32 noundef %call322) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end360, %if.end308, %if.then113.cleanup_crit_edge, %if.then90.cleanup_crit_edge, %sw.bb84.cleanup_crit_edge, %if.end80, %if.then15.cleanup_crit_edge, %if.end.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end360 ], [ 0, %if.end308 ], [ 0, %if.end80 ], [ -95, %sw.bb.cleanup_crit_edge ], [ -95, %if.end.cleanup_crit_edge ], [ -16, %if.then15.cleanup_crit_edge ], [ -95, %sw.bb84.cleanup_crit_edge ], [ -16, %if.then90.cleanup_crit_edge ], [ -22, %if.then113.cleanup_crit_edge ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @igb_ptp_tx_work(ptr noundef %work) #0 align 64 {
entry:
  %shhwtstamps.i = alloca %struct.skb_shared_hwtstamps, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr i8, ptr %work, i32 -2844
  %ptp_tx_skb = getelementptr i8, ptr %work, i32 44
  %0 = ptrtoint ptr %ptp_tx_skb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ptp_tx_skb, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %ptp_tx_start = getelementptr i8, ptr %work, i32 60
  %2 = ptrtoint ptr %ptp_tx_start to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ptp_tx_start, align 8
  %add = add i32 %3, 1500
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %4 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %if.then2, label %if.end5

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %1, i32 noundef 1) #9
  %5 = ptrtoint ptr %ptp_tx_skb to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %ptp_tx_skb, align 8
  %state = getelementptr i8, ptr %work, i32 -3604
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %state, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !94
  tail call void @llvm.prefetch.p0(ptr %state, i32 1, i32 3, i32 1) #9
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %state, ptr %state, i32 8, ptr elementtype(i32) %state) #9, !srcloc !95
  %tx_hwtstamp_timeouts = getelementptr i8, ptr %work, i32 188
  %7 = ptrtoint ptr %tx_hwtstamp_timeouts to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %tx_hwtstamp_timeouts, align 8
  %inc = add i32 %8, 1
  store i32 %inc, ptr %tx_hwtstamp_timeouts, align 8
  %call = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 46620) #9
  %pdev = getelementptr i8, ptr %work, i32 -3084
  %9 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pdev, align 16
  %dev = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.5) #12
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call6 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 46612) #9
  %and = and i32 %call6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %if.else, label %if.then8

if.then8:                                         ; preds = %if.end5
  %11 = ptrtoint ptr %ptp_tx_skb to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ptp_tx_skb, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %shhwtstamps.i) #9
  %13 = ptrtoint ptr %shhwtstamps.i to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 -1, ptr %shhwtstamps.i, align 8, !annotation !97
  %call.i = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 46616) #9
  %conv.i = zext i32 %call.i to i64
  %call2.i = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 46620) #9
  %conv3.i = zext i32 %call2.i to i64
  %type.i.i = getelementptr i8, ptr %work, i32 -2764
  %14 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %type.i.i, align 16
  %16 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.41)
  switch i32 %15, label %if.then8.igb_ptp_systim_to_hwtstamp.exit.i_crit_edge [
    i32 2, label %if.then8.do.body1.i.i_crit_edge
    i32 3, label %if.then8.do.body1.i.i_crit_edge24
    i32 5, label %if.then8.do.body1.i.i_crit_edge25
    i32 4, label %if.then8.do.body1.i.i_crit_edge26
    i32 6, label %if.then8.sw.bb8.i.i_crit_edge
    i32 7, label %if.then8.sw.bb8.i.i_crit_edge27
  ]

if.then8.sw.bb8.i.i_crit_edge27:                  ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb8.i.i

if.then8.sw.bb8.i.i_crit_edge:                    ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb8.i.i

if.then8.do.body1.i.i_crit_edge26:                ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body1.i.i

if.then8.do.body1.i.i_crit_edge25:                ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body1.i.i

if.then8.do.body1.i.i_crit_edge24:                ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body1.i.i

if.then8.do.body1.i.i_crit_edge:                  ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body1.i.i

if.then8.igb_ptp_systim_to_hwtstamp.exit.i_crit_edge: ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  br label %igb_ptp_systim_to_hwtstamp.exit.i

do.body1.i.i:                                     ; preds = %if.then8.do.body1.i.i_crit_edge, %if.then8.do.body1.i.i_crit_edge24, %if.then8.do.body1.i.i_crit_edge25, %if.then8.do.body1.i.i_crit_edge26
  %shl.i = shl nuw i64 %conv3.i, 32
  %or.i = or i64 %shl.i, %conv.i
  %tmreg_lock.i.i = getelementptr i8, ptr %work, i32 76
  %call2.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %tmreg_lock.i.i) #9
  %tc.i.i = getelementptr i8, ptr %work, i32 148
  %call5.i.i = tail call i64 @timecounter_cyc2time(ptr noundef %tc.i.i, i64 noundef %or.i) #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %tmreg_lock.i.i, i32 noundef %call2.i.i) #9
  br label %sw.epilog.sink.split.i.i

sw.bb8.i.i:                                       ; preds = %if.then8.sw.bb8.i.i_crit_edge, %if.then8.sw.bb8.i.i_crit_edge27
  %mul.i.i.i = mul nuw nsw i64 %conv3.i, 1000000000
  %add.i.i.i = add nuw nsw i64 %mul.i.i.i, %conv.i
  br label %sw.epilog.sink.split.i.i

sw.epilog.sink.split.i.i:                         ; preds = %sw.bb8.i.i, %do.body1.i.i
  %add.i.sink.i.i = phi i64 [ %add.i.i.i, %sw.bb8.i.i ], [ %call5.i.i, %do.body1.i.i ]
  %17 = ptrtoint ptr %shhwtstamps.i to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %add.i.sink.i.i, ptr %shhwtstamps.i, align 8
  %18 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %.pr.i = load i32, ptr %type.i.i, align 16
  br label %igb_ptp_systim_to_hwtstamp.exit.i

igb_ptp_systim_to_hwtstamp.exit.i:                ; preds = %sw.epilog.sink.split.i.i, %if.then8.igb_ptp_systim_to_hwtstamp.exit.i_crit_edge
  %19 = phi i32 [ %15, %if.then8.igb_ptp_systim_to_hwtstamp.exit.i_crit_edge ], [ %.pr.i, %sw.epilog.sink.split.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %19)
  %cmp.i = icmp eq i32 %19, 6
  br i1 %cmp.i, label %if.then.i, label %igb_ptp_systim_to_hwtstamp.exit.i.igb_ptp_tx_hwtstamp.exit_crit_edge

igb_ptp_systim_to_hwtstamp.exit.i.igb_ptp_tx_hwtstamp.exit_crit_edge: ; preds = %igb_ptp_systim_to_hwtstamp.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %igb_ptp_tx_hwtstamp.exit

if.then.i:                                        ; preds = %igb_ptp_systim_to_hwtstamp.exit.i
  %link_speed.i = getelementptr i8, ptr %work, i32 -3236
  %20 = ptrtoint ptr %link_speed.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %link_speed.i, align 8
  %22 = zext i16 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.42)
  switch i16 %21, label %if.then.i.igb_ptp_tx_hwtstamp.exit_crit_edge [
    i16 10, label %sw.bb.i
    i16 100, label %sw.bb7.i
    i16 1000, label %sw.bb8.i
  ]

if.then.i.igb_ptp_tx_hwtstamp.exit_crit_edge:     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %igb_ptp_tx_hwtstamp.exit

sw.bb.i:                                          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %igb_ptp_tx_hwtstamp.exit

sw.bb7.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %igb_ptp_tx_hwtstamp.exit

sw.bb8.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %igb_ptp_tx_hwtstamp.exit

igb_ptp_tx_hwtstamp.exit:                         ; preds = %sw.bb8.i, %sw.bb7.i, %sw.bb.i, %if.then.i.igb_ptp_tx_hwtstamp.exit_crit_edge, %igb_ptp_systim_to_hwtstamp.exit.i.igb_ptp_tx_hwtstamp.exit_crit_edge
  %adjust.0.i = phi i32 [ 0, %if.then.i.igb_ptp_tx_hwtstamp.exit_crit_edge ], [ 178, %sw.bb8.i ], [ 1024, %sw.bb7.i ], [ 9542, %sw.bb.i ], [ 0, %igb_ptp_systim_to_hwtstamp.exit.i.igb_ptp_tx_hwtstamp.exit_crit_edge ]
  %23 = ptrtoint ptr %shhwtstamps.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %shhwtstamps.i, align 8
  %25 = zext i32 %adjust.0.i to i64
  %add.i = add i64 %24, %25
  store i64 %add.i, ptr %shhwtstamps.i, align 8
  %26 = ptrtoint ptr %ptp_tx_skb to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %ptp_tx_skb, align 8
  %state.i = getelementptr i8, ptr %work, i32 -3604
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %state.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !94
  tail call void @llvm.prefetch.p0(ptr %state.i, i32 1, i32 3, i32 1) #9
  %27 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %state.i, ptr %state.i, i32 8, ptr elementtype(i32) %state.i) #9, !srcloc !95
  call void @skb_tstamp_tx(ptr noundef %12, ptr noundef nonnull %shhwtstamps.i) #9
  call void @__dev_kfree_skb_any(ptr noundef %12, i32 noundef 1) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %shhwtstamps.i) #9
  br label %cleanup

if.else:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %28 = load ptr, ptr @system_wq, align 4
  %call.i.i23 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %28, ptr noundef %work) #9
  br label %cleanup

cleanup:                                          ; preds = %if.else, %igb_ptp_tx_hwtstamp.exit, %if.then2, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @igb_ptp_overflow_check(ptr noundef %work) #0 align 64 {
entry:
  %tmp1 = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tc = getelementptr i8, ptr %work, i32 248
  %call = tail call i64 @timecounter_read(ptr noundef %tc) #9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp1) #9
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %tmp1, i64 noundef %call) #9
  %0 = ptrtoint ptr %tmp1 to i32
  call void @__asan_load8_noabort(i32 %0)
  %ts.sroa.0.0.copyload7 = load i64, ptr %tmp1, align 8
  %ts.sroa.5.0.tmp1.sroa_idx = getelementptr inbounds i8, ptr %tmp1, i32 8
  %1 = ptrtoint ptr %ts.sroa.5.0.tmp1.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %1)
  %ts.sroa.5.0.copyload8 = load i32, ptr %ts.sroa.5.0.tmp1.sroa_idx, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp1) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @igb_ptp_overflow_check.__UNIQUE_ID_ddebug409, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@igb_ptp_overflow_check, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !138

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @igb_ptp_overflow_check.__UNIQUE_ID_ddebug409, ptr noundef nonnull @.str.30, i64 noundef %ts.sroa.0.0.copyload7, i32 noundef %ts.sroa.5.0.copyload8) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %2 = load ptr, ptr @system_wq, align 4
  %call.i.i = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %2, ptr noundef %work, i32 noundef 36000) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @igb_ptp_reset(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  %ts = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr inbounds %struct.igb_adapter, ptr %adapter, i32 0, i32 37
  %tstamp_config = getelementptr inbounds %struct.igb_adapter, ptr %adapter, i32 0, i32 61
  %call = tail call fastcc i32 @igb_ptp_set_timestamp_mode(ptr noundef %adapter, ptr noundef %tstamp_config)
  %tmreg_lock = getelementptr inbounds %struct.igb_adapter, ptr %adapter, i32 0, i32 66
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %tmreg_lock) #9
  %type = getelementptr inbounds %struct.igb_adapter, ptr %adapter, i32 0, i32 37, i32 4, i32 3
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 16
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.43)
  switch i32 %1, label %entry.out_crit_edge [
    i32 2, label %do.body8
    i32 3, label %entry.do.body23_crit_edge
    i32 5, label %entry.do.body23_crit_edge164
    i32 4, label %entry.do.body23_crit_edge165
    i32 6, label %entry.do.body23_crit_edge166
    i32 7, label %entry.do.body23_crit_edge167
  ]

entry.do.body23_crit_edge167:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body23

entry.do.body23_crit_edge166:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body23

entry.do.body23_crit_edge165:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body23

entry.do.body23_crit_edge164:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body23

entry.do.body23_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body23

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

do.body8:                                         ; preds = %entry
  %hw_addr13 = getelementptr inbounds %struct.igb_adapter, ptr %adapter, i32 0, i32 37, i32 1
  %3 = ptrtoint ptr %hw_addr13 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %hw_addr13, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %do.body8.sw.epilog_crit_edge, label %do.body17, !prof !103

do.body8.sw.epilog_crit_edge:                     ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

do.body17:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !139
  tail call void @arm_heavy_mb() #9
  %arrayidx = getelementptr i8, ptr %4, i32 46600
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx, i32 32769) #9, !srcloc !105
  br label %sw.epilog

do.body23:                                        ; preds = %entry.do.body23_crit_edge, %entry.do.body23_crit_edge164, %entry.do.body23_crit_edge165, %entry.do.body23_crit_edge166, %entry.do.body23_crit_edge167
  %hw_addr29 = getelementptr inbounds %struct.igb_adapter, ptr %adapter, i32 0, i32 37, i32 1
  %5 = ptrtoint ptr %hw_addr29 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %hw_addr29, align 4
  %tobool30.not = icmp eq ptr %6, null
  br i1 %tobool30.not, label %do.body23.if.end44_crit_edge, label %do.body40, !prof !103

do.body23.if.end44_crit_edge:                     ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end44

do.body40:                                        ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !140
  tail call void @arm_heavy_mb() #9
  %arrayidx43 = getelementptr i8, ptr %6, i32 46656
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx43, i32 0) #9, !srcloc !105
  br label %if.end44

if.end44:                                         ; preds = %do.body40, %do.body23.if.end44_crit_edge
  %7 = ptrtoint ptr %hw_addr29 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %hw_addr29, align 4
  %tobool54.not = icmp eq ptr %8, null
  br i1 %tobool54.not, label %if.end44.if.end68_crit_edge, label %do.body64, !prof !103

if.end44.if.end68_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end68

do.body64:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !141
  tail call void @arm_heavy_mb() #9
  %arrayidx67 = getelementptr i8, ptr %8, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx67, i32 0) #9, !srcloc !105
  br label %if.end68

if.end68:                                         ; preds = %do.body64, %if.end44.if.end68_crit_edge
  %9 = ptrtoint ptr %hw_addr29 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %hw_addr29, align 4
  %tobool78.not = icmp eq ptr %10, null
  br i1 %tobool78.not, label %if.end68.if.end94_crit_edge, label %do.body88, !prof !103

if.end68.if.end94_crit_edge:                      ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end94

do.body88:                                        ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !142
  tail call void @arm_heavy_mb() #9
  %pps_sys_wrap_on = getelementptr inbounds %struct.igb_adapter, ptr %adapter, i32 0, i32 72
  %11 = ptrtoint ptr %pps_sys_wrap_on to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %pps_sys_wrap_on, align 4, !range !143
  %13 = or i8 %12, 2
  %or = zext i8 %13 to i32
  %14 = shl nuw nsw i32 %or, 24
  %arrayidx93 = getelementptr i8, ptr %10, i32 46708
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx93, i32 %14) #9, !srcloc !105
  br label %if.end94

if.end94:                                         ; preds = %do.body88, %if.end68.if.end94_crit_edge
  %15 = ptrtoint ptr %hw_addr29 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %hw_addr29, align 4
  %tobool104.not = icmp eq ptr %16, null
  br i1 %tobool104.not, label %if.end94.sw.epilog_crit_edge, label %do.body114, !prof !103

if.end94.sw.epilog_crit_edge:                     ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

do.body114:                                       ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !144
  tail call void @arm_heavy_mb() #9
  %arrayidx117 = getelementptr i8, ptr %16, i32 208
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx117, i32 2048) #9, !srcloc !105
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.body114, %if.end94.sw.epilog_crit_edge, %do.body17, %do.body8.sw.epilog_crit_edge
  %17 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %type, align 4
  %19 = and i32 %18, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %19)
  %switch = icmp eq i32 %19, 6
  br i1 %switch, label %if.then129, label %if.else

if.then129:                                       ; preds = %sw.epilog
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ts) #9
  %20 = call ptr @memset(ptr %ts, i32 255, i32 16)
  %call.i = tail call i64 @ktime_get_with_offset(i32 noundef 0) #9
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %ts, i64 noundef %call.i) #9
  %hw_addr3.i = getelementptr inbounds %struct.igb_adapter, ptr %adapter, i32 0, i32 37, i32 1
  %21 = ptrtoint ptr %hw_addr3.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile ptr, ptr %hw_addr3.i, align 4
  %tobool.not.i = icmp eq ptr %22, null
  br i1 %tobool.not.i, label %if.then129.if.end.i_crit_edge, label %do.body7.i, !prof !103

if.then129.if.end.i_crit_edge:                    ; preds = %if.then129
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

do.body7.i:                                       ; preds = %if.then129
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !128
  call void @arm_heavy_mb() #9
  %tv_nsec.i = getelementptr inbounds %struct.timespec64, ptr %ts, i32 0, i32 1
  %23 = ptrtoint ptr %tv_nsec.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %tv_nsec.i, align 8
  %25 = call i32 @llvm.bswap.i32(i32 %24) #9
  %arrayidx.i = getelementptr i8, ptr %22, i32 46592
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i, i32 %25) #9, !srcloc !105
  br label %if.end.i

if.end.i:                                         ; preds = %do.body7.i, %if.then129.if.end.i_crit_edge
  %26 = ptrtoint ptr %hw_addr3.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile ptr, ptr %hw_addr3.i, align 4
  %tobool19.not.i = icmp eq ptr %27, null
  br i1 %tobool19.not.i, label %if.end.i.igb_ptp_write_i210.exit_crit_edge, label %do.body29.i, !prof !103

if.end.i.igb_ptp_write_i210.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %igb_ptp_write_i210.exit

do.body29.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !129
  call void @arm_heavy_mb() #9
  %28 = ptrtoint ptr %ts to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %ts, align 8
  %conv.i = trunc i64 %29 to i32
  %30 = call i32 @llvm.bswap.i32(i32 %conv.i) #9
  %arrayidx32.i = getelementptr i8, ptr %27, i32 46596
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx32.i, i32 %30) #9, !srcloc !105
  br label %igb_ptp_write_i210.exit

igb_ptp_write_i210.exit:                          ; preds = %do.body29.i, %if.end.i.igb_ptp_write_i210.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ts) #9
  br label %out

if.else:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %tc = getelementptr inbounds %struct.igb_adapter, ptr %adapter, i32 0, i32 68
  %cc = getelementptr inbounds %struct.igb_adapter, ptr %adapter, i32 0, i32 67
  %call.i163 = tail call i64 @ktime_get_with_offset(i32 noundef 0) #9
  tail call void @timecounter_init(ptr noundef %tc, ptr noundef %cc, i64 noundef %call.i163) #9
  br label %out

out:                                              ; preds = %if.else, %igb_ptp_write_i210.exit, %entry.out_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %tmreg_lock, i32 noundef %call4) #9
  %call135 = call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 8) #9
  %ptp_flags = getelementptr inbounds %struct.igb_adapter, ptr %adapter, i32 0, i32 65
  %31 = ptrtoint ptr %ptp_flags to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %ptp_flags, align 4
  %and = and i32 %32, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool136.not = icmp eq i32 %and, 0
  br i1 %tobool136.not, label %out.if.end139_crit_edge, label %if.then137

out.if.end139_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end139

if.then137:                                       ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  %ptp_overflow_work = getelementptr inbounds %struct.igb_adapter, ptr %adapter, i32 0, i32 58
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %33 = load ptr, ptr @system_wq, align 4
  %call.i.i = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %33, ptr noundef %ptp_overflow_work, i32 noundef 36000) #9
  br label %if.end139

if.end139:                                        ; preds = %if.then137, %out.if.end139_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ptp_clock_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @igb_ptp_suspend(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ptp_flags = getelementptr inbounds %struct.igb_adapter, ptr %adapter, i32 0, i32 65
  %0 = ptrtoint ptr %ptp_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ptp_flags, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end11_crit_edge, label %if.end

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.end:                                           ; preds = %entry
  %and2 = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.end.if.end5_crit_edge, label %if.then4

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %ptp_overflow_work = getelementptr inbounds %struct.igb_adapter, ptr %adapter, i32 0, i32 58
  %call = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %ptp_overflow_work) #9
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end.if.end5_crit_edge
  %ptp_tx_work = getelementptr inbounds %struct.igb_adapter, ptr %adapter, i32 0, i32 59
  %call6 = tail call zeroext i1 @cancel_work_sync(ptr noundef %ptp_tx_work) #9
  %ptp_tx_skb = getelementptr inbounds %struct.igb_adapter, ptr %adapter, i32 0, i32 60
  %2 = ptrtoint ptr %ptp_tx_skb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ptp_tx_skb, align 8
  %tobool7.not = icmp eq ptr %3, null
  br i1 %tobool7.not, label %if.end5.if.end11_crit_edge, label %if.then8

if.end5.if.end11_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %3, i32 noundef 1) #9
  %4 = ptrtoint ptr %ptp_tx_skb to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %ptp_tx_skb, align 8
  %state = getelementptr inbounds %struct.igb_adapter, ptr %adapter, i32 0, i32 3
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %state, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !94
  tail call void @llvm.prefetch.p0(ptr %state, i32 1, i32 3, i32 1) #9
  %5 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %state, ptr %state, i32 8, ptr elementtype(i32) %state) #9, !srcloc !95
  br label %if.end11

if.end11:                                         ; preds = %if.then8, %if.end5.if.end11_crit_edge, %entry.if.end11_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @igb_ptp_stop(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ptp_flags.i = getelementptr inbounds %struct.igb_adapter, ptr %adapter, i32 0, i32 65
  %0 = ptrtoint ptr %ptp_flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ptp_flags.i, align 4
  %and.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.igb_ptp_suspend.exit_crit_edge, label %if.end.i

entry.igb_ptp_suspend.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %igb_ptp_suspend.exit

if.end.i:                                         ; preds = %entry
  %and2.i = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp eq i32 %and2.i, 0
  br i1 %tobool3.not.i, label %if.end.i.if.end5.i_crit_edge, label %if.then4.i

if.end.i.if.end5.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %ptp_overflow_work.i = getelementptr inbounds %struct.igb_adapter, ptr %adapter, i32 0, i32 58
  %call.i = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %ptp_overflow_work.i) #9
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.then4.i, %if.end.i.if.end5.i_crit_edge
  %ptp_tx_work.i = getelementptr inbounds %struct.igb_adapter, ptr %adapter, i32 0, i32 59
  %call6.i = tail call zeroext i1 @cancel_work_sync(ptr noundef %ptp_tx_work.i) #9
  %ptp_tx_skb.i = getelementptr inbounds %struct.igb_adapter, ptr %adapter, i32 0, i32 60
  %2 = ptrtoint ptr %ptp_tx_skb.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ptp_tx_skb.i, align 8
  %tobool7.not.i = icmp eq ptr %3, null
  br i1 %tobool7.not.i, label %if.end5.i.igb_ptp_suspend.exit_crit_edge, label %if.then8.i

if.end5.i.igb_ptp_suspend.exit_crit_edge:         ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %igb_ptp_suspend.exit

if.then8.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %3, i32 noundef 1) #9
  %4 = ptrtoint ptr %ptp_tx_skb.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %ptp_tx_skb.i, align 8
  %state.i = getelementptr inbounds %struct.igb_adapter, ptr %adapter, i32 0, i32 3
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %state.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !94
  tail call void @llvm.prefetch.p0(ptr %state.i, i32 1, i32 3, i32 1) #9
  %5 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %state.i, ptr %state.i, i32 8, ptr elementtype(i32) %state.i) #9, !srcloc !95
  br label %igb_ptp_suspend.exit

igb_ptp_suspend.exit:                             ; preds = %if.then8.i, %if.end5.i.igb_ptp_suspend.exit_crit_edge, %entry.igb_ptp_suspend.exit_crit_edge
  %ptp_clock = getelementptr inbounds %struct.igb_adapter, ptr %adapter, i32 0, i32 56
  %6 = ptrtoint ptr %ptp_clock to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ptp_clock, align 8
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %igb_ptp_suspend.exit.if.end_crit_edge, label %if.then

igb_ptp_suspend.exit.if.end_crit_edge:            ; preds = %igb_ptp_suspend.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %igb_ptp_suspend.exit
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 @ptp_clock_unregister(ptr noundef nonnull %7) #9
  %pdev = getelementptr inbounds %struct.igb_adapter, ptr %adapter, i32 0, i32 34
  %8 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pdev, align 16
  %dev = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  %netdev = getelementptr inbounds %struct.igb_adapter, ptr %adapter, i32 0, i32 1
  %10 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %netdev, align 128
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.22, ptr noundef %11) #12
  %12 = ptrtoint ptr %ptp_flags.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ptp_flags.i, align 4
  %and = and i32 %13, -2
  store i32 %and, ptr %ptp_flags.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %igb_ptp_suspend.exit.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ptp_clock_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ns_to_timespec64(ptr sret(%struct.timespec64) align 8, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @timecounter_init(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

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
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @ktime_get_real_ts64(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ptp_find_pin(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @igb_pin_extts(ptr noundef %igb, i32 noundef %chan, i32 noundef %pin) unnamed_addr #0 align 64 {
entry:
  %ctrl = alloca i32, align 4
  %ctrl_ext = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr inbounds %struct.igb_adapter, ptr %igb, i32 0, i32 37
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ctrl)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ctrl_ext)
  %call = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 0) #9
  %0 = ptrtoint ptr %ctrl to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %call, ptr %ctrl, align 4
  %call2 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 24) #9
  %1 = ptrtoint ptr %ctrl_ext to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %call2, ptr %ctrl_ext, align 4
  %call3 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 60) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %pin)
  %cmp.i = icmp slt i32 %pin, 2
  %ctrl.ctrl_ext.i = select i1 %cmp.i, ptr %ctrl, ptr %ctrl_ext
  %arrayidx1.i = getelementptr [4 x i32], ptr @igb_pin_direction.mask, i32 0, i32 %pin
  %2 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx1.i, align 4
  %neg.i = xor i32 %3, -1
  %4 = ptrtoint ptr %ctrl.ctrl_ext.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ctrl.ctrl_ext.i, align 4
  %and.i = and i32 %5, %neg.i
  store i32 %and.i, ptr %ctrl.ctrl_ext.i, align 4
  %arrayidx = getelementptr [4 x i32], ptr @igb_pin_extts.ts_sdp_en, i32 0, i32 %pin
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %chan)
  %cmp = icmp eq i32 %chan, 1
  %igb_pin_extts.aux1_sel_sdp.igb_pin_extts.aux0_sel_sdp = select i1 %cmp, ptr @igb_pin_extts.aux1_sel_sdp, ptr @igb_pin_extts.aux0_sel_sdp
  %arrayidx5 = getelementptr [4 x i32], ptr %igb_pin_extts.aux1_sel_sdp.igb_pin_extts.aux0_sel_sdp, i32 0, i32 %pin
  %8 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx5, align 4
  %hw_addr12 = getelementptr inbounds %struct.igb_adapter, ptr %igb, i32 0, i32 37, i32 1
  %10 = ptrtoint ptr %hw_addr12 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %hw_addr12, align 4
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %entry.if.end21_crit_edge, label %do.body17, !prof !103

entry.if.end21_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

do.body17:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %neg = xor i32 %7, -1
  %and = and i32 %call3, %neg
  %. = select i1 %cmp, i32 -57, i32 -8
  %and4 = and i32 %and, %.
  %or = or i32 %and4, %9
  %.90 = select i1 %cmp, i32 32, i32 4
  %or6 = or i32 %or, %.90
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !145
  tail call void @arm_heavy_mb() #9
  %12 = tail call i32 @llvm.bswap.i32(i32 %or6)
  %arrayidx20 = getelementptr i8, ptr %11, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx20, i32 %12) #9, !srcloc !105
  br label %if.end21

if.end21:                                         ; preds = %do.body17, %entry.if.end21_crit_edge
  %13 = ptrtoint ptr %hw_addr12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %hw_addr12, align 4
  %tobool31.not = icmp eq ptr %14, null
  br i1 %tobool31.not, label %if.end21.if.end45_crit_edge, label %do.body41, !prof !103

if.end21.if.end45_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end45

do.body41:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !146
  tail call void @arm_heavy_mb() #9
  %15 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %15)
  %ctrl.0.ctrl.0. = load i32, ptr %ctrl, align 4
  %16 = tail call i32 @llvm.bswap.i32(i32 %ctrl.0.ctrl.0.)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %14, i32 %16) #9, !srcloc !105
  br label %if.end45

if.end45:                                         ; preds = %do.body41, %if.end21.if.end45_crit_edge
  %17 = ptrtoint ptr %hw_addr12 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile ptr, ptr %hw_addr12, align 4
  %tobool55.not = icmp eq ptr %18, null
  br i1 %tobool55.not, label %if.end45.if.end69_crit_edge, label %do.body65, !prof !103

if.end45.if.end69_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

do.body65:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !147
  tail call void @arm_heavy_mb() #9
  %19 = ptrtoint ptr %ctrl_ext to i32
  call void @__asan_load4_noabort(i32 %19)
  %ctrl_ext.0.ctrl_ext.0. = load i32, ptr %ctrl_ext, align 4
  %20 = tail call i32 @llvm.bswap.i32(i32 %ctrl_ext.0.ctrl_ext.0.)
  %arrayidx68 = getelementptr i8, ptr %18, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx68, i32 %20) #9, !srcloc !105
  br label %if.end69

if.end69:                                         ; preds = %do.body65, %if.end45.if.end69_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ctrl_ext)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ctrl)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @igb_pin_perout(ptr noundef %igb, i32 noundef %chan, i32 noundef %pin, i32 noundef %freq) unnamed_addr #0 align 64 {
entry:
  %ctrl = alloca i32, align 4
  %ctrl_ext = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr inbounds %struct.igb_adapter, ptr %igb, i32 0, i32 37
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ctrl)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ctrl_ext)
  %call = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 0) #9
  %0 = ptrtoint ptr %ctrl to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %call, ptr %ctrl, align 4
  %call2 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 24) #9
  %1 = ptrtoint ptr %ctrl_ext to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %call2, ptr %ctrl_ext, align 4
  %call3 = tail call i32 @igb_rd32(ptr noundef %hw1, i32 noundef 60) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %pin)
  %cmp.i = icmp slt i32 %pin, 2
  %ctrl.ctrl_ext.i = select i1 %cmp.i, ptr %ctrl, ptr %ctrl_ext
  %arrayidx1.i = getelementptr [4 x i32], ptr @igb_pin_direction.mask, i32 0, i32 %pin
  %2 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx1.i, align 4
  %4 = ptrtoint ptr %ctrl.ctrl_ext.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ctrl.ctrl_ext.i, align 4
  %or.i = or i32 %5, %3
  store i32 %or.i, ptr %ctrl.ctrl_ext.i, align 4
  %arrayidx = getelementptr [4 x i32], ptr @igb_pin_perout.aux0_sel_sdp, i32 0, i32 %pin
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %arrayidx6 = getelementptr [4 x i32], ptr @igb_pin_perout.aux1_sel_sdp, i32 0, i32 %pin
  %8 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx6, align 4
  %arrayidx11 = getelementptr [4 x i32], ptr @igb_pin_perout.ts_sdp_sel_clr, i32 0, i32 %pin
  %10 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %freq)
  %tobool.not = icmp eq i32 %freq, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %chan)
  %cmp21 = icmp eq i32 %chan, 1
  %igb_pin_perout.ts_sdp_sel_fc1.igb_pin_perout.ts_sdp_sel_fc0 = select i1 %cmp21, ptr @igb_pin_perout.ts_sdp_sel_fc1, ptr @igb_pin_perout.ts_sdp_sel_fc0
  %igb_pin_perout.ts_sdp_sel_tt1.igb_pin_perout.ts_sdp_sel_tt0 = select i1 %cmp21, ptr @igb_pin_perout.ts_sdp_sel_tt1, ptr @igb_pin_perout.ts_sdp_sel_tt0
  %igb_pin_perout.ts_sdp_sel_tt1.sink = select i1 %tobool.not, ptr %igb_pin_perout.ts_sdp_sel_tt1.igb_pin_perout.ts_sdp_sel_tt0, ptr %igb_pin_perout.ts_sdp_sel_fc1.igb_pin_perout.ts_sdp_sel_fc0
  %arrayidx23 = getelementptr [4 x i32], ptr %igb_pin_perout.ts_sdp_sel_tt1.sink, i32 0, i32 %pin
  %12 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pn = load i32, ptr %arrayidx23, align 4
  %arrayidx30 = getelementptr [4 x i32], ptr @igb_pin_perout.ts_sdp_en, i32 0, i32 %pin
  %13 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx30, align 4
  %hw_addr33 = getelementptr inbounds %struct.igb_adapter, ptr %igb, i32 0, i32 37, i32 1
  %15 = ptrtoint ptr %hw_addr33 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %hw_addr33, align 4
  %tobool34.not = icmp eq ptr %16, null
  br i1 %tobool34.not, label %entry.if.end43_crit_edge, label %do.body39, !prof !103

entry.if.end43_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end43

do.body39:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %and = and i32 %call3, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %7)
  %cmp = icmp eq i32 %and, %7
  %and4 = and i32 %call3, -5
  %spec.select = select i1 %cmp, i32 %and4, i32 %call3
  %and5 = and i32 %spec.select, 24
  call void @__sanitizer_cov_trace_cmp4(i32 %and5, i32 %9)
  %cmp7 = icmp eq i32 %and5, %9
  %and9 = and i32 %spec.select, -33
  %tssdp.1 = select i1 %cmp7, i32 %and9, i32 %spec.select
  %neg = xor i32 %11, -1
  %and12 = and i32 %tssdp.1, %neg
  %tssdp.2 = or i32 %.pn, %and12
  %or31 = or i32 %tssdp.2, %14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !148
  tail call void @arm_heavy_mb() #9
  %17 = tail call i32 @llvm.bswap.i32(i32 %or31)
  %arrayidx42 = getelementptr i8, ptr %16, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx42, i32 %17) #9, !srcloc !105
  br label %if.end43

if.end43:                                         ; preds = %do.body39, %entry.if.end43_crit_edge
  %18 = ptrtoint ptr %hw_addr33 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile ptr, ptr %hw_addr33, align 4
  %tobool53.not = icmp eq ptr %19, null
  br i1 %tobool53.not, label %if.end43.if.end67_crit_edge, label %do.body63, !prof !103

if.end43.if.end67_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end67

do.body63:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !149
  tail call void @arm_heavy_mb() #9
  %20 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %20)
  %ctrl.0.ctrl.0. = load i32, ptr %ctrl, align 4
  %21 = tail call i32 @llvm.bswap.i32(i32 %ctrl.0.ctrl.0.)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %19, i32 %21) #9, !srcloc !105
  br label %if.end67

if.end67:                                         ; preds = %do.body63, %if.end43.if.end67_crit_edge
  %22 = ptrtoint ptr %hw_addr33 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile ptr, ptr %hw_addr33, align 4
  %tobool77.not = icmp eq ptr %23, null
  br i1 %tobool77.not, label %if.end67.if.end91_crit_edge, label %do.body87, !prof !103

if.end67.if.end91_crit_edge:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end91

do.body87:                                        ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !150
  tail call void @arm_heavy_mb() #9
  %24 = ptrtoint ptr %ctrl_ext to i32
  call void @__asan_load4_noabort(i32 %24)
  %ctrl_ext.0.ctrl_ext.0. = load i32, ptr %ctrl_ext, align 4
  %25 = tail call i32 @llvm.bswap.i32(i32 %ctrl_ext.0.ctrl_ext.0.)
  %arrayidx90 = getelementptr i8, ptr %23, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx90, i32 %25) #9, !srcloc !105
  br label %if.end91

if.end91:                                         ; preds = %do.body87, %if.end67.if.end91_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ctrl_ext)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ctrl)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_normalized_timespec64(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_tstamp_tx(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @timecounter_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_with_offset(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 47)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 47)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nounwind readonly }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !13, !15, !17, !18, !20, !21, !23, !24, !25, !26, !28, !29, !30, !31, !32, !34, !35, !36, !37, !39, !40, !41, !42, !44, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !76, !77, !79, !80, !81, !82}
!llvm.named.register.sp = !{!84}
!llvm.module.flags = !{!85, !86, !87, !88, !89, !90, !91, !92}
!llvm.ident = !{!93}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/intel/igb/igb_ptp.c", i32 923, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @igb_ptp_rx_hang._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @igb_ptp_rx_hang._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/intel/igb/igb_ptp.c", i32 957, i32 3}
!10 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @igb_ptp_tx_hang._entry, !9, !"_entry", i1 false, i1 false}
!12 = !{ptr @igb_ptp_tx_hang._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/net/ethernet/intel/igb/igb_ptp.c", i32 1347, i32 40}
!15 = !{ptr @igb_ptp_init.__key, !16, !"__key", i1 false, i1 false}
!16 = !{!"../drivers/net/ethernet/intel/igb/igb_ptp.c", i32 1410, i32 2}
!17 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @igb_ptp_init.__key.9, !19, !"__key", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/intel/igb/igb_ptp.c", i32 1411, i32 2}
!20 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @igb_ptp_init.__key.11, !22, !"__key", i1 false, i1 false}
!22 = !{!"../drivers/net/ethernet/intel/igb/igb_ptp.c", i32 1414, i32 3}
!23 = !{ptr @.str.12, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @igb_ptp_init.__key.13, !22, !"__key", i1 false, i1 false}
!25 = !{ptr @.str.14, !22, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.15, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/ethernet/intel/igb/igb_ptp.c", i32 1426, i32 3}
!28 = !{ptr @.str.16, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.17, !27, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @igb_ptp_init._entry, !27, !"_entry", i1 false, i1 false}
!31 = !{ptr @igb_ptp_init._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.19, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/ethernet/intel/igb/igb_ptp.c", i32 1428, i32 3}
!34 = !{ptr @.str.20, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @igb_ptp_init._entry.18, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @igb_ptp_init._entry_ptr.21, !33, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.22, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/ethernet/intel/igb/igb_ptp.c", i32 1486, i32 3}
!39 = !{ptr @.str.23, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @igb_ptp_stop._entry, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @igb_ptp_stop._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!42 = distinct !{null, !43, !"__already_done", i1 false, i1 false}
!43 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!44 = distinct !{null, !43, !"<string literal>", i1 false, i1 false}
!45 = distinct !{null, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!47 = !{ptr @.str.26, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!49 = !{ptr @igb_pin_extts.aux0_sel_sdp, !50, !"aux0_sel_sdp", i1 false, i1 false}
!50 = !{!"../drivers/net/ethernet/intel/igb/igb_ptp.c", i32 411, i32 19}
!51 = !{ptr @igb_pin_extts.aux1_sel_sdp, !52, !"aux1_sel_sdp", i1 false, i1 false}
!52 = !{!"../drivers/net/ethernet/intel/igb/igb_ptp.c", i32 414, i32 19}
!53 = !{ptr @igb_pin_extts.ts_sdp_en, !54, !"ts_sdp_en", i1 false, i1 false}
!54 = !{!"../drivers/net/ethernet/intel/igb/igb_ptp.c", i32 417, i32 19}
!55 = !{ptr @igb_pin_direction.mask, !56, !"mask", i1 false, i1 false}
!56 = !{!"../drivers/net/ethernet/intel/igb/igb_ptp.c", i32 396, i32 19}
!57 = !{ptr @igb_pin_perout.aux0_sel_sdp, !58, !"aux0_sel_sdp", i1 false, i1 false}
!58 = !{!"../drivers/net/ethernet/intel/igb/igb_ptp.c", i32 447, i32 19}
!59 = !{ptr @igb_pin_perout.aux1_sel_sdp, !60, !"aux1_sel_sdp", i1 false, i1 false}
!60 = !{!"../drivers/net/ethernet/intel/igb/igb_ptp.c", i32 450, i32 19}
!61 = !{ptr @igb_pin_perout.ts_sdp_en, !62, !"ts_sdp_en", i1 false, i1 false}
!62 = !{!"../drivers/net/ethernet/intel/igb/igb_ptp.c", i32 453, i32 19}
!63 = !{ptr @igb_pin_perout.ts_sdp_sel_tt0, !64, !"ts_sdp_sel_tt0", i1 false, i1 false}
!64 = !{!"../drivers/net/ethernet/intel/igb/igb_ptp.c", i32 456, i32 19}
!65 = !{ptr @igb_pin_perout.ts_sdp_sel_tt1, !66, !"ts_sdp_sel_tt1", i1 false, i1 false}
!66 = !{!"../drivers/net/ethernet/intel/igb/igb_ptp.c", i32 460, i32 19}
!67 = !{ptr @igb_pin_perout.ts_sdp_sel_fc0, !68, !"ts_sdp_sel_fc0", i1 false, i1 false}
!68 = !{!"../drivers/net/ethernet/intel/igb/igb_ptp.c", i32 464, i32 19}
!69 = !{ptr @igb_pin_perout.ts_sdp_sel_fc1, !70, !"ts_sdp_sel_fc1", i1 false, i1 false}
!70 = !{!"../drivers/net/ethernet/intel/igb/igb_ptp.c", i32 468, i32 19}
!71 = !{ptr @igb_pin_perout.ts_sdp_sel_clr, !72, !"ts_sdp_sel_clr", i1 false, i1 false}
!72 = !{!"../drivers/net/ethernet/intel/igb/igb_ptp.c", i32 472, i32 19}
!73 = !{ptr @.str.27, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/net/ethernet/intel/igb/igb_ptp.c", i32 856, i32 3}
!75 = !{ptr @igb_ptp_tx_work._entry, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @igb_ptp_tx_work._entry_ptr, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.28, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/net/ethernet/intel/igb/igb_ptp.c", i32 879, i32 2}
!79 = !{ptr @.str.29, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @.str.30, !78, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @igb_ptp_overflow_check.__UNIQUE_ID_ddebug409, !78, !"__UNIQUE_ID_ddebug409", i1 false, i1 false}
!82 = !{ptr @.str.31, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/net/ethernet/intel/igb/igb_ptp.c", i32 1445, i32 42}
!84 = !{!"sp"}
!85 = !{i32 1, !"wchar_size", i32 2}
!86 = !{i32 1, !"min_enum_size", i32 4}
!87 = !{i32 8, !"branch-target-enforcement", i32 0}
!88 = !{i32 8, !"sign-return-address", i32 0}
!89 = !{i32 8, !"sign-return-address-all", i32 0}
!90 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!91 = !{i32 7, !"uwtable", i32 1}
!92 = !{i32 7, !"frame-pointer", i32 2}
!93 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!94 = !{i64 2148478292}
!95 = !{i64 2148388687, i64 2148388719, i64 2148388748, i64 2148388782, i64 2148388813, i64 2148388836}
!96 = !{i64 2153918294, i64 2153918319}
!97 = !{!"auto-init"}
!98 = !{i64 2153917613, i64 2153917638}
!99 = !{!"branch_weights", i32 2000, i32 1}
!100 = !{i64 6413168}
!101 = !{i64 6413365}
!102 = !{i64 2153898598}
!103 = !{!"branch_weights", i32 1, i32 2000}
!104 = !{i64 2158188124}
!105 = !{i64 5021249}
!106 = !{i64 2158191671}
!107 = !{i64 2158195229}
!108 = !{i64 2158198741}
!109 = !{i64 2158202617}
!110 = !{i64 2158206372}
!111 = !{i64 2158210150}
!112 = !{i64 2158213926}
!113 = !{i64 2158217717}
!114 = !{i64 2158221424}
!115 = !{i64 2158224990}
!116 = !{i64 742322, i64 742349, i64 742371, i64 742399}
!117 = !{i64 742730, i64 742757, i64 742790, i64 742811, i64 742838, i64 742864}
!118 = !{i64 2158071573}
!119 = !{i64 742035, i64 742062}
!120 = !{i64 2158077292}
!121 = !{i64 2158115728}
!122 = !{i64 2158119224}
!123 = !{i64 2148227866, i64 2148228146, i64 2148228480, i64 2148228814}
!124 = !{i64 2158124363}
!125 = !{i64 2158127917}
!126 = !{i64 2158131484}
!127 = !{i64 2158134980}
!128 = !{i64 2158061422}
!129 = !{i64 2158064955}
!130 = !{i64 2158140586}
!131 = !{i64 2158144082}
!132 = !{i64 2158149403}
!133 = !{i64 2158152970}
!134 = !{i64 2158156500}
!135 = !{i64 2158159988}
!136 = !{i64 2158163484}
!137 = !{i64 2158167538}
!138 = !{i64 2148994819, i64 2148994824, i64 2148994837, i64 2148994881, i64 2148994915, i64 2148994936}
!139 = !{i64 2158237452}
!140 = !{i64 2158241057}
!141 = !{i64 2158244542}
!142 = !{i64 2158248391}
!143 = !{i8 0, i8 2}
!144 = !{i64 2158252196}
!145 = !{i64 2158092252}
!146 = !{i64 2158095745}
!147 = !{i64 2158099243}
!148 = !{i64 2158103244}
!149 = !{i64 2158106737}
!150 = !{i64 2158110235}
