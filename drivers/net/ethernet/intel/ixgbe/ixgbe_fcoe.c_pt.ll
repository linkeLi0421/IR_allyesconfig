; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/intel/ixgbe/ixgbe_fcoe.c_pt.bc'
source_filename = "../drivers/net/ethernet/intel/ixgbe/ixgbe_fcoe.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.124, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon.23 }
%union.anon.23 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.24 }
%union.anon.24 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.124 = type { ptr }
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
%struct.list_head = type { ptr, ptr }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.ixgbe_adapter = type { [128 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, i32, i16, i16, i64, i32, i16, i64, i16, i16, i32, [64 x ptr], ptr, [52 x i8], [64 x ptr], i64, i64, i32, [64 x ptr], i32, i32, i64, i64, i64, i64, i64, i32, i32, i32, [64 x ptr], ptr, ptr, %struct.ixgbe_dcb_config, %struct.ixgbe_dcb_config, i8, i8, i8, i32, i32, i32, [68 x i8], [5 x %struct.ixgbe_ring_feature], ptr, i32, [120 x i8], %struct.ixgbe_ring, %struct.ixgbe_ring, %struct.ixgbe_hw, i16, %struct.ixgbe_hw_stats, i64, i32, i32, i32, i32, i8, i32, i32, %struct.timer_list, %struct.work_struct, %struct.hlist_head, i32, %union.ixgbe_atr_input, i32, i32, i32, %struct.spinlock, %struct.ixgbe_fcoe, ptr, i32, i16, [32 x i8], i16, i32, i32, ptr, %struct.ptp_clock_info, %struct.work_struct, ptr, %struct.hwtstamp_config, i32, i32, i32, i32, %struct.spinlock, %struct.cyclecounter, %struct.timecounter, i32, i32, i32, i32, ptr, [2 x i32], i32, ptr, i32, %struct.vf_macvlans, ptr, i32, i32, ptr, ptr, ptr, ptr, i8, [2 x i32], [10 x ptr], i32, [512 x i8], ptr, ptr, [88 x i8] }
%struct.ixgbe_dcb_config = type { %struct.dcb_support, %struct.dcb_num_tcs, [8 x %struct.tc_configuration], [2 x [8 x i8]], i8, i32, i32 }
%struct.dcb_support = type { i32, i8, i8 }
%struct.dcb_num_tcs = type { i8, i8 }
%struct.tc_configuration = type { [2 x %struct.tc_bw_alloc], i32, i16, i8 }
%struct.tc_bw_alloc = type { i8, i8, i8, i8, i16, i16, i32 }
%struct.ixgbe_ring_feature = type { i16, i16, i16, i16, [120 x i8] }
%struct.ixgbe_ring = type { ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.131, i32, ptr, i32, i32, i16, i8, i8, i16, i16, i32, %union.anon.138, i8, %struct.ixgbe_queue_stats, %struct.u64_stats_sync, %union.anon.140, i16, [86 x i8], %struct.xdp_rxq_info, %struct.spinlock, ptr, i16, i16, [76 x i8] }
%union.anon.131 = type { ptr }
%union.anon.138 = type { i16 }
%struct.ixgbe_queue_stats = type { i64, i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32, %struct.lockdep_map }
%union.anon.140 = type { %struct.ixgbe_rx_queue_stats }
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
%union.ixgbe_atr_input = type { %struct.anon.141 }
%struct.anon.141 = type { i8, i8, i16, [4 x i32], [4 x i32], i16, i16, i16, i16 }
%struct.ixgbe_fcoe = type { ptr, %struct.atomic_t, %struct.spinlock, [2048 x %struct.ixgbe_fcoe_ddp], ptr, i32, i32, i8 }
%struct.ixgbe_fcoe_ddp = type { i32, i32, i32, ptr, i32, ptr, ptr }
%struct.ptp_clock_info = type { ptr, [32 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.hwtstamp_config = type { i32, i32, i32 }
%struct.cyclecounter = type { ptr, i64, i32, i32 }
%struct.timecounter = type { ptr, i64, i64, i64, i64 }
%struct.vf_macvlans = type { %struct.list_head, i32, i8, i8, [6 x i8] }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.130, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.130 = type { ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.ixgbe_fcoe_ddp_pool = type { ptr, i64, i64 }
%struct.anon.146 = type { %struct.anon.147, %struct.anon.152 }
%struct.anon.147 = type { %union.anon.148, %union.anon.150 }
%union.anon.148 = type { i32 }
%union.anon.150 = type { i32 }
%struct.anon.152 = type { i32, i16, i16 }
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
%struct.ethhdr = type { [6 x i8], [6 x i8], i16 }
%struct.fcoe_crc_eof = type { i32, i8, [3 x i8] }
%struct.ixgbe_tx_buffer = type { ptr, i32, %union.anon.134, i32, i16, i16, i32, i32, i32 }
%union.anon.134 = type { ptr }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.fcoe_hdr = type { i8, [12 x i8], i8 }
%struct.fc_frame_header = type { i8, [3 x i8], i8, [3 x i8], i8, [3 x i8], i8, i8, i16, i16, i16, i32 }
%struct.page = type { i32, %union.anon.26, %union.anon.108, %struct.atomic_t, i32 }
%union.anon.26 = type { %struct.anon.27 }
%struct.anon.27 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.108 = type { %struct.atomic_t }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.netdev_fcoe_hbainfo = type { [64 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], [256 x i8], [256 x i8] }

@ixgbe_fso._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 502, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Wrong gso type %d:expecting SKB_GSO_FCOE\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ixgbe_fso\00", [22 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"drivers/net/ethernet/intel/ixgbe/ixgbe_fcoe.c\00", [50 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ixgbe_fso._entry_ptr = internal global ptr @ixgbe_fso._entry, section ".printk_index", align 4
@ixgbe_fso._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 527, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"unknown sof = 0x%x\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@ixgbe_fso._entry_ptr.8 = internal global ptr @ixgbe_fso._entry.5, section ".printk_index", align 4
@ixgbe_fso._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 553, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"unknown eof = 0x%x\0A\00", [44 x i8] zeroinitializer }, align 32
@ixgbe_fso._entry_ptr.11 = internal global ptr @ixgbe_fso._entry.9, section ".printk_index", align 4
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@.str.12 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to map extra DDP buffer\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to alloc DDP pool on cpu:%d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Enabling FCoE offload features.\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Enabling FCoE on PF will disable legacy VFs\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Disabling FCoE offload features.\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Intel Corporation\00", [46 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%016llX\00", [24 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Rev %d\00", [25 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%s v%s\00", [25 x i8] zeroinitializer }, align 32
@ixgbe_driver_name = external dso_local global [0 x i8], align 1
@.str.22 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"5.17.0\00", [25 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Intel 82599\00", [20 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Intel X550\00", [21 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Intel X540\00", [21 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@ixgbe_default_device_descr = external dso_local global [0 x i8], align 1
@.str.27 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"xid=0x%x out-of-range\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"xid 0x%x w/ non-null sgl=%p nents=%d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"No ddp_pool resources allocated\0A\00", [63 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@.str.30 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"xid=0x%x no ddp pool for fcoe\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"xid 0x%x DMA map error\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed allocated ddp context\0A\00", [34 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.33 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@.str.35 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ixgbe_fcoe_ddp_%u\00", [46 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"failed to allocate percpu DDP resources\0A\00", [55 x i8] zeroinitializer }, align 32
@switch.table.ixgbe_fso = internal constant { [10 x i32], [56 x i8] } { [10 x i32] [i32 32768, i32 36864, i32 32768, i32 32768, i32 32768, i32 32768, i32 32768, i32 32768, i32 0, i32 4096], [56 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.37 = internal global [6 x i64] [i64 4, i64 8, i64 65, i64 66, i64 73, i64 80]
@__sancov_gen_cov_switch_values.38 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.39 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 501, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 527, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 553, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 770, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 784, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 848, i32 2 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 851, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 892, i32 2 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 983, i32 4 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 991, i32 5 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 999, i32 4 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 1003, i32 4 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 1005, i32 4 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 1014, i32 5 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 1018, i32 5 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 1022, i32 5 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 1028, i32 4 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 158, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 170, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 178, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 184, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 191, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 198, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 326, i32 6 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 615, i32 26 }
@___asan_gen_.142 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.143 = private constant [49 x i8] c"../drivers/net/ethernet/intel/ixgbe/ixgbe_fcoe.c\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 802, i32 3 }
@___asan_gen_.145 = private unnamed_addr constant [23 x i8] c"switch.table.ixgbe_fso\00", align 1
@llvm.compiler.used = appending global [39 x ptr] [ptr @ixgbe_fso._entry, ptr @ixgbe_fso._entry.5, ptr @ixgbe_fso._entry.9, ptr @ixgbe_fso._entry_ptr, ptr @ixgbe_fso._entry_ptr.11, ptr @ixgbe_fso._entry_ptr.8, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @switch.table.ixgbe_fso], section "llvm.metadata"
@0 = internal global [36 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ixgbe_fso._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ixgbe_fso._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ixgbe_fso._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ixgbe_fso to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ixgbe_fcoe_ddp_put(ptr noundef %netdev, i16 noundef zeroext %xid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %netdev, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv = zext i16 %xid to i32
  %fcoe_ddp_xid = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 143
  %0 = ptrtoint ptr %fcoe_ddp_xid to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fcoe_ddp_xid, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %conv)
  %cmp.not = icmp ugt i32 %1, %conv
  br i1 %cmp.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %arrayidx = getelementptr %struct.ixgbe_adapter, ptr %add.ptr.i, i32 0, i32 74, i32 3, i32 %conv
  %udl = getelementptr %struct.ixgbe_adapter, ptr %add.ptr.i, i32 0, i32 74, i32 3, i32 %conv, i32 5
  %2 = ptrtoint ptr %udl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %udl, align 4
  %tobool6.not = icmp eq ptr %3, null
  br i1 %tobool6.not, label %if.end3.cleanup_crit_edge, label %if.end8

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end8:                                          ; preds = %if.end3
  %hw9 = getelementptr i8, ptr %netdev, i32 6528
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %err = getelementptr %struct.ixgbe_adapter, ptr %add.ptr.i, i32 0, i32 74, i32 3, i32 %conv, i32 1
  %6 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool11.not = icmp eq i32 %7, 0
  br i1 %tobool11.not, label %if.end8.skip_ddpinv_crit_edge, label %if.end13

if.end8.skip_ddpinv_crit_edge:                    ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #16
  br label %skip_ddpinv

if.end13:                                         ; preds = %if.end8
  %type = getelementptr i8, ptr %netdev, i32 6808
  %8 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %9)
  %cmp14 = icmp eq i32 %9, 4
  br i1 %cmp14, label %if.then16, label %if.else

if.then16:                                        ; preds = %if.end13
  %mul = shl nuw nsw i32 %conv, 4
  %10 = ptrtoint ptr %hw9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %hw9, align 4
  %tobool.not.i.i = icmp eq ptr %11, null
  br i1 %tobool.not.i.i, label %if.then16.ixgbe_write_reg.exit_crit_edge, label %do.body1.i

if.then16.ixgbe_write_reg.exit_crit_edge:         ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #16
  br label %ixgbe_write_reg.exit

do.body1.i:                                       ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #16
  %add = add nuw nsw i32 %mul, 163840
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !79
  tail call void @arm_heavy_mb() #14
  %add.ptr.i109 = getelementptr i8, ptr %11, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i109, i32 0) #14, !srcloc !80
  br label %ixgbe_write_reg.exit

ixgbe_write_reg.exit:                             ; preds = %do.body1.i, %if.then16.ixgbe_write_reg.exit_crit_edge
  %or = or i32 %conv, 16384
  %12 = ptrtoint ptr %hw9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %hw9, align 4
  %tobool.not.i.i110 = icmp eq ptr %13, null
  br i1 %tobool.not.i.i110, label %ixgbe_write_reg.exit.ixgbe_write_reg.exit113_crit_edge, label %do.body1.i112

ixgbe_write_reg.exit.ixgbe_write_reg.exit113_crit_edge: ; preds = %ixgbe_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %ixgbe_write_reg.exit113

do.body1.i112:                                    ; preds = %ixgbe_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #16
  %add20 = add nuw nsw i32 %mul, 163852
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !79
  tail call void @arm_heavy_mb() #14
  %14 = tail call i32 @llvm.bswap.i32(i32 %or) #14
  %add.ptr.i111 = getelementptr i8, ptr %13, i32 %add20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i111, i32 %14) #14, !srcloc !80
  br label %ixgbe_write_reg.exit113

ixgbe_write_reg.exit113:                          ; preds = %do.body1.i112, %ixgbe_write_reg.exit.ixgbe_write_reg.exit113_crit_edge
  %add24 = add nuw nsw i32 %mul, 131080
  %15 = ptrtoint ptr %hw9 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %hw9, align 4
  %tobool.not.i.i114 = icmp eq ptr %16, null
  br i1 %tobool.not.i.i114, label %ixgbe_write_reg.exit113.ixgbe_write_reg.exit117_crit_edge, label %do.body1.i116

ixgbe_write_reg.exit113.ixgbe_write_reg.exit117_crit_edge: ; preds = %ixgbe_write_reg.exit113
  call void @__sanitizer_cov_trace_pc() #16
  br label %ixgbe_write_reg.exit117

do.body1.i116:                                    ; preds = %ixgbe_write_reg.exit113
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !79
  tail call void @arm_heavy_mb() #14
  %add.ptr.i115 = getelementptr i8, ptr %16, i32 %add24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i115, i32 0) #14, !srcloc !80
  br label %ixgbe_write_reg.exit117

ixgbe_write_reg.exit117:                          ; preds = %do.body1.i116, %ixgbe_write_reg.exit113.ixgbe_write_reg.exit117_crit_edge
  %add27 = add nuw nsw i32 %mul, 131084
  %17 = ptrtoint ptr %hw9 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile ptr, ptr %hw9, align 4
  %tobool.not.i.i118 = icmp eq ptr %18, null
  br i1 %tobool.not.i.i118, label %ixgbe_write_reg.exit117.ixgbe_write_reg.exit121_crit_edge, label %do.body1.i120

ixgbe_write_reg.exit117.ixgbe_write_reg.exit121_crit_edge: ; preds = %ixgbe_write_reg.exit117
  call void @__sanitizer_cov_trace_pc() #16
  br label %ixgbe_write_reg.exit121

do.body1.i120:                                    ; preds = %ixgbe_write_reg.exit117
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !79
  tail call void @arm_heavy_mb() #14
  %19 = tail call i32 @llvm.bswap.i32(i32 %or) #14
  %add.ptr.i119 = getelementptr i8, ptr %18, i32 %add27
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i119, i32 %19) #14, !srcloc !80
  br label %ixgbe_write_reg.exit121

ixgbe_write_reg.exit121:                          ; preds = %do.body1.i120, %ixgbe_write_reg.exit117.ixgbe_write_reg.exit121_crit_edge
  %20 = ptrtoint ptr %hw9 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile ptr, ptr %hw9, align 4
  %tobool.not.i.i122 = icmp eq ptr %21, null
  br i1 %tobool.not.i.i122, label %ixgbe_write_reg.exit121.ixgbe_write_reg.exit125_crit_edge, label %do.body1.i124

ixgbe_write_reg.exit121.ixgbe_write_reg.exit125_crit_edge: ; preds = %ixgbe_write_reg.exit121
  call void @__sanitizer_cov_trace_pc() #16
  br label %ixgbe_write_reg.exit125

do.body1.i124:                                    ; preds = %ixgbe_write_reg.exit121
  call void @__sanitizer_cov_trace_pc() #16
  %or34 = or i32 %conv, 32768
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !79
  tail call void @arm_heavy_mb() #14
  %22 = tail call i32 @llvm.bswap.i32(i32 %or34) #14
  %add.ptr.i123 = getelementptr i8, ptr %21, i32 %add27
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i123, i32 %22) #14, !srcloc !80
  br label %ixgbe_write_reg.exit125

ixgbe_write_reg.exit125:                          ; preds = %do.body1.i124, %ixgbe_write_reg.exit121.ixgbe_write_reg.exit125_crit_edge
  %call38 = tail call i32 @ixgbe_read_reg(ptr noundef %hw9, i32 noundef %add24) #14
  br label %if.end47

if.else:                                          ; preds = %if.end13
  %lock = getelementptr i8, ptr %netdev, i32 9844
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #14
  %23 = ptrtoint ptr %hw9 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile ptr, ptr %hw9, align 4
  %tobool.not.i.i126 = icmp eq ptr %24, null
  br i1 %tobool.not.i.i126, label %if.else.ixgbe_write_reg.exit129_crit_edge, label %do.body1.i128

if.else.ixgbe_write_reg.exit129_crit_edge:        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %ixgbe_write_reg.exit129

do.body1.i128:                                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !79
  tail call void @arm_heavy_mb() #14
  %add.ptr.i127 = getelementptr i8, ptr %24, i32 20744
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i127, i32 0) #14, !srcloc !80
  br label %ixgbe_write_reg.exit129

ixgbe_write_reg.exit129:                          ; preds = %do.body1.i128, %if.else.ixgbe_write_reg.exit129_crit_edge
  %or40 = or i32 %conv, 16384
  %25 = ptrtoint ptr %hw9 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile ptr, ptr %hw9, align 4
  %tobool.not.i.i130 = icmp eq ptr %26, null
  br i1 %tobool.not.i.i130, label %ixgbe_write_reg.exit129.ixgbe_write_reg.exit133_crit_edge, label %do.body1.i132

ixgbe_write_reg.exit129.ixgbe_write_reg.exit133_crit_edge: ; preds = %ixgbe_write_reg.exit129
  call void @__sanitizer_cov_trace_pc() #16
  br label %ixgbe_write_reg.exit133

do.body1.i132:                                    ; preds = %ixgbe_write_reg.exit129
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !79
  tail call void @arm_heavy_mb() #14
  %27 = tail call i32 @llvm.bswap.i32(i32 %or40) #14
  %add.ptr.i131 = getelementptr i8, ptr %26, i32 20752
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i131, i32 %27) #14, !srcloc !80
  br label %ixgbe_write_reg.exit133

ixgbe_write_reg.exit133:                          ; preds = %do.body1.i132, %ixgbe_write_reg.exit129.ixgbe_write_reg.exit133_crit_edge
  %28 = ptrtoint ptr %hw9 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile ptr, ptr %hw9, align 4
  %tobool.not.i.i134 = icmp eq ptr %29, null
  br i1 %tobool.not.i.i134, label %ixgbe_write_reg.exit133.ixgbe_write_reg.exit137_crit_edge, label %do.body1.i136

ixgbe_write_reg.exit133.ixgbe_write_reg.exit137_crit_edge: ; preds = %ixgbe_write_reg.exit133
  call void @__sanitizer_cov_trace_pc() #16
  br label %ixgbe_write_reg.exit137

do.body1.i136:                                    ; preds = %ixgbe_write_reg.exit133
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !79
  tail call void @arm_heavy_mb() #14
  %add.ptr.i135 = getelementptr i8, ptr %29, i32 9240
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i135, i32 0) #14, !srcloc !80
  br label %ixgbe_write_reg.exit137

ixgbe_write_reg.exit137:                          ; preds = %do.body1.i136, %ixgbe_write_reg.exit133.ixgbe_write_reg.exit137_crit_edge
  %30 = ptrtoint ptr %hw9 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile ptr, ptr %hw9, align 4
  %tobool.not.i.i138 = icmp eq ptr %31, null
  br i1 %tobool.not.i.i138, label %ixgbe_write_reg.exit137.ixgbe_write_reg.exit141_crit_edge, label %do.body1.i140

ixgbe_write_reg.exit137.ixgbe_write_reg.exit141_crit_edge: ; preds = %ixgbe_write_reg.exit137
  call void @__sanitizer_cov_trace_pc() #16
  br label %ixgbe_write_reg.exit141

do.body1.i140:                                    ; preds = %ixgbe_write_reg.exit137
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !79
  tail call void @arm_heavy_mb() #14
  %32 = tail call i32 @llvm.bswap.i32(i32 %or40) #14
  %add.ptr.i139 = getelementptr i8, ptr %31, i32 9248
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i139, i32 %32) #14, !srcloc !80
  br label %ixgbe_write_reg.exit141

ixgbe_write_reg.exit141:                          ; preds = %do.body1.i140, %ixgbe_write_reg.exit137.ixgbe_write_reg.exit141_crit_edge
  %33 = ptrtoint ptr %hw9 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile ptr, ptr %hw9, align 4
  %tobool.not.i.i142 = icmp eq ptr %34, null
  br i1 %tobool.not.i.i142, label %ixgbe_write_reg.exit141.ixgbe_write_reg.exit145_crit_edge, label %do.body1.i144

ixgbe_write_reg.exit141.ixgbe_write_reg.exit145_crit_edge: ; preds = %ixgbe_write_reg.exit141
  call void @__sanitizer_cov_trace_pc() #16
  br label %ixgbe_write_reg.exit145

do.body1.i144:                                    ; preds = %ixgbe_write_reg.exit141
  call void @__sanitizer_cov_trace_pc() #16
  %or44 = or i32 %conv, 32768
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !79
  tail call void @arm_heavy_mb() #14
  %35 = tail call i32 @llvm.bswap.i32(i32 %or44) #14
  %add.ptr.i143 = getelementptr i8, ptr %34, i32 9248
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i143, i32 %35) #14, !srcloc !80
  br label %ixgbe_write_reg.exit145

ixgbe_write_reg.exit145:                          ; preds = %do.body1.i144, %ixgbe_write_reg.exit141.ixgbe_write_reg.exit145_crit_edge
  %call45 = tail call i32 @ixgbe_read_reg(ptr noundef %hw9, i32 noundef 9240) #14
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #14
  br label %if.end47

if.end47:                                         ; preds = %ixgbe_write_reg.exit145, %ixgbe_write_reg.exit125
  %fcbuff.0 = phi i32 [ %call38, %ixgbe_write_reg.exit125 ], [ %call45, %ixgbe_write_reg.exit145 ]
  %and = and i32 %fcbuff.0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool48.not = icmp eq i32 %and, 0
  br i1 %tobool48.not, label %if.end47.skip_ddpinv_crit_edge, label %if.then49

if.end47.skip_ddpinv_crit_edge:                   ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #16
  br label %skip_ddpinv

if.then49:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 150, i32 noundef 2) #14
  br label %skip_ddpinv

skip_ddpinv:                                      ; preds = %if.then49, %if.end47.skip_ddpinv_crit_edge, %if.end8.skip_ddpinv_crit_edge
  %sgl = getelementptr %struct.ixgbe_adapter, ptr %add.ptr.i, i32 0, i32 74, i32 3, i32 %conv, i32 3
  %36 = ptrtoint ptr %sgl to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %sgl, align 4
  %tobool51.not = icmp eq ptr %37, null
  br i1 %tobool51.not, label %skip_ddpinv.if.end54_crit_edge, label %if.then52

skip_ddpinv.if.end54_crit_edge:                   ; preds = %skip_ddpinv
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end54

if.then52:                                        ; preds = %skip_ddpinv
  call void @__sanitizer_cov_trace_pc() #16
  %pdev = getelementptr i8, ptr %netdev, i32 2824
  %38 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %39, i32 0, i32 44
  %sgc = getelementptr %struct.ixgbe_adapter, ptr %add.ptr.i, i32 0, i32 74, i32 3, i32 %conv, i32 2
  %40 = ptrtoint ptr %sgc to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %sgc, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %dev, ptr noundef nonnull %37, i32 noundef %41, i32 noundef 2, i32 noundef 0) #14
  br label %if.end54

if.end54:                                         ; preds = %if.then52, %skip_ddpinv.if.end54_crit_edge
  %pool = getelementptr %struct.ixgbe_adapter, ptr %add.ptr.i, i32 0, i32 74, i32 3, i32 %conv, i32 6
  %42 = ptrtoint ptr %pool to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %pool, align 4
  %tobool55.not = icmp eq ptr %43, null
  br i1 %tobool55.not, label %if.end54.if.end60_crit_edge, label %if.then56

if.end54.if.end60_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end60

if.then56:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #16
  %44 = ptrtoint ptr %udl to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %udl, align 4
  %udp = getelementptr %struct.ixgbe_adapter, ptr %add.ptr.i, i32 0, i32 74, i32 3, i32 %conv, i32 4
  %46 = ptrtoint ptr %udp to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %udp, align 4
  tail call void @dma_pool_free(ptr noundef nonnull %43, ptr noundef %45, i32 noundef %47) #14
  %48 = ptrtoint ptr %pool to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr null, ptr %pool, align 4
  br label %if.end60

if.end60:                                         ; preds = %if.then56, %if.end54.if.end60_crit_edge
  %49 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %arrayidx, align 4
  %err.i = getelementptr inbounds %struct.ixgbe_fcoe_ddp, ptr %arrayidx, i32 0, i32 1
  %50 = ptrtoint ptr %err.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 1, ptr %err.i, align 4
  %sgc.i = getelementptr inbounds %struct.ixgbe_fcoe_ddp, ptr %arrayidx, i32 0, i32 2
  %51 = call ptr @memset(ptr %sgc.i, i32 0, i32 16)
  br label %cleanup

cleanup:                                          ; preds = %if.end60, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %5, %if.end60 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.end3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbe_read_reg(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_pool_free(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ixgbe_fcoe_ddp_get(ptr noundef %netdev, i16 noundef zeroext %xid, ptr noundef %sgl, i32 noundef %sgc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @ixgbe_fcoe_ddp_setup(ptr noundef %netdev, i16 noundef zeroext %xid, ptr noundef %sgl, i32 noundef %sgc, i32 noundef 0)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ixgbe_fcoe_ddp_setup(ptr noundef %netdev, i16 noundef zeroext %xid, ptr noundef %sgl, i32 noundef %sgc, i32 noundef %target_mode) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %netdev, null
  %tobool1.not = icmp eq ptr %sgl, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %conv = zext i16 %xid to i32
  %fcoe_ddp_xid = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 143
  %0 = ptrtoint ptr %fcoe_ddp_xid to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fcoe_ddp_xid, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %conv)
  %cmp.not = icmp ugt i32 %1, %conv
  br i1 %cmp.not, label %if.end10, label %do.body

do.body:                                          ; preds = %if.end
  %msg_enable = getelementptr i8, ptr %netdev, i32 7828
  %2 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %msg_enable, align 4
  %4 = and i16 %3, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool5.not = icmp eq i16 %4, 0
  br i1 %tobool5.not, label %do.body.cleanup_crit_edge, label %if.then6

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  %netdev7 = getelementptr i8, ptr %netdev, i32 2816
  %5 = ptrtoint ptr %netdev7 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %netdev7, align 128
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %6, ptr noundef nonnull @.str.27, i32 noundef %conv) #17
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %state = getelementptr i8, ptr %netdev, i32 2832
  %7 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %state, align 4
  %9 = and i32 %8, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool12.not = icmp eq i32 %9, 0
  br i1 %tobool12.not, label %lor.lhs.false13, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false13:                                  ; preds = %if.end10
  %10 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %state, align 4
  %12 = and i32 %11, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool16.not = icmp eq i32 %12, 0
  br i1 %tobool16.not, label %if.end18, label %lor.lhs.false13.cleanup_crit_edge

lor.lhs.false13.cleanup_crit_edge:                ; preds = %lor.lhs.false13
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end18:                                         ; preds = %lor.lhs.false13
  %arrayidx = getelementptr %struct.ixgbe_adapter, ptr %add.ptr.i, i32 0, i32 74, i32 3, i32 %conv
  %sgl21 = getelementptr %struct.ixgbe_adapter, ptr %add.ptr.i, i32 0, i32 74, i32 3, i32 %conv, i32 3
  %13 = ptrtoint ptr %sgl21 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %sgl21, align 4
  %tobool22.not = icmp eq ptr %14, null
  br i1 %tobool22.not, label %if.end37, label %do.body24

do.body24:                                        ; preds = %if.end18
  %msg_enable25 = getelementptr i8, ptr %netdev, i32 7828
  %15 = ptrtoint ptr %msg_enable25 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %msg_enable25, align 4
  %17 = and i16 %16, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %tobool28.not = icmp eq i16 %17, 0
  br i1 %tobool28.not, label %do.body24.cleanup_crit_edge, label %if.then29

do.body24.cleanup_crit_edge:                      ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then29:                                        ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #16
  %netdev30 = getelementptr i8, ptr %netdev, i32 2816
  %18 = ptrtoint ptr %netdev30 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %netdev30, align 128
  %sgc33 = getelementptr %struct.ixgbe_adapter, ptr %add.ptr.i, i32 0, i32 74, i32 3, i32 %conv, i32 2
  %20 = ptrtoint ptr %sgc33 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %sgc33, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %19, ptr noundef nonnull @.str.28, i32 noundef %conv, ptr noundef nonnull %14, i32 noundef %21) #17
  br label %cleanup

if.end37:                                         ; preds = %if.end18
  %fcoe19 = getelementptr i8, ptr %netdev, i32 9836
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %arrayidx, align 4
  %err.i = getelementptr inbounds %struct.ixgbe_fcoe_ddp, ptr %arrayidx, i32 0, i32 1
  %23 = ptrtoint ptr %err.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %err.i, align 4
  %sgc.i = getelementptr inbounds %struct.ixgbe_fcoe_ddp, ptr %arrayidx, i32 0, i32 2
  %24 = call ptr @memset(ptr %sgc.i, i32 0, i32 16)
  %25 = ptrtoint ptr %fcoe19 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %fcoe19, align 4
  %tobool39.not = icmp eq ptr %26, null
  br i1 %tobool39.not, label %do.body41, label %do.body52

do.body41:                                        ; preds = %if.end37
  %msg_enable42 = getelementptr i8, ptr %netdev, i32 7828
  %27 = ptrtoint ptr %msg_enable42 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %msg_enable42, align 4
  %29 = and i16 %28, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %29)
  %tobool45.not = icmp eq i16 %29, 0
  br i1 %tobool45.not, label %do.body41.cleanup_crit_edge, label %if.then46

do.body41.cleanup_crit_edge:                      ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then46:                                        ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #16
  %netdev47 = getelementptr i8, ptr %netdev, i32 2816
  %30 = ptrtoint ptr %netdev47 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %netdev47, align 128
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %31, ptr noundef nonnull @.str.29) #17
  br label %cleanup

do.body52:                                        ; preds = %if.end37
  %32 = ptrtoint ptr %26 to i32
  %33 = tail call i32 @llvm.read_register.i32(metadata !69) #14
  %and.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %36, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !81
  %37 = tail call i32 @llvm.read_register.i32(metadata !69) #14
  %and.i = and i32 %37, -16384
  %38 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %38, i32 0, i32 3
  %39 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %cpu, align 4
  %arrayidx62 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %40
  %41 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx62, align 4
  %add = add i32 %42, %32
  %43 = inttoptr i32 %add to ptr
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %43, align 8
  %tobool63.not = icmp eq ptr %45, null
  br i1 %tobool63.not, label %do.body65, label %if.end76

do.body65:                                        ; preds = %do.body52
  %msg_enable66 = getelementptr i8, ptr %netdev, i32 7828
  %46 = ptrtoint ptr %msg_enable66 to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %msg_enable66, align 4
  %48 = and i16 %47, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %48)
  %tobool69.not = icmp eq i16 %48, 0
  br i1 %tobool69.not, label %do.body65.do.body240_crit_edge, label %if.then70

do.body65.do.body240_crit_edge:                   ; preds = %do.body65
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body240

if.then70:                                        ; preds = %do.body65
  call void @__sanitizer_cov_trace_pc() #16
  %netdev71 = getelementptr i8, ptr %netdev, i32 2816
  %49 = ptrtoint ptr %netdev71 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %netdev71, align 128
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %50, ptr noundef nonnull @.str.30, i32 noundef %conv) #17
  br label %do.body240

if.end76:                                         ; preds = %do.body52
  %pdev = getelementptr i8, ptr %netdev, i32 2824
  %51 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %52, i32 0, i32 44
  %call77 = tail call i32 @dma_map_sg_attrs(ptr noundef %dev, ptr noundef nonnull %sgl, i32 noundef %sgc, i32 noundef 2, i32 noundef 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77)
  %cmp78 = icmp eq i32 %call77, 0
  br i1 %cmp78, label %do.body81, label %if.end92

do.body81:                                        ; preds = %if.end76
  %msg_enable82 = getelementptr i8, ptr %netdev, i32 7828
  %53 = ptrtoint ptr %msg_enable82 to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %msg_enable82, align 4
  %55 = and i16 %54, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %55)
  %tobool85.not = icmp eq i16 %55, 0
  br i1 %tobool85.not, label %do.body81.do.body240_crit_edge, label %if.then86

do.body81.do.body240_crit_edge:                   ; preds = %do.body81
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body240

if.then86:                                        ; preds = %do.body81
  call void @__sanitizer_cov_trace_pc() #16
  %netdev87 = getelementptr i8, ptr %netdev, i32 2816
  %56 = ptrtoint ptr %netdev87 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %netdev87, align 128
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %57, ptr noundef nonnull @.str.31, i32 noundef %conv) #17
  br label %do.body240

if.end92:                                         ; preds = %if.end76
  %58 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %43, align 8
  %udp = getelementptr %struct.ixgbe_adapter, ptr %add.ptr.i, i32 0, i32 74, i32 3, i32 %conv, i32 4
  %call94 = tail call ptr @dma_pool_alloc(ptr noundef %59, i32 noundef 2592, ptr noundef %udp) #14
  %udl = getelementptr %struct.ixgbe_adapter, ptr %add.ptr.i, i32 0, i32 74, i32 3, i32 %conv, i32 5
  %60 = ptrtoint ptr %udl to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %call94, ptr %udl, align 4
  %tobool96.not = icmp eq ptr %call94, null
  br i1 %tobool96.not, label %do.body98, label %for.body.lr.ph

do.body98:                                        ; preds = %if.end92
  %msg_enable99 = getelementptr i8, ptr %netdev, i32 7828
  %61 = ptrtoint ptr %msg_enable99 to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %msg_enable99, align 4
  %63 = and i16 %62, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %63)
  %tobool102.not = icmp eq i16 %63, 0
  br i1 %tobool102.not, label %do.body98.out_noddp_unmap_crit_edge, label %if.then103

do.body98.out_noddp_unmap_crit_edge:              ; preds = %do.body98
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_noddp_unmap

if.then103:                                       ; preds = %do.body98
  call void @__sanitizer_cov_trace_pc() #16
  %netdev104 = getelementptr i8, ptr %netdev, i32 2816
  %64 = ptrtoint ptr %netdev104 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %netdev104, align 128
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %65, ptr noundef nonnull @.str.32) #17
  br label %out_noddp_unmap

for.body.lr.ph:                                   ; preds = %if.end92
  %66 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %43, align 8
  %pool110 = getelementptr %struct.ixgbe_adapter, ptr %add.ptr.i, i32 0, i32 74, i32 3, i32 %conv, i32 6
  %68 = ptrtoint ptr %pool110 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %67, ptr %pool110, align 4
  %69 = ptrtoint ptr %sgl21 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %sgl, ptr %sgl21, align 4
  %sgc112 = getelementptr %struct.ixgbe_adapter, ptr %add.ptr.i, i32 0, i32 74, i32 3, i32 %conv, i32 2
  %70 = ptrtoint ptr %sgc112 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %sgc, ptr %sgc112, align 4
  %sub129 = add i32 %call77, -1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %thislen.0493 = phi i32 [ 0, %for.body.lr.ph ], [ %thislen.1.lcssa, %for.inc.for.body_crit_edge ]
  %thisoff.0492 = phi i32 [ 0, %for.body.lr.ph ], [ %thisoff.1.lcssa, %for.inc.for.body_crit_edge ]
  %firstoff.0491 = phi i32 [ 0, %for.body.lr.ph ], [ %firstoff.1.lcssa, %for.inc.for.body_crit_edge ]
  %j.0490 = phi i32 [ 0, %for.body.lr.ph ], [ %j.1.lcssa, %for.inc.for.body_crit_edge ]
  %i.0488 = phi i32 [ 0, %for.body.lr.ph ], [ %inc152, %for.inc.for.body_crit_edge ]
  %sg.0487 = phi ptr [ %sgl, %for.body.lr.ph ], [ %call153, %for.inc.for.body_crit_edge ]
  %dma_length = getelementptr inbounds %struct.scatterlist, ptr %sg.0487, i32 0, i32 4
  %71 = ptrtoint ptr %dma_length to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %dma_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %tobool115.not478 = icmp eq i32 %72, 0
  br i1 %tobool115.not478, label %for.body.for.inc_crit_edge, label %while.body.lr.ph

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

while.body.lr.ph:                                 ; preds = %for.body
  %dma_address = getelementptr inbounds %struct.scatterlist, ptr %sg.0487, i32 0, i32 3
  %73 = ptrtoint ptr %dma_address to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %dma_address, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0488, i32 %sub129)
  %cmp130.not = icmp eq i32 %i.0488, %sub129
  %umax = call i32 @llvm.umax.i32(i32 %j.0490, i32 256)
  br label %while.body

while.body:                                       ; preds = %if.end140.while.body_crit_edge, %while.body.lr.ph
  %addr.0482 = phi i32 [ %74, %while.body.lr.ph ], [ %add150, %if.end140.while.body_crit_edge ]
  %firstoff.1481 = phi i32 [ %firstoff.0491, %while.body.lr.ph ], [ %spec.select, %if.end140.while.body_crit_edge ]
  %len.0480 = phi i32 [ %72, %while.body.lr.ph ], [ %sub149, %if.end140.while.body_crit_edge ]
  %j.1479 = phi i32 [ %j.0490, %while.body.lr.ph ], [ %inc151, %if.end140.while.body_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %j.1479, i32 %umax)
  %exitcond = icmp eq i32 %j.1479, %umax
  br i1 %exitcond, label %if.then118, label %if.end119

if.then118:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  %noddp = getelementptr inbounds %struct.ixgbe_fcoe_ddp_pool, ptr %43, i32 0, i32 1
  br label %out_noddp_free.sink.split

if.end119:                                        ; preds = %while.body
  %and120 = and i32 %addr.0482, 4095
  %sub = sub nuw nsw i32 4096, %and120
  %75 = tail call i32 @llvm.umin.i32(i32 %sub, i32 %len.0480)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %j.1479)
  %cmp124.not = icmp eq i32 %j.1479, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and120)
  %tobool126.not = icmp eq i32 %and120, 0
  %or.cond390 = select i1 %cmp124.not, i1 true, i1 %tobool126.not
  br i1 %or.cond390, label %if.end128, label %if.end119.out_noddp_free_crit_edge

if.end119.out_noddp_free_crit_edge:               ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_noddp_free

if.end128:                                        ; preds = %if.end119
  call void @__sanitizer_cov_trace_cmp4(i32 %len.0480, i32 %sub)
  %cmp133.not = icmp ule i32 %len.0480, %sub
  %or.cond391 = select i1 %cmp130.not, i1 %cmp133.not, i1 false
  %add136 = add nuw nsw i32 %75, %and120
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add136)
  %cmp137.not = icmp eq i32 %add136, 4096
  %or.cond392 = select i1 %or.cond391, i1 true, i1 %cmp137.not
  br i1 %or.cond392, label %if.end140, label %if.end128.out_noddp_free_crit_edge

if.end128.out_noddp_free_crit_edge:               ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_noddp_free

if.end140:                                        ; preds = %if.end128
  %sub141 = and i32 %addr.0482, -4096
  %conv142 = zext i32 %sub141 to i64
  %76 = ptrtoint ptr %udl to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %udl, align 4
  %arrayidx144 = getelementptr i64, ptr %77, i32 %j.1479
  %78 = ptrtoint ptr %arrayidx144 to i32
  call void @__asan_store8_noabort(i32 %78)
  store i64 %conv142, ptr %arrayidx144, align 8
  %spec.select = select i1 %cmp124.not, i32 %and120, i32 %firstoff.1481
  %sub149 = sub i32 %len.0480, %75
  %add150 = add i32 %75, %addr.0482
  %inc151 = add i32 %j.1479, 1
  %tobool115.not = icmp eq i32 %sub149, 0
  br i1 %tobool115.not, label %if.end140.for.inc_crit_edge, label %if.end140.while.body_crit_edge

if.end140.while.body_crit_edge:                   ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body

if.end140.for.inc_crit_edge:                      ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

for.inc:                                          ; preds = %if.end140.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %j.1.lcssa = phi i32 [ %j.0490, %for.body.for.inc_crit_edge ], [ %inc151, %if.end140.for.inc_crit_edge ]
  %firstoff.1.lcssa = phi i32 [ %firstoff.0491, %for.body.for.inc_crit_edge ], [ %spec.select, %if.end140.for.inc_crit_edge ]
  %thisoff.1.lcssa = phi i32 [ %thisoff.0492, %for.body.for.inc_crit_edge ], [ %and120, %if.end140.for.inc_crit_edge ]
  %thislen.1.lcssa = phi i32 [ %thislen.0493, %for.body.for.inc_crit_edge ], [ %75, %if.end140.for.inc_crit_edge ]
  %inc152 = add nuw i32 %i.0488, 1
  %call153 = tail call ptr @sg_next(ptr noundef %sg.0487) #14
  %exitcond500.not = icmp eq i32 %inc152, %call77
  br i1 %exitcond500.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.end:                                          ; preds = %for.inc
  %79 = add i32 %thislen.1.lcssa, %thisoff.1.lcssa
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %79)
  %cmp155 = icmp eq i32 %79, 4096
  br i1 %cmp155, label %if.then157, label %for.end.do.body168_crit_edge

for.end.do.body168_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body168

if.then157:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %j.1.lcssa)
  %cmp158 = icmp ugt i32 %j.1.lcssa, 255
  br i1 %cmp158, label %if.then160, label %if.end162

if.then160:                                       ; preds = %if.then157
  call void @__sanitizer_cov_trace_pc() #16
  %noddp_ext_buff = getelementptr inbounds %struct.ixgbe_fcoe_ddp_pool, ptr %43, i32 0, i32 2
  br label %out_noddp_free.sink.split

if.end162:                                        ; preds = %if.then157
  call void @__sanitizer_cov_trace_pc() #16
  %extra_ddp_buffer_dma = getelementptr i8, ptr %netdev, i32 67236
  %80 = ptrtoint ptr %extra_ddp_buffer_dma to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %extra_ddp_buffer_dma, align 4
  %conv163 = zext i32 %81 to i64
  %82 = ptrtoint ptr %udl to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %udl, align 4
  %arrayidx165 = getelementptr i64, ptr %83, i32 %j.1.lcssa
  %84 = ptrtoint ptr %arrayidx165 to i32
  call void @__asan_store8_noabort(i32 %84)
  store i64 %conv163, ptr %arrayidx165, align 8
  %inc166 = add nuw nsw i32 %j.1.lcssa, 1
  br label %do.body168

do.body168:                                       ; preds = %if.end162, %for.end.do.body168_crit_edge
  %j.2 = phi i32 [ %inc166, %if.end162 ], [ %j.1.lcssa, %for.end.do.body168_crit_edge ]
  %lastsize.0 = phi i32 [ 1, %if.end162 ], [ %79, %for.end.do.body168_crit_edge ]
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !82
  %85 = tail call i32 @llvm.read_register.i32(metadata !69) #14
  %and.i.i.i396 = and i32 %85, -16384
  %86 = inttoptr i32 %and.i.i.i396 to ptr
  %preempt_count.i.i397 = getelementptr inbounds %struct.thread_info, ptr %86, i32 0, i32 1
  %87 = ptrtoint ptr %preempt_count.i.i397 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load volatile i32, ptr %preempt_count.i.i397, align 4
  %sub.i = add i32 %88, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i397, align 4
  %and171 = shl i32 %j.2, 8
  %shl = and i32 %and171, 65280
  %shl172 = shl i32 %firstoff.1.lcssa, 16
  %or173 = or i32 %shl, %shl172
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %target_mode)
  %tobool174.not = icmp eq i32 %target_mode, 0
  %or176 = or i32 %or173, 128
  %spec.select393 = select i1 %tobool174.not, i32 %or173, i32 %or176
  %or178 = or i32 %spec.select393, 1
  %or180 = or i32 %conv, 16384
  %shl181 = shl i32 %lastsize.0, 16
  %or182 = or i32 %shl181, %or180
  %hw185 = getelementptr i8, ptr %netdev, i32 6528
  br i1 %tobool174.not, label %do.body168.if.end194_crit_edge, label %land.lhs.true187

do.body168.if.end194_crit_edge:                   ; preds = %do.body168
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end194

land.lhs.true187:                                 ; preds = %do.body168
  %mode = getelementptr i8, ptr %netdev, i32 67240
  %89 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load volatile i32, ptr %mode, align 4
  %91 = and i32 %90, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %91)
  %tobool189.not = icmp eq i32 %91, 0
  br i1 %tobool189.not, label %if.then190, label %land.lhs.true187.if.end194_crit_edge

land.lhs.true187.if.end194_crit_edge:             ; preds = %land.lhs.true187
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end194

if.then190:                                       ; preds = %land.lhs.true187
  tail call void @_set_bit(i32 noundef 1, ptr noundef %mode) #14
  %call192 = tail call i32 @ixgbe_read_reg(ptr noundef %hw185, i32 noundef 20736) #14
  %92 = ptrtoint ptr %hw185 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load volatile ptr, ptr %hw185, align 4
  %tobool.not.i.i = icmp eq ptr %93, null
  br i1 %tobool.not.i.i, label %if.then190.if.end194_crit_edge, label %do.body1.i

if.then190.if.end194_crit_edge:                   ; preds = %if.then190
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end194

do.body1.i:                                       ; preds = %if.then190
  call void @__sanitizer_cov_trace_pc() #16
  %or193 = or i32 %call192, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !79
  tail call void @arm_heavy_mb() #14
  %94 = tail call i32 @llvm.bswap.i32(i32 %or193) #14
  %add.ptr.i403 = getelementptr i8, ptr %93, i32 20736
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i403, i32 %94) #14, !srcloc !80
  br label %if.end194

if.end194:                                        ; preds = %do.body1.i, %if.then190.if.end194_crit_edge, %land.lhs.true187.if.end194_crit_edge, %do.body168.if.end194_crit_edge
  %type = getelementptr i8, ptr %netdev, i32 6808
  %95 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %96)
  %cmp195 = icmp eq i32 %96, 4
  br i1 %cmp195, label %if.then197, label %if.else

if.then197:                                       ; preds = %if.end194
  %mul = shl nuw nsw i32 %conv, 4
  %97 = ptrtoint ptr %udp to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %udp, align 4
  %99 = ptrtoint ptr %hw185 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load volatile ptr, ptr %hw185, align 4
  %tobool.not.i.i404 = icmp eq ptr %100, null
  br i1 %tobool.not.i.i404, label %if.then197.ixgbe_write_reg.exit407_crit_edge, label %do.body1.i406

if.then197.ixgbe_write_reg.exit407_crit_edge:     ; preds = %if.then197
  call void @__sanitizer_cov_trace_pc() #16
  br label %ixgbe_write_reg.exit407

do.body1.i406:                                    ; preds = %if.then197
  call void @__sanitizer_cov_trace_pc() #16
  %add199 = add nuw nsw i32 %mul, 131072
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !79
  tail call void @arm_heavy_mb() #14
  %101 = tail call i32 @llvm.bswap.i32(i32 %98) #14
  %add.ptr.i405 = getelementptr i8, ptr %100, i32 %add199
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i405, i32 %101) #14, !srcloc !80
  br label %ixgbe_write_reg.exit407

ixgbe_write_reg.exit407:                          ; preds = %do.body1.i406, %if.then197.ixgbe_write_reg.exit407_crit_edge
  %102 = ptrtoint ptr %hw185 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load volatile ptr, ptr %hw185, align 4
  %tobool.not.i.i408 = icmp eq ptr %103, null
  br i1 %tobool.not.i.i408, label %ixgbe_write_reg.exit407.ixgbe_write_reg.exit411_crit_edge, label %do.body1.i410

ixgbe_write_reg.exit407.ixgbe_write_reg.exit411_crit_edge: ; preds = %ixgbe_write_reg.exit407
  call void @__sanitizer_cov_trace_pc() #16
  br label %ixgbe_write_reg.exit411

do.body1.i410:                                    ; preds = %ixgbe_write_reg.exit407
  call void @__sanitizer_cov_trace_pc() #16
  %add206 = add nuw nsw i32 %mul, 131076
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !79
  tail call void @arm_heavy_mb() #14
  %add.ptr.i409 = getelementptr i8, ptr %103, i32 %add206
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i409, i32 0) #14, !srcloc !80
  br label %ixgbe_write_reg.exit411

ixgbe_write_reg.exit411:                          ; preds = %do.body1.i410, %ixgbe_write_reg.exit407.ixgbe_write_reg.exit411_crit_edge
  %104 = ptrtoint ptr %hw185 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load volatile ptr, ptr %hw185, align 4
  %tobool.not.i.i412 = icmp eq ptr %105, null
  br i1 %tobool.not.i.i412, label %ixgbe_write_reg.exit411.ixgbe_write_reg.exit415_crit_edge, label %do.body1.i414

ixgbe_write_reg.exit411.ixgbe_write_reg.exit415_crit_edge: ; preds = %ixgbe_write_reg.exit411
  call void @__sanitizer_cov_trace_pc() #16
  br label %ixgbe_write_reg.exit415

do.body1.i414:                                    ; preds = %ixgbe_write_reg.exit411
  call void @__sanitizer_cov_trace_pc() #16
  %add212 = add nuw nsw i32 %mul, 131080
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !79
  tail call void @arm_heavy_mb() #14
  %106 = tail call i32 @llvm.bswap.i32(i32 %or178) #14
  %add.ptr.i413 = getelementptr i8, ptr %105, i32 %add212
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i413, i32 %106) #14, !srcloc !80
  br label %ixgbe_write_reg.exit415

ixgbe_write_reg.exit415:                          ; preds = %do.body1.i414, %ixgbe_write_reg.exit411.ixgbe_write_reg.exit415_crit_edge
  %107 = ptrtoint ptr %hw185 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load volatile ptr, ptr %hw185, align 4
  %tobool.not.i.i416 = icmp eq ptr %108, null
  br i1 %tobool.not.i.i416, label %ixgbe_write_reg.exit415.ixgbe_write_reg.exit419_crit_edge, label %do.body1.i418

ixgbe_write_reg.exit415.ixgbe_write_reg.exit419_crit_edge: ; preds = %ixgbe_write_reg.exit415
  call void @__sanitizer_cov_trace_pc() #16
  br label %ixgbe_write_reg.exit419

do.body1.i418:                                    ; preds = %ixgbe_write_reg.exit415
  call void @__sanitizer_cov_trace_pc() #16
  %add215 = add nuw nsw i32 %mul, 131084
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !79
  tail call void @arm_heavy_mb() #14
  %109 = tail call i32 @llvm.bswap.i32(i32 %or182) #14
  %add.ptr.i417 = getelementptr i8, ptr %108, i32 %add215
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i417, i32 %109) #14, !srcloc !80
  br label %ixgbe_write_reg.exit419

ixgbe_write_reg.exit419:                          ; preds = %do.body1.i418, %ixgbe_write_reg.exit415.ixgbe_write_reg.exit419_crit_edge
  %110 = ptrtoint ptr %hw185 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load volatile ptr, ptr %hw185, align 4
  %tobool.not.i.i420 = icmp eq ptr %111, null
  br i1 %tobool.not.i.i420, label %ixgbe_write_reg.exit419.ixgbe_write_reg.exit423_crit_edge, label %do.body1.i422

ixgbe_write_reg.exit419.ixgbe_write_reg.exit423_crit_edge: ; preds = %ixgbe_write_reg.exit419
  call void @__sanitizer_cov_trace_pc() #16
  br label %ixgbe_write_reg.exit423

do.body1.i422:                                    ; preds = %ixgbe_write_reg.exit419
  call void @__sanitizer_cov_trace_pc() #16
  %add218 = add nuw nsw i32 %mul, 163840
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !79
  tail call void @arm_heavy_mb() #14
  %add.ptr.i421 = getelementptr i8, ptr %111, i32 %add218
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i421, i32 16777216) #14, !srcloc !80
  br label %ixgbe_write_reg.exit423

ixgbe_write_reg.exit423:                          ; preds = %do.body1.i422, %ixgbe_write_reg.exit419.ixgbe_write_reg.exit423_crit_edge
  %112 = ptrtoint ptr %hw185 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load volatile ptr, ptr %hw185, align 4
  %tobool.not.i.i424 = icmp eq ptr %113, null
  br i1 %tobool.not.i.i424, label %ixgbe_write_reg.exit423.ixgbe_write_reg.exit427_crit_edge, label %do.body1.i426

ixgbe_write_reg.exit423.ixgbe_write_reg.exit427_crit_edge: ; preds = %ixgbe_write_reg.exit423
  call void @__sanitizer_cov_trace_pc() #16
  br label %ixgbe_write_reg.exit427

do.body1.i426:                                    ; preds = %ixgbe_write_reg.exit423
  call void @__sanitizer_cov_trace_pc() #16
  %add221 = add nuw nsw i32 %mul, 163844
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !79
  tail call void @arm_heavy_mb() #14
  %add.ptr.i425 = getelementptr i8, ptr %113, i32 %add221
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i425, i32 0) #14, !srcloc !80
  br label %ixgbe_write_reg.exit427

ixgbe_write_reg.exit427:                          ; preds = %do.body1.i426, %ixgbe_write_reg.exit423.ixgbe_write_reg.exit427_crit_edge
  %114 = ptrtoint ptr %hw185 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load volatile ptr, ptr %hw185, align 4
  %tobool.not.i.i428 = icmp eq ptr %115, null
  br i1 %tobool.not.i.i428, label %ixgbe_write_reg.exit427.cleanup_crit_edge, label %do.body1.i430

ixgbe_write_reg.exit427.cleanup_crit_edge:        ; preds = %ixgbe_write_reg.exit427
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.body1.i430:                                    ; preds = %ixgbe_write_reg.exit427
  call void @__sanitizer_cov_trace_pc() #16
  %add224 = add nuw nsw i32 %mul, 163852
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !79
  tail call void @arm_heavy_mb() #14
  %116 = tail call i32 @llvm.bswap.i32(i32 %or180) #14
  %add.ptr.i429 = getelementptr i8, ptr %115, i32 %add224
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i429, i32 %116) #14, !srcloc !80
  br label %cleanup

if.else:                                          ; preds = %if.end194
  %lock = getelementptr i8, ptr %netdev, i32 9844
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #14
  %117 = ptrtoint ptr %udp to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %udp, align 4
  %119 = ptrtoint ptr %hw185 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load volatile ptr, ptr %hw185, align 4
  %tobool.not.i.i432 = icmp eq ptr %120, null
  br i1 %tobool.not.i.i432, label %if.else.ixgbe_write_reg.exit435_crit_edge, label %do.body1.i434

if.else.ixgbe_write_reg.exit435_crit_edge:        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %ixgbe_write_reg.exit435

do.body1.i434:                                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !79
  tail call void @arm_heavy_mb() #14
  %121 = tail call i32 @llvm.bswap.i32(i32 %118) #14
  %add.ptr.i433 = getelementptr i8, ptr %120, i32 9232
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i433, i32 %121) #14, !srcloc !80
  br label %ixgbe_write_reg.exit435

ixgbe_write_reg.exit435:                          ; preds = %do.body1.i434, %if.else.ixgbe_write_reg.exit435_crit_edge
  %122 = ptrtoint ptr %hw185 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load volatile ptr, ptr %hw185, align 4
  %tobool.not.i.i436 = icmp eq ptr %123, null
  br i1 %tobool.not.i.i436, label %ixgbe_write_reg.exit435.ixgbe_write_reg.exit439_crit_edge, label %do.body1.i438

ixgbe_write_reg.exit435.ixgbe_write_reg.exit439_crit_edge: ; preds = %ixgbe_write_reg.exit435
  call void @__sanitizer_cov_trace_pc() #16
  br label %ixgbe_write_reg.exit439

do.body1.i438:                                    ; preds = %ixgbe_write_reg.exit435
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !79
  tail call void @arm_heavy_mb() #14
  %add.ptr.i437 = getelementptr i8, ptr %123, i32 9236
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i437, i32 0) #14, !srcloc !80
  br label %ixgbe_write_reg.exit439

ixgbe_write_reg.exit439:                          ; preds = %do.body1.i438, %ixgbe_write_reg.exit435.ixgbe_write_reg.exit439_crit_edge
  %124 = ptrtoint ptr %hw185 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load volatile ptr, ptr %hw185, align 4
  %tobool.not.i.i440 = icmp eq ptr %125, null
  br i1 %tobool.not.i.i440, label %ixgbe_write_reg.exit439.ixgbe_write_reg.exit443_crit_edge, label %do.body1.i442

ixgbe_write_reg.exit439.ixgbe_write_reg.exit443_crit_edge: ; preds = %ixgbe_write_reg.exit439
  call void @__sanitizer_cov_trace_pc() #16
  br label %ixgbe_write_reg.exit443

do.body1.i442:                                    ; preds = %ixgbe_write_reg.exit439
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !79
  tail call void @arm_heavy_mb() #14
  %126 = tail call i32 @llvm.bswap.i32(i32 %or178) #14
  %add.ptr.i441 = getelementptr i8, ptr %125, i32 9240
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i441, i32 %126) #14, !srcloc !80
  br label %ixgbe_write_reg.exit443

ixgbe_write_reg.exit443:                          ; preds = %do.body1.i442, %ixgbe_write_reg.exit439.ixgbe_write_reg.exit443_crit_edge
  %127 = ptrtoint ptr %hw185 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load volatile ptr, ptr %hw185, align 4
  %tobool.not.i.i444 = icmp eq ptr %128, null
  br i1 %tobool.not.i.i444, label %ixgbe_write_reg.exit443.ixgbe_write_reg.exit447_crit_edge, label %do.body1.i446

ixgbe_write_reg.exit443.ixgbe_write_reg.exit447_crit_edge: ; preds = %ixgbe_write_reg.exit443
  call void @__sanitizer_cov_trace_pc() #16
  br label %ixgbe_write_reg.exit447

do.body1.i446:                                    ; preds = %ixgbe_write_reg.exit443
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !79
  tail call void @arm_heavy_mb() #14
  %129 = tail call i32 @llvm.bswap.i32(i32 %or182) #14
  %add.ptr.i445 = getelementptr i8, ptr %128, i32 9248
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i445, i32 %129) #14, !srcloc !80
  br label %ixgbe_write_reg.exit447

ixgbe_write_reg.exit447:                          ; preds = %do.body1.i446, %ixgbe_write_reg.exit443.ixgbe_write_reg.exit447_crit_edge
  %130 = ptrtoint ptr %hw185 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load volatile ptr, ptr %hw185, align 4
  %tobool.not.i.i448 = icmp eq ptr %131, null
  br i1 %tobool.not.i.i448, label %ixgbe_write_reg.exit447.ixgbe_write_reg.exit451_crit_edge, label %do.body1.i450

ixgbe_write_reg.exit447.ixgbe_write_reg.exit451_crit_edge: ; preds = %ixgbe_write_reg.exit447
  call void @__sanitizer_cov_trace_pc() #16
  br label %ixgbe_write_reg.exit451

do.body1.i450:                                    ; preds = %ixgbe_write_reg.exit447
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !79
  tail call void @arm_heavy_mb() #14
  %add.ptr.i449 = getelementptr i8, ptr %131, i32 20952
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i449, i32 0) #14, !srcloc !80
  br label %ixgbe_write_reg.exit451

ixgbe_write_reg.exit451:                          ; preds = %do.body1.i450, %ixgbe_write_reg.exit447.ixgbe_write_reg.exit451_crit_edge
  %132 = ptrtoint ptr %hw185 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load volatile ptr, ptr %hw185, align 4
  %tobool.not.i.i452 = icmp eq ptr %133, null
  br i1 %tobool.not.i.i452, label %ixgbe_write_reg.exit451.ixgbe_write_reg.exit455_crit_edge, label %do.body1.i454

ixgbe_write_reg.exit451.ixgbe_write_reg.exit455_crit_edge: ; preds = %ixgbe_write_reg.exit451
  call void @__sanitizer_cov_trace_pc() #16
  br label %ixgbe_write_reg.exit455

do.body1.i454:                                    ; preds = %ixgbe_write_reg.exit451
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !79
  tail call void @arm_heavy_mb() #14
  %add.ptr.i453 = getelementptr i8, ptr %133, i32 20744
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i453, i32 16777216) #14, !srcloc !80
  br label %ixgbe_write_reg.exit455

ixgbe_write_reg.exit455:                          ; preds = %do.body1.i454, %ixgbe_write_reg.exit451.ixgbe_write_reg.exit455_crit_edge
  %134 = ptrtoint ptr %hw185 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load volatile ptr, ptr %hw185, align 4
  %tobool.not.i.i456 = icmp eq ptr %135, null
  br i1 %tobool.not.i.i456, label %ixgbe_write_reg.exit455.ixgbe_write_reg.exit459_crit_edge, label %do.body1.i458

ixgbe_write_reg.exit455.ixgbe_write_reg.exit459_crit_edge: ; preds = %ixgbe_write_reg.exit455
  call void @__sanitizer_cov_trace_pc() #16
  br label %ixgbe_write_reg.exit459

do.body1.i458:                                    ; preds = %ixgbe_write_reg.exit455
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !79
  tail call void @arm_heavy_mb() #14
  %136 = tail call i32 @llvm.bswap.i32(i32 %or180) #14
  %add.ptr.i457 = getelementptr i8, ptr %135, i32 20752
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i457, i32 %136) #14, !srcloc !80
  br label %ixgbe_write_reg.exit459

ixgbe_write_reg.exit459:                          ; preds = %do.body1.i458, %ixgbe_write_reg.exit455.ixgbe_write_reg.exit459_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #14
  br label %cleanup

out_noddp_free.sink.split:                        ; preds = %if.then160, %if.then118
  %noddp_ext_buff.sink503 = phi ptr [ %noddp_ext_buff, %if.then160 ], [ %noddp, %if.then118 ]
  %137 = ptrtoint ptr %noddp_ext_buff.sink503 to i32
  call void @__asan_load8_noabort(i32 %137)
  %138 = load i64, ptr %noddp_ext_buff.sink503, align 8
  %inc161 = add i64 %138, 1
  store i64 %inc161, ptr %noddp_ext_buff.sink503, align 8
  br label %out_noddp_free

out_noddp_free:                                   ; preds = %out_noddp_free.sink.split, %if.end128.out_noddp_free_crit_edge, %if.end119.out_noddp_free_crit_edge
  %139 = ptrtoint ptr %pool110 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %pool110, align 4
  %141 = ptrtoint ptr %udl to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %udl, align 4
  %143 = ptrtoint ptr %udp to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %udp, align 4
  tail call void @dma_pool_free(ptr noundef %140, ptr noundef %142, i32 noundef %144) #14
  %145 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 0, ptr %arrayidx, align 4
  %146 = ptrtoint ptr %err.i to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 1, ptr %err.i, align 4
  %147 = call ptr @memset(ptr %sgc.i, i32 0, i32 16)
  br label %out_noddp_unmap

out_noddp_unmap:                                  ; preds = %out_noddp_free, %if.then103, %do.body98.out_noddp_unmap_crit_edge
  %148 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %pdev, align 8
  %dev239 = getelementptr inbounds %struct.pci_dev, ptr %149, i32 0, i32 44
  tail call void @dma_unmap_sg_attrs(ptr noundef %dev239, ptr noundef nonnull %sgl, i32 noundef %sgc, i32 noundef 2, i32 noundef 0) #14
  br label %do.body240

do.body240:                                       ; preds = %out_noddp_unmap, %if.then86, %do.body81.do.body240_crit_edge, %if.then70, %do.body65.do.body240_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !83
  %150 = tail call i32 @llvm.read_register.i32(metadata !69) #14
  %and.i.i.i400 = and i32 %150, -16384
  %151 = inttoptr i32 %and.i.i.i400 to ptr
  %preempt_count.i.i401 = getelementptr inbounds %struct.thread_info, ptr %151, i32 0, i32 1
  %152 = ptrtoint ptr %preempt_count.i.i401 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load volatile i32, ptr %preempt_count.i.i401, align 4
  %sub.i402 = add i32 %153, -1
  store volatile i32 %sub.i402, ptr %preempt_count.i.i401, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.body240, %ixgbe_write_reg.exit459, %do.body1.i430, %ixgbe_write_reg.exit427.cleanup_crit_edge, %if.then46, %do.body41.cleanup_crit_edge, %if.then29, %do.body24.cleanup_crit_edge, %lor.lhs.false13.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %if.then6, %do.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body240 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.then6 ], [ 0, %do.body.cleanup_crit_edge ], [ 0, %lor.lhs.false13.cleanup_crit_edge ], [ 0, %if.end10.cleanup_crit_edge ], [ 0, %if.then29 ], [ 0, %do.body24.cleanup_crit_edge ], [ 0, %if.then46 ], [ 0, %do.body41.cleanup_crit_edge ], [ 1, %ixgbe_write_reg.exit459 ], [ 1, %ixgbe_write_reg.exit427.cleanup_crit_edge ], [ 1, %do.body1.i430 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ixgbe_fcoe_ddp_target(ptr noundef %netdev, i16 noundef zeroext %xid, ptr noundef %sgl, i32 noundef %sgc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @ixgbe_fcoe_ddp_setup(ptr noundef %netdev, i16 noundef zeroext %xid, ptr noundef %sgl, i32 noundef %sgc, i32 noundef 1)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ixgbe_fcoe_ddp(ptr nocapture noundef %adapter, ptr nocapture noundef readonly %rx_desc, ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %upper.i = getelementptr inbounds %struct.anon.146, ptr %rx_desc, i32 0, i32 1
  %0 = ptrtoint ptr %upper.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %upper.i, align 8
  %and.i = and i32 %1, 28672
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %and.i)
  %cmp = icmp eq i32 %and.i, 4096
  %ip_summed = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %2 = ptrtoint ptr %ip_summed to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load = load i16, ptr %ip_summed, align 8
  %bf.clear = and i16 %bf.load, -1537
  %bf.set4 = or i16 %bf.clear, 512
  %bf.set4.sink = select i1 %cmp, i16 %bf.clear, i16 %bf.set4
  store i16 %bf.set4.sink, ptr %ip_summed, align 8
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %3 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %head.i.i, align 8
  %mac_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %5 = ptrtoint ptr %mac_header.i.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %mac_header.i.i, align 2
  %conv.i.i = zext i16 %6 to i32
  %add.ptr.i.i = getelementptr i8, ptr %4, i32 %conv.i.i
  %h_proto = getelementptr inbounds %struct.ethhdr, ptr %add.ptr.i.i, i32 0, i32 2
  %7 = ptrtoint ptr %h_proto to i32
  call void @__asan_loadN_noabort(i32 %7, i32 2)
  %8 = load i16, ptr %h_proto, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32512, i16 %8)
  %cmp6 = icmp eq i16 %8, -32512
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %9 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data, align 4
  %add.ptr.pn.idx = select i1 %cmp6, i32 4, i32 0
  %add.ptr.pn = getelementptr i8, ptr %10, i32 %add.ptr.pn.idx
  %fh.0 = getelementptr i8, ptr %add.ptr.pn, i32 14
  %fh_f_ctl = getelementptr i8, ptr %add.ptr.pn, i32 23
  %11 = ptrtoint ptr %fh_f_ctl to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %fh_f_ctl, align 1
  %conv.i = zext i8 %12 to i32
  %13 = and i32 %conv.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not = icmp eq i32 %13, 0
  %xid.0.in.v = select i1 %tobool.not, i32 32, i32 30
  %xid.0.in = getelementptr i8, ptr %add.ptr.pn, i32 %xid.0.in.v
  %14 = ptrtoint ptr %xid.0.in to i32
  call void @__asan_load2_noabort(i32 %14)
  %xid.0 = load i16, ptr %xid.0.in, align 2
  %type = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 54, i32 2, i32 1
  %15 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %16)
  %cmp18 = icmp eq i32 %16, 4
  %spec.store.select = select i1 %cmp18, i32 2048, i32 512
  %conv22 = zext i16 %xid.0 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.store.select, i32 %conv22)
  %cmp23.not = icmp ugt i32 %spec.store.select, %conv22
  br i1 %cmp23.not, label %if.end26, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end26:                                         ; preds = %entry
  %arrayidx = getelementptr %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 74, i32 3, i32 %conv22
  %udl = getelementptr %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 74, i32 3, i32 %conv22, i32 5
  %17 = ptrtoint ptr %udl to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %udl, align 4
  %tobool29.not = icmp eq ptr %18, null
  br i1 %tobool29.not, label %if.end26.cleanup_crit_edge, label %if.end31

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end31:                                         ; preds = %if.end26
  %19 = ptrtoint ptr %upper.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %upper.i, align 8
  %and.i96 = and i32 %20, 28800
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i96)
  %tobool33.not = icmp eq i32 %and.i96, 0
  br i1 %tobool33.not, label %if.end35, label %if.end31.cleanup_crit_edge

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end35:                                         ; preds = %if.end31
  %and.i98 = lshr i32 %20, 28
  %21 = and i32 %and.i98, 3
  %22 = zext i32 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values)
  switch i32 %21, label %if.end35.sw.epilog_crit_edge [
    i32 3, label %sw.bb
    i32 2, label %sw.bb37
    i32 1, label %if.end35.sw.bb40_crit_edge
  ]

if.end35.sw.bb40_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb40

if.end35.sw.epilog_crit_edge:                     ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #16
  %hi_dword = getelementptr inbounds %struct.anon.147, ptr %rx_desc, i32 0, i32 1
  %23 = ptrtoint ptr %hi_dword to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %hi_dword, align 4
  %25 = tail call i32 @llvm.bswap.i32(i32 %24)
  %26 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %arrayidx, align 4
  br label %sw.epilog

sw.bb37:                                          ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #16
  %pdev = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 3
  %27 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %28, i32 0, i32 44
  %sgl = getelementptr %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 74, i32 3, i32 %conv22, i32 3
  %29 = ptrtoint ptr %sgl to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %sgl, align 4
  %sgc = getelementptr %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 74, i32 3, i32 %conv22, i32 2
  %31 = ptrtoint ptr %sgc to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %sgc, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %dev, ptr noundef %30, i32 noundef %32, i32 noundef 2, i32 noundef 0) #14
  %err = getelementptr %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 74, i32 3, i32 %conv22, i32 1
  %33 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %err, align 4
  %34 = ptrtoint ptr %sgl to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %sgl, align 4
  %35 = ptrtoint ptr %sgc to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %sgc, align 4
  br label %sw.bb40

sw.bb40:                                          ; preds = %sw.bb37, %if.end35.sw.bb40_crit_edge
  %hi_dword42 = getelementptr inbounds %struct.anon.147, ptr %rx_desc, i32 0, i32 1
  %36 = ptrtoint ptr %hi_dword42 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %hi_dword42, align 4
  %38 = tail call i32 @llvm.bswap.i32(i32 %37)
  %39 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool45.not = icmp eq i32 %37, 0
  %spec.select = select i1 %tobool45.not, i32 -22, i32 %38
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb40, %sw.bb, %if.end35.sw.epilog_crit_edge
  %rc.0 = phi i32 [ -22, %if.end35.sw.epilog_crit_edge ], [ 0, %sw.bb ], [ %spec.select, %sw.bb40 ]
  %40 = ptrtoint ptr %fh.0 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %fh.0, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %41)
  %cmp51 = icmp ne i8 %41, 1
  %42 = and i32 %conv.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool54.not = icmp eq i32 %42, 0
  %or.cond = select i1 %cmp51, i1 true, i1 %tobool54.not
  br i1 %or.cond, label %sw.epilog.cleanup_crit_edge, label %if.then55

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then55:                                        ; preds = %sw.epilog
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %43 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool.i.not.i = icmp eq i32 %44, 0
  br i1 %tobool.i.not.i, label %if.then55.skb_linearize.exit_crit_edge, label %cond.true.i

if.then55.skb_linearize.exit_crit_edge:           ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #16
  br label %skb_linearize.exit

cond.true.i:                                      ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #16
  %call.i.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %44) #14
  br label %skb_linearize.exit

skb_linearize.exit:                               ; preds = %cond.true.i, %if.then55.skb_linearize.exit_crit_edge
  %call57 = tail call ptr @skb_put(ptr noundef %skb, i32 noundef 8) #14
  %fcoe_eof = getelementptr inbounds %struct.fcoe_crc_eof, ptr %call57, i32 0, i32 1
  %45 = ptrtoint ptr %fcoe_eof to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 66, ptr %fcoe_eof, align 1
  br label %cleanup

cleanup:                                          ; preds = %skb_linearize.exit, %sw.epilog.cleanup_crit_edge, %if.end31.cleanup_crit_edge, %if.end26.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end26.cleanup_crit_edge ], [ -22, %if.end31.cleanup_crit_edge ], [ %rc.0, %skb_linearize.exit ], [ %rc.0, %sw.epilog.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ixgbe_fso(ptr noundef %tx_ring, ptr nocapture noundef %first, ptr nocapture noundef %hdr_len) local_unnamed_addr #0 align 64 {
entry:
  %eof = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.ixgbe_tx_buffer, ptr %first, i32 0, i32 2
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %eof) #14
  %3 = ptrtoint ptr %eof to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %eof, align 1, !annotation !84
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 17
  %4 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %end.i.i, align 4
  %gso_size.i = getelementptr inbounds %struct.skb_shared_info, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %gso_size.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %gso_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool.i.not = icmp eq i16 %7, 0
  br i1 %tobool.i.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %gso_type = getelementptr inbounds %struct.skb_shared_info, ptr %5, i32 0, i32 8
  %8 = ptrtoint ptr %gso_type to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %gso_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %9)
  %cmp.not = icmp eq i32 %9, 32
  br i1 %cmp.not, label %land.lhs.true.if.end_crit_edge, label %do.end

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

do.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  %dev = getelementptr inbounds %struct.ixgbe_ring, ptr %tx_ring, i32 0, i32 4
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 16
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str, i32 noundef %9) #17
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %mac_len = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 8
  %12 = ptrtoint ptr %mac_len to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %mac_len, align 4
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 19
  %14 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data.i.i, align 4
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 18
  %16 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %15 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %17 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %conv.i.i = trunc i32 %sub.ptr.sub.i.i to i16
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 15, i32 0, i32 20
  %conv1.i = add i16 %13, %conv.i.i
  %18 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %conv1.i, ptr %network_header.i.i, align 4
  %transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 15, i32 0, i32 19
  %conv1.i135 = add i16 %conv1.i, 14
  %19 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %conv1.i135, ptr %transport_header.i.i, align 2
  %conv.i = zext i16 %conv1.i to i32
  %add.ptr.i = getelementptr i8, ptr %17, i32 %conv.i
  %fcoe_sof = getelementptr inbounds %struct.fcoe_hdr, ptr %add.ptr.i, i32 0, i32 2
  %20 = ptrtoint ptr %fcoe_sof to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %fcoe_sof, align 1
  %switch.tableidx = add i8 %21, -45
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %switch.tableidx)
  %22 = icmp ult i8 %switch.tableidx, 10
  br i1 %22, label %switch.hole_check, label %if.end.do.end12_crit_edge

if.end.do.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end12

do.end12:                                         ; preds = %switch.hole_check.do.end12_crit_edge, %if.end.do.end12_crit_edge
  %conv7 = zext i8 %21 to i32
  %dev13 = getelementptr inbounds %struct.ixgbe_ring, ptr %tx_ring, i32 0, i32 4
  %23 = ptrtoint ptr %dev13 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev13, align 16
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %24, ptr noundef nonnull @.str.6, i32 noundef %conv7) #17
  br label %cleanup

switch.hole_check:                                ; preds = %if.end
  %switch.maskindex = zext i8 %switch.tableidx to i16
  %switch.shifted = lshr i16 771, %switch.maskindex
  %25 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %25)
  %switch.lobit.not = icmp eq i16 %25, 0
  br i1 %switch.lobit.not, label %switch.hole_check.do.end12_crit_edge, label %switch.lookup

switch.hole_check.do.end12_crit_edge:             ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end12

switch.lookup:                                    ; preds = %switch.hole_check
  %26 = sext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [10 x i32], ptr @switch.table.ixgbe_fso, i32 0, i32 %26
  %27 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %27)
  %switch.load = load i32, ptr %switch.gep, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 6
  %28 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %len, align 4
  %sub = add i32 %29, -4
  %call15 = call i32 @skb_copy_bits(ptr noundef %2, i32 noundef %sub, ptr noundef nonnull %eof, i32 noundef 1) #14
  %30 = ptrtoint ptr %eof to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %eof, align 1
  %32 = zext i8 %31 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.37)
  switch i8 %31, label %do.end31 [
    i8 65, label %switch.lookup.sw.epilog34_crit_edge
    i8 66, label %sw.bb18
    i8 73, label %sw.bb24
    i8 80, label %sw.bb26
  ]

switch.lookup.sw.epilog34_crit_edge:              ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog34

sw.bb18:                                          ; preds = %switch.lookup
  %33 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %end.i.i, align 4
  %gso_size.i137 = getelementptr inbounds %struct.skb_shared_info, ptr %34, i32 0, i32 4
  %35 = ptrtoint ptr %gso_size.i137 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %gso_size.i137, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %36)
  %tobool.i138.not = icmp eq i16 %36, 0
  br i1 %tobool.i138.not, label %if.else, label %if.then20

if.then20:                                        ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #16
  %or21 = or i32 %switch.load, 16384
  br label %sw.epilog34

if.else:                                          ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #16
  %or22 = or i32 %switch.load, 1024
  br label %sw.epilog34

sw.bb24:                                          ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #16
  %or25 = or i32 %switch.load, 2048
  br label %sw.epilog34

sw.bb26:                                          ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #16
  %or27 = or i32 %switch.load, 3072
  br label %sw.epilog34

do.end31:                                         ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #16
  %conv16 = zext i8 %31 to i32
  %dev32 = getelementptr inbounds %struct.ixgbe_ring, ptr %tx_ring, i32 0, i32 4
  %37 = ptrtoint ptr %dev32 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev32, align 16
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %38, ptr noundef nonnull @.str.10, i32 noundef %conv16) #17
  br label %cleanup

sw.epilog34:                                      ; preds = %sw.bb26, %sw.bb24, %if.else, %if.then20, %switch.lookup.sw.epilog34_crit_edge
  %fcoe_sof_eof.1 = phi i32 [ %or27, %sw.bb26 ], [ %or25, %sw.bb24 ], [ %or21, %if.then20 ], [ %or22, %if.else ], [ %switch.load, %switch.lookup.sw.epilog34_crit_edge ]
  %39 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %head.i.i, align 8
  %41 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %transport_header.i.i, align 2
  %conv.i140 = zext i16 %42 to i32
  %add.ptr.i141 = getelementptr i8, ptr %40, i32 %conv.i140
  %arrayidx = getelementptr %struct.fc_frame_header, ptr %add.ptr.i141, i32 0, i32 5, i32 2
  %43 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx, align 1
  %45 = and i8 %44, 8
  %46 = zext i8 %45 to i32
  %47 = shl nuw nsw i32 %46, 10
  %48 = or i32 %47, %fcoe_sof_eof.1
  %49 = ptrtoint ptr %hdr_len to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 8, ptr %hdr_len, align 1
  %50 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %end.i.i, align 4
  %gso_size.i143 = getelementptr inbounds %struct.skb_shared_info, ptr %51, i32 0, i32 4
  %52 = ptrtoint ptr %gso_size.i143 to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %gso_size.i143, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %53)
  %tobool.i144.not = icmp eq i16 %53, 0
  br i1 %tobool.i144.not, label %sw.epilog34.if.end65_crit_edge, label %if.then41

sw.epilog34.if.end65_crit_edge:                   ; preds = %sw.epilog34
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end65

if.then41:                                        ; preds = %sw.epilog34
  call void @__sanitizer_cov_trace_pc() #16
  %54 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %head.i.i, align 8
  %56 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %transport_header.i.i, align 2
  %conv.i.i147 = zext i16 %57 to i32
  %add.ptr.i.i = getelementptr i8, ptr %55, i32 %conv.i.i147
  %58 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %data.i.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr.i.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %59 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %60 = trunc i32 %sub.ptr.sub.i to i8
  %conv46 = add i8 %60, 32
  %61 = ptrtoint ptr %hdr_len to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %conv46, ptr %hdr_len, align 1
  %62 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %len, align 4
  %conv48 = zext i8 %conv46 to i32
  %64 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %end.i.i, align 4
  %gso_size = getelementptr inbounds %struct.skb_shared_info, ptr %65, i32 0, i32 4
  %66 = ptrtoint ptr %gso_size to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %gso_size, align 4
  %conv51 = zext i16 %67 to i32
  %sub49 = add i32 %63, -1
  %add52 = add i32 %sub49, %conv51
  %sub53 = sub i32 %add52, %conv48
  %div = udiv i32 %sub53, %conv51
  %conv57 = trunc i32 %div to i16
  %gso_segs = getelementptr inbounds %struct.ixgbe_tx_buffer, ptr %first, i32 0, i32 4
  %68 = ptrtoint ptr %gso_segs to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 %conv57, ptr %gso_segs, align 4
  %conv59 = and i32 %div, 65535
  %sub60 = add nsw i32 %conv59, -1
  %69 = load i8, ptr %hdr_len, align 1
  %conv61 = zext i8 %69 to i32
  %mul = mul nsw i32 %sub60, %conv61
  %bytecount = getelementptr inbounds %struct.ixgbe_tx_buffer, ptr %first, i32 0, i32 3
  %70 = ptrtoint ptr %bytecount to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %bytecount, align 4
  %add62 = add i32 %mul, %71
  store i32 %add62, ptr %bytecount, align 4
  %tx_flags = getelementptr inbounds %struct.ixgbe_tx_buffer, ptr %first, i32 0, i32 8
  %72 = ptrtoint ptr %tx_flags to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %tx_flags, align 4
  %or63 = or i32 %73, 2
  store i32 %or63, ptr %tx_flags, align 4
  br label %if.end65

if.end65:                                         ; preds = %if.then41, %sw.epilog34.if.end65_crit_edge
  %type_tucmd.0 = phi i32 [ 38912, %if.then41 ], [ 32768, %sw.epilog34.if.end65_crit_edge ]
  %tx_flags66 = getelementptr inbounds %struct.ixgbe_tx_buffer, ptr %first, i32 0, i32 8
  %74 = ptrtoint ptr %tx_flags66 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %tx_flags66, align 4
  %or67 = or i32 %75, 264
  store i32 %or67, ptr %tx_flags66, align 4
  %76 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %end.i.i, align 4
  %gso_size69 = getelementptr inbounds %struct.skb_shared_info, ptr %77, i32 0, i32 4
  %78 = ptrtoint ptr %gso_size69 to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %gso_size69, align 4
  %conv70 = zext i16 %79 to i32
  %shl = shl nuw i32 %conv70, 16
  %80 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %head.i.i, align 8
  %82 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %transport_header.i.i, align 2
  %conv.i.i153 = zext i16 %83 to i32
  %add.ptr.i.i154 = getelementptr i8, ptr %81, i32 %conv.i.i153
  %84 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %data.i.i, align 4
  %sub.ptr.lhs.cast.i156 = ptrtoint ptr %add.ptr.i.i154 to i32
  %sub.ptr.rhs.cast.i157 = ptrtoint ptr %85 to i32
  %sub.ptr.sub.i158 = sub i32 %sub.ptr.lhs.cast.i156, %sub.ptr.rhs.cast.i157
  %add72 = add i32 %sub.ptr.sub.i158, 24
  %sub74 = shl i32 %sub.ptr.sub.i158, 9
  %shl75 = add i32 %sub74, -2048
  %and78 = and i32 %75, -65536
  %or76 = or i32 %add72, %and78
  %or79 = or i32 %or76, %shl75
  call void @ixgbe_tx_ctxtdesc(ptr noundef %tx_ring, i32 noundef %or79, i32 noundef %48, i32 noundef %type_tucmd.0, i32 noundef %shl) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end65, %do.end31, %do.end12, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end12 ], [ -22, %do.end31 ], [ 0, %if.end65 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %eof) #14
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ixgbe_tx_ctxtdesc(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ixgbe_configure_fcoe(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 54
  %netdev = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 1
  %0 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netdev, align 128
  %features = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 23
  %2 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %features, align 16
  %and = and i64 %3, 34359738368
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 6
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  %and2 = and i32 %5, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.end.if.end8_crit_edge, label %if.then4

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end8

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %offset = getelementptr %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 48, i32 1, i32 3
  %6 = ptrtoint ptr %offset to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %offset, align 2
  %conv = zext i16 %7 to i32
  %shl = shl i32 %conv, 20
  %or7 = or i32 %shl, -1946121978
  br label %if.end8

if.end8:                                          ; preds = %if.then4, %if.end.if.end8_crit_edge
  %etqf.0 = phi i32 [ %or7, %if.then4 ], [ -2013230842, %if.end.if.end8_crit_edge ]
  %8 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %hw1, align 4
  %tobool.not.i.i = icmp eq ptr %9, null
  br i1 %tobool.not.i.i, label %if.end8.ixgbe_write_reg.exit_crit_edge, label %do.body1.i

if.end8.ixgbe_write_reg.exit_crit_edge:           ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #16
  br label %ixgbe_write_reg.exit

do.body1.i:                                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !79
  tail call void @arm_heavy_mb() #14
  %10 = tail call i32 @llvm.bswap.i32(i32 %etqf.0) #14
  %add.ptr.i = getelementptr i8, ptr %9, i32 20784
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %10) #14, !srcloc !80
  br label %ixgbe_write_reg.exit

ixgbe_write_reg.exit:                             ; preds = %do.body1.i, %if.end8.ixgbe_write_reg.exit_crit_edge
  %11 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %hw1, align 4
  %tobool.not.i.i112 = icmp eq ptr %12, null
  br i1 %tobool.not.i.i112, label %ixgbe_write_reg.exit.ixgbe_write_reg.exit115_crit_edge, label %do.body1.i114

ixgbe_write_reg.exit.ixgbe_write_reg.exit115_crit_edge: ; preds = %ixgbe_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %ixgbe_write_reg.exit115

do.body1.i114:                                    ; preds = %ixgbe_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !79
  tail call void @arm_heavy_mb() #14
  %add.ptr.i113 = getelementptr i8, ptr %12, i32 60424
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i113, i32 0) #14, !srcloc !80
  br label %ixgbe_write_reg.exit115

ixgbe_write_reg.exit115:                          ; preds = %do.body1.i114, %ixgbe_write_reg.exit.ixgbe_write_reg.exit115_crit_edge
  %13 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %flags, align 4
  %and10 = and i32 %14, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %ixgbe_write_reg.exit115.cleanup_crit_edge, label %if.end13

ixgbe_write_reg.exit115.cleanup_crit_edge:        ; preds = %ixgbe_write_reg.exit115
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end13:                                         ; preds = %ixgbe_write_reg.exit115
  %type = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 54, i32 2, i32 1
  %15 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %16)
  %cmp = icmp eq i32 %16, 4
  %spec.store.select = select i1 %cmp, i32 32, i32 8
  %offset36 = getelementptr %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 48, i32 4, i32 3
  %indices38 = getelementptr %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 48, i32 4, i32 1
  br label %for.body

for.bodythread-pre-split:                         ; preds = %ixgbe_write_reg.exit119
  call void @__sanitizer_cov_trace_pc() #16
  %17 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %17)
  %.pr = load i32, ptr %type, align 8
  br label %for.body

for.body:                                         ; preds = %for.bodythread-pre-split, %if.end13
  %18 = phi i32 [ %.pr, %for.bodythread-pre-split ], [ %16, %if.end13 ]
  %fcoe_q_h.0138 = phi i32 [ %fcoe_q_h.1, %for.bodythread-pre-split ], [ 0, %if.end13 ]
  %i.0136 = phi i32 [ %inc, %for.bodythread-pre-split ], [ 0, %if.end13 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %18)
  %cmp23 = icmp eq i32 %18, 4
  br i1 %cmp23, label %if.then25, label %for.body.if.end35_crit_edge

for.body.if.end35_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end35

if.then25:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  %19 = ptrtoint ptr %offset36 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %offset36, align 2
  %conv27 = zext i16 %20 to i32
  %add28 = add nuw nsw i32 %i.0136, %spec.store.select
  %21 = ptrtoint ptr %indices38 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %indices38, align 2
  %conv29 = zext i16 %22 to i32
  %rem.urem = urem i32 %add28, %conv29
  %add30 = add nuw nsw i32 %rem.urem, %conv27
  %arrayidx31 = getelementptr %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 25, i32 %add30
  %23 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx31, align 4
  %reg_idx = getelementptr inbounds %struct.ixgbe_ring, ptr %24, i32 0, i32 13
  %25 = ptrtoint ptr %reg_idx to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %reg_idx, align 1
  %conv32 = zext i8 %26 to i32
  %shl33 = shl nuw nsw i32 %conv32, 16
  %and34 = and i32 %shl33, 8323072
  br label %if.end35

if.end35:                                         ; preds = %if.then25, %for.body.if.end35_crit_edge
  %fcoe_q_h.1 = phi i32 [ %and34, %if.then25 ], [ %fcoe_q_h.0138, %for.body.if.end35_crit_edge ]
  %27 = ptrtoint ptr %offset36 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %offset36, align 2
  %conv37 = zext i16 %28 to i32
  %29 = ptrtoint ptr %indices38 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %indices38, align 2
  %conv39 = zext i16 %30 to i32
  %rem40 = urem i32 %i.0136, %conv39
  %add41 = add nuw nsw i32 %rem40, %conv37
  %and42 = and i32 %add41, 127
  %arrayidx44 = getelementptr %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 25, i32 %and42
  %31 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx44, align 4
  %reg_idx45 = getelementptr inbounds %struct.ixgbe_ring, ptr %32, i32 0, i32 13
  %33 = ptrtoint ptr %reg_idx45 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %reg_idx45, align 1
  %35 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile ptr, ptr %hw1, align 4
  %tobool.not.i.i116 = icmp eq ptr %36, null
  br i1 %tobool.not.i.i116, label %if.end35.ixgbe_write_reg.exit119_crit_edge, label %do.body1.i118

if.end35.ixgbe_write_reg.exit119_crit_edge:       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #16
  br label %ixgbe_write_reg.exit119

do.body1.i118:                                    ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #16
  %mul = shl i32 %i.0136, 2
  %add48 = add nuw nsw i32 %mul, 60688
  %conv46 = zext i8 %34 to i32
  %or47 = or i32 %fcoe_q_h.1, %conv46
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !79
  tail call void @arm_heavy_mb() #14
  %37 = tail call i32 @llvm.bswap.i32(i32 %or47) #14
  %add.ptr.i117 = getelementptr i8, ptr %36, i32 %add48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i117, i32 %37) #14, !srcloc !80
  br label %ixgbe_write_reg.exit119

ixgbe_write_reg.exit119:                          ; preds = %do.body1.i118, %if.end35.ixgbe_write_reg.exit119_crit_edge
  %inc = add nuw nsw i32 %i.0136, 1
  %exitcond.not = icmp eq i32 %inc, %spec.store.select
  br i1 %exitcond.not, label %for.end, label %for.bodythread-pre-split

for.end:                                          ; preds = %ixgbe_write_reg.exit119
  %38 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile ptr, ptr %hw1, align 4
  %tobool.not.i.i120 = icmp eq ptr %39, null
  br i1 %tobool.not.i.i120, label %for.end.ixgbe_write_reg.exit123_crit_edge, label %do.body1.i122

for.end.ixgbe_write_reg.exit123_crit_edge:        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %ixgbe_write_reg.exit123

do.body1.i122:                                    ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !79
  tail call void @arm_heavy_mb() #14
  %add.ptr.i121 = getelementptr i8, ptr %39, i32 60672
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i121, i32 16777216) #14, !srcloc !80
  br label %ixgbe_write_reg.exit123

ixgbe_write_reg.exit123:                          ; preds = %do.body1.i122, %for.end.ixgbe_write_reg.exit123_crit_edge
  %40 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %flags, align 4
  %and50 = and i32 %41, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50)
  %tobool51.not = icmp eq i32 %and50, 0
  br i1 %tobool51.not, label %ixgbe_write_reg.exit123.if.end61_crit_edge, label %if.then52

ixgbe_write_reg.exit123.if.end61_crit_edge:       ; preds = %ixgbe_write_reg.exit123
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end61

if.then52:                                        ; preds = %ixgbe_write_reg.exit123
  call void @__sanitizer_cov_trace_pc() #16
  %offset56 = getelementptr %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 48, i32 1, i32 3
  %42 = ptrtoint ptr %offset56 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %offset56, align 2
  %conv57 = zext i16 %43 to i32
  %shl59 = shl i32 %conv57, 20
  %or60 = or i32 %shl59, -2080339692
  br label %if.end61

if.end61:                                         ; preds = %if.then52, %ixgbe_write_reg.exit123.if.end61_crit_edge
  %etqf.1 = phi i32 [ %or60, %if.then52 ], [ -2147448556, %ixgbe_write_reg.exit123.if.end61_crit_edge ]
  %44 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile ptr, ptr %hw1, align 4
  %tobool.not.i.i124 = icmp eq ptr %45, null
  br i1 %tobool.not.i.i124, label %if.end61.ixgbe_write_reg.exit127_crit_edge, label %do.body1.i126

if.end61.ixgbe_write_reg.exit127_crit_edge:       ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #16
  br label %ixgbe_write_reg.exit127

do.body1.i126:                                    ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !79
  tail call void @arm_heavy_mb() #14
  %46 = tail call i32 @llvm.bswap.i32(i32 %etqf.1) #14
  %add.ptr.i125 = getelementptr i8, ptr %45, i32 20792
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i125, i32 %46) #14, !srcloc !80
  br label %ixgbe_write_reg.exit127

ixgbe_write_reg.exit127:                          ; preds = %do.body1.i126, %if.end61.ixgbe_write_reg.exit127_crit_edge
  %47 = ptrtoint ptr %offset36 to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %offset36, align 2
  %idxprom = zext i16 %48 to i32
  %arrayidx64 = getelementptr %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 25, i32 %idxprom
  %49 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %arrayidx64, align 4
  %reg_idx65 = getelementptr inbounds %struct.ixgbe_ring, ptr %50, i32 0, i32 13
  %51 = ptrtoint ptr %reg_idx65 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %reg_idx65, align 1
  %53 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile ptr, ptr %hw1, align 4
  %tobool.not.i.i128 = icmp eq ptr %54, null
  br i1 %tobool.not.i.i128, label %ixgbe_write_reg.exit127.ixgbe_write_reg.exit131_crit_edge, label %do.body1.i130

ixgbe_write_reg.exit127.ixgbe_write_reg.exit131_crit_edge: ; preds = %ixgbe_write_reg.exit127
  call void @__sanitizer_cov_trace_pc() #16
  br label %ixgbe_write_reg.exit131

do.body1.i130:                                    ; preds = %ixgbe_write_reg.exit127
  call void @__sanitizer_cov_trace_pc() #16
  %conv66 = zext i8 %52 to i32
  %shl67 = shl nuw nsw i32 %conv66, 16
  %or68 = or i32 %shl67, -2147483648
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !79
  tail call void @arm_heavy_mb() #14
  %55 = tail call i32 @llvm.bswap.i32(i32 %or68) #14
  %add.ptr.i129 = getelementptr i8, ptr %54, i32 60432
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i129, i32 %55) #14, !srcloc !80
  br label %ixgbe_write_reg.exit131

ixgbe_write_reg.exit131:                          ; preds = %do.body1.i130, %ixgbe_write_reg.exit127.ixgbe_write_reg.exit131_crit_edge
  %56 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile ptr, ptr %hw1, align 4
  %tobool.not.i.i132 = icmp eq ptr %57, null
  br i1 %tobool.not.i.i132, label %ixgbe_write_reg.exit131.cleanup_crit_edge, label %do.body1.i134

ixgbe_write_reg.exit131.cleanup_crit_edge:        ; preds = %ixgbe_write_reg.exit131
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.body1.i134:                                    ; preds = %ixgbe_write_reg.exit131
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !79
  tail call void @arm_heavy_mb() #14
  %add.ptr.i133 = getelementptr i8, ptr %57, i32 20736
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i133, i32 -2147483648) #14, !srcloc !80
  br label %cleanup

cleanup:                                          ; preds = %do.body1.i134, %ixgbe_write_reg.exit131.cleanup_crit_edge, %ixgbe_write_reg.exit115.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ixgbe_free_fcoe_ddp_resources(ptr nocapture noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %fcoe1 = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 74
  %0 = ptrtoint ptr %fcoe1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fcoe1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 54, i32 2, i32 1
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %3)
  %cmp = icmp eq i32 %3, 4
  %spec.store.select = select i1 %cmp, i32 2048, i32 512
  %netdev = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 1
  br label %for.body

for.cond5.preheader:                              ; preds = %for.body
  %call629 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call629, i32 %4)
  %cmp730 = icmp ult i32 %call629, %4
  br i1 %cmp730, label %for.cond5.preheader.for.body9_crit_edge, label %for.cond5.preheader.for.end10_crit_edge

for.cond5.preheader.for.end10_crit_edge:          ; preds = %for.cond5.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end10

for.cond5.preheader.for.body9_crit_edge:          ; preds = %for.cond5.preheader
  br label %for.body9

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end
  %i.028 = phi i32 [ 0, %if.end ], [ %inc, %for.body.for.body_crit_edge ]
  %5 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %netdev, align 128
  %conv = trunc i32 %i.028 to i16
  %call = tail call i32 @ixgbe_fcoe_ddp_put(ptr noundef %6, i16 noundef zeroext %conv)
  %inc = add nuw nsw i32 %i.028, 1
  %exitcond.not = icmp eq i32 %inc, %spec.store.select
  br i1 %exitcond.not, label %for.cond5.preheader, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.body9:                                        ; preds = %for.body9.for.body9_crit_edge, %for.cond5.preheader.for.body9_crit_edge
  %call631 = phi i32 [ %call6, %for.body9.for.body9_crit_edge ], [ %call629, %for.cond5.preheader.for.body9_crit_edge ]
  %7 = ptrtoint ptr %fcoe1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %fcoe1, align 4
  %9 = ptrtoint ptr %8 to i32
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call631
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %11, %9
  %12 = inttoptr i32 %add.i to ptr
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 8
  tail call void @dma_pool_destroy(ptr noundef %14) #14
  %15 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %12, align 8
  %call6 = tail call i32 @cpumask_next(i32 noundef %call631, ptr noundef nonnull @__cpu_possible_mask) #18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %16 = load i32, ptr @nr_cpu_ids, align 4
  %cmp7 = icmp ult i32 %call6, %16
  br i1 %cmp7, label %for.body9.for.body9_crit_edge, label %for.body9.for.end10_crit_edge

for.body9.for.end10_crit_edge:                    ; preds = %for.body9
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end10

for.body9.for.body9_crit_edge:                    ; preds = %for.body9
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body9

for.end10:                                        ; preds = %for.body9.for.end10_crit_edge, %for.cond5.preheader.for.end10_crit_edge
  %pdev = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 3
  %17 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %18, i32 0, i32 44
  %extra_ddp_buffer_dma = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 74, i32 5
  %19 = ptrtoint ptr %extra_ddp_buffer_dma to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %extra_ddp_buffer_dma, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev, i32 noundef %20, i32 noundef 4096, i32 noundef 2, i32 noundef 0) #14
  %extra_ddp_buffer = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 74, i32 4
  %21 = ptrtoint ptr %extra_ddp_buffer to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %extra_ddp_buffer, align 4
  tail call void @kfree(ptr noundef %22) #14
  %23 = ptrtoint ptr %extra_ddp_buffer to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %extra_ddp_buffer, align 4
  %24 = ptrtoint ptr %extra_ddp_buffer_dma to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %extra_ddp_buffer_dma, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end10, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ixgbe_setup_fcoe_ddp_resources(ptr nocapture noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  %pool_name.i = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %fcoe1 = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 74
  %pdev = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 3
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 8
  %dev2 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %2 = ptrtoint ptr %fcoe1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fcoe1, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup30_crit_edge, label %if.end

entry.cleanup30_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup30

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3264, i32 noundef 4096) #19
  %tobool3.not = icmp eq ptr %call7.i, null
  br i1 %tobool3.not, label %if.end.cleanup30_crit_edge, label %if.end5

if.end.cleanup30_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup30

if.end5:                                          ; preds = %if.end
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef nonnull %call7.i) #14
  br i1 %call.i, label %land.rhs.i, label %dma_map_single_attrs.exit

land.rhs.i:                                       ; preds = %if.end5
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge, label %if.then.i, !prof !85

land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %dma_map_single_attrs.exit.thread

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %dev2) #14
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44, i32 3
  %5 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %6, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  %7 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev2, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %8, %if.end.i.i ], [ %6, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.33, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.34, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #14
  br label %dma_map_single_attrs.exit.thread

dma_map_single_attrs.exit.thread:                 ; preds = %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge
  tail call void @debug_dma_mapping_error(ptr noundef %dev2, i32 noundef -1) #14
  br label %do.body

dma_map_single_attrs.exit:                        ; preds = %if.end5
  tail call void @debug_dma_map_single(ptr noundef %dev2, ptr noundef nonnull %call7.i, i32 noundef 4096) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %9 = load ptr, ptr @mem_map, align 4
  %10 = ptrtoint ptr %call7.i to i32
  %sub.i = add i32 %10, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i = getelementptr %struct.page, ptr %9, i32 %shr.i
  %and.i = and i32 %10, 4088
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev2, ptr noundef %add.ptr.i, i32 noundef %and.i, i32 noundef 4096, i32 noundef 2, i32 noundef 0) #14
  tail call void @debug_dma_mapping_error(ptr noundef %dev2, i32 noundef %call41.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i)
  %cmp.i = icmp eq i32 %call41.i, -1
  br i1 %cmp.i, label %dma_map_single_attrs.exit.do.body_crit_edge, label %if.end13

dma_map_single_attrs.exit.do.body_crit_edge:      ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

do.body:                                          ; preds = %dma_map_single_attrs.exit.do.body_crit_edge, %dma_map_single_attrs.exit.thread
  %msg_enable = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 55
  %11 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %msg_enable, align 4
  %13 = and i16 %12, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %tobool10.not = icmp eq i16 %13, 0
  br i1 %tobool10.not, label %do.body.do.end_crit_edge, label %if.then11

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

if.then11:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  %netdev = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 1
  %14 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %netdev, align 128
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %15, ptr noundef nonnull @.str.12) #17
  br label %do.end

do.end:                                           ; preds = %if.then11, %do.body.do.end_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i) #14
  br label %cleanup30

if.end13:                                         ; preds = %dma_map_single_attrs.exit
  %extra_ddp_buffer = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 74, i32 4
  %16 = ptrtoint ptr %extra_ddp_buffer to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call7.i, ptr %extra_ddp_buffer, align 4
  %extra_ddp_buffer_dma = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 74, i32 5
  %17 = ptrtoint ptr %extra_ddp_buffer_dma to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %call41.i, ptr %extra_ddp_buffer_dma, align 4
  %call1465 = call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %18 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call1465, i32 %18)
  %cmp66 = icmp ult i32 %call1465, %18
  br i1 %cmp66, label %if.end13.for.body_crit_edge, label %if.end13.cleanup30_crit_edge

if.end13.cleanup30_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup30

if.end13.for.body_crit_edge:                      ; preds = %if.end13
  br label %for.body

for.body:                                         ; preds = %ixgbe_fcoe_dma_pool_alloc.exit.for.body_crit_edge, %if.end13.for.body_crit_edge
  %call1467 = phi i32 [ %call14, %ixgbe_fcoe_dma_pool_alloc.exit.for.body_crit_edge ], [ %call1465, %if.end13.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %pool_name.i) #14
  %19 = call ptr @memset(ptr %pool_name.i, i32 255, i32 32)
  %call.i53 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %pool_name.i, i32 noundef 32, ptr noundef nonnull @.str.35, i32 noundef %call1467) #14
  %call2.i = call ptr @dma_pool_create(ptr noundef nonnull %pool_name.i, ptr noundef %dev2, i32 noundef 1024, i32 noundef 16, i32 noundef 4096) #14
  %tobool.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool.not.i, label %do.body20, label %ixgbe_fcoe_dma_pool_alloc.exit

ixgbe_fcoe_dma_pool_alloc.exit:                   ; preds = %for.body
  %20 = ptrtoint ptr %fcoe1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %fcoe1, align 4
  %22 = ptrtoint ptr %21 to i32
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call1467
  %23 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %24, %22
  %25 = inttoptr i32 %add.i to ptr
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call2.i, ptr %25, align 8
  %noddp.i = getelementptr inbounds %struct.ixgbe_fcoe_ddp_pool, ptr %25, i32 0, i32 1
  %27 = call ptr @memset(ptr %noddp.i, i32 0, i32 16)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %pool_name.i) #14
  %call14 = call i32 @cpumask_next(i32 noundef %call1467, ptr noundef nonnull @__cpu_possible_mask) #18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %28 = load i32, ptr @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call14, %28
  br i1 %cmp, label %ixgbe_fcoe_dma_pool_alloc.exit.for.body_crit_edge, label %ixgbe_fcoe_dma_pool_alloc.exit.cleanup30_crit_edge

ixgbe_fcoe_dma_pool_alloc.exit.cleanup30_crit_edge: ; preds = %ixgbe_fcoe_dma_pool_alloc.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup30

ixgbe_fcoe_dma_pool_alloc.exit.for.body_crit_edge: ; preds = %ixgbe_fcoe_dma_pool_alloc.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

do.body20:                                        ; preds = %for.body
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %pool_name.i) #14
  %msg_enable21 = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 55
  %29 = ptrtoint ptr %msg_enable21 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %msg_enable21, align 4
  %31 = and i16 %30, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %31)
  %tobool24.not = icmp eq i16 %31, 0
  br i1 %tobool24.not, label %do.body20.do.end29_crit_edge, label %if.then25

do.body20.do.end29_crit_edge:                     ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end29

if.then25:                                        ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #16
  %netdev26 = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 1
  %32 = ptrtoint ptr %netdev26 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %netdev26, align 128
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %33, ptr noundef nonnull @.str.13, i32 noundef %call1467) #17
  br label %do.end29

do.end29:                                         ; preds = %if.then25, %do.body20.do.end29_crit_edge
  call void @ixgbe_free_fcoe_ddp_resources(ptr noundef %adapter)
  br label %cleanup30

cleanup30:                                        ; preds = %do.end29, %ixgbe_fcoe_dma_pool_alloc.exit.cleanup30_crit_edge, %if.end13.cleanup30_crit_edge, %do.end, %if.end.cleanup30_crit_edge, %entry.cleanup30_crit_edge
  %retval.2 = phi i32 [ -12, %do.end ], [ 0, %entry.cleanup30_crit_edge ], [ -12, %if.end.cleanup30_crit_edge ], [ -12, %do.end29 ], [ 0, %if.end13.cleanup30_crit_edge ], [ 0, %ixgbe_fcoe_dma_pool_alloc.exit.cleanup30_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ixgbe_fcoe_enable(ptr noundef %netdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %refcnt = getelementptr i8, ptr %netdev, i32 9840
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %refcnt, i32 1, i32 3, i32 1) #14
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt, ptr %refcnt, i32 1, ptr elementtype(i32) %refcnt) #14, !srcloc !86
  %flags = getelementptr i8, ptr %netdev, i32 2836
  %1 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags, align 4
  %3 = and i32 %2, 3145728
  call void @__sanitizer_cov_trace_const_cmp4(i32 1048576, i32 %3)
  %4 = icmp eq i32 %3, 1048576
  br i1 %4, label %do.body, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.body:                                          ; preds = %entry
  %msg_enable = getelementptr i8, ptr %netdev, i32 7828
  %5 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %msg_enable, align 4
  %7 = and i16 %6, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool8.not = icmp eq i16 %7, 0
  br i1 %tobool8.not, label %do.body.do.end_crit_edge, label %if.then9

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

if.then9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  %netdev10 = getelementptr i8, ptr %netdev, i32 2816
  %8 = ptrtoint ptr %netdev10 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %netdev10, align 128
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %9, ptr noundef nonnull @.str.14) #17
  br label %do.end

do.end:                                           ; preds = %if.then9, %do.body.do.end_crit_edge
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags, align 4
  %and13 = and i32 %11, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %do.end.if.end26_crit_edge, label %do.body16

do.end.if.end26_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end26

do.body16:                                        ; preds = %do.end
  %12 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %msg_enable, align 4
  %14 = and i16 %13, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %tobool20.not = icmp eq i16 %14, 0
  br i1 %tobool20.not, label %do.body16.if.end26_crit_edge, label %if.then21

do.body16.if.end26_crit_edge:                     ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end26

if.then21:                                        ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #16
  %netdev22 = getelementptr i8, ptr %netdev, i32 2816
  %15 = ptrtoint ptr %netdev22 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %netdev22, align 128
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %16, ptr noundef nonnull @.str.15) #17
  br label %if.end26

if.end26:                                         ; preds = %if.then21, %do.body16.if.end26_crit_edge, %do.end.if.end26_crit_edge
  %state.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 6
  %17 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.end26.if.end30_crit_edge, label %if.then28

if.end26.if.end30_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end30

if.then28:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #16
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 16
  %19 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %netdev_ops, align 8
  %ndo_stop = getelementptr inbounds %struct.net_device_ops, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %ndo_stop to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ndo_stop, align 4
  %call29 = tail call i32 %22(ptr noundef %netdev) #14
  br label %if.end30

if.end30:                                         ; preds = %if.then28, %if.end26.if.end30_crit_edge
  %23 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %flags, align 4
  %and.i = and i32 %24, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end30.ixgbe_fcoe_ddp_enable.exit_crit_edge, label %if.end.i

if.end30.ixgbe_fcoe_ddp_enable.exit_crit_edge:    ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #16
  br label %ixgbe_fcoe_ddp_enable.exit

if.end.i:                                         ; preds = %if.end30
  %fcoe1.i = getelementptr i8, ptr %netdev, i32 9836
  %call.i = tail call noalias ptr @__alloc_percpu(i32 noundef 24, i32 noundef 8) #20
  %25 = ptrtoint ptr %fcoe1.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call.i, ptr %fcoe1.i, align 4
  %tobool3.not.i = icmp eq ptr %call.i, null
  br i1 %tobool3.not.i, label %do.body.i, label %if.end9.i

do.body.i:                                        ; preds = %if.end.i
  %26 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %msg_enable, align 4
  %28 = and i16 %27, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %28)
  %tobool6.not.i = icmp eq i16 %28, 0
  br i1 %tobool6.not.i, label %do.body.i.ixgbe_fcoe_ddp_enable.exit_crit_edge, label %if.then7.i

do.body.i.ixgbe_fcoe_ddp_enable.exit_crit_edge:   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ixgbe_fcoe_ddp_enable.exit

if.then7.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  %netdev.i = getelementptr i8, ptr %netdev, i32 2816
  %29 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %netdev.i, align 128
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %30, ptr noundef nonnull @.str.36) #17
  br label %ixgbe_fcoe_ddp_enable.exit

if.end9.i:                                        ; preds = %if.end.i
  %netdev10.i = getelementptr i8, ptr %netdev, i32 2816
  %31 = ptrtoint ptr %netdev10.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %netdev10.i, align 128
  %fcoe_ddp_xid.i = getelementptr inbounds %struct.net_device, ptr %32, i32 0, i32 143
  %33 = ptrtoint ptr %fcoe_ddp_xid.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 511, ptr %fcoe_ddp_xid.i, align 8
  %type.i = getelementptr i8, ptr %netdev, i32 6808
  %34 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %35)
  %cmp.i = icmp eq i32 %35, 4
  br i1 %cmp.i, label %if.then12.i, label %if.end9.i.ixgbe_fcoe_ddp_enable.exit_crit_edge

if.end9.i.ixgbe_fcoe_ddp_enable.exit_crit_edge:   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ixgbe_fcoe_ddp_enable.exit

if.then12.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #16
  %36 = ptrtoint ptr %netdev10.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %netdev10.i, align 128
  %fcoe_ddp_xid14.i = getelementptr inbounds %struct.net_device, ptr %37, i32 0, i32 143
  %38 = ptrtoint ptr %fcoe_ddp_xid14.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 2047, ptr %fcoe_ddp_xid14.i, align 8
  br label %ixgbe_fcoe_ddp_enable.exit

ixgbe_fcoe_ddp_enable.exit:                       ; preds = %if.then12.i, %if.end9.i.ixgbe_fcoe_ddp_enable.exit_crit_edge, %if.then7.i, %do.body.i.ixgbe_fcoe_ddp_enable.exit_crit_edge, %if.end30.ixgbe_fcoe_ddp_enable.exit_crit_edge
  %39 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %flags, align 4
  %or = or i32 %40, 2097152
  store i32 %or, ptr %flags, align 4
  %features = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 23
  %41 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %features, align 16
  %or33 = or i64 %42, 137438953472
  store i64 %or33, ptr %features, align 16
  tail call void @netdev_features_change(ptr noundef %netdev) #14
  tail call void @ixgbe_clear_interrupt_scheme(ptr noundef %add.ptr.i) #14
  %call34 = tail call i32 @ixgbe_init_interrupt_scheme(ptr noundef %add.ptr.i) #14
  %43 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %state.i, align 4
  %and1.i.i61 = and i32 %44, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i61)
  %tobool.i62.not = icmp eq i32 %and1.i.i61, 0
  br i1 %tobool.i62.not, label %ixgbe_fcoe_ddp_enable.exit.cleanup_crit_edge, label %if.then36

ixgbe_fcoe_ddp_enable.exit.cleanup_crit_edge:     ; preds = %ixgbe_fcoe_ddp_enable.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then36:                                        ; preds = %ixgbe_fcoe_ddp_enable.exit
  call void @__sanitizer_cov_trace_pc() #16
  %netdev_ops37 = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 16
  %45 = ptrtoint ptr %netdev_ops37 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %netdev_ops37, align 8
  %ndo_open = getelementptr inbounds %struct.net_device_ops, ptr %46, i32 0, i32 2
  %47 = ptrtoint ptr %ndo_open to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ndo_open, align 4
  %call38 = tail call i32 %48(ptr noundef %netdev) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then36, %ixgbe_fcoe_ddp_enable.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.then36 ], [ 0, %ixgbe_fcoe_ddp_enable.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @netdev_features_change(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ixgbe_clear_interrupt_scheme(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbe_init_interrupt_scheme(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ixgbe_fcoe_disable(ptr noundef %netdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %refcnt = getelementptr i8, ptr %netdev, i32 9840
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !87
  tail call void @llvm.prefetch.p0(ptr %refcnt, i32 1, i32 3, i32 1) #14
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt, ptr %refcnt, i32 1, ptr elementtype(i32) %refcnt) #14, !srcloc !88
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %0, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !89
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %flags = getelementptr i8, ptr %netdev, i32 2836
  %1 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags, align 4
  %and = and i32 %2, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %do.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.body:                                          ; preds = %if.end
  %msg_enable = getelementptr i8, ptr %netdev, i32 7828
  %3 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %msg_enable, align 4
  %5 = and i16 %4, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool5.not = icmp eq i16 %5, 0
  br i1 %tobool5.not, label %do.body.do.end_crit_edge, label %if.then6

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  %netdev7 = getelementptr i8, ptr %netdev, i32 2816
  %6 = ptrtoint ptr %netdev7 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %netdev7, align 128
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %7, ptr noundef nonnull @.str.16) #17
  br label %do.end

do.end:                                           ; preds = %if.then6, %do.body.do.end_crit_edge
  %state.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 6
  %8 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %do.end.if.end12_crit_edge, label %if.then10

do.end.if.end12_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end12

if.then10:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 16
  %10 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %netdev_ops, align 8
  %ndo_stop = getelementptr inbounds %struct.net_device_ops, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %ndo_stop to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ndo_stop, align 4
  %call11 = tail call i32 %13(ptr noundef %netdev) #14
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %do.end.if.end12_crit_edge
  %fcoe1.i = getelementptr i8, ptr %netdev, i32 9836
  %netdev.i = getelementptr i8, ptr %netdev, i32 2816
  %14 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %netdev.i, align 128
  %fcoe_ddp_xid.i = getelementptr inbounds %struct.net_device, ptr %15, i32 0, i32 143
  %16 = ptrtoint ptr %fcoe_ddp_xid.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %fcoe_ddp_xid.i, align 8
  %17 = ptrtoint ptr %fcoe1.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %fcoe1.i, align 4
  %tobool.not.i = icmp eq ptr %18, null
  br i1 %tobool.not.i, label %if.end12.ixgbe_fcoe_ddp_disable.exit_crit_edge, label %if.end.i

if.end12.ixgbe_fcoe_ddp_disable.exit_crit_edge:   ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #16
  br label %ixgbe_fcoe_ddp_disable.exit

if.end.i:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @free_percpu(ptr noundef nonnull %18) #14
  %19 = ptrtoint ptr %fcoe1.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %fcoe1.i, align 4
  br label %ixgbe_fcoe_ddp_disable.exit

ixgbe_fcoe_ddp_disable.exit:                      ; preds = %if.end.i, %if.end12.ixgbe_fcoe_ddp_disable.exit_crit_edge
  %20 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %flags, align 4
  %and14 = and i32 %21, -2097153
  store i32 %and14, ptr %flags, align 4
  %features = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 23
  %22 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %features, align 16
  %and15 = and i64 %23, -137438953473
  store i64 %and15, ptr %features, align 16
  tail call void @netdev_features_change(ptr noundef %netdev) #14
  tail call void @ixgbe_clear_interrupt_scheme(ptr noundef %add.ptr.i) #14
  %call16 = tail call i32 @ixgbe_init_interrupt_scheme(ptr noundef %add.ptr.i) #14
  %24 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %state.i, align 4
  %and1.i.i38 = and i32 %25, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i38)
  %tobool.i39.not = icmp eq i32 %and1.i.i38, 0
  br i1 %tobool.i39.not, label %ixgbe_fcoe_ddp_disable.exit.cleanup_crit_edge, label %if.then18

ixgbe_fcoe_ddp_disable.exit.cleanup_crit_edge:    ; preds = %ixgbe_fcoe_ddp_disable.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then18:                                        ; preds = %ixgbe_fcoe_ddp_disable.exit
  call void @__sanitizer_cov_trace_pc() #16
  %netdev_ops19 = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 16
  %26 = ptrtoint ptr %netdev_ops19 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %netdev_ops19, align 8
  %ndo_open = getelementptr inbounds %struct.net_device_ops, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %ndo_open to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ndo_open, align 4
  %call20 = tail call i32 %29(ptr noundef %netdev) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then18, %ixgbe_fcoe_ddp_disable.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %if.then18 ], [ 0, %ixgbe_fcoe_ddp_disable.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @ixgbe_fcoe_get_wwn(ptr nocapture noundef readonly %netdev, ptr nocapture noundef writeonly %wwn, i32 noundef %type) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.38)
  switch i32 %type, label %entry.cleanup_crit_edge [
    i32 0, label %entry.sw.epilog_crit_edge
    i32 1, label %sw.bb2
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb2, %entry.sw.epilog_crit_edge
  %.sink = phi i32 [ 6832, %sw.bb2 ], [ 6830, %entry.sw.epilog_crit_edge ]
  %wwpn_prefix = getelementptr i8, ptr %netdev, i32 %.sink
  %1 = ptrtoint ptr %wwpn_prefix to i32
  call void @__asan_load2_noabort(i32 %1)
  %prefix.0 = load i16, ptr %wwpn_prefix, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %prefix.0)
  %cmp.not = icmp eq i16 %prefix.0, -1
  br i1 %cmp.not, label %sw.epilog.cleanup_crit_edge, label %land.lhs.true

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

land.lhs.true:                                    ; preds = %sw.epilog
  %san_addr = getelementptr i8, ptr %netdev, i32 6824
  %2 = ptrtoint ptr %san_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %san_addr, align 4
  %4 = and i32 %3, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.i.not.i = icmp eq i32 %4, 0
  br i1 %tobool.i.not.i, label %is_valid_ether_addr.exit, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

is_valid_ether_addr.exit:                         ; preds = %land.lhs.true
  %add.ptr.i.i = getelementptr i8, ptr %netdev, i32 6828
  %5 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %add.ptr.i.i, align 2
  %conv.i.i = zext i16 %6 to i32
  %or.i.i = or i32 %3, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i.not = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i.not, label %is_valid_ether_addr.exit.cleanup_crit_edge, label %if.then

is_valid_ether_addr.exit.cleanup_crit_edge:       ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then:                                          ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #16
  %conv6 = zext i16 %prefix.0 to i64
  %shl = shl nuw i64 %conv6, 48
  %7 = ptrtoint ptr %san_addr to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %san_addr, align 4
  %conv8 = zext i8 %8 to i64
  %shl9 = shl nuw nsw i64 %conv8, 40
  %or = or i64 %shl9, %shl
  %arrayidx11 = getelementptr i8, ptr %netdev, i32 6825
  %9 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx11, align 1
  %conv12 = zext i8 %10 to i64
  %shl13 = shl nuw nsw i64 %conv12, 32
  %or14 = or i64 %or, %shl13
  %arrayidx16 = getelementptr i8, ptr %netdev, i32 6826
  %11 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx16, align 2
  %conv17 = zext i8 %12 to i64
  %shl18 = shl nuw nsw i64 %conv17, 24
  %or19 = or i64 %or14, %shl18
  %arrayidx21 = getelementptr i8, ptr %netdev, i32 6827
  %13 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx21, align 1
  %conv22 = zext i8 %14 to i64
  %shl23 = shl nuw nsw i64 %conv22, 16
  %or24 = or i64 %or19, %shl23
  %15 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %add.ptr.i.i, align 4
  %conv27 = zext i8 %16 to i64
  %shl28 = shl nuw nsw i64 %conv27, 8
  %or29 = or i64 %or24, %shl28
  %arrayidx31 = getelementptr i8, ptr %netdev, i32 6829
  %17 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx31, align 1
  %conv32 = zext i8 %18 to i64
  %or33 = or i64 %or29, %conv32
  %19 = ptrtoint ptr %wwn to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %or33, ptr %wwn, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then, %is_valid_ether_addr.exit.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then ], [ -22, %is_valid_ether_addr.exit.cleanup_crit_edge ], [ -22, %sw.epilog.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ixgbe_fcoe_get_hbainfo(ptr noundef %netdev, ptr noundef %info) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %info, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %flags = getelementptr i8, ptr %netdev, i32 2836
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %2 = call ptr @memcpy(ptr %info, ptr @.str.17, i32 18)
  %pdev = getelementptr i8, ptr %netdev, i32 2824
  %3 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pdev, align 8
  %call6 = tail call i64 @pci_get_dsn(ptr noundef %4) #14
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call6)
  %tobool7.not = icmp eq i64 %call6, 0
  %serial_number11 = getelementptr inbounds %struct.netdev_fcoe_hbainfo, ptr %info, i32 0, i32 1
  br i1 %tobool7.not, label %if.else, label %if.then8

if.then8:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #16
  %call10 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %serial_number11, i32 noundef 64, ptr noundef nonnull @.str.18, i64 noundef %call6)
  br label %if.end14

if.else:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #16
  %5 = ptrtoint ptr %serial_number11 to i32
  call void @__asan_storeN_noabort(i32 %5, i32 8)
  store i64 6155975862722719232, ptr %serial_number11, align 1
  br label %if.end14

if.end14:                                         ; preds = %if.else, %if.then8
  %hardware_version = getelementptr inbounds %struct.netdev_fcoe_hbainfo, ptr %info, i32 0, i32 2
  %revision_id = getelementptr i8, ptr %netdev, i32 7820
  %6 = ptrtoint ptr %revision_id to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %revision_id, align 4
  %conv = zext i8 %7 to i32
  %call16 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %hardware_version, i32 noundef 64, ptr noundef nonnull @.str.20, i32 noundef %conv)
  %driver_version = getelementptr inbounds %struct.netdev_fcoe_hbainfo, ptr %info, i32 0, i32 3
  %call18 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %driver_version, i32 noundef 64, ptr noundef nonnull @.str.21, ptr noundef nonnull @ixgbe_driver_name, ptr noundef nonnull @.str.22)
  %firmware_version = getelementptr inbounds %struct.netdev_fcoe_hbainfo, ptr %info, i32 0, i32 5
  %eeprom_id = getelementptr i8, ptr %netdev, i32 67258
  %call21 = tail call i32 @strlcpy(ptr noundef %firmware_version, ptr noundef %eeprom_id, i32 noundef 64) #14
  %type = getelementptr i8, ptr %netdev, i32 6808
  %8 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %type, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.39)
  switch i32 %9, label %if.else35 [
    i32 2, label %if.then23
    i32 4, label %if.then31
  ]

if.then23:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #16
  %model = getelementptr inbounds %struct.netdev_fcoe_hbainfo, ptr %info, i32 0, i32 6
  %11 = call ptr @memcpy(ptr %model, ptr @.str.23, i32 12)
  br label %if.end40

if.then31:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #16
  %model32 = getelementptr inbounds %struct.netdev_fcoe_hbainfo, ptr %info, i32 0, i32 6
  %12 = call ptr @memcpy(ptr %model32, ptr @.str.24, i32 11)
  br label %if.end40

if.else35:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #16
  %model36 = getelementptr inbounds %struct.netdev_fcoe_hbainfo, ptr %info, i32 0, i32 6
  %13 = call ptr @memcpy(ptr %model36, ptr @.str.25, i32 11)
  br label %if.end40

if.end40:                                         ; preds = %if.else35, %if.then31, %if.then23
  %model_description = getelementptr inbounds %struct.netdev_fcoe_hbainfo, ptr %info, i32 0, i32 7
  %call42 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %model_description, i32 noundef 256, ptr noundef nonnull @.str.26, ptr noundef nonnull @ixgbe_default_device_descr)
  br label %cleanup

cleanup:                                          ; preds = %if.end40, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end40 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @pci_get_dsn(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i8 @ixgbe_fcoe_get_tc(ptr nocapture noundef readonly %adapter) local_unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %netdev = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 1
  %0 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netdev, align 128
  %up = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 74, i32 7
  %2 = ptrtoint ptr %up to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %up, align 4
  %4 = and i8 %3, 15
  %and.i = zext i8 %4 to i32
  %arrayidx.i = getelementptr %struct.net_device, ptr %1, i32 0, i32 142, i32 %and.i
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx.i, align 1
  ret i8 %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_pool_alloc(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #10

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_pool_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_map_single(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_pool_create(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #12

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__alloc_percpu(i32 noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_percpu(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #14

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

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #15 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #15 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nounwind readonly }
attributes #11 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #13 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { nounwind }
attributes #15 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #16 = { nomerge }
attributes #17 = { cold nounwind }
attributes #18 = { nounwind readonly willreturn }
attributes #19 = { nounwind allocsize(2) }
attributes #20 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !13, !15, !16, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !64, !65, !67}
!llvm.named.register.sp = !{!69}
!llvm.module.flags = !{!70, !71, !72, !73, !74, !75, !76, !77}
!llvm.ident = !{!78}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_fcoe.c", i32 501, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @ixgbe_fso._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @ixgbe_fso._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_fcoe.c", i32 527, i32 3}
!10 = !{ptr @.str.7, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @ixgbe_fso._entry.5, !9, !"_entry", i1 false, i1 false}
!12 = !{ptr @ixgbe_fso._entry_ptr.8, !9, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.10, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_fcoe.c", i32 553, i32 3}
!15 = !{ptr @ixgbe_fso._entry.9, !14, !"_entry", i1 false, i1 false}
!16 = !{ptr @ixgbe_fso._entry_ptr.11, !14, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.12, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_fcoe.c", i32 770, i32 3}
!19 = !{ptr @.str.13, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_fcoe.c", i32 784, i32 3}
!21 = !{ptr @.str.14, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_fcoe.c", i32 848, i32 2}
!23 = !{ptr @.str.15, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_fcoe.c", i32 851, i32 3}
!25 = !{ptr @.str.16, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_fcoe.c", i32 892, i32 2}
!27 = !{ptr @.str.17, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_fcoe.c", i32 983, i32 4}
!29 = !{ptr @.str.18, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_fcoe.c", i32 991, i32 5}
!31 = distinct !{null, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_fcoe.c", i32 994, i32 5}
!33 = !{ptr @.str.20, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_fcoe.c", i32 999, i32 4}
!35 = !{ptr @.str.21, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_fcoe.c", i32 1003, i32 4}
!37 = !{ptr @.str.22, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_fcoe.c", i32 1005, i32 4}
!39 = !{ptr @.str.23, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_fcoe.c", i32 1014, i32 5}
!41 = !{ptr @.str.24, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_fcoe.c", i32 1018, i32 5}
!43 = !{ptr @.str.25, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_fcoe.c", i32 1022, i32 5}
!45 = !{ptr @.str.26, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_fcoe.c", i32 1028, i32 4}
!47 = distinct !{null, !48, !"bufflen", i1 false, i1 false}
!48 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_fcoe.c", i32 145, i32 28}
!49 = !{ptr @.str.27, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_fcoe.c", i32 158, i32 3}
!51 = !{ptr @.str.28, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_fcoe.c", i32 170, i32 3}
!53 = !{ptr @.str.29, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_fcoe.c", i32 178, i32 3}
!55 = !{ptr @.str.30, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_fcoe.c", i32 184, i32 3}
!57 = !{ptr @.str.31, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_fcoe.c", i32 191, i32 3}
!59 = !{ptr @.str.32, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_fcoe.c", i32 198, i32 3}
!61 = distinct !{null, !62, !"__already_done", i1 false, i1 false}
!62 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!63 = !{ptr @.str.33, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @.str.34, !62, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @.str.35, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_fcoe.c", i32 615, i32 26}
!67 = !{ptr @.str.36, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_fcoe.c", i32 802, i32 3}
!69 = !{!"sp"}
!70 = !{i32 1, !"wchar_size", i32 2}
!71 = !{i32 1, !"min_enum_size", i32 4}
!72 = !{i32 8, !"branch-target-enforcement", i32 0}
!73 = !{i32 8, !"sign-return-address", i32 0}
!74 = !{i32 8, !"sign-return-address-all", i32 0}
!75 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!76 = !{i32 7, !"uwtable", i32 1}
!77 = !{i32 7, !"frame-pointer", i32 2}
!78 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!79 = !{i64 2157282305}
!80 = !{i64 5038636}
!81 = !{i64 2157923162}
!82 = !{i64 2157926870}
!83 = !{i64 2157929584}
!84 = !{!"auto-init"}
!85 = !{!"branch_weights", i32 2000, i32 1}
!86 = !{i64 2148221368, i64 2148221394, i64 2148221423, i64 2148221457, i64 2148221488, i64 2148221511}
!87 = !{i64 2148309820}
!88 = !{i64 2148224553, i64 2148224585, i64 2148224614, i64 2148224648, i64 2148224679, i64 2148224702}
!89 = !{i64 2148310049}
