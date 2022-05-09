; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/intel/ixgbe/ixgbe_lib.c_pt.bc'
source_filename = "../drivers/net/ethernet/intel/ixgbe/ixgbe_lib.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon.22 }
%union.anon.22 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t, %union.anon.102 }
%union.anon.102 = type { i32 }
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
%struct.msix_entry = type { i32, i16 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.117, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.116, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.116 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.ixgbe_adv_tx_context_desc = type { i32, i32, i32, i32 }
%struct.ixgbe_q_vector = type { ptr, i16, i16, %struct.ixgbe_ring_container, %struct.ixgbe_ring_container, %struct.napi_struct, %struct.cpumask, i32, %struct.callback_head, [25 x i8], [71 x i8], [0 x %struct.ixgbe_ring] }
%struct.ixgbe_ring_container = type { ptr, i32, i32, i32, i16, i8, i8 }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.cpumask = type { [1 x i32] }
%struct.callback_head = type { ptr, ptr }

@ixgbe_init_interrupt_scheme._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 1250, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Unable to allocate memory for queue vectors\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"ixgbe_init_interrupt_scheme\00", [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"drivers/net/ethernet/intel/ixgbe/ixgbe_lib.c\00", [51 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ixgbe_init_interrupt_scheme._entry_ptr = internal global ptr @ixgbe_init_interrupt_scheme._entry, section ".printk_index", align 4
@ixgbe_init_interrupt_scheme._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 1259, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"Multiqueue %s: Rx Queue count = %u, Tx Queue count = %u XDP Queue count = %u\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@ixgbe_init_interrupt_scheme._entry_ptr.8 = internal global ptr @ixgbe_init_interrupt_scheme._entry.5, section ".printk_index", align 4
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Enabled\00", [24 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Disabled\00", [23 x i8] zeroinitializer }, align 32
@__num_online_cpus = external dso_local global %struct.atomic_t, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@ixgbe_set_interrupt_capability._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.2, i32 1191, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"Number of DCB TCs exceeds number of available queues. Disabling DCB support.\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"ixgbe_set_interrupt_capability\00", [33 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@ixgbe_set_interrupt_capability._entry_ptr = internal global ptr @ixgbe_set_interrupt_capability._entry, section ".printk_index", align 4
@ixgbe_set_interrupt_capability._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.12, ptr @.str.2, i32 1207, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Disabling SR-IOV support\0A\00", [38 x i8] zeroinitializer }, align 32
@ixgbe_set_interrupt_capability._entry_ptr.16 = internal global ptr @ixgbe_set_interrupt_capability._entry.14, section ".printk_index", align 4
@ixgbe_set_interrupt_capability._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.12, ptr @.str.2, i32 1211, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Disabling RSS support\0A\00", [41 x i8] zeroinitializer }, align 32
@ixgbe_set_interrupt_capability._entry_ptr.19 = internal global ptr @ixgbe_set_interrupt_capability._entry.17, section ".printk_index", align 4
@ixgbe_set_interrupt_capability._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.12, ptr @.str.2, i32 1223, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"Failed to allocate MSI interrupt, falling back to legacy. Error: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@ixgbe_set_interrupt_capability._entry_ptr.22 = internal global ptr @ixgbe_set_interrupt_capability._entry.20, section ".printk_index", align 4
@ixgbe_acquire_msix_vectors._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.2, i32 787, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Failed to allocate MSI-X interrupts. Err: %d\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ixgbe_acquire_msix_vectors\00", [37 x i8] zeroinitializer }, align 32
@ixgbe_acquire_msix_vectors._entry_ptr = internal global ptr @ixgbe_acquire_msix_vectors._entry, section ".printk_index", align 4
@ixgbe_alloc_q_vector.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.25 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&ring->tx_lock\00", [17 x i8] zeroinitializer }, align 32
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.26 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@ixgbe_xdp_locking_key = external dso_local global %struct.static_key_false, align 4
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 1250, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 1256, i32 2 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 1191, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 1207, i32 2 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 1211, i32 2 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 1222, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 786, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.103 = private constant [48 x i8] c"../drivers/net/ethernet/intel/ixgbe/ixgbe_lib.c\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 953, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.106 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 108, i32 2 }
@llvm.compiler.used = appending global [34 x ptr] [ptr @ixgbe_acquire_msix_vectors._entry, ptr @ixgbe_acquire_msix_vectors._entry_ptr, ptr @ixgbe_init_interrupt_scheme._entry, ptr @ixgbe_init_interrupt_scheme._entry.5, ptr @ixgbe_init_interrupt_scheme._entry_ptr, ptr @ixgbe_init_interrupt_scheme._entry_ptr.8, ptr @ixgbe_set_interrupt_capability._entry, ptr @ixgbe_set_interrupt_capability._entry.14, ptr @ixgbe_set_interrupt_capability._entry.17, ptr @ixgbe_set_interrupt_capability._entry.20, ptr @ixgbe_set_interrupt_capability._entry_ptr, ptr @ixgbe_set_interrupt_capability._entry_ptr.16, ptr @ixgbe_set_interrupt_capability._entry_ptr.19, ptr @ixgbe_set_interrupt_capability._entry_ptr.22, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.18, ptr @.str.21, ptr @.str.23, ptr @.str.24, ptr @ixgbe_alloc_q_vector.__key, ptr @.str.25, ptr @.str.26], section "llvm.metadata"
@0 = internal global [27 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ixgbe_init_interrupt_scheme._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ixgbe_init_interrupt_scheme._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ixgbe_set_interrupt_capability._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ixgbe_set_interrupt_capability._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ixgbe_set_interrupt_capability._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ixgbe_set_interrupt_capability._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ixgbe_acquire_msix_vectors._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ixgbe_alloc_q_vector.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ixgbe_init_interrupt_scheme(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @ixgbe_set_num_queues(ptr noundef %adapter)
  %num_rx_queues.i.i = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 12
  %0 = ptrtoint ptr %num_rx_queues.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_rx_queues.i.i, align 16
  %num_tx_queues.i.i = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 8
  %2 = ptrtoint ptr %num_tx_queues.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_tx_queues.i.i, align 4
  %4 = tail call i32 @llvm.smax.i32(i32 %1, i32 %3) #6
  %num_xdp_queues.i.i = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 17
  %5 = ptrtoint ptr %num_xdp_queues.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %num_xdp_queues.i.i, align 4
  %7 = tail call i32 @llvm.smax.i32(i32 %4, i32 %6) #6
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @__num_online_cpus, i32 noundef 4) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__num_online_cpus to i32))
  %8 = load volatile i32, ptr @__num_online_cpus, align 4
  %9 = tail call i32 @llvm.smin.i32(i32 %7, i32 %8) #6
  %add.i.i = add i32 %9, 1
  %max_msix_vectors.i.i = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 54, i32 2, i32 7
  %10 = ptrtoint ptr %max_msix_vectors.i.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %max_msix_vectors.i.i, align 2
  %conv.i.i = zext i16 %11 to i32
  %12 = tail call i32 @llvm.smin.i32(i32 %add.i.i, i32 %conv.i.i) #6
  %13 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %12, i32 8) #6
  %14 = extractvalue { i32, i1 } %13, 1
  br i1 %14, label %kcalloc.exit.thread.i.i, label %if.end7.i.i.i.i, !prof !53

kcalloc.exit.thread.i.i:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %msix_entries91.i.i = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 49
  br label %if.end.sink.split.i

if.end7.i.i.i.i:                                  ; preds = %entry
  %15 = extractvalue { i32, i1 } %13, 0
  %call8.i.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %15, i32 noundef 3520) #9
  %msix_entries.i.i = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 49
  %16 = ptrtoint ptr %msix_entries.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call8.i.i.i.i, ptr %msix_entries.i.i, align 128
  %tobool.not.i.i = icmp eq ptr %call8.i.i.i.i, null
  br i1 %tobool.not.i.i, label %if.end7.i.i.i.i.if.end.i_crit_edge, label %for.cond.preheader.i.i

if.end7.i.i.i.i.if.end.i_crit_edge:               ; preds = %if.end7.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

for.cond.preheader.i.i:                           ; preds = %if.end7.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp2393.not.i.i = icmp eq i32 %12, 0
  br i1 %cmp2393.not.i.i, label %for.cond.preheader.i.i.for.end.i.i_crit_edge, label %for.cond.preheader.i.i.for.body.i.i_crit_edge

for.cond.preheader.i.i.for.body.i.i_crit_edge:    ; preds = %for.cond.preheader.i.i
  br label %for.body.i.i

for.cond.preheader.i.i.for.end.i.i_crit_edge:     ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.cond.preheader.i.i.for.body.i.i_crit_edge
  %i.094.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %for.cond.preheader.i.i.for.body.i.i_crit_edge ]
  %conv25.i.i = trunc i32 %i.094.i.i to i16
  %17 = ptrtoint ptr %msix_entries.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %msix_entries.i.i, align 128
  %entry27.i.i = getelementptr %struct.msix_entry, ptr %18, i32 %i.094.i.i, i32 1
  %19 = ptrtoint ptr %entry27.i.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %conv25.i.i, ptr %entry27.i.i, align 4
  %inc.i.i = add nuw nsw i32 %i.094.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %12
  br i1 %exitcond.not.i.i, label %for.body.i.i.for.end.i.i_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i

for.body.i.i.for.end.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %for.body.i.i.for.end.i.i_crit_edge, %for.cond.preheader.i.i.for.end.i.i_crit_edge
  %pdev.i.i = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 3
  %20 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pdev.i.i, align 8
  %22 = ptrtoint ptr %msix_entries.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %msix_entries.i.i, align 128
  %call29.i.i = tail call i32 @pci_enable_msix_range(ptr noundef %21, ptr noundef %23, i32 noundef 2, i32 noundef %12) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.i.i)
  %cmp30.i.i = icmp slt i32 %call29.i.i, 0
  br i1 %cmp30.i.i, label %do.end.i.i, label %ixgbe_acquire_msix_vectors.exit.i

do.end.i.i:                                       ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %24 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pdev.i.i, align 8
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %25, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i.i, ptr noundef nonnull @.str.23, i32 noundef %call29.i.i) #10
  %flags.i.i = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 6
  %26 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %27, -9
  store i32 %and.i.i, ptr %flags.i.i, align 4
  %28 = ptrtoint ptr %msix_entries.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %msix_entries.i.i, align 128
  tail call void @kfree(ptr noundef %29) #6
  br label %if.end.sink.split.i

ixgbe_acquire_msix_vectors.exit.i:                ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %flags37.i.i = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 6
  %30 = ptrtoint ptr %flags37.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %flags37.i.i, align 4
  %or.i.i = or i32 %31, 8
  store i32 %or.i.i, ptr %flags37.i.i, align 4
  %sub.i.i = add nsw i32 %call29.i.i, -1
  %max_q_vectors.i.i = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 46
  %32 = ptrtoint ptr %max_q_vectors.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %max_q_vectors.i.i, align 8
  %34 = tail call i32 @llvm.smin.i32(i32 %sub.i.i, i32 %33) #6
  %num_q_vectors.i.i = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 45
  %35 = ptrtoint ptr %num_q_vectors.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %num_q_vectors.i.i, align 4
  br label %ixgbe_set_interrupt_capability.exit

if.end.sink.split.i:                              ; preds = %do.end.i.i, %kcalloc.exit.thread.i.i
  %msix_entries99.i.sink.i = phi ptr [ %msix_entries.i.i, %do.end.i.i ], [ %msix_entries91.i.i, %kcalloc.exit.thread.i.i ]
  %36 = ptrtoint ptr %msix_entries99.i.sink.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %msix_entries99.i.sink.i, align 128
  br label %if.end.i

if.end.i:                                         ; preds = %if.end.sink.split.i, %if.end7.i.i.i.i.if.end.i_crit_edge
  %hw_tcs.i = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 41
  %37 = ptrtoint ptr %hw_tcs.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %hw_tcs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %38)
  %cmp.i = icmp ugt i8 %38, 1
  br i1 %cmp.i, label %do.end.i, label %if.end.i.if.end9.i_crit_edge

if.end.i.if.end9.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9.i

do.end.i:                                         ; preds = %if.end.i
  %pdev.i = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 3
  %39 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %pdev.i, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %40, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i, ptr noundef nonnull @.str.11) #10
  %netdev.i = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 1
  %41 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %netdev.i, align 128
  tail call void @netdev_reset_tc(ptr noundef %42) #6
  %type.i = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 54, i32 2, i32 1
  %43 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %44)
  %cmp3.i = icmp eq i32 %44, 1
  br i1 %cmp3.i, label %if.then5.i, label %do.end.i.if.end7.i_crit_edge

do.end.i.if.end7.i_crit_edge:                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7.i

if.then5.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %last_lfc_mode.i = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 44
  %45 = ptrtoint ptr %last_lfc_mode.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %last_lfc_mode.i, align 16
  %requested_mode.i = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 54, i32 4, i32 8
  %47 = ptrtoint ptr %requested_mode.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %requested_mode.i, align 4
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then5.i, %do.end.i.if.end7.i_crit_edge
  %flags.i = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 6
  %48 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %49, -4097
  store i32 %and.i, ptr %flags.i, align 4
  %pfc_mode_enable.i = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 40, i32 4
  %50 = ptrtoint ptr %pfc_mode_enable.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 0, ptr %pfc_mode_enable.i, align 4
  %pfc_mode_enable8.i = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 39, i32 4
  %51 = ptrtoint ptr %pfc_mode_enable8.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 0, ptr %pfc_mode_enable8.i, align 4
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.end7.i, %if.end.i.if.end9.i_crit_edge
  %52 = ptrtoint ptr %hw_tcs.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 0, ptr %hw_tcs.i, align 4
  %num_tcs.i = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 39, i32 1
  %53 = ptrtoint ptr %num_tcs.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 1, ptr %num_tcs.i, align 4
  %pfc_tcs.i = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 39, i32 1, i32 1
  %54 = ptrtoint ptr %pfc_tcs.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 1, ptr %pfc_tcs.i, align 1
  %pdev17.i = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 3
  %55 = ptrtoint ptr %pdev17.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %pdev17.i, align 8
  %dev18.i = getelementptr inbounds %struct.pci_dev, ptr %56, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev18.i, ptr noundef nonnull @.str.15) #10
  %call19.i = tail call i32 @ixgbe_disable_sriov(ptr noundef %adapter) #6
  %57 = ptrtoint ptr %pdev17.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %pdev17.i, align 8
  %dev24.i = getelementptr inbounds %struct.pci_dev, ptr %58, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev24.i, ptr noundef nonnull @.str.18) #10
  %arrayidx.i = getelementptr %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 48, i32 2
  %59 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 1, ptr %arrayidx.i, align 128
  tail call fastcc void @ixgbe_set_num_queues(ptr noundef %adapter) #6
  %num_q_vectors.i = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 45
  %60 = ptrtoint ptr %num_q_vectors.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 1, ptr %num_q_vectors.i, align 4
  %61 = ptrtoint ptr %pdev17.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %pdev17.i, align 8
  %call26.i = tail call i32 @pci_enable_msi(ptr noundef %62) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i)
  %tobool27.not.i = icmp eq i32 %call26.i, 0
  br i1 %tobool27.not.i, label %if.else.i, label %do.end31.i

do.end31.i:                                       ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #8
  %63 = ptrtoint ptr %pdev17.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %pdev17.i, align 8
  %dev33.i = getelementptr inbounds %struct.pci_dev, ptr %64, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev33.i, ptr noundef nonnull @.str.21, i32 noundef %call26.i) #10
  br label %ixgbe_set_interrupt_capability.exit

if.else.i:                                        ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #8
  %flags34.i = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 6
  %65 = ptrtoint ptr %flags34.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %flags34.i, align 4
  %or.i = or i32 %66, 2
  store i32 %or.i, ptr %flags34.i, align 4
  br label %ixgbe_set_interrupt_capability.exit

ixgbe_set_interrupt_capability.exit:              ; preds = %if.else.i, %do.end31.i, %ixgbe_acquire_msix_vectors.exit.i
  %num_q_vectors.i19 = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 45
  %67 = ptrtoint ptr %num_q_vectors.i19 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %num_q_vectors.i19, align 4
  %69 = ptrtoint ptr %num_rx_queues.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %num_rx_queues.i.i, align 16
  %71 = ptrtoint ptr %num_tx_queues.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %num_tx_queues.i.i, align 4
  %73 = ptrtoint ptr %num_xdp_queues.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %num_xdp_queues.i.i, align 4
  %flags.i20 = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 6
  %75 = ptrtoint ptr %flags.i20 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %flags.i20, align 4
  %and.i21 = and i32 %76, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i21)
  %tobool.not.i = icmp eq i32 %and.i21, 0
  %spec.select.i = select i1 %tobool.not.i, i32 1, i32 %68
  %add.i = add i32 %72, %70
  %add1.i = add i32 %add.i, %74
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select.i, i32 %add1.i)
  %cmp.not.i = icmp slt i32 %spec.select.i, %add1.i
  br i1 %cmp.not.i, label %ixgbe_set_interrupt_capability.exit.if.end8.i_crit_edge, label %for.cond.preheader.i

ixgbe_set_interrupt_capability.exit.if.end8.i_crit_edge: ; preds = %ixgbe_set_interrupt_capability.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8.i

for.cond.preheader.i:                             ; preds = %ixgbe_set_interrupt_capability.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %tobool3.not193.i = icmp eq i32 %70, 0
  br i1 %tobool3.not193.i, label %for.cond.preheader.i.if.end8.i_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.if.end8.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8.i

for.body.i:                                       ; preds = %if.end6.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %v_idx.0196.i = phi i32 [ %inc7.i, %if.end6.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %rxr_remaining.0194.i = phi i32 [ %dec.i, %if.end6.i.for.body.i_crit_edge ], [ %70, %for.cond.preheader.i.for.body.i_crit_edge ]
  %call.i = tail call fastcc i32 @ixgbe_alloc_q_vector(ptr noundef %adapter, i32 noundef %spec.select.i, i32 noundef %v_idx.0196.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, i32 noundef %v_idx.0196.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool4.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool4.not.i, label %if.end6.i, label %for.body.i.err_out.i_crit_edge

for.body.i.err_out.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_out.i

if.end6.i:                                        ; preds = %for.body.i
  %dec.i = add i32 %rxr_remaining.0194.i, -1
  %inc7.i = add nuw i32 %v_idx.0196.i, 1
  %tobool3.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool3.not.i, label %if.end6.i.if.end8.i_crit_edge, label %if.end6.i.for.body.i_crit_edge

if.end6.i.for.body.i_crit_edge:                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

if.end6.i.if.end8.i_crit_edge:                    ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.end6.i.if.end8.i_crit_edge, %for.cond.preheader.i.if.end8.i_crit_edge, %ixgbe_set_interrupt_capability.exit.if.end8.i_crit_edge
  %rxr_remaining.1.i = phi i32 [ %70, %ixgbe_set_interrupt_capability.exit.if.end8.i_crit_edge ], [ 0, %for.cond.preheader.i.if.end8.i_crit_edge ], [ 0, %if.end6.i.if.end8.i_crit_edge ]
  %rxr_idx.1.i = phi i32 [ 0, %ixgbe_set_interrupt_capability.exit.if.end8.i_crit_edge ], [ 0, %for.cond.preheader.i.if.end8.i_crit_edge ], [ %70, %if.end6.i.if.end8.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select.i, i32 %rxr_idx.1.i)
  %cmp10198.i = icmp sgt i32 %spec.select.i, %rxr_idx.1.i
  br i1 %cmp10198.i, label %for.body11.preheader.i, label %if.end8.i.for.cond40.preheader.i_crit_edge

if.end8.i.for.cond40.preheader.i_crit_edge:       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond40.preheader.i

for.body11.preheader.i:                           ; preds = %if.end8.i
  %77 = sub i32 %spec.select.i, %rxr_idx.1.i
  br label %for.body11.i

for.cond40.preheader.i:                           ; preds = %for.inc37.i.for.cond40.preheader.i_crit_edge, %if.end8.i.for.cond40.preheader.i_crit_edge
  %78 = ptrtoint ptr %num_rx_queues.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %num_rx_queues.i.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %cmp42206.i = icmp sgt i32 %79, 0
  br i1 %cmp42206.i, label %for.cond40.preheader.i.for.body43.i_crit_edge, label %for.cond40.preheader.i.for.cond52.preheader.i_crit_edge

for.cond40.preheader.i.for.cond52.preheader.i_crit_edge: ; preds = %for.cond40.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond52.preheader.i

for.cond40.preheader.i.for.body43.i_crit_edge:    ; preds = %for.cond40.preheader.i
  br label %for.body43.i

for.body11.i:                                     ; preds = %for.inc37.i.for.body11.i_crit_edge, %for.body11.preheader.i
  %v_idx.2205.i = phi i32 [ %inc38.i, %for.inc37.i.for.body11.i_crit_edge ], [ %rxr_idx.1.i, %for.body11.preheader.i ]
  %xdp_idx.0204.i = phi i32 [ %add34.i, %for.inc37.i.for.body11.i_crit_edge ], [ 0, %for.body11.preheader.i ]
  %txr_idx.0203.i = phi i32 [ %inc33.i, %for.inc37.i.for.body11.i_crit_edge ], [ 0, %for.body11.preheader.i ]
  %xdp_remaining.0201.i = phi i32 [ %sub31.i, %for.inc37.i.for.body11.i_crit_edge ], [ %74, %for.body11.preheader.i ]
  %txr_remaining.0200.i = phi i32 [ %sub30.i, %for.inc37.i.for.body11.i_crit_edge ], [ %72, %for.body11.preheader.i ]
  %rxr_remaining.2199.i = phi i32 [ %sub29.i, %for.inc37.i.for.body11.i_crit_edge ], [ %rxr_remaining.1.i, %for.body11.preheader.i ]
  %sub.i = sub i32 %spec.select.i, %v_idx.2205.i
  %add12.i = add i32 %sub.i, -1
  %sub13.i = add i32 %rxr_remaining.2199.i, %add12.i
  %div.i = sdiv i32 %sub13.i, %sub.i
  %sub17.i = add i32 %txr_remaining.0200.i, %add12.i
  %div19.i = sdiv i32 %sub17.i, %sub.i
  %sub22.i = add i32 %xdp_remaining.0201.i, %add12.i
  %div24.i = sdiv i32 %sub22.i, %sub.i
  %call25.i = tail call fastcc i32 @ixgbe_alloc_q_vector(ptr noundef %adapter, i32 noundef %spec.select.i, i32 noundef %v_idx.2205.i, i32 noundef %div19.i, i32 noundef %txr_idx.0203.i, i32 noundef %div24.i, i32 noundef %xdp_idx.0204.i, i32 noundef %div.i, i32 noundef %v_idx.2205.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i)
  %tobool26.not.i = icmp eq i32 %call25.i, 0
  br i1 %tobool26.not.i, label %for.inc37.i, label %for.body11.i.err_out.i_crit_edge

for.body11.i.err_out.i_crit_edge:                 ; preds = %for.body11.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_out.i

for.inc37.i:                                      ; preds = %for.body11.i
  %sub29.i = sub i32 %rxr_remaining.2199.i, %div.i
  %sub30.i = sub i32 %txr_remaining.0200.i, %div19.i
  %sub31.i = sub i32 %xdp_remaining.0201.i, %div24.i
  %inc38.i = add nsw i32 %v_idx.2205.i, 1
  %inc33.i = add nuw i32 %txr_idx.0203.i, 1
  %add34.i = add i32 %div24.i, %xdp_idx.0204.i
  %exitcond.not.i = icmp eq i32 %inc33.i, %77
  br i1 %exitcond.not.i, label %for.inc37.i.for.cond40.preheader.i_crit_edge, label %for.inc37.i.for.body11.i_crit_edge

for.inc37.i.for.body11.i_crit_edge:               ; preds = %for.inc37.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body11.i

for.inc37.i.for.cond40.preheader.i_crit_edge:     ; preds = %for.inc37.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond40.preheader.i

for.cond52.preheader.i:                           ; preds = %for.inc49.i.for.cond52.preheader.i_crit_edge, %for.cond40.preheader.i.for.cond52.preheader.i_crit_edge
  %80 = ptrtoint ptr %num_tx_queues.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %num_tx_queues.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %cmp54209.i = icmp sgt i32 %81, 0
  br i1 %cmp54209.i, label %for.cond52.preheader.i.for.body56.i_crit_edge, label %for.cond52.preheader.i.for.cond68.preheader.i_crit_edge

for.cond52.preheader.i.for.cond68.preheader.i_crit_edge: ; preds = %for.cond52.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond68.preheader.i

for.cond52.preheader.i.for.body56.i_crit_edge:    ; preds = %for.cond52.preheader.i
  br label %for.body56.i

for.body43.i:                                     ; preds = %for.inc49.i.for.body43.i_crit_edge, %for.cond40.preheader.i.for.body43.i_crit_edge
  %i.0207.i = phi i32 [ %inc50.i, %for.inc49.i.for.body43.i_crit_edge ], [ 0, %for.cond40.preheader.i.for.body43.i_crit_edge ]
  %arrayidx.i22 = getelementptr %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 25, i32 %i.0207.i
  %82 = ptrtoint ptr %arrayidx.i22 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %arrayidx.i22, align 4
  %tobool44.not.i = icmp eq ptr %83, null
  br i1 %tobool44.not.i, label %for.body43.i.for.inc49.i_crit_edge, label %if.then45.i

for.body43.i.for.inc49.i_crit_edge:               ; preds = %for.body43.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc49.i

if.then45.i:                                      ; preds = %for.body43.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i = trunc i32 %i.0207.i to i16
  %ring_idx.i = getelementptr inbounds %struct.ixgbe_ring, ptr %83, i32 0, i32 27
  %84 = ptrtoint ptr %ring_idx.i to i32
  call void @__asan_store2_noabort(i32 %84)
  store i16 %conv.i, ptr %ring_idx.i, align 16
  br label %for.inc49.i

for.inc49.i:                                      ; preds = %if.then45.i, %for.body43.i.for.inc49.i_crit_edge
  %inc50.i = add nuw nsw i32 %i.0207.i, 1
  %85 = ptrtoint ptr %num_rx_queues.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %num_rx_queues.i.i, align 16
  %cmp42.i = icmp slt i32 %inc50.i, %86
  br i1 %cmp42.i, label %for.inc49.i.for.body43.i_crit_edge, label %for.inc49.i.for.cond52.preheader.i_crit_edge

for.inc49.i.for.cond52.preheader.i_crit_edge:     ; preds = %for.inc49.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond52.preheader.i

for.inc49.i.for.body43.i_crit_edge:               ; preds = %for.inc49.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body43.i

for.cond68.preheader.i:                           ; preds = %for.inc65.i.for.cond68.preheader.i_crit_edge, %for.cond52.preheader.i.for.cond68.preheader.i_crit_edge
  %87 = ptrtoint ptr %num_xdp_queues.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %num_xdp_queues.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %cmp70212.i = icmp sgt i32 %88, 0
  br i1 %cmp70212.i, label %for.cond68.preheader.i.for.body72.i_crit_edge, label %for.cond68.preheader.i.if.end_crit_edge

for.cond68.preheader.i.if.end_crit_edge:          ; preds = %for.cond68.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

for.cond68.preheader.i.for.body72.i_crit_edge:    ; preds = %for.cond68.preheader.i
  br label %for.body72.i

for.body56.i:                                     ; preds = %for.inc65.i.for.body56.i_crit_edge, %for.cond52.preheader.i.for.body56.i_crit_edge
  %i.1210.i = phi i32 [ %inc66.i, %for.inc65.i.for.body56.i_crit_edge ], [ 0, %for.cond52.preheader.i.for.body56.i_crit_edge ]
  %arrayidx57.i = getelementptr %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 21, i32 %i.1210.i
  %89 = ptrtoint ptr %arrayidx57.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %arrayidx57.i, align 4
  %tobool58.not.i = icmp eq ptr %90, null
  br i1 %tobool58.not.i, label %for.body56.i.for.inc65.i_crit_edge, label %if.then59.i

for.body56.i.for.inc65.i_crit_edge:               ; preds = %for.body56.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc65.i

if.then59.i:                                      ; preds = %for.body56.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv60.i = trunc i32 %i.1210.i to i16
  %ring_idx63.i = getelementptr inbounds %struct.ixgbe_ring, ptr %90, i32 0, i32 27
  %91 = ptrtoint ptr %ring_idx63.i to i32
  call void @__asan_store2_noabort(i32 %91)
  store i16 %conv60.i, ptr %ring_idx63.i, align 16
  br label %for.inc65.i

for.inc65.i:                                      ; preds = %if.then59.i, %for.body56.i.for.inc65.i_crit_edge
  %inc66.i = add nuw nsw i32 %i.1210.i, 1
  %92 = ptrtoint ptr %num_tx_queues.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %num_tx_queues.i.i, align 4
  %cmp54.i = icmp slt i32 %inc66.i, %93
  br i1 %cmp54.i, label %for.inc65.i.for.body56.i_crit_edge, label %for.inc65.i.for.cond68.preheader.i_crit_edge

for.inc65.i.for.cond68.preheader.i_crit_edge:     ; preds = %for.inc65.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond68.preheader.i

for.inc65.i.for.body56.i_crit_edge:               ; preds = %for.inc65.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body56.i

for.body72.i:                                     ; preds = %for.inc81.i.for.body72.i_crit_edge, %for.cond68.preheader.i.for.body72.i_crit_edge
  %i.2213.i = phi i32 [ %inc82.i, %for.inc81.i.for.body72.i_crit_edge ], [ 0, %for.cond68.preheader.i.for.body72.i_crit_edge ]
  %arrayidx73.i = getelementptr %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 18, i32 %i.2213.i
  %94 = ptrtoint ptr %arrayidx73.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %arrayidx73.i, align 4
  %tobool74.not.i = icmp eq ptr %95, null
  br i1 %tobool74.not.i, label %for.body72.i.for.inc81.i_crit_edge, label %if.then75.i

for.body72.i.for.inc81.i_crit_edge:               ; preds = %for.body72.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc81.i

if.then75.i:                                      ; preds = %for.body72.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv76.i = trunc i32 %i.2213.i to i16
  %ring_idx79.i = getelementptr inbounds %struct.ixgbe_ring, ptr %95, i32 0, i32 27
  %96 = ptrtoint ptr %ring_idx79.i to i32
  call void @__asan_store2_noabort(i32 %96)
  store i16 %conv76.i, ptr %ring_idx79.i, align 16
  br label %for.inc81.i

for.inc81.i:                                      ; preds = %if.then75.i, %for.body72.i.for.inc81.i_crit_edge
  %inc82.i = add nuw nsw i32 %i.2213.i, 1
  %97 = ptrtoint ptr %num_xdp_queues.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %num_xdp_queues.i.i, align 4
  %cmp70.i = icmp slt i32 %inc82.i, %98
  br i1 %cmp70.i, label %for.inc81.i.for.body72.i_crit_edge, label %for.inc81.i.if.end_crit_edge

for.inc81.i.if.end_crit_edge:                     ; preds = %for.inc81.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

for.inc81.i.for.body72.i_crit_edge:               ; preds = %for.inc81.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body72.i

err_out.i:                                        ; preds = %for.body11.i.err_out.i_crit_edge, %for.body.i.err_out.i_crit_edge
  %v_idx.3.i = phi i32 [ %v_idx.2205.i, %for.body11.i.err_out.i_crit_edge ], [ %v_idx.0196.i, %for.body.i.err_out.i_crit_edge ]
  %99 = ptrtoint ptr %num_tx_queues.i.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 0, ptr %num_tx_queues.i.i, align 4
  %100 = ptrtoint ptr %num_xdp_queues.i.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 0, ptr %num_xdp_queues.i.i, align 4
  %101 = ptrtoint ptr %num_rx_queues.i.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 0, ptr %num_rx_queues.i.i, align 16
  %102 = ptrtoint ptr %num_q_vectors.i19 to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 0, ptr %num_q_vectors.i19, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %v_idx.3.i)
  %tobool89.not215.i = icmp eq i32 %v_idx.3.i, 0
  br i1 %tobool89.not215.i, label %err_out.i.do.end_crit_edge, label %err_out.i.while.body.i_crit_edge

err_out.i.while.body.i_crit_edge:                 ; preds = %err_out.i
  br label %while.body.i

err_out.i.do.end_crit_edge:                       ; preds = %err_out.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %err_out.i.while.body.i_crit_edge
  %v_idx.4216.i = phi i32 [ %dec88.i, %while.body.i.while.body.i_crit_edge ], [ %v_idx.3.i, %err_out.i.while.body.i_crit_edge ]
  %dec88.i = add i32 %v_idx.4216.i, -1
  tail call fastcc void @ixgbe_free_q_vector(ptr noundef %adapter, i32 noundef %dec88.i) #6
  %tobool89.not.i = icmp eq i32 %dec88.i, 0
  br i1 %tobool89.not.i, label %while.body.i.do.end_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i

while.body.i.do.end_crit_edge:                    ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.end:                                           ; preds = %while.body.i.do.end_crit_edge, %err_out.i.do.end_crit_edge
  %pdev = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 3
  %103 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %104, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str) #10
  %105 = ptrtoint ptr %flags.i20 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %flags.i20, align 4
  %and.i24 = and i32 %106, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i24)
  %tobool.not.i25 = icmp eq i32 %and.i24, 0
  br i1 %tobool.not.i25, label %if.else.i27, label %if.then.i

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %and2.i = and i32 %106, -9
  %107 = ptrtoint ptr %flags.i20 to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %and2.i, ptr %flags.i20, align 4
  %108 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %pdev, align 8
  tail call void @pci_disable_msix(ptr noundef %109) #6
  %msix_entries.i = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 49
  %110 = ptrtoint ptr %msix_entries.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %msix_entries.i, align 128
  tail call void @kfree(ptr noundef %111) #6
  %112 = ptrtoint ptr %msix_entries.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr null, ptr %msix_entries.i, align 128
  br label %cleanup

if.else.i27:                                      ; preds = %do.end
  %and5.i = and i32 %106, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %tobool6.not.i = icmp eq i32 %and5.i, 0
  br i1 %tobool6.not.i, label %if.else.i27.cleanup_crit_edge, label %if.then7.i

if.else.i27.cleanup_crit_edge:                    ; preds = %if.else.i27
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then7.i:                                       ; preds = %if.else.i27
  call void @__sanitizer_cov_trace_pc() #8
  %and9.i = and i32 %106, -3
  %113 = ptrtoint ptr %flags.i20 to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %and9.i, ptr %flags.i20, align 4
  %114 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %pdev, align 8
  tail call void @pci_disable_msi(ptr noundef %115) #6
  br label %cleanup

if.end:                                           ; preds = %for.inc81.i.if.end_crit_edge, %for.cond68.preheader.i.if.end_crit_edge
  %rx_ring.i = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 25
  %116 = ptrtoint ptr %rx_ring.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %rx_ring.i, align 4
  %reg_idx.i = getelementptr inbounds %struct.ixgbe_ring, ptr %117, i32 0, i32 13
  %118 = ptrtoint ptr %reg_idx.i to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 0, ptr %reg_idx.i, align 1
  %tx_ring.i = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 21
  %119 = ptrtoint ptr %tx_ring.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %tx_ring.i, align 128
  %reg_idx2.i = getelementptr inbounds %struct.ixgbe_ring, ptr %120, i32 0, i32 13
  %121 = ptrtoint ptr %reg_idx2.i to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 0, ptr %reg_idx2.i, align 1
  %hw_tcs.i.i = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 41
  %122 = ptrtoint ptr %hw_tcs.i.i to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %hw_tcs.i.i, align 4
  %conv.i.i28 = zext i8 %123 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %123)
  %cmp.i.i = icmp ult i8 %123, 2
  %124 = ptrtoint ptr %flags.i20 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %flags.i20, align 4
  br i1 %cmp.i.i, label %if.end5.i, label %if.end.i.i

if.end.i.i:                                       ; preds = %if.end
  %and.i.i30 = and i32 %125, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i30)
  %tobool.not.i.i31 = icmp eq i32 %and.i.i30, 0
  br i1 %tobool.not.i.i31, label %for.body.lr.ph.i20.i, label %if.end5.i.i

if.end5.i.i:                                      ; preds = %if.end.i.i
  %offset.i.i = getelementptr %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 48, i32 1, i32 3
  %mask.i.i = getelementptr %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 48, i32 1, i32 2
  %126 = ptrtoint ptr %num_rx_queues.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %num_rx_queues.i.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %127)
  %cmp14271.i.i = icmp sgt i32 %127, 0
  br i1 %cmp14271.i.i, label %for.body.lr.ph.i.i, label %if.end5.i.i.for.end.i.i36_crit_edge

if.end5.i.i.for.end.i.i36_crit_edge:              ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i.i36

for.body.lr.ph.i.i:                               ; preds = %if.end5.i.i
  %128 = ptrtoint ptr %mask.i.i to i32
  call void @__asan_load2_noabort(i32 %128)
  %129 = load i16, ptr %mask.i.i, align 4
  %130 = sub i16 0, %129
  %131 = and i16 %129, %130
  %132 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load2_noabort(i32 %132)
  %133 = load i16, ptr %offset.i.i, align 2
  %mul.i.i = mul i16 %131, %133
  %netdev.i.i = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 1
  br label %for.body.i.i34

for.body.i.i34:                                   ; preds = %cond.end.i.i.for.body.i.i34_crit_edge, %for.body.lr.ph.i.i
  %pool.0274.i.i = phi i16 [ 0, %for.body.lr.ph.i.i ], [ %pool.1.i.i, %cond.end.i.i.for.body.i.i34_crit_edge ]
  %reg_idx.0273.i.i = phi i16 [ %mul.i.i, %for.body.lr.ph.i.i ], [ %inc46.i.i, %cond.end.i.i.for.body.i.i34_crit_edge ]
  %i.0272.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc45.i.i, %cond.end.i.i.for.body.i.i34_crit_edge ]
  %conv16.i.i = zext i16 %reg_idx.0273.i.i to i32
  %134 = ptrtoint ptr %mask.i.i to i32
  call void @__asan_load2_noabort(i32 %134)
  %135 = load i16, ptr %mask.i.i, align 4
  %conv18.i.i = zext i16 %135 to i32
  %neg19.i.i = xor i32 %conv18.i.i, -1
  %and20.i.i = and i32 %neg19.i.i, %conv16.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %and20.i.i, i32 %conv.i.i28)
  %cmp22.not.i.i = icmp ult i32 %and20.i.i, %conv.i.i28
  %136 = trunc i32 %neg19.i.i to i16
  %137 = add i16 %reg_idx.0273.i.i, %136
  %conv35.i.i = and i16 %137, %135
  %reg_idx.1.i.i = select i1 %cmp22.not.i.i, i16 %reg_idx.0273.i.i, i16 %conv35.i.i
  %not.cmp22.not.i.i = xor i1 %cmp22.not.i.i, true
  %inc.i.i33 = zext i1 %not.cmp22.not.i.i to i16
  %pool.1.i.i = add i16 %pool.0274.i.i, %inc.i.i33
  %conv37.i.i = trunc i16 %reg_idx.1.i.i to i8
  %arrayidx38.i.i = getelementptr %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 25, i32 %i.0272.i.i
  %138 = ptrtoint ptr %arrayidx38.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %arrayidx38.i.i, align 4
  %reg_idx39.i.i = getelementptr inbounds %struct.ixgbe_ring, ptr %139, i32 0, i32 13
  %140 = ptrtoint ptr %reg_idx39.i.i to i32
  call void @__asan_store1_noabort(i32 %140)
  store i8 %conv37.i.i, ptr %reg_idx39.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %pool.1.i.i)
  %tobool41.not.i.i = icmp eq i16 %pool.1.i.i, 0
  br i1 %tobool41.not.i.i, label %cond.false.i.i, label %for.body.i.i34.cond.end.i.i_crit_edge

for.body.i.i34.cond.end.i.i_crit_edge:            ; preds = %for.body.i.i34
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end.i.i

cond.false.i.i:                                   ; preds = %for.body.i.i34
  call void @__sanitizer_cov_trace_pc() #8
  %141 = ptrtoint ptr %netdev.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %netdev.i.i, align 128
  br label %cond.end.i.i

cond.end.i.i:                                     ; preds = %cond.false.i.i, %for.body.i.i34.cond.end.i.i_crit_edge
  %cond.i.i = phi ptr [ %142, %cond.false.i.i ], [ null, %for.body.i.i34.cond.end.i.i_crit_edge ]
  %143 = ptrtoint ptr %arrayidx38.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %arrayidx38.i.i, align 4
  %netdev44.i.i = getelementptr inbounds %struct.ixgbe_ring, ptr %144, i32 0, i32 2
  %145 = ptrtoint ptr %netdev44.i.i to i32
  call void @__asan_store4_noabort(i32 %145)
  store ptr %cond.i.i, ptr %netdev44.i.i, align 8
  %inc45.i.i = add nuw nsw i32 %i.0272.i.i, 1
  %inc46.i.i = add i16 %reg_idx.1.i.i, 1
  %146 = ptrtoint ptr %num_rx_queues.i.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %num_rx_queues.i.i, align 16
  %cmp14.i.i = icmp slt i32 %inc45.i.i, %147
  br i1 %cmp14.i.i, label %cond.end.i.i.for.body.i.i34_crit_edge, label %cond.end.i.i.for.end.i.i36_crit_edge

cond.end.i.i.for.end.i.i36_crit_edge:             ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i.i36

cond.end.i.i.for.body.i.i34_crit_edge:            ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i34

for.end.i.i36:                                    ; preds = %cond.end.i.i.for.end.i.i36_crit_edge, %if.end5.i.i.for.end.i.i36_crit_edge
  %148 = ptrtoint ptr %num_tx_queues.i.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %num_tx_queues.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %149)
  %cmp61275.i.i = icmp sgt i32 %149, 0
  br i1 %cmp61275.i.i, label %for.body63.preheader.i.i, label %for.end.i.i36.for.end91.i.i_crit_edge

for.end.i.i36.for.end91.i.i_crit_edge:            ; preds = %for.end.i.i36
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end91.i.i

for.body63.preheader.i.i:                         ; preds = %for.end.i.i36
  %150 = ptrtoint ptr %mask.i.i to i32
  call void @__asan_load2_noabort(i32 %150)
  %151 = load i16, ptr %mask.i.i, align 4
  %152 = sub i16 0, %151
  %153 = and i16 %151, %152
  %154 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load2_noabort(i32 %154)
  %155 = load i16, ptr %offset.i.i, align 2
  %mul58.i.i = mul i16 %153, %155
  br label %for.body63.i.i

for.body63.i.i:                                   ; preds = %for.body63.i.i.for.body63.i.i_crit_edge, %for.body63.preheader.i.i
  %reg_idx.2277.i.i = phi i16 [ %inc90.i.i, %for.body63.i.i.for.body63.i.i_crit_edge ], [ %mul58.i.i, %for.body63.preheader.i.i ]
  %i.1276.i.i = phi i32 [ %inc89.i.i, %for.body63.i.i.for.body63.i.i_crit_edge ], [ 0, %for.body63.preheader.i.i ]
  %conv64.i.i = zext i16 %reg_idx.2277.i.i to i32
  %156 = ptrtoint ptr %mask.i.i to i32
  call void @__asan_load2_noabort(i32 %156)
  %157 = load i16, ptr %mask.i.i, align 4
  %conv66.i.i = zext i16 %157 to i32
  %neg67.i.i = xor i32 %conv66.i.i, -1
  %and68.i.i = and i32 %neg67.i.i, %conv64.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %and68.i.i, i32 %conv.i.i28)
  %cmp70.not.i.i = icmp ult i32 %and68.i.i, %conv.i.i28
  %158 = trunc i32 %neg67.i.i to i16
  %159 = add i16 %reg_idx.2277.i.i, %158
  %conv83.i.i = and i16 %159, %157
  %reg_idx.3.i.i = select i1 %cmp70.not.i.i, i16 %reg_idx.2277.i.i, i16 %conv83.i.i
  %conv85.i.i = trunc i16 %reg_idx.3.i.i to i8
  %arrayidx86.i.i = getelementptr %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 21, i32 %i.1276.i.i
  %160 = ptrtoint ptr %arrayidx86.i.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %arrayidx86.i.i, align 4
  %reg_idx87.i.i = getelementptr inbounds %struct.ixgbe_ring, ptr %161, i32 0, i32 13
  %162 = ptrtoint ptr %reg_idx87.i.i to i32
  call void @__asan_store1_noabort(i32 %162)
  store i8 %conv85.i.i, ptr %reg_idx87.i.i, align 1
  %inc89.i.i = add nuw nsw i32 %i.1276.i.i, 1
  %inc90.i.i = add i16 %reg_idx.3.i.i, 1
  %163 = ptrtoint ptr %num_tx_queues.i.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %num_tx_queues.i.i, align 4
  %cmp61.i.i = icmp slt i32 %inc89.i.i, %164
  br i1 %cmp61.i.i, label %for.body63.i.i.for.body63.i.i_crit_edge, label %for.body63.i.i.for.end91.i.i_crit_edge

for.body63.i.i.for.end91.i.i_crit_edge:           ; preds = %for.body63.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end91.i.i

for.body63.i.i.for.body63.i.i_crit_edge:          ; preds = %for.body63.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body63.i.i

for.end91.i.i:                                    ; preds = %for.body63.i.i.for.end91.i.i_crit_edge, %for.end.i.i36.for.end91.i.i_crit_edge
  %165 = ptrtoint ptr %flags.i20 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %flags.i20, align 4
  %and93.i.i = and i32 %166, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and93.i.i)
  %tobool94.not.i.i = icmp eq i32 %and93.i.i, 0
  br i1 %tobool94.not.i.i, label %for.end91.i.i.ixgbe_cache_ring_register.exit_crit_edge, label %if.end96.i.i

for.end91.i.i.ixgbe_cache_ring_register.exit_crit_edge: ; preds = %for.end91.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ixgbe_cache_ring_register.exit

if.end96.i.i:                                     ; preds = %for.end91.i.i
  %offset97.i.i = getelementptr %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 48, i32 4, i32 3
  %167 = ptrtoint ptr %offset97.i.i to i32
  call void @__asan_load2_noabort(i32 %167)
  %168 = load i16, ptr %offset97.i.i, align 2
  %169 = zext i8 %123 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %168, i16 %169)
  %cmp100.i.i = icmp ult i16 %168, %169
  br i1 %cmp100.i.i, label %if.end96.i.i.ixgbe_cache_ring_register.exit_crit_edge, label %if.end103.i.i

if.end96.i.i.ixgbe_cache_ring_register.exit_crit_edge: ; preds = %if.end96.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ixgbe_cache_ring_register.exit

if.end103.i.i:                                    ; preds = %if.end96.i.i
  %indices.i.i = getelementptr %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 48, i32 4, i32 1
  %170 = ptrtoint ptr %indices.i.i to i32
  call void @__asan_load2_noabort(i32 %170)
  %171 = load i16, ptr %indices.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %171)
  %tobool104.not.i.i = icmp eq i16 %171, 0
  br i1 %tobool104.not.i.i, label %if.end103.i.i.ixgbe_cache_ring_register.exit_crit_edge, label %if.then105.i.i

if.end103.i.i.ixgbe_cache_ring_register.exit_crit_edge: ; preds = %if.end103.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ixgbe_cache_ring_register.exit

if.then105.i.i:                                   ; preds = %if.end103.i.i
  %172 = ptrtoint ptr %mask.i.i to i32
  call void @__asan_load2_noabort(i32 %172)
  %173 = load i16, ptr %mask.i.i, align 4
  %174 = sub i16 0, %173
  %175 = and i16 %173, %174
  %call.i.i = tail call zeroext i8 @ixgbe_fcoe_get_tc(ptr noundef %adapter) #6
  %indices118.i.i = getelementptr %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 48, i32 1, i32 1
  %176 = ptrtoint ptr %offset97.i.i to i32
  call void @__asan_load2_noabort(i32 %176)
  %177 = load i16, ptr %offset97.i.i, align 2
  %conv125.i.i = zext i16 %177 to i32
  %178 = ptrtoint ptr %num_rx_queues.i.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %num_rx_queues.i.i, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %179, i32 %conv125.i.i)
  %cmp128278.i.i = icmp sgt i32 %179, %conv125.i.i
  br i1 %cmp128278.i.i, label %for.body130.lr.ph.i.i, label %if.then105.i.i.for.end155.i.i_crit_edge

if.then105.i.i.for.end155.i.i_crit_edge:          ; preds = %if.then105.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end155.i.i

for.body130.lr.ph.i.i:                            ; preds = %if.then105.i.i
  %180 = ptrtoint ptr %indices118.i.i to i32
  call void @__asan_load2_noabort(i32 %180)
  %181 = load i16, ptr %indices118.i.i, align 2
  %182 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load2_noabort(i32 %182)
  %183 = load i16, ptr %offset.i.i, align 2
  %add120.i.i = add i16 %183, %181
  %mul122.i.i = mul i16 %add120.i.i, %175
  %conv141.i.i = zext i8 %call.i.i to i16
  %netdev148.i.i = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 1
  br label %for.body130.i.i

for.body130.i.i:                                  ; preds = %for.body130.i.i.for.body130.i.i_crit_edge, %for.body130.lr.ph.i.i
  %reg_idx.4280.i.i = phi i16 [ %mul122.i.i, %for.body130.lr.ph.i.i ], [ %inc152.i.i, %for.body130.i.i.for.body130.i.i_crit_edge ]
  %i.2279.i.i = phi i32 [ %conv125.i.i, %for.body130.lr.ph.i.i ], [ %inc154.i.i, %for.body130.i.i.for.body130.i.i_crit_edge ]
  %184 = ptrtoint ptr %mask.i.i to i32
  call void @__asan_load2_noabort(i32 %184)
  %185 = load i16, ptr %mask.i.i, align 4
  %neg134.i.i = xor i16 %185, -1
  %add135.i.i = add i16 %reg_idx.4280.i.i, %neg134.i.i
  %and140.i.i = and i16 %add135.i.i, %185
  %add142.i.i = add i16 %and140.i.i, %conv141.i.i
  %conv144.i.i = trunc i16 %add142.i.i to i8
  %arrayidx146.i.i = getelementptr %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 25, i32 %i.2279.i.i
  %186 = ptrtoint ptr %arrayidx146.i.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %arrayidx146.i.i, align 4
  %reg_idx147.i.i = getelementptr inbounds %struct.ixgbe_ring, ptr %187, i32 0, i32 13
  %188 = ptrtoint ptr %reg_idx147.i.i to i32
  call void @__asan_store1_noabort(i32 %188)
  store i8 %conv144.i.i, ptr %reg_idx147.i.i, align 1
  %189 = ptrtoint ptr %netdev148.i.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %netdev148.i.i, align 128
  %191 = load ptr, ptr %arrayidx146.i.i, align 4
  %netdev151.i.i = getelementptr inbounds %struct.ixgbe_ring, ptr %191, i32 0, i32 2
  %192 = ptrtoint ptr %netdev151.i.i to i32
  call void @__asan_store4_noabort(i32 %192)
  store ptr %190, ptr %netdev151.i.i, align 8
  %inc152.i.i = add i16 %add142.i.i, 1
  %inc154.i.i = add nuw nsw i32 %i.2279.i.i, 1
  %193 = ptrtoint ptr %num_rx_queues.i.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %num_rx_queues.i.i, align 16
  %cmp128.i.i = icmp slt i32 %inc154.i.i, %194
  br i1 %cmp128.i.i, label %for.body130.i.i.for.body130.i.i_crit_edge, label %for.body130.i.i.for.end155.i.i_crit_edge

for.body130.i.i.for.end155.i.i_crit_edge:         ; preds = %for.body130.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end155.i.i

for.body130.i.i.for.body130.i.i_crit_edge:        ; preds = %for.body130.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body130.i.i

for.end155.i.i:                                   ; preds = %for.body130.i.i.for.end155.i.i_crit_edge, %if.then105.i.i.for.end155.i.i_crit_edge
  %195 = ptrtoint ptr %offset97.i.i to i32
  call void @__asan_load2_noabort(i32 %195)
  %196 = load i16, ptr %offset97.i.i, align 2
  %conv165.i.i = zext i16 %196 to i32
  %197 = ptrtoint ptr %num_tx_queues.i.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %num_tx_queues.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %198, i32 %conv165.i.i)
  %cmp168281.i.i = icmp sgt i32 %198, %conv165.i.i
  br i1 %cmp168281.i.i, label %for.body170.lr.ph.i.i, label %for.end155.i.i.ixgbe_cache_ring_register.exit_crit_edge

for.end155.i.i.ixgbe_cache_ring_register.exit_crit_edge: ; preds = %for.end155.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ixgbe_cache_ring_register.exit

for.body170.lr.ph.i.i:                            ; preds = %for.end155.i.i
  %199 = ptrtoint ptr %indices118.i.i to i32
  call void @__asan_load2_noabort(i32 %199)
  %200 = load i16, ptr %indices118.i.i, align 2
  %201 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load2_noabort(i32 %201)
  %202 = load i16, ptr %offset.i.i, align 2
  %add160.i.i = add i16 %202, %200
  %mul162.i.i = mul i16 %add160.i.i, %175
  %conv181.i.i = zext i8 %call.i.i to i16
  br label %for.body170.i.i

for.body170.i.i:                                  ; preds = %for.body170.i.i.for.body170.i.i_crit_edge, %for.body170.lr.ph.i.i
  %reg_idx.5283.i.i = phi i16 [ %mul162.i.i, %for.body170.lr.ph.i.i ], [ %inc188.i.i, %for.body170.i.i.for.body170.i.i_crit_edge ]
  %i.3282.i.i = phi i32 [ %conv165.i.i, %for.body170.lr.ph.i.i ], [ %inc190.i.i, %for.body170.i.i.for.body170.i.i_crit_edge ]
  %203 = ptrtoint ptr %mask.i.i to i32
  call void @__asan_load2_noabort(i32 %203)
  %204 = load i16, ptr %mask.i.i, align 4
  %neg174.i.i = xor i16 %204, -1
  %add175.i.i = add i16 %reg_idx.5283.i.i, %neg174.i.i
  %and180.i.i = and i16 %add175.i.i, %204
  %add182.i.i = add i16 %and180.i.i, %conv181.i.i
  %conv184.i.i = trunc i16 %add182.i.i to i8
  %arrayidx186.i.i = getelementptr %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 21, i32 %i.3282.i.i
  %205 = ptrtoint ptr %arrayidx186.i.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %arrayidx186.i.i, align 4
  %reg_idx187.i.i = getelementptr inbounds %struct.ixgbe_ring, ptr %206, i32 0, i32 13
  %207 = ptrtoint ptr %reg_idx187.i.i to i32
  call void @__asan_store1_noabort(i32 %207)
  store i8 %conv184.i.i, ptr %reg_idx187.i.i, align 1
  %inc188.i.i = add i16 %add182.i.i, 1
  %inc190.i.i = add nuw nsw i32 %i.3282.i.i, 1
  %208 = ptrtoint ptr %num_tx_queues.i.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %num_tx_queues.i.i, align 4
  %cmp168.i.i = icmp slt i32 %inc190.i.i, %209
  br i1 %cmp168.i.i, label %for.body170.i.i.for.body170.i.i_crit_edge, label %for.body170.i.i.ixgbe_cache_ring_register.exit_crit_edge

for.body170.i.i.ixgbe_cache_ring_register.exit_crit_edge: ; preds = %for.body170.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ixgbe_cache_ring_register.exit

for.body170.i.i.for.body170.i.i_crit_edge:        ; preds = %for.body170.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body170.i.i

for.body.lr.ph.i20.i:                             ; preds = %if.end.i.i
  %indices.i18.i = getelementptr %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 48, i32 2, i32 1
  %210 = ptrtoint ptr %indices.i18.i to i32
  call void @__asan_load2_noabort(i32 %210)
  %211 = load i16, ptr %indices.i18.i, align 2
  %conv2.i.i = zext i16 %211 to i32
  %type.i.i.i = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 54, i32 2, i32 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %211)
  %cmp869.not.i.i = icmp eq i16 %211, 0
  %netdev.i19.i = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 1
  br label %for.body.i21.i

for.body.i21.i:                                   ; preds = %for.inc32.i.i.for.body.i21.i_crit_edge, %for.body.lr.ph.i20.i
  %offset.076.i.i = phi i32 [ 0, %for.body.lr.ph.i20.i ], [ %add34.i.i, %for.inc32.i.i.for.body.i21.i_crit_edge ]
  %tc.074.i.i = phi i32 [ 0, %for.body.lr.ph.i20.i ], [ %inc33.i.i, %for.inc32.i.i.for.body.i21.i_crit_edge ]
  %conv6.i.i = trunc i32 %tc.074.i.i to i8
  %212 = ptrtoint ptr %type.i.i.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %type.i.i.i, align 4
  %214 = zext i32 %213 to i64
  call void @__sanitizer_cov_trace_switch(i64 %214, ptr @__sancov_gen_cov_switch_values)
  switch i32 %213, label %for.body.i21.i.ixgbe_get_first_reg_idx.exit.i.i_crit_edge [
    i32 1, label %sw.bb.i.i.i
    i32 2, label %for.body.i21.i.sw.bb4.i.i.i_crit_edge
    i32 3, label %for.body.i21.i.sw.bb4.i.i.i_crit_edge76
    i32 4, label %for.body.i21.i.sw.bb4.i.i.i_crit_edge77
    i32 5, label %for.body.i21.i.sw.bb4.i.i.i_crit_edge78
    i32 6, label %for.body.i21.i.sw.bb4.i.i.i_crit_edge79
  ]

for.body.i21.i.sw.bb4.i.i.i_crit_edge79:          ; preds = %for.body.i21.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb4.i.i.i

for.body.i21.i.sw.bb4.i.i.i_crit_edge78:          ; preds = %for.body.i21.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb4.i.i.i

for.body.i21.i.sw.bb4.i.i.i_crit_edge77:          ; preds = %for.body.i21.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb4.i.i.i

for.body.i21.i.sw.bb4.i.i.i_crit_edge76:          ; preds = %for.body.i21.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb4.i.i.i

for.body.i21.i.sw.bb4.i.i.i_crit_edge:            ; preds = %for.body.i21.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb4.i.i.i

for.body.i21.i.ixgbe_get_first_reg_idx.exit.i.i_crit_edge: ; preds = %for.body.i21.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ixgbe_get_first_reg_idx.exit.i.i

sw.bb.i.i.i:                                      ; preds = %for.body.i21.i
  call void @__sanitizer_cov_trace_pc() #8
  %shl.i.i.i = shl nuw nsw i32 %tc.074.i.i, 2
  %shl3.i.i.i = shl nuw nsw i32 %tc.074.i.i, 3
  br label %ixgbe_get_first_reg_idx.exit.i.i

sw.bb4.i.i.i:                                     ; preds = %for.body.i21.i.sw.bb4.i.i.i_crit_edge, %for.body.i21.i.sw.bb4.i.i.i_crit_edge76, %for.body.i21.i.sw.bb4.i.i.i_crit_edge77, %for.body.i21.i.sw.bb4.i.i.i_crit_edge78, %for.body.i21.i.sw.bb4.i.i.i_crit_edge79
  %215 = ptrtoint ptr %hw_tcs.i.i to i32
  call void @__asan_load1_noabort(i32 %215)
  %216 = load i8, ptr %hw_tcs.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %216)
  %cmp.i.i.i = icmp ugt i8 %216, 4
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %if.else26.i.i.i

if.then.i.i.i:                                    ; preds = %sw.bb4.i.i.i
  %shl8.i.i.i = shl nuw nsw i32 %tc.074.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %conv6.i.i)
  %cmp10.i.i.i = icmp ult i8 %conv6.i.i, 3
  br i1 %cmp10.i.i.i, label %if.then12.i.i.i, label %if.else.i.i.i

if.then12.i.i.i:                                  ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %shl14.i.i.i = shl nuw nsw i32 %tc.074.i.i, 5
  br label %ixgbe_get_first_reg_idx.exit.i.i

if.else.i.i.i:                                    ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %conv6.i.i)
  %cmp16.i.i.i = icmp ult i8 %conv6.i.i, 5
  br i1 %cmp16.i.i.i, label %if.then18.i.i.i, label %if.else21.i.i.i

if.then18.i.i.i:                                  ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %shl20.i.i.i = add nuw nsw i32 %shl8.i.i.i, 32
  br label %ixgbe_get_first_reg_idx.exit.i.i

if.else21.i.i.i:                                  ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %add23.i.i.i = shl nuw nsw i32 %tc.074.i.i, 3
  %shl24.i.i.i = add nuw nsw i32 %add23.i.i.i, 64
  br label %ixgbe_get_first_reg_idx.exit.i.i

if.else26.i.i.i:                                  ; preds = %sw.bb4.i.i.i
  %shl28.i.i.i = shl nuw nsw i32 %tc.074.i.i, 5
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %conv6.i.i)
  %cmp30.i.i.i = icmp ult i8 %conv6.i.i, 2
  br i1 %cmp30.i.i.i, label %if.then32.i.i.i, label %if.else35.i.i.i

if.then32.i.i.i:                                  ; preds = %if.else26.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %shl34.i.i.i = shl nuw nsw i32 %tc.074.i.i, 6
  br label %ixgbe_get_first_reg_idx.exit.i.i

if.else35.i.i.i:                                  ; preds = %if.else26.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %add37.i.i.i = shl nuw nsw i32 %tc.074.i.i, 4
  %shl38.i.i.i = add nuw nsw i32 %add37.i.i.i, 64
  br label %ixgbe_get_first_reg_idx.exit.i.i

ixgbe_get_first_reg_idx.exit.i.i:                 ; preds = %if.else35.i.i.i, %if.then32.i.i.i, %if.else21.i.i.i, %if.then18.i.i.i, %if.then12.i.i.i, %sw.bb.i.i.i, %for.body.i21.i.ixgbe_get_first_reg_idx.exit.i.i_crit_edge
  %tx_idx.0.i.i = phi i32 [ 0, %for.body.i21.i.ixgbe_get_first_reg_idx.exit.i.i_crit_edge ], [ %shl14.i.i.i, %if.then12.i.i.i ], [ %shl20.i.i.i, %if.then18.i.i.i ], [ %shl24.i.i.i, %if.else21.i.i.i ], [ %shl34.i.i.i, %if.then32.i.i.i ], [ %shl38.i.i.i, %if.else35.i.i.i ], [ %shl.i.i.i, %sw.bb.i.i.i ]
  %rx_idx.0.i.i = phi i32 [ 0, %for.body.i21.i.ixgbe_get_first_reg_idx.exit.i.i_crit_edge ], [ %shl8.i.i.i, %if.then12.i.i.i ], [ %shl8.i.i.i, %if.then18.i.i.i ], [ %shl8.i.i.i, %if.else21.i.i.i ], [ %shl28.i.i.i, %if.then32.i.i.i ], [ %shl28.i.i.i, %if.else35.i.i.i ], [ %shl3.i.i.i, %sw.bb.i.i.i ]
  br i1 %cmp869.not.i.i, label %ixgbe_get_first_reg_idx.exit.i.i.for.inc32.i.i_crit_edge, label %ixgbe_get_first_reg_idx.exit.i.i.for.body10.i.i_crit_edge

ixgbe_get_first_reg_idx.exit.i.i.for.body10.i.i_crit_edge: ; preds = %ixgbe_get_first_reg_idx.exit.i.i
  br label %for.body10.i.i

ixgbe_get_first_reg_idx.exit.i.i.for.inc32.i.i_crit_edge: ; preds = %ixgbe_get_first_reg_idx.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc32.i.i

for.body10.i.i:                                   ; preds = %for.body10.i.i.for.body10.i.i_crit_edge, %ixgbe_get_first_reg_idx.exit.i.i.for.body10.i.i_crit_edge
  %i.072.i.i = phi i32 [ %inc.i22.i, %for.body10.i.i.for.body10.i.i_crit_edge ], [ 0, %ixgbe_get_first_reg_idx.exit.i.i.for.body10.i.i_crit_edge ]
  %rx_idx.171.i.i = phi i32 [ %inc31.i.i, %for.body10.i.i.for.body10.i.i_crit_edge ], [ %rx_idx.0.i.i, %ixgbe_get_first_reg_idx.exit.i.i.for.body10.i.i_crit_edge ]
  %tx_idx.170.i.i = phi i32 [ %inc30.i.i, %for.body10.i.i.for.body10.i.i_crit_edge ], [ %tx_idx.0.i.i, %ixgbe_get_first_reg_idx.exit.i.i.for.body10.i.i_crit_edge ]
  %conv11.i.i = trunc i32 %tx_idx.170.i.i to i8
  %add.i.i38 = add nuw nsw i32 %i.072.i.i, %offset.076.i.i
  %arrayidx12.i.i = getelementptr %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 21, i32 %add.i.i38
  %217 = ptrtoint ptr %arrayidx12.i.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %arrayidx12.i.i, align 4
  %reg_idx.i.i = getelementptr inbounds %struct.ixgbe_ring, ptr %218, i32 0, i32 13
  %219 = ptrtoint ptr %reg_idx.i.i to i32
  call void @__asan_store1_noabort(i32 %219)
  store i8 %conv11.i.i, ptr %reg_idx.i.i, align 1
  %conv13.i.i = trunc i32 %rx_idx.171.i.i to i8
  %arrayidx15.i.i = getelementptr %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 25, i32 %add.i.i38
  %220 = ptrtoint ptr %arrayidx15.i.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %arrayidx15.i.i, align 4
  %reg_idx16.i.i = getelementptr inbounds %struct.ixgbe_ring, ptr %221, i32 0, i32 13
  %222 = ptrtoint ptr %reg_idx16.i.i to i32
  call void @__asan_store1_noabort(i32 %222)
  store i8 %conv13.i.i, ptr %reg_idx16.i.i, align 1
  %223 = ptrtoint ptr %netdev.i19.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %netdev.i19.i, align 128
  %225 = load ptr, ptr %arrayidx15.i.i, align 4
  %netdev20.i.i = getelementptr inbounds %struct.ixgbe_ring, ptr %225, i32 0, i32 2
  %226 = ptrtoint ptr %netdev20.i.i to i32
  call void @__asan_store4_noabort(i32 %226)
  store ptr %224, ptr %netdev20.i.i, align 8
  %227 = load ptr, ptr %arrayidx12.i.i, align 4
  %dcb_tc.i.i = getelementptr inbounds %struct.ixgbe_ring, ptr %227, i32 0, i32 18
  %228 = ptrtoint ptr %dcb_tc.i.i to i32
  call void @__asan_store1_noabort(i32 %228)
  store i8 %conv6.i.i, ptr %dcb_tc.i.i, align 2
  %229 = load ptr, ptr %arrayidx15.i.i, align 4
  %dcb_tc29.i.i = getelementptr inbounds %struct.ixgbe_ring, ptr %229, i32 0, i32 18
  %230 = ptrtoint ptr %dcb_tc29.i.i to i32
  call void @__asan_store1_noabort(i32 %230)
  store i8 %conv6.i.i, ptr %dcb_tc29.i.i, align 2
  %inc.i22.i = add nuw nsw i32 %i.072.i.i, 1
  %inc30.i.i = add nuw nsw i32 %tx_idx.170.i.i, 1
  %inc31.i.i = add nuw nsw i32 %rx_idx.171.i.i, 1
  %exitcond.not.i.i39 = icmp eq i32 %inc.i22.i, %conv2.i.i
  br i1 %exitcond.not.i.i39, label %for.body10.i.i.for.inc32.i.i_crit_edge, label %for.body10.i.i.for.body10.i.i_crit_edge

for.body10.i.i.for.body10.i.i_crit_edge:          ; preds = %for.body10.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body10.i.i

for.body10.i.i.for.inc32.i.i_crit_edge:           ; preds = %for.body10.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc32.i.i

for.inc32.i.i:                                    ; preds = %for.body10.i.i.for.inc32.i.i_crit_edge, %ixgbe_get_first_reg_idx.exit.i.i.for.inc32.i.i_crit_edge
  %inc33.i.i = add nuw nsw i32 %tc.074.i.i, 1
  %add34.i.i = add nuw nsw i32 %offset.076.i.i, %conv2.i.i
  %exitcond77.not.i.i = icmp eq i32 %inc33.i.i, %conv.i.i28
  br i1 %exitcond77.not.i.i, label %for.inc32.i.i.ixgbe_cache_ring_register.exit_crit_edge, label %for.inc32.i.i.for.body.i21.i_crit_edge

for.inc32.i.i.for.body.i21.i_crit_edge:           ; preds = %for.inc32.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i21.i

for.inc32.i.i.ixgbe_cache_ring_register.exit_crit_edge: ; preds = %for.inc32.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ixgbe_cache_ring_register.exit

if.end5.i:                                        ; preds = %if.end
  %and.i24.i = and i32 %125, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i24.i)
  %tobool.not.i25.i = icmp eq i32 %and.i24.i, 0
  br i1 %tobool.not.i25.i, label %if.end8.i40, label %if.end.i30.i

if.end.i30.i:                                     ; preds = %if.end5.i
  %offset.i26.i = getelementptr %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 48, i32 1, i32 3
  %231 = ptrtoint ptr %offset.i26.i to i32
  call void @__asan_load2_noabort(i32 %231)
  %232 = load i16, ptr %offset.i26.i, align 2
  %mask.i27.i = getelementptr %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 48, i32 1, i32 2
  %233 = ptrtoint ptr %mask.i27.i to i32
  call void @__asan_load2_noabort(i32 %233)
  %234 = load i16, ptr %mask.i27.i, align 4
  %235 = sub i16 0, %234
  %236 = and i16 %234, %235
  %mul.i28.i = mul i16 %236, %232
  %237 = ptrtoint ptr %num_rx_queues.i.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load i32, ptr %num_rx_queues.i.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %238)
  %cmp202.i.i = icmp sgt i32 %238, 0
  br i1 %cmp202.i.i, label %for.body.lr.ph.i33.i, label %if.end.i30.i.for.end.i42.i_crit_edge

if.end.i30.i.for.end.i42.i_crit_edge:             ; preds = %if.end.i30.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i42.i

for.body.lr.ph.i33.i:                             ; preds = %if.end.i30.i
  %offset13.i.i = getelementptr %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 48, i32 4, i32 3
  %indices.i31.i = getelementptr %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 48, i32 2, i32 1
  %netdev.i32.i = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 1
  br label %for.body.i34.i

for.body.i34.i:                                   ; preds = %cond.end.i41.i.for.body.i34.i_crit_edge, %for.body.lr.ph.i33.i
  %i.0205.i.i = phi i32 [ 0, %for.body.lr.ph.i33.i ], [ %inc51.i.i, %cond.end.i41.i.for.body.i34.i_crit_edge ]
  %pool.0204.i.i = phi i16 [ 0, %for.body.lr.ph.i33.i ], [ %pool.1.i37.i, %cond.end.i41.i.for.body.i34.i_crit_edge ]
  %reg_idx.0203.i.i = phi i16 [ %mul.i28.i, %for.body.lr.ph.i33.i ], [ %inc52.i.i, %cond.end.i41.i.for.body.i34.i_crit_edge ]
  %239 = ptrtoint ptr %offset13.i.i to i32
  call void @__asan_load2_noabort(i32 %239)
  %240 = load i16, ptr %offset13.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %240)
  %tobool15.not.i.i = icmp ne i16 %240, 0
  %conv14.i.i = zext i16 %240 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0205.i.i, i32 %conv14.i.i)
  %cmp18.i.i = icmp ugt i32 %i.0205.i.i, %conv14.i.i
  %or.cond.i.i = select i1 %tobool15.not.i.i, i1 %cmp18.i.i, i1 false
  br i1 %or.cond.i.i, label %for.body.i34.i.for.end.i42.i_crit_edge, label %if.end21.i.i

for.body.i34.i.for.end.i42.i_crit_edge:           ; preds = %for.body.i34.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i42.i

if.end21.i.i:                                     ; preds = %for.body.i34.i
  %conv22.i.i = zext i16 %reg_idx.0203.i.i to i32
  %241 = ptrtoint ptr %mask.i27.i to i32
  call void @__asan_load2_noabort(i32 %241)
  %242 = load i16, ptr %mask.i27.i, align 4
  %conv24.i.i = zext i16 %242 to i32
  %neg25.i.i = xor i32 %conv24.i.i, -1
  %and26.i.i = and i32 %neg25.i.i, %conv22.i.i
  %243 = ptrtoint ptr %indices.i31.i to i32
  call void @__asan_load2_noabort(i32 %243)
  %244 = load i16, ptr %indices.i31.i, align 2
  %conv27.i.i = zext i16 %244 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %and26.i.i, i32 %conv27.i.i)
  %cmp28.not.i.i = icmp ult i32 %and26.i.i, %conv27.i.i
  %245 = trunc i32 %neg25.i.i to i16
  %246 = add i16 %reg_idx.0203.i.i, %245
  %conv41.i.i = and i16 %246, %242
  %reg_idx.1.i35.i = select i1 %cmp28.not.i.i, i16 %reg_idx.0203.i.i, i16 %conv41.i.i
  %not.cmp28.not.i.i = xor i1 %cmp28.not.i.i, true
  %inc.i36.i = zext i1 %not.cmp28.not.i.i to i16
  %pool.1.i37.i = add i16 %pool.0204.i.i, %inc.i36.i
  %conv43.i.i = trunc i16 %reg_idx.1.i35.i to i8
  %arrayidx44.i.i = getelementptr %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 25, i32 %i.0205.i.i
  %247 = ptrtoint ptr %arrayidx44.i.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %arrayidx44.i.i, align 4
  %reg_idx45.i.i = getelementptr inbounds %struct.ixgbe_ring, ptr %248, i32 0, i32 13
  %249 = ptrtoint ptr %reg_idx45.i.i to i32
  call void @__asan_store1_noabort(i32 %249)
  store i8 %conv43.i.i, ptr %reg_idx45.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %pool.1.i37.i)
  %tobool47.not.i.i = icmp eq i16 %pool.1.i37.i, 0
  br i1 %tobool47.not.i.i, label %cond.false.i38.i, label %if.end21.i.i.cond.end.i41.i_crit_edge

if.end21.i.i.cond.end.i41.i_crit_edge:            ; preds = %if.end21.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end.i41.i

cond.false.i38.i:                                 ; preds = %if.end21.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %250 = ptrtoint ptr %netdev.i32.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %netdev.i32.i, align 128
  br label %cond.end.i41.i

cond.end.i41.i:                                   ; preds = %cond.false.i38.i, %if.end21.i.i.cond.end.i41.i_crit_edge
  %cond.i39.i = phi ptr [ %251, %cond.false.i38.i ], [ null, %if.end21.i.i.cond.end.i41.i_crit_edge ]
  %252 = ptrtoint ptr %arrayidx44.i.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %arrayidx44.i.i, align 4
  %netdev50.i.i = getelementptr inbounds %struct.ixgbe_ring, ptr %253, i32 0, i32 2
  %254 = ptrtoint ptr %netdev50.i.i to i32
  call void @__asan_store4_noabort(i32 %254)
  store ptr %cond.i39.i, ptr %netdev50.i.i, align 8
  %inc51.i.i = add nuw nsw i32 %i.0205.i.i, 1
  %inc52.i.i = add i16 %reg_idx.1.i35.i, 1
  %255 = ptrtoint ptr %num_rx_queues.i.i to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load i32, ptr %num_rx_queues.i.i, align 16
  %cmp.i40.i = icmp slt i32 %inc51.i.i, %256
  br i1 %cmp.i40.i, label %cond.end.i41.i.for.body.i34.i_crit_edge, label %cond.end.i41.i.for.end.i42.i_crit_edge

cond.end.i41.i.for.end.i42.i_crit_edge:           ; preds = %cond.end.i41.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i42.i

cond.end.i41.i.for.body.i34.i_crit_edge:          ; preds = %cond.end.i41.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i34.i

for.end.i42.i:                                    ; preds = %cond.end.i41.i.for.end.i42.i_crit_edge, %for.body.i34.i.for.end.i42.i_crit_edge, %if.end.i30.i.for.end.i42.i_crit_edge
  %reg_idx.0.lcssa.i.i = phi i16 [ %mul.i28.i, %if.end.i30.i.for.end.i42.i_crit_edge ], [ %reg_idx.0203.i.i, %for.body.i34.i.for.end.i42.i_crit_edge ], [ %inc52.i.i, %cond.end.i41.i.for.end.i42.i_crit_edge ]
  %i.0.lcssa.i.i = phi i32 [ 0, %if.end.i30.i.for.end.i42.i_crit_edge ], [ %i.0205.i.i, %for.body.i34.i.for.end.i42.i_crit_edge ], [ %inc51.i.i, %cond.end.i41.i.for.end.i42.i_crit_edge ]
  %257 = ptrtoint ptr %num_rx_queues.i.i to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load i32, ptr %num_rx_queues.i.i, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.lcssa.i.i, i32 %258)
  %cmp55209.i.i = icmp slt i32 %i.0.lcssa.i.i, %258
  br i1 %cmp55209.i.i, label %for.body57.lr.ph.i.i, label %for.end.i42.i.for.end69.i.i_crit_edge

for.end.i42.i.for.end69.i.i_crit_edge:            ; preds = %for.end.i42.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end69.i.i

for.body57.lr.ph.i.i:                             ; preds = %for.end.i42.i
  %netdev62.i.i = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 1
  br label %for.body57.i.i

for.body57.i.i:                                   ; preds = %for.body57.i.i.for.body57.i.i_crit_edge, %for.body57.lr.ph.i.i
  %i.1211.i.i = phi i32 [ %i.0.lcssa.i.i, %for.body57.lr.ph.i.i ], [ %inc67.i.i, %for.body57.i.i.for.body57.i.i_crit_edge ]
  %reg_idx.2210.i.i = phi i16 [ %reg_idx.0.lcssa.i.i, %for.body57.lr.ph.i.i ], [ %inc68.i.i, %for.body57.i.i.for.body57.i.i_crit_edge ]
  %conv58.i.i = trunc i16 %reg_idx.2210.i.i to i8
  %arrayidx60.i.i = getelementptr %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 25, i32 %i.1211.i.i
  %259 = ptrtoint ptr %arrayidx60.i.i to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %arrayidx60.i.i, align 4
  %reg_idx61.i.i = getelementptr inbounds %struct.ixgbe_ring, ptr %260, i32 0, i32 13
  %261 = ptrtoint ptr %reg_idx61.i.i to i32
  call void @__asan_store1_noabort(i32 %261)
  store i8 %conv58.i.i, ptr %reg_idx61.i.i, align 1
  %262 = ptrtoint ptr %netdev62.i.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %netdev62.i.i, align 128
  %264 = load ptr, ptr %arrayidx60.i.i, align 4
  %netdev65.i.i = getelementptr inbounds %struct.ixgbe_ring, ptr %264, i32 0, i32 2
  %265 = ptrtoint ptr %netdev65.i.i to i32
  call void @__asan_store4_noabort(i32 %265)
  store ptr %263, ptr %netdev65.i.i, align 8
  %inc67.i.i = add nuw nsw i32 %i.1211.i.i, 1
  %inc68.i.i = add i16 %reg_idx.2210.i.i, 1
  %266 = ptrtoint ptr %num_rx_queues.i.i to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load i32, ptr %num_rx_queues.i.i, align 16
  %cmp55.i.i = icmp slt i32 %inc67.i.i, %267
  br i1 %cmp55.i.i, label %for.body57.i.i.for.body57.i.i_crit_edge, label %for.body57.i.i.for.end69.i.i_crit_edge

for.body57.i.i.for.end69.i.i_crit_edge:           ; preds = %for.body57.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end69.i.i

for.body57.i.i.for.body57.i.i_crit_edge:          ; preds = %for.body57.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body57.i.i

for.end69.i.i:                                    ; preds = %for.body57.i.i.for.end69.i.i_crit_edge, %for.end.i42.i.for.end69.i.i_crit_edge
  %268 = ptrtoint ptr %offset.i26.i to i32
  call void @__asan_load2_noabort(i32 %268)
  %269 = load i16, ptr %offset.i26.i, align 2
  %270 = ptrtoint ptr %mask.i27.i to i32
  call void @__asan_load2_noabort(i32 %270)
  %271 = load i16, ptr %mask.i27.i, align 4
  %272 = sub i16 0, %271
  %273 = and i16 %271, %272
  %mul81.i.i = mul i16 %273, %269
  %274 = ptrtoint ptr %num_tx_queues.i.i to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load i32, ptr %num_tx_queues.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %275)
  %cmp84212.i.i = icmp sgt i32 %275, 0
  br i1 %cmp84212.i.i, label %for.body86.lr.ph.i.i, label %for.end69.i.i.for.end124.i.i_crit_edge

for.end69.i.i.for.end124.i.i_crit_edge:           ; preds = %for.end69.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end124.i.i

for.body86.lr.ph.i.i:                             ; preds = %for.end69.i.i
  %offset87.i.i = getelementptr %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 48, i32 4, i32 3
  %mask98.i.i = getelementptr %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 48, i32 2, i32 2
  %indices101.i.i = getelementptr %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 48, i32 2, i32 1
  br label %for.body86.i.i

for.body86.i.i:                                   ; preds = %if.end117.i.i.for.body86.i.i_crit_edge, %for.body86.lr.ph.i.i
  %i.2214.i.i = phi i32 [ 0, %for.body86.lr.ph.i.i ], [ %inc122.i.i, %if.end117.i.i.for.body86.i.i_crit_edge ]
  %reg_idx.3213.i.i = phi i16 [ %mul81.i.i, %for.body86.lr.ph.i.i ], [ %inc123.i.i, %if.end117.i.i.for.body86.i.i_crit_edge ]
  %276 = ptrtoint ptr %offset87.i.i to i32
  call void @__asan_load2_noabort(i32 %276)
  %277 = load i16, ptr %offset87.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %277)
  %tobool89.not.i.i = icmp ne i16 %277, 0
  %conv88.i.i = zext i16 %277 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %i.2214.i.i, i32 %conv88.i.i)
  %cmp93.i.i = icmp ugt i32 %i.2214.i.i, %conv88.i.i
  %or.cond201.i.i = select i1 %tobool89.not.i.i, i1 %cmp93.i.i, i1 false
  br i1 %or.cond201.i.i, label %for.body86.i.i.for.end124.i.i_crit_edge, label %if.end96.i44.i

for.body86.i.i.for.end124.i.i_crit_edge:          ; preds = %for.body86.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end124.i.i

if.end96.i44.i:                                   ; preds = %for.body86.i.i
  %278 = ptrtoint ptr %mask98.i.i to i32
  call void @__asan_load2_noabort(i32 %278)
  %279 = load i16, ptr %mask98.i.i, align 4
  %and100200.i.i = and i16 %279, %reg_idx.3213.i.i
  %280 = ptrtoint ptr %indices101.i.i to i32
  call void @__asan_load2_noabort(i32 %280)
  %281 = load i16, ptr %indices101.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %and100200.i.i, i16 %281)
  %cmp103.not.i.i = icmp ult i16 %and100200.i.i, %281
  br i1 %cmp103.not.i.i, label %if.end96.i44.i.if.end117.i.i_crit_edge, label %if.then105.i45.i

if.end96.i44.i.if.end117.i.i_crit_edge:           ; preds = %if.end96.i44.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end117.i.i

if.then105.i45.i:                                 ; preds = %if.end96.i44.i
  call void @__sanitizer_cov_trace_pc() #8
  %282 = ptrtoint ptr %mask.i27.i to i32
  call void @__asan_load2_noabort(i32 %282)
  %283 = load i16, ptr %mask.i27.i, align 4
  %neg109.i.i = xor i16 %283, -1
  %add110.i.i = add i16 %reg_idx.3213.i.i, %neg109.i.i
  %and115.i.i = and i16 %add110.i.i, %283
  br label %if.end117.i.i

if.end117.i.i:                                    ; preds = %if.then105.i45.i, %if.end96.i44.i.if.end117.i.i_crit_edge
  %reg_idx.4.i.i = phi i16 [ %and115.i.i, %if.then105.i45.i ], [ %reg_idx.3213.i.i, %if.end96.i44.i.if.end117.i.i_crit_edge ]
  %conv118.i.i = trunc i16 %reg_idx.4.i.i to i8
  %arrayidx119.i.i = getelementptr %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 21, i32 %i.2214.i.i
  %284 = ptrtoint ptr %arrayidx119.i.i to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %arrayidx119.i.i, align 4
  %reg_idx120.i.i = getelementptr inbounds %struct.ixgbe_ring, ptr %285, i32 0, i32 13
  %286 = ptrtoint ptr %reg_idx120.i.i to i32
  call void @__asan_store1_noabort(i32 %286)
  store i8 %conv118.i.i, ptr %reg_idx120.i.i, align 1
  %inc122.i.i = add nuw nsw i32 %i.2214.i.i, 1
  %inc123.i.i = add i16 %reg_idx.4.i.i, 1
  %287 = ptrtoint ptr %num_tx_queues.i.i to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load i32, ptr %num_tx_queues.i.i, align 4
  %cmp84.i.i = icmp slt i32 %inc122.i.i, %288
  br i1 %cmp84.i.i, label %if.end117.i.i.for.body86.i.i_crit_edge, label %if.end117.i.i.for.end124.i.i_crit_edge

if.end117.i.i.for.end124.i.i_crit_edge:           ; preds = %if.end117.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end124.i.i

if.end117.i.i.for.body86.i.i_crit_edge:           ; preds = %if.end117.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body86.i.i

for.end124.i.i:                                   ; preds = %if.end117.i.i.for.end124.i.i_crit_edge, %for.body86.i.i.for.end124.i.i_crit_edge, %for.end69.i.i.for.end124.i.i_crit_edge
  %reg_idx.3.lcssa.i.i = phi i16 [ %mul81.i.i, %for.end69.i.i.for.end124.i.i_crit_edge ], [ %reg_idx.3213.i.i, %for.body86.i.i.for.end124.i.i_crit_edge ], [ %inc123.i.i, %if.end117.i.i.for.end124.i.i_crit_edge ]
  %i.2.lcssa.i.i = phi i32 [ 0, %for.end69.i.i.for.end124.i.i_crit_edge ], [ %i.2214.i.i, %for.body86.i.i.for.end124.i.i_crit_edge ], [ %inc122.i.i, %if.end117.i.i.for.end124.i.i_crit_edge ]
  %289 = ptrtoint ptr %num_tx_queues.i.i to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load i32, ptr %num_tx_queues.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.2.lcssa.i.i, i32 %290)
  %cmp127219.i.i = icmp slt i32 %i.2.lcssa.i.i, %290
  br i1 %cmp127219.i.i, label %for.end124.i.i.for.body129.i.i_crit_edge, label %for.end124.i.i.ixgbe_cache_ring_register.exit_crit_edge

for.end124.i.i.ixgbe_cache_ring_register.exit_crit_edge: ; preds = %for.end124.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ixgbe_cache_ring_register.exit

for.end124.i.i.for.body129.i.i_crit_edge:         ; preds = %for.end124.i.i
  br label %for.body129.i.i

for.body129.i.i:                                  ; preds = %for.body129.i.i.for.body129.i.i_crit_edge, %for.end124.i.i.for.body129.i.i_crit_edge
  %i.3221.i.i = phi i32 [ %inc135.i.i, %for.body129.i.i.for.body129.i.i_crit_edge ], [ %i.2.lcssa.i.i, %for.end124.i.i.for.body129.i.i_crit_edge ]
  %reg_idx.5220.i.i = phi i16 [ %inc136.i.i, %for.body129.i.i.for.body129.i.i_crit_edge ], [ %reg_idx.3.lcssa.i.i, %for.end124.i.i.for.body129.i.i_crit_edge ]
  %conv130.i.i = trunc i16 %reg_idx.5220.i.i to i8
  %arrayidx132.i.i = getelementptr %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 21, i32 %i.3221.i.i
  %291 = ptrtoint ptr %arrayidx132.i.i to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load ptr, ptr %arrayidx132.i.i, align 4
  %reg_idx133.i.i = getelementptr inbounds %struct.ixgbe_ring, ptr %292, i32 0, i32 13
  %293 = ptrtoint ptr %reg_idx133.i.i to i32
  call void @__asan_store1_noabort(i32 %293)
  store i8 %conv130.i.i, ptr %reg_idx133.i.i, align 1
  %inc135.i.i = add nuw nsw i32 %i.3221.i.i, 1
  %inc136.i.i = add i16 %reg_idx.5220.i.i, 1
  %294 = ptrtoint ptr %num_tx_queues.i.i to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load i32, ptr %num_tx_queues.i.i, align 4
  %cmp127.i.i = icmp slt i32 %inc135.i.i, %295
  br i1 %cmp127.i.i, label %for.body129.i.i.for.body129.i.i_crit_edge, label %for.body129.i.i.ixgbe_cache_ring_register.exit_crit_edge

for.body129.i.i.ixgbe_cache_ring_register.exit_crit_edge: ; preds = %for.body129.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ixgbe_cache_ring_register.exit

for.body129.i.i.for.body129.i.i_crit_edge:        ; preds = %for.body129.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body129.i.i

if.end8.i40:                                      ; preds = %if.end5.i
  %296 = ptrtoint ptr %num_rx_queues.i.i to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load i32, ptr %num_rx_queues.i.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %297)
  %cmp1.i.i = icmp sgt i32 %297, 0
  br i1 %cmp1.i.i, label %for.body.lr.ph.i48.i, label %if.end8.i40.for.cond5.preheader.i.i_crit_edge

if.end8.i40.for.cond5.preheader.i.i_crit_edge:    ; preds = %if.end8.i40
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond5.preheader.i.i

for.body.lr.ph.i48.i:                             ; preds = %if.end8.i40
  %netdev.i47.i = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 1
  br label %for.body.i53.i

for.cond5.preheader.i.i:                          ; preds = %for.body.i53.i.for.cond5.preheader.i.i_crit_edge, %if.end8.i40.for.cond5.preheader.i.i_crit_edge
  %298 = ptrtoint ptr %num_tx_queues.i.i to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load i32, ptr %num_tx_queues.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %299)
  %cmp63.i.i = icmp sgt i32 %299, 0
  br i1 %cmp63.i.i, label %for.cond5.preheader.i.i.for.body8.i.i_crit_edge, label %for.cond5.preheader.i.i.for.cond16.preheader.i.i_crit_edge

for.cond5.preheader.i.i.for.cond16.preheader.i.i_crit_edge: ; preds = %for.cond5.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond16.preheader.i.i

for.cond5.preheader.i.i.for.body8.i.i_crit_edge:  ; preds = %for.cond5.preheader.i.i
  br label %for.body8.i.i

for.body.i53.i:                                   ; preds = %for.body.i53.i.for.body.i53.i_crit_edge, %for.body.lr.ph.i48.i
  %i.02.i.i = phi i32 [ 0, %for.body.lr.ph.i48.i ], [ %inc.i51.i, %for.body.i53.i.for.body.i53.i_crit_edge ]
  %conv.i50.i = trunc i32 %i.02.i.i to i8
  %arrayidx.i.i = getelementptr %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 25, i32 %i.02.i.i
  %300 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load ptr, ptr %arrayidx.i.i, align 4
  %reg_idx1.i.i = getelementptr inbounds %struct.ixgbe_ring, ptr %301, i32 0, i32 13
  %302 = ptrtoint ptr %reg_idx1.i.i to i32
  call void @__asan_store1_noabort(i32 %302)
  store i8 %conv.i50.i, ptr %reg_idx1.i.i, align 1
  %303 = ptrtoint ptr %netdev.i47.i to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load ptr, ptr %netdev.i47.i, align 128
  %305 = load ptr, ptr %arrayidx.i.i, align 4
  %netdev4.i.i = getelementptr inbounds %struct.ixgbe_ring, ptr %305, i32 0, i32 2
  %306 = ptrtoint ptr %netdev4.i.i to i32
  call void @__asan_store4_noabort(i32 %306)
  store ptr %304, ptr %netdev4.i.i, align 8
  %inc.i51.i = add nuw nsw i32 %i.02.i.i, 1
  %307 = ptrtoint ptr %num_rx_queues.i.i to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load i32, ptr %num_rx_queues.i.i, align 16
  %cmp.i52.i = icmp slt i32 %inc.i51.i, %308
  br i1 %cmp.i52.i, label %for.body.i53.i.for.body.i53.i_crit_edge, label %for.body.i53.i.for.cond5.preheader.i.i_crit_edge

for.body.i53.i.for.cond5.preheader.i.i_crit_edge: ; preds = %for.body.i53.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond5.preheader.i.i

for.body.i53.i.for.body.i53.i_crit_edge:          ; preds = %for.body.i53.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i53.i

for.cond16.preheader.i.i:                         ; preds = %for.body8.i.i.for.cond16.preheader.i.i_crit_edge, %for.cond5.preheader.i.i.for.cond16.preheader.i.i_crit_edge
  %reg_idx.0.lcssa.i54.i = phi i32 [ 0, %for.cond5.preheader.i.i.for.cond16.preheader.i.i_crit_edge ], [ %inc14.i.i, %for.body8.i.i.for.cond16.preheader.i.i_crit_edge ]
  %309 = ptrtoint ptr %num_xdp_queues.i.i to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load i32, ptr %num_xdp_queues.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %310)
  %cmp176.i.i = icmp sgt i32 %310, 0
  br i1 %cmp176.i.i, label %for.cond16.preheader.i.i.for.body19.i.i_crit_edge, label %for.cond16.preheader.i.i.ixgbe_cache_ring_register.exit_crit_edge

for.cond16.preheader.i.i.ixgbe_cache_ring_register.exit_crit_edge: ; preds = %for.cond16.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ixgbe_cache_ring_register.exit

for.cond16.preheader.i.i.for.body19.i.i_crit_edge: ; preds = %for.cond16.preheader.i.i
  br label %for.body19.i.i

for.body8.i.i:                                    ; preds = %for.body8.i.i.for.body8.i.i_crit_edge, %for.cond5.preheader.i.i.for.body8.i.i_crit_edge
  %reg_idx.05.i.i = phi i32 [ %inc14.i.i, %for.body8.i.i.for.body8.i.i_crit_edge ], [ 0, %for.cond5.preheader.i.i.for.body8.i.i_crit_edge ]
  %conv9.i.i = trunc i32 %reg_idx.05.i.i to i8
  %arrayidx10.i.i = getelementptr %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 21, i32 %reg_idx.05.i.i
  %311 = ptrtoint ptr %arrayidx10.i.i to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load ptr, ptr %arrayidx10.i.i, align 4
  %reg_idx11.i.i = getelementptr inbounds %struct.ixgbe_ring, ptr %312, i32 0, i32 13
  %313 = ptrtoint ptr %reg_idx11.i.i to i32
  call void @__asan_store1_noabort(i32 %313)
  store i8 %conv9.i.i, ptr %reg_idx11.i.i, align 1
  %inc14.i.i = add nuw nsw i32 %reg_idx.05.i.i, 1
  %314 = ptrtoint ptr %num_tx_queues.i.i to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load i32, ptr %num_tx_queues.i.i, align 4
  %cmp6.i.i = icmp slt i32 %inc14.i.i, %315
  br i1 %cmp6.i.i, label %for.body8.i.i.for.body8.i.i_crit_edge, label %for.body8.i.i.for.cond16.preheader.i.i_crit_edge

for.body8.i.i.for.cond16.preheader.i.i_crit_edge: ; preds = %for.body8.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond16.preheader.i.i

for.body8.i.i.for.body8.i.i_crit_edge:            ; preds = %for.body8.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body8.i.i

for.body19.i.i:                                   ; preds = %for.body19.i.i.for.body19.i.i_crit_edge, %for.cond16.preheader.i.i.for.body19.i.i_crit_edge
  %reg_idx.18.i.i = phi i32 [ %inc25.i.i, %for.body19.i.i.for.body19.i.i_crit_edge ], [ %reg_idx.0.lcssa.i54.i, %for.cond16.preheader.i.i.for.body19.i.i_crit_edge ]
  %i.27.i.i = phi i32 [ %inc24.i.i, %for.body19.i.i.for.body19.i.i_crit_edge ], [ 0, %for.cond16.preheader.i.i.for.body19.i.i_crit_edge ]
  %conv20.i.i = trunc i32 %reg_idx.18.i.i to i8
  %arrayidx21.i.i = getelementptr %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 18, i32 %i.27.i.i
  %316 = ptrtoint ptr %arrayidx21.i.i to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load ptr, ptr %arrayidx21.i.i, align 4
  %reg_idx22.i.i = getelementptr inbounds %struct.ixgbe_ring, ptr %317, i32 0, i32 13
  %318 = ptrtoint ptr %reg_idx22.i.i to i32
  call void @__asan_store1_noabort(i32 %318)
  store i8 %conv20.i.i, ptr %reg_idx22.i.i, align 1
  %inc24.i.i = add nuw nsw i32 %i.27.i.i, 1
  %inc25.i.i = add nuw i32 %reg_idx.18.i.i, 1
  %319 = ptrtoint ptr %num_xdp_queues.i.i to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load i32, ptr %num_xdp_queues.i.i, align 4
  %cmp17.i.i = icmp slt i32 %inc24.i.i, %320
  br i1 %cmp17.i.i, label %for.body19.i.i.for.body19.i.i_crit_edge, label %for.body19.i.i.ixgbe_cache_ring_register.exit_crit_edge

for.body19.i.i.ixgbe_cache_ring_register.exit_crit_edge: ; preds = %for.body19.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ixgbe_cache_ring_register.exit

for.body19.i.i.for.body19.i.i_crit_edge:          ; preds = %for.body19.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body19.i.i

ixgbe_cache_ring_register.exit:                   ; preds = %for.body19.i.i.ixgbe_cache_ring_register.exit_crit_edge, %for.cond16.preheader.i.i.ixgbe_cache_ring_register.exit_crit_edge, %for.body129.i.i.ixgbe_cache_ring_register.exit_crit_edge, %for.end124.i.i.ixgbe_cache_ring_register.exit_crit_edge, %for.inc32.i.i.ixgbe_cache_ring_register.exit_crit_edge, %for.body170.i.i.ixgbe_cache_ring_register.exit_crit_edge, %for.end155.i.i.ixgbe_cache_ring_register.exit_crit_edge, %if.end103.i.i.ixgbe_cache_ring_register.exit_crit_edge, %if.end96.i.i.ixgbe_cache_ring_register.exit_crit_edge, %for.end91.i.i.ixgbe_cache_ring_register.exit_crit_edge
  %pdev4 = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 3
  %321 = ptrtoint ptr %pdev4 to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load ptr, ptr %pdev4, align 8
  %dev5 = getelementptr inbounds %struct.pci_dev, ptr %322, i32 0, i32 44
  %323 = ptrtoint ptr %num_rx_queues.i.i to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load i32, ptr %num_rx_queues.i.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %324)
  %cmp = icmp sgt i32 %324, 1
  %cond = select i1 %cmp, ptr @.str.9, ptr @.str.10
  %325 = ptrtoint ptr %num_tx_queues.i.i to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load i32, ptr %num_tx_queues.i.i, align 4
  %327 = ptrtoint ptr %num_xdp_queues.i.i to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load i32, ptr %num_xdp_queues.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev5, ptr noundef nonnull @.str.6, ptr noundef nonnull %cond, i32 noundef %324, i32 noundef %326, i32 noundef %328) #10
  %state = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 5
  tail call void @_set_bit(i32 noundef 2, ptr noundef %state) #6
  br label %cleanup

cleanup:                                          ; preds = %ixgbe_cache_ring_register.exit, %if.then7.i, %if.else.i27.cleanup_crit_edge, %if.then.i
  %retval.0 = phi i32 [ 0, %ixgbe_cache_ring_register.exit ], [ -12, %if.then.i ], [ -12, %if.else.i27.cleanup_crit_edge ], [ -12, %if.then7.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ixgbe_set_num_queues(ptr noundef %adapter) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %num_rx_queues = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 12
  %0 = ptrtoint ptr %num_rx_queues to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %num_rx_queues, align 16
  %num_tx_queues = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 8
  %1 = ptrtoint ptr %num_tx_queues to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %num_tx_queues, align 4
  %num_xdp_queues = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 17
  %2 = ptrtoint ptr %num_xdp_queues to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %num_xdp_queues, align 4
  %num_rx_pools = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 26
  %3 = ptrtoint ptr %num_rx_pools to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %num_rx_pools, align 4
  %num_rx_queues_per_pool = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 27
  %4 = ptrtoint ptr %num_rx_queues_per_pool to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %num_rx_queues_per_pool, align 8
  %arrayidx.i = getelementptr %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 48, i32 1
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %arrayidx.i, align 128
  %hw_tcs.i = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 41
  %7 = ptrtoint ptr %hw_tcs.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %hw_tcs.i, align 4
  %conv.i = zext i8 %8 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %8)
  %cmp.i = icmp ult i8 %8, 2
  br i1 %cmp.i, label %ixgbe_set_dcb_queues.exit.thread, label %if.end.i

ixgbe_set_dcb_queues.exit.thread:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %netdev.i1678 = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 1
  br label %if.end3

if.end.i:                                         ; preds = %entry
  %flags.i = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 6
  %9 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %10, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end, label %if.end3.i

if.end3.i:                                        ; preds = %if.end.i
  %div204.i = udiv i8 64, %8
  %div.zext.i = zext i8 %div204.i to i32
  %conv6.i = zext i16 %6 to i32
  %11 = tail call i32 @llvm.umin.i32(i32 %div.zext.i, i32 %conv6.i) #6
  %offset.i = getelementptr %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 48, i32 1, i32 3
  %12 = ptrtoint ptr %offset.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %offset.i, align 2
  %14 = trunc i32 %11 to i16
  %conv17.i = add i16 %13, %14
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %8)
  %cmp19.i = icmp ugt i8 %8, 4
  %vmdq_m.0.i = select i1 %cmp19.i, i16 120, i16 124
  %minmaxop.i = select i1 %cmp19.i, i16 16, i16 32
  %vmdq_i.0.i = tail call i16 @llvm.umin.i16(i16 %minmaxop.i, i16 %conv17.i) #6
  %sub61.i = sub i16 %vmdq_i.0.i, %13
  %indices.i = getelementptr %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 48, i32 1, i32 1
  %15 = ptrtoint ptr %indices.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %sub61.i, ptr %indices.i, align 2
  %mask.i = getelementptr %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 48, i32 1, i32 2
  %16 = ptrtoint ptr %mask.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %vmdq_m.0.i, ptr %mask.i, align 4
  %indices69.i = getelementptr %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 48, i32 2, i32 1
  %17 = ptrtoint ptr %indices69.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 1, ptr %indices69.i, align 2
  %mask72.i = getelementptr %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 48, i32 2, i32 2
  %18 = ptrtoint ptr %mask72.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 0, ptr %mask72.i, align 4
  %and74.i = and i32 %10, -262145
  %19 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %and74.i, ptr %flags.i, align 4
  %conv75.i = zext i16 %sub61.i to i32
  %20 = ptrtoint ptr %num_rx_pools to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %conv75.i, ptr %num_rx_pools, align 4
  %21 = ptrtoint ptr %num_rx_queues_per_pool to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %conv.i, ptr %num_rx_queues_per_pool, align 8
  %mul.i = mul nuw nsw i32 %conv75.i, %conv.i
  %22 = ptrtoint ptr %num_tx_queues to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %mul.i, ptr %num_tx_queues, align 4
  %23 = ptrtoint ptr %num_xdp_queues to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %num_xdp_queues, align 4
  %24 = ptrtoint ptr %num_rx_queues to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %mul.i, ptr %num_rx_queues, align 16
  %and83.i = and i32 %10, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and83.i)
  %tobool84.not.i = icmp eq i32 %and83.i, 0
  br i1 %tobool84.not.i, label %if.end3.i.for.body.preheader.i_crit_edge, label %if.then85.i

if.end3.i.for.body.preheader.i_crit_edge:         ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.preheader.i

if.then85.i:                                      ; preds = %if.end3.i
  %25 = select i1 %cmp19.i, i8 16, i8 32
  %.zext.i = zext i8 %25 to i16
  %sub.i = sub nsw i16 %.zext.i, %vmdq_i.0.i
  %arrayidx87.i = getelementptr %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 48, i32 4
  %26 = ptrtoint ptr %arrayidx87.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %arrayidx87.i, align 128
  %28 = tail call i16 @llvm.umin.i16(i16 %sub.i, i16 %27) #6
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %28)
  %tobool101.not.i = icmp eq i16 %28, 0
  %indices120.i = getelementptr %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 48, i32 4, i32 1
  br i1 %tobool101.not.i, label %if.then119.i, label %if.then102.i

if.then102.i:                                     ; preds = %if.then85.i
  call void @__sanitizer_cov_trace_pc() #8
  %29 = ptrtoint ptr %indices120.i to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %28, ptr %indices120.i, align 2
  %conv107.i = trunc i32 %mul.i to i16
  %offset108.i = getelementptr %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 48, i32 4, i32 3
  %30 = ptrtoint ptr %offset108.i to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %conv107.i, ptr %offset108.i, align 2
  %conv109.i = zext i16 %28 to i32
  %add111.i = add nuw nsw i32 %mul.i, %conv109.i
  %31 = ptrtoint ptr %num_tx_queues to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %add111.i, ptr %num_tx_queues, align 4
  %32 = ptrtoint ptr %num_rx_queues to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %add111.i, ptr %num_rx_queues, align 16
  br label %for.body.preheader.i

if.then119.i:                                     ; preds = %if.then85.i
  call void @__sanitizer_cov_trace_pc() #8
  %33 = ptrtoint ptr %indices120.i to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 1, ptr %indices120.i, align 2
  %call.i = tail call zeroext i8 @ixgbe_fcoe_get_tc(ptr noundef %adapter) #6
  %conv121.i = zext i8 %call.i to i16
  %offset122.i = getelementptr %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 48, i32 4, i32 3
  %34 = ptrtoint ptr %offset122.i to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %conv121.i, ptr %offset122.i, align 2
  br label %for.body.preheader.i

for.body.preheader.i:                             ; preds = %if.then119.i, %if.then102.i, %if.end3.i.for.body.preheader.i_crit_edge
  %netdev.i = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 1
  %umax.i = tail call i32 @llvm.umax.i32(i32 %conv.i, i32 1) #6
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.preheader.i
  %i.0206.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %35 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %netdev.i, align 128
  %conv134.i = trunc i32 %i.0206.i to i8
  %conv135.i = trunc i32 %i.0206.i to i16
  %call136.i = tail call i32 @netdev_set_tc_queue(ptr noundef %36, i8 noundef zeroext %conv134.i, i16 noundef zeroext 1, i16 noundef zeroext %conv135.i) #6
  %inc.i = add nuw nsw i32 %i.0206.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %umax.i
  br i1 %exitcond.not.i, label %for.body.i.return_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.body.i.return_crit_edge:                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %if.end.i
  %37 = ptrtoint ptr %hw_tcs.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %.pr = load i8, ptr %hw_tcs.i, align 4
  %netdev.i16 = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 1
  %38 = ptrtoint ptr %netdev.i16 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %netdev.i16, align 128
  %conv.i18 = zext i8 %.pr to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.pr)
  %cmp.i19 = icmp ult i8 %.pr, 2
  br i1 %cmp.i19, label %if.end.if.end3_crit_edge, label %if.end.i21

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end3

if.end.i21:                                       ; preds = %if.end
  %num_tx_queues.i20 = getelementptr inbounds %struct.net_device, ptr %39, i32 0, i32 104
  %40 = ptrtoint ptr %num_tx_queues.i20 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %num_tx_queues.i20, align 4
  %div.i = udiv i32 %41, %conv.i18
  %type.i = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 54, i32 2, i32 1
  %42 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %43)
  %cmp2.i = icmp eq i32 %43, 1
  br i1 %cmp2.i, label %if.then4.i, label %if.else.i

if.then4.i:                                       ; preds = %if.end.i21
  call void @__sanitizer_cov_trace_pc() #8
  %conv6.i22 = and i32 %div.i, 65535
  %44 = tail call i32 @llvm.umin.i32(i32 %conv6.i22, i32 4) #6
  br label %if.end41.i

if.else.i:                                        ; preds = %if.end.i21
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %.pr)
  %cmp12.i = icmp ugt i8 %.pr, 4
  %conv17.i23 = and i32 %div.i, 65535
  br i1 %cmp12.i, label %if.then14.i, label %if.else27.i

if.then14.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  %45 = tail call i32 @llvm.umin.i32(i32 %conv17.i23, i32 8) #6
  br label %if.end41.i

if.else27.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  %46 = tail call i32 @llvm.umin.i32(i32 %conv17.i23, i32 16) #6
  br label %if.end41.i

if.end41.i:                                       ; preds = %if.else27.i, %if.then14.i, %if.then4.i
  %rss_m.0.i = phi i16 [ 3, %if.then4.i ], [ 7, %if.then14.i ], [ 15, %if.else27.i ]
  %rss_i.0.i = phi i32 [ %44, %if.then4.i ], [ %45, %if.then14.i ], [ %46, %if.else27.i ]
  %arrayidx.i24 = getelementptr %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 48, i32 2
  %47 = ptrtoint ptr %arrayidx.i24 to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %arrayidx.i24, align 128
  %conv42.i = zext i16 %48 to i32
  %49 = tail call i32 @llvm.umin.i32(i32 %rss_i.0.i, i32 %conv42.i) #6
  %conv50.i = trunc i32 %49 to i16
  %indices.i25 = getelementptr %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 48, i32 2, i32 1
  %50 = ptrtoint ptr %indices.i25 to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 %conv50.i, ptr %indices.i25, align 2
  %mask.i26 = getelementptr %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 48, i32 2, i32 2
  %51 = ptrtoint ptr %mask.i26 to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %rss_m.0.i, ptr %mask.i26, align 4
  %52 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %flags.i, align 4
  %and.i28 = and i32 %53, -262145
  store i32 %and.i28, ptr %flags.i, align 4
  %and53.i = and i32 %53, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53.i)
  %tobool.not.i29 = icmp eq i32 %and53.i, 0
  br i1 %tobool.not.i29, label %if.end41.i.for.body.preheader.i34_crit_edge, label %if.then54.i

if.end41.i.for.body.preheader.i34_crit_edge:      ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.preheader.i34

if.then54.i:                                      ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i30 = tail call zeroext i8 @ixgbe_fcoe_get_tc(ptr noundef %adapter) #6
  %arrayidx56.i = getelementptr %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 48, i32 4
  %54 = ptrtoint ptr %arrayidx56.i to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %arrayidx56.i, align 128
  %conv61.i = zext i16 %55 to i32
  %56 = tail call i32 @llvm.umin.i32(i32 %49, i32 %conv61.i) #6
  %conv70.i = trunc i32 %56 to i16
  %indices71.i = getelementptr %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 48, i32 4, i32 1
  %57 = ptrtoint ptr %indices71.i to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 %conv70.i, ptr %indices71.i, align 2
  %conv72.i = zext i8 %call.i30 to i32
  %mul.i31 = mul nuw nsw i32 %49, %conv72.i
  %conv73.i = trunc i32 %mul.i31 to i16
  %offset.i32 = getelementptr %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 48, i32 4, i32 3
  %58 = ptrtoint ptr %offset.i32 to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 %conv73.i, ptr %offset.i32, align 2
  br label %for.body.preheader.i34

for.body.preheader.i34:                           ; preds = %if.then54.i, %if.end41.i.for.body.preheader.i34_crit_edge
  %umax.i33 = tail call i32 @llvm.umax.i32(i32 %conv.i18, i32 1) #6
  br label %for.body.i37

for.body.i37:                                     ; preds = %for.body.i37.for.body.i37_crit_edge, %for.body.preheader.i34
  %i.0135.i = phi i32 [ %inc.i35, %for.body.i37.for.body.i37_crit_edge ], [ 0, %for.body.preheader.i34 ]
  %conv77.i = trunc i32 %i.0135.i to i8
  %mul79.i = mul nuw nsw i32 %i.0135.i, %49
  %conv80.i = trunc i32 %mul79.i to i16
  %call81.i = tail call i32 @netdev_set_tc_queue(ptr noundef %39, i8 noundef zeroext %conv77.i, i16 noundef zeroext %conv50.i, i16 noundef zeroext %conv80.i) #6
  %inc.i35 = add nuw nsw i32 %i.0135.i, 1
  %exitcond.not.i36 = icmp eq i32 %inc.i35, %umax.i33
  br i1 %exitcond.not.i36, label %ixgbe_set_dcb_queues.exit, label %for.body.i37.for.body.i37_crit_edge

for.body.i37.for.body.i37_crit_edge:              ; preds = %for.body.i37
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i37

ixgbe_set_dcb_queues.exit:                        ; preds = %for.body.i37
  %mul82.i = mul nuw nsw i32 %49, %conv.i18
  %59 = ptrtoint ptr %num_tx_queues to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %mul82.i, ptr %num_tx_queues, align 4
  %60 = ptrtoint ptr %num_xdp_queues to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 0, ptr %num_xdp_queues, align 4
  %61 = ptrtoint ptr %num_rx_queues to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %mul82.i, ptr %num_rx_queues, align 16
  br i1 %cmp.i, label %ixgbe_set_dcb_queues.exit.if.end3_crit_edge, label %ixgbe_set_dcb_queues.exit.return_crit_edge

ixgbe_set_dcb_queues.exit.return_crit_edge:       ; preds = %ixgbe_set_dcb_queues.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

ixgbe_set_dcb_queues.exit.if.end3_crit_edge:      ; preds = %ixgbe_set_dcb_queues.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end3

if.end3:                                          ; preds = %ixgbe_set_dcb_queues.exit.if.end3_crit_edge, %if.end.if.end3_crit_edge, %ixgbe_set_dcb_queues.exit.thread
  %netdev.i168185 = phi ptr [ %netdev.i16, %ixgbe_set_dcb_queues.exit.if.end3_crit_edge ], [ %netdev.i16, %if.end.if.end3_crit_edge ], [ %netdev.i1678, %ixgbe_set_dcb_queues.exit.thread ]
  %flags.i40 = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 6
  %62 = ptrtoint ptr %flags.i40 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %flags.i40, align 4
  %and.i41 = and i32 %63, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i41)
  %tobool.not.i42 = icmp eq i32 %and.i41, 0
  %arrayidx.i60 = getelementptr %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 48, i32 2
  %64 = ptrtoint ptr %arrayidx.i60 to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %arrayidx.i60, align 128
  br i1 %tobool.not.i42, label %if.end6, label %if.end.i46

if.end.i46:                                       ; preds = %if.end3
  %66 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %arrayidx.i, align 128
  %div.i44 = udiv i16 64, %67
  %68 = tail call i16 @llvm.umin.i16(i16 %65, i16 %div.i44) #6
  %offset.i45 = getelementptr %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 48, i32 1, i32 3
  %69 = ptrtoint ptr %offset.i45 to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %offset.i45, align 2
  %add.i = add i16 %70, %67
  %71 = tail call i16 @llvm.umin.i16(i16 %add.i, i16 64) #6
  call void @__sanitizer_cov_trace_const_cmp2(i16 32, i16 %71)
  %cmp29.i = icmp ugt i16 %71, 32
  br i1 %cmp29.i, label %if.then31.i, label %if.else.i47

if.then31.i:                                      ; preds = %if.end.i46
  call void @__sanitizer_cov_trace_pc() #8
  %72 = tail call i16 @llvm.umin.i16(i16 %68, i16 2) #6
  br label %if.end56.i

if.else.i47:                                      ; preds = %if.end.i46
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %68)
  %cmp50.i = icmp ugt i16 %68, 1
  %phi.cast265.i = select i1 %cmp50.i, i16 2, i16 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %68)
  %cmp45.inv.i = icmp ult i16 %68, 4
  %cond54.i = select i1 %cmp45.inv.i, i16 %phi.cast265.i, i16 4
  br label %if.end56.i

if.end56.i:                                       ; preds = %if.else.i47, %if.then31.i
  %rss_m.0.i48 = phi i16 [ 1, %if.then31.i ], [ 3, %if.else.i47 ]
  %rss_i.0.i49 = phi i16 [ %72, %if.then31.i ], [ %cond54.i, %if.else.i47 ]
  %vmdq_m.0.i50 = phi i16 [ 126, %if.then31.i ], [ 124, %if.else.i47 ]
  %conv71.i = sub i16 %71, %70
  %indices.i51 = getelementptr %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 48, i32 1, i32 1
  %73 = ptrtoint ptr %indices.i51 to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 %conv71.i, ptr %indices.i51, align 2
  %mask.i52 = getelementptr %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 48, i32 1, i32 2
  %74 = ptrtoint ptr %mask.i52 to i32
  call void @__asan_store2_noabort(i32 %74)
  store i16 %vmdq_m.0.i50, ptr %mask.i52, align 4
  %indices78.i = getelementptr %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 48, i32 2, i32 1
  %75 = ptrtoint ptr %indices78.i to i32
  call void @__asan_store2_noabort(i32 %75)
  store i16 %rss_i.0.i49, ptr %indices78.i, align 2
  %mask81.i = getelementptr %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 48, i32 2, i32 2
  %76 = ptrtoint ptr %mask81.i to i32
  call void @__asan_store2_noabort(i32 %76)
  store i16 %rss_m.0.i48, ptr %mask81.i, align 4
  %conv82.i = zext i16 %conv71.i to i32
  %77 = ptrtoint ptr %num_rx_pools to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %conv82.i, ptr %num_rx_pools, align 4
  %conv83.i = zext i16 %rss_i.0.i49 to i32
  %78 = ptrtoint ptr %num_rx_queues_per_pool to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %conv83.i, ptr %num_rx_queues_per_pool, align 8
  %mul86.i = mul nuw nsw i32 %conv83.i, %conv82.i
  %79 = ptrtoint ptr %num_rx_queues to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %mul86.i, ptr %num_rx_queues, align 16
  %80 = ptrtoint ptr %num_tx_queues to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %mul86.i, ptr %num_tx_queues, align 4
  %81 = ptrtoint ptr %num_xdp_queues to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 0, ptr %num_xdp_queues, align 4
  %and91.i = and i32 %63, -262145
  %82 = ptrtoint ptr %flags.i40 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %and91.i, ptr %flags.i40, align 4
  %and93.i = and i32 %63, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and93.i)
  %tobool94.not.i = icmp eq i32 %and93.i, 0
  br i1 %tobool94.not.i, label %if.end56.i.if.end177.i_crit_edge, label %if.then95.i

if.end56.i.if.end177.i_crit_edge:                 ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end177.i

if.then95.i:                                      ; preds = %if.end56.i
  %83 = sub nsw i16 0, %vmdq_m.0.i50
  %84 = and i16 %vmdq_m.0.i50, %83
  %85 = mul nuw nsw i16 %84, %71
  %conv64.i = sub nsw i16 128, %85
  %arrayidx97.i = getelementptr %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 48, i32 4
  %86 = ptrtoint ptr %arrayidx97.i to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %arrayidx97.i, align 128
  %88 = tail call i16 @llvm.umin.i16(i16 %conv64.i, i16 %87) #6
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %conv71.i)
  %cmp112.i = icmp ult i16 %conv71.i, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %88)
  %tobool115.not.i = icmp eq i16 %88, 0
  %or.cond.i = select i1 %cmp112.i, i1 true, i1 %tobool115.not.i
  br i1 %or.cond.i, label %if.else123.i, label %if.then116.i

if.then116.i:                                     ; preds = %if.then95.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv121.i58 = trunc i32 %mul86.i to i16
  br label %if.end170.i

if.else123.i:                                     ; preds = %if.then95.i
  call void @__sanitizer_cov_trace_pc() #8
  %add126.i = add i16 %88, %rss_i.0.i49
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @__num_online_cpus, i32 noundef 4) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__num_online_cpus to i32))
  %89 = load volatile i32, ptr @__num_online_cpus, align 4
  %conv130.i = zext i16 %add126.i to i32
  %conv131.i = and i32 %89, 65535
  %90 = tail call i32 @llvm.umin.i32(i32 %conv131.i, i32 %conv130.i) #6
  %conv140.i = trunc i32 %90 to i16
  %91 = ptrtoint ptr %flags.i40 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %flags.i40, align 4
  %and142.i = and i32 %92, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and142.i)
  %tobool143.not.i = icmp eq i32 %and142.i, 0
  %fcoe_i.0.i = select i1 %tobool143.not.i, i16 %rss_i.0.i49, i16 %conv140.i
  %93 = ptrtoint ptr %arrayidx97.i to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %arrayidx97.i, align 128
  %95 = tail call i16 @llvm.umin.i16(i16 %fcoe_i.0.i, i16 %94) #6
  %sub163.i = sub i16 %fcoe_i.0.i, %95
  %sub168.i = sub i16 %fcoe_i.0.i, %rss_i.0.i49
  br label %if.end170.i

if.end170.i:                                      ; preds = %if.else123.i, %if.then116.i
  %.sink.i = phi i16 [ %95, %if.else123.i ], [ %88, %if.then116.i ]
  %conv121.sink.i = phi i16 [ %sub163.i, %if.else123.i ], [ %conv121.i58, %if.then116.i ]
  %fcoe_i.1.i = phi i16 [ %sub168.i, %if.else123.i ], [ %88, %if.then116.i ]
  %96 = getelementptr %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 48, i32 4, i32 1
  %97 = ptrtoint ptr %96 to i32
  call void @__asan_store2_noabort(i32 %97)
  store i16 %.sink.i, ptr %96, align 2
  %98 = getelementptr %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 48, i32 4, i32 3
  %99 = ptrtoint ptr %98 to i32
  call void @__asan_store2_noabort(i32 %99)
  store i16 %conv121.sink.i, ptr %98, align 2
  %conv171.i = zext i16 %fcoe_i.1.i to i32
  %100 = ptrtoint ptr %num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %num_tx_queues, align 4
  %add173.i = add i32 %101, %conv171.i
  store i32 %add173.i, ptr %num_tx_queues, align 4
  %102 = ptrtoint ptr %num_rx_queues to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %num_rx_queues, align 16
  %add176.i = add i32 %103, %conv171.i
  store i32 %add176.i, ptr %num_rx_queues, align 16
  br label %if.end177.i

if.end177.i:                                      ; preds = %if.end170.i, %if.end56.i.if.end177.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %conv71.i)
  %cmp179.i = icmp ugt i16 %conv71.i, 1
  br i1 %cmp179.i, label %if.then181.i, label %if.end177.i.ixgbe_set_sriov_queues.exit.thread_crit_edge

if.end177.i.ixgbe_set_sriov_queues.exit.thread_crit_edge: ; preds = %if.end177.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ixgbe_set_sriov_queues.exit.thread

if.then181.i:                                     ; preds = %if.end177.i
  call void @__sanitizer_cov_trace_pc() #8
  %104 = ptrtoint ptr %netdev.i168185 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %netdev.i168185, align 128
  %call182.i = tail call i32 @netdev_set_num_tc(ptr noundef %105, i8 noundef zeroext 1) #6
  br label %ixgbe_set_sriov_queues.exit.thread

ixgbe_set_sriov_queues.exit.thread:               ; preds = %if.then181.i, %if.end177.i.ixgbe_set_sriov_queues.exit.thread_crit_edge
  %106 = ptrtoint ptr %netdev.i168185 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %netdev.i168185, align 128
  %108 = ptrtoint ptr %num_rx_queues_per_pool to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %num_rx_queues_per_pool, align 8
  %conv186.i = trunc i32 %109 to i16
  %call187.i = tail call i32 @netdev_set_tc_queue(ptr noundef %107, i8 noundef zeroext 0, i16 noundef zeroext %conv186.i, i16 noundef zeroext 0) #6
  br label %return

if.end6:                                          ; preds = %if.end3
  %indices.i61 = getelementptr %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 48, i32 2, i32 1
  %110 = ptrtoint ptr %indices.i61 to i32
  call void @__asan_store2_noabort(i32 %110)
  store i16 %65, ptr %indices.i61, align 2
  %type.i62 = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 54, i32 2, i32 1
  %111 = ptrtoint ptr %type.i62 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %type.i62, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %112)
  %cmp.i63 = icmp ult i32 %112, 4
  %spec.select.i = select i1 %cmp.i63, i16 15, i16 63
  %113 = getelementptr %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 48, i32 2, i32 2
  %114 = ptrtoint ptr %113 to i32
  call void @__asan_store2_noabort(i32 %114)
  store i16 %spec.select.i, ptr %113, align 4
  %115 = ptrtoint ptr %flags.i40 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %flags.i40, align 4
  %and.i65 = and i32 %116, -262145
  store i32 %and.i65, ptr %flags.i40, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %65)
  %cmp3.i = icmp ugt i16 %65, 1
  br i1 %cmp3.i, label %land.lhs.true.i, label %if.end6.if.end16.i_crit_edge

if.end6.if.end16.i_crit_edge:                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16.i

land.lhs.true.i:                                  ; preds = %if.end6
  %atr_sample_rate.i = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 72
  %117 = ptrtoint ptr %atr_sample_rate.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %atr_sample_rate.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %118)
  %tobool.not.i66 = icmp eq i32 %118, 0
  br i1 %tobool.not.i66, label %land.lhs.true.i.if.end16.i_crit_edge, label %if.then5.i

land.lhs.true.i.if.end16.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16.i

if.then5.i:                                       ; preds = %land.lhs.true.i
  %arrayidx7.i = getelementptr %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 48, i32 3
  %119 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load2_noabort(i32 %119)
  %120 = load i16, ptr %arrayidx7.i, align 128
  %indices9.i = getelementptr %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 48, i32 3, i32 1
  %121 = ptrtoint ptr %indices9.i to i32
  call void @__asan_store2_noabort(i32 %121)
  store i16 %120, ptr %indices9.i, align 2
  %and11.i = and i32 %116, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i)
  %tobool12.not.i = icmp eq i32 %and11.i, 0
  br i1 %tobool12.not.i, label %if.then13.i, label %if.then5.i.if.end16.i_crit_edge

if.then5.i.if.end16.i_crit_edge:                  ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16.i

if.then13.i:                                      ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #8
  %or.i = or i32 %116, 262144
  %122 = ptrtoint ptr %flags.i40 to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %or.i, ptr %flags.i40, align 4
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.then13.i, %if.then5.i.if.end16.i_crit_edge, %land.lhs.true.i.if.end16.i_crit_edge, %if.end6.if.end16.i_crit_edge
  %rss_i.0.i67 = phi i16 [ %120, %if.then5.i.if.end16.i_crit_edge ], [ %120, %if.then13.i ], [ %65, %land.lhs.true.i.if.end16.i_crit_edge ], [ %65, %if.end6.if.end16.i_crit_edge ]
  %123 = ptrtoint ptr %flags.i40 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %flags.i40, align 4
  %and18.i = and i32 %124, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.i)
  %tobool19.not.i = icmp eq i32 %and18.i, 0
  br i1 %tobool19.not.i, label %if.end16.i.ixgbe_set_rss_queues.exit_crit_edge, label %if.then20.i

if.end16.i.ixgbe_set_rss_queues.exit_crit_edge:   ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ixgbe_set_rss_queues.exit

if.then20.i:                                      ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #8
  %125 = ptrtoint ptr %netdev.i168185 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %netdev.i168185, align 128
  %arrayidx22.i = getelementptr %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 48, i32 4
  %127 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_load2_noabort(i32 %127)
  %128 = load i16, ptr %arrayidx22.i, align 128
  %add.i69 = add i16 %128, %rss_i.0.i67
  %call.i.i.i.i70 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @__num_online_cpus, i32 noundef 4) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__num_online_cpus to i32))
  %129 = load volatile i32, ptr @__num_online_cpus, align 4
  %conv28.i = zext i16 %add.i69 to i32
  %conv29.i = and i32 %129, 65535
  %130 = tail call i32 @llvm.umin.i32(i32 %conv29.i, i32 %conv28.i) #6
  %num_tx_queues.i71 = getelementptr inbounds %struct.net_device, ptr %126, i32 0, i32 104
  %131 = ptrtoint ptr %num_tx_queues.i71 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %num_tx_queues.i71, align 4
  %conv38.i = and i32 %132, 65535
  %133 = tail call i32 @llvm.umin.i32(i32 %130, i32 %conv38.i) #6
  %conv47.i = trunc i32 %133 to i16
  %134 = ptrtoint ptr %flags.i40 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %flags.i40, align 4
  %and49.i = and i32 %135, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49.i)
  %tobool50.not.i = icmp eq i32 %and49.i, 0
  %fcoe_i.0.i72 = select i1 %tobool50.not.i, i16 %rss_i.0.i67, i16 %conv47.i
  %136 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_load2_noabort(i32 %136)
  %137 = load i16, ptr %arrayidx22.i, align 128
  %138 = tail call i16 @llvm.umin.i16(i16 %fcoe_i.0.i72, i16 %137) #6
  %indices66.i = getelementptr %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 48, i32 4, i32 1
  %139 = ptrtoint ptr %indices66.i to i32
  call void @__asan_store2_noabort(i32 %139)
  store i16 %138, ptr %indices66.i, align 2
  %sub.i73 = sub i16 %fcoe_i.0.i72, %138
  %offset.i74 = getelementptr %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 48, i32 4, i32 3
  %140 = ptrtoint ptr %offset.i74 to i32
  call void @__asan_store2_noabort(i32 %140)
  store i16 %sub.i73, ptr %offset.i74, align 2
  %141 = tail call i16 @llvm.umax.i16(i16 %fcoe_i.0.i72, i16 %rss_i.0.i67) #6
  br label %ixgbe_set_rss_queues.exit

ixgbe_set_rss_queues.exit:                        ; preds = %if.then20.i, %if.end16.i.ixgbe_set_rss_queues.exit_crit_edge
  %rss_i.1.i = phi i16 [ %141, %if.then20.i ], [ %rss_i.0.i67, %if.end16.i.ixgbe_set_rss_queues.exit_crit_edge ]
  %conv84.i = zext i16 %rss_i.1.i to i32
  %142 = ptrtoint ptr %num_rx_queues to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 %conv84.i, ptr %num_rx_queues, align 16
  %143 = ptrtoint ptr %num_tx_queues to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 %conv84.i, ptr %num_tx_queues, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %144 = load i32, ptr @nr_cpu_ids, align 4
  %145 = tail call i32 @llvm.smin.i32(i32 %144, i32 64) #6
  %xdp_prog.i.i = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 2
  %146 = ptrtoint ptr %xdp_prog.i.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %xdp_prog.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %147, null
  %cond4.i.i = select i1 %tobool.not.i.i, i32 0, i32 %145
  %148 = ptrtoint ptr %num_xdp_queues to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 %cond4.i.i, ptr %num_xdp_queues, align 4
  br label %return

return:                                           ; preds = %ixgbe_set_rss_queues.exit, %ixgbe_set_sriov_queues.exit.thread, %ixgbe_set_dcb_queues.exit.return_crit_edge, %for.body.i.return_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ixgbe_clear_interrupt_scheme(ptr noundef %adapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %num_tx_queues = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 8
  %num_xdp_queues = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 17
  %num_rx_queues = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 12
  %num_q_vectors.i = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 45
  %0 = ptrtoint ptr %num_q_vectors.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_q_vectors.i, align 4
  %2 = ptrtoint ptr %num_tx_queues to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %num_tx_queues, align 4
  %3 = ptrtoint ptr %num_xdp_queues to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %num_xdp_queues, align 4
  %4 = ptrtoint ptr %num_rx_queues to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %num_rx_queues, align 16
  store i32 0, ptr %num_q_vectors.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not8.i = icmp eq i32 %1, 0
  br i1 %tobool.not8.i, label %entry.ixgbe_free_q_vectors.exit_crit_edge, label %entry.while.body.i_crit_edge

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

entry.ixgbe_free_q_vectors.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %ixgbe_free_q_vectors.exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  %v_idx.09.i = phi i32 [ %dec.i, %while.body.i.while.body.i_crit_edge ], [ %1, %entry.while.body.i_crit_edge ]
  %dec.i = add i32 %v_idx.09.i, -1
  tail call fastcc void @ixgbe_free_q_vector(ptr noundef %adapter, i32 noundef %dec.i) #6
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %while.body.i.ixgbe_free_q_vectors.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i

while.body.i.ixgbe_free_q_vectors.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ixgbe_free_q_vectors.exit

ixgbe_free_q_vectors.exit:                        ; preds = %while.body.i.ixgbe_free_q_vectors.exit_crit_edge, %entry.ixgbe_free_q_vectors.exit_crit_edge
  %flags.i = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 6
  %5 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %6, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i5 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i5, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %ixgbe_free_q_vectors.exit
  call void @__sanitizer_cov_trace_pc() #8
  %and2.i = and i32 %6, -9
  %7 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %and2.i, ptr %flags.i, align 4
  %pdev.i = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 3
  %8 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pdev.i, align 8
  tail call void @pci_disable_msix(ptr noundef %9) #6
  %msix_entries.i = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 49
  %10 = ptrtoint ptr %msix_entries.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %msix_entries.i, align 128
  tail call void @kfree(ptr noundef %11) #6
  %12 = ptrtoint ptr %msix_entries.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %msix_entries.i, align 128
  br label %ixgbe_reset_interrupt_capability.exit

if.else.i:                                        ; preds = %ixgbe_free_q_vectors.exit
  %and5.i = and i32 %6, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %tobool6.not.i = icmp eq i32 %and5.i, 0
  br i1 %tobool6.not.i, label %if.else.i.ixgbe_reset_interrupt_capability.exit_crit_edge, label %if.then7.i

if.else.i.ixgbe_reset_interrupt_capability.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ixgbe_reset_interrupt_capability.exit

if.then7.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  %and9.i = and i32 %6, -3
  %13 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %and9.i, ptr %flags.i, align 4
  %pdev10.i = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 3
  %14 = ptrtoint ptr %pdev10.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pdev10.i, align 8
  tail call void @pci_disable_msi(ptr noundef %15) #6
  br label %ixgbe_reset_interrupt_capability.exit

ixgbe_reset_interrupt_capability.exit:            ; preds = %if.then7.i, %if.else.i.ixgbe_reset_interrupt_capability.exit_crit_edge, %if.then.i
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @ixgbe_tx_ctxtdesc(ptr nocapture noundef %tx_ring, i32 noundef %vlan_macip_lens, i32 noundef %fceof_saidx, i32 noundef %type_tucmd, i32 noundef %mss_l4len_idx) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %next_to_use = getelementptr inbounds %struct.ixgbe_ring, ptr %tx_ring, i32 0, i32 14
  %0 = ptrtoint ptr %next_to_use to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %next_to_use, align 16
  %desc = getelementptr inbounds %struct.ixgbe_ring, ptr %tx_ring, i32 0, i32 5
  %2 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %desc, align 4
  %inc = add i16 %1, 1
  %count = getelementptr inbounds %struct.ixgbe_ring, ptr %tx_ring, i32 0, i32 11
  %4 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %count, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %inc, i16 %5)
  %cmp = icmp ult i16 %inc, %5
  %spec.select = select i1 %cmp, i16 %inc, i16 0
  %idxprom = zext i16 %1 to i32
  %arrayidx = getelementptr %struct.ixgbe_adv_tx_context_desc, ptr %3, i32 %idxprom
  %6 = ptrtoint ptr %next_to_use to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %spec.select, ptr %next_to_use, align 16
  %or = or i32 %type_tucmd, 538968064
  %7 = tail call i32 @llvm.bswap.i32(i32 %vlan_macip_lens)
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %arrayidx, align 4
  %9 = tail call i32 @llvm.bswap.i32(i32 %fceof_saidx)
  %fceof_saidx7 = getelementptr %struct.ixgbe_adv_tx_context_desc, ptr %3, i32 %idxprom, i32 1
  %10 = ptrtoint ptr %fceof_saidx7 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %fceof_saidx7, align 4
  %11 = tail call i32 @llvm.bswap.i32(i32 %or)
  %type_tucmd_mlhl = getelementptr %struct.ixgbe_adv_tx_context_desc, ptr %3, i32 %idxprom, i32 2
  %12 = ptrtoint ptr %type_tucmd_mlhl to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %type_tucmd_mlhl, align 4
  %13 = tail call i32 @llvm.bswap.i32(i32 %mss_l4len_idx)
  %mss_l4len_idx8 = getelementptr %struct.ixgbe_adv_tx_context_desc, ptr %3, i32 %idxprom, i32 3
  %14 = ptrtoint ptr %mss_l4len_idx8 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %mss_l4len_idx8, align 4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @ixgbe_fcoe_get_tc(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netdev_set_tc_queue(ptr noundef, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netdev_set_num_tc(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netdev_reset_tc(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbe_disable_sriov(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_msi(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_msix_range(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ixgbe_alloc_q_vector(ptr noundef %adapter, i32 noundef %v_count, i32 noundef %v_idx, i32 noundef %txr_count, i32 noundef %txr_idx, i32 noundef %xdp_count, i32 noundef %xdp_idx, i32 noundef %rxr_count, i32 noundef %rxr_idx) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 3
  %hw_tcs = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 41
  %0 = ptrtoint ptr %hw_tcs to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %hw_tcs, align 4
  %add = add i32 %xdp_count, %txr_count
  %add1 = add i32 %add, %rxr_count
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %1)
  %cmp = icmp ult i8 %1, 2
  br i1 %cmp, label %land.lhs.true, label %entry.if.end10_crit_edge

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

land.lhs.true:                                    ; preds = %entry
  %flags = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 6
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  %and = and i32 %3, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %land.lhs.true.if.end10_crit_edge

land.lhs.true.if.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

if.then:                                          ; preds = %land.lhs.true
  %indices = getelementptr %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 48, i32 2, i32 1
  %4 = ptrtoint ptr %indices to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %indices, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %5)
  %cmp4 = icmp ugt i16 %5, 1
  br i1 %cmp4, label %land.lhs.true6, label %if.then.if.end10_crit_edge

if.then.if.end10_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

land.lhs.true6:                                   ; preds = %if.then
  %atr_sample_rate = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 72
  %6 = ptrtoint ptr %atr_sample_rate to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %atr_sample_rate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool7.not = icmp eq i32 %7, 0
  br i1 %tobool7.not, label %land.lhs.true6.if.end10_crit_edge, label %if.then8

land.lhs.true6.if.end10_crit_edge:                ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

if.then8:                                         ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #8
  %call9 = tail call i32 @cpumask_local_spread(i32 noundef %v_idx, i32 noundef -1) #6
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %land.lhs.true6.if.end10_crit_edge, %if.then.if.end10_crit_edge, %land.lhs.true.if.end10_crit_edge, %entry.if.end10_crit_edge
  %node.1 = phi i32 [ -1, %land.lhs.true.if.end10_crit_edge ], [ -1, %entry.if.end10_crit_edge ], [ 0, %if.then8 ], [ -1, %land.lhs.true6.if.end10_crit_edge ], [ -1, %if.then.if.end10_crit_edge ]
  %cpu.1 = phi i32 [ -1, %land.lhs.true.if.end10_crit_edge ], [ -1, %entry.if.end10_crit_edge ], [ %call9, %if.then8 ], [ -1, %land.lhs.true6.if.end10_crit_edge ], [ -1, %if.then.if.end10_crit_edge ]
  %8 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add1, i32 512) #6
  %9 = extractvalue { i32, i1 } %8, 1
  %10 = extractvalue { i32, i1 } %8, 0
  %11 = or i32 %10, 384
  %retval.0.i = select i1 %9, i32 -1, i32 %11
  %call.i1.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %retval.0.i, i32 noundef 3520) #9
  %tobool13.not = icmp eq ptr %call.i1.i.i, null
  br i1 %tobool13.not, label %if.end8.i.i, label %if.end10.if.end20_crit_edge

if.end10.if.end20_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20

if.end8.i.i:                                      ; preds = %if.end10
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %retval.0.i, i32 noundef 3520) #9
  %tobool18.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool18.not, label %if.end8.i.i.cleanup_crit_edge, label %if.end8.i.i.if.end20_crit_edge

if.end8.i.i.if.end20_crit_edge:                   ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20

if.end8.i.i.cleanup_crit_edge:                    ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end20:                                         ; preds = %if.end8.i.i.if.end20_crit_edge, %if.end10.if.end20_crit_edge
  %q_vector.0290 = phi ptr [ %call9.i.i, %if.end8.i.i.if.end20_crit_edge ], [ %call.i1.i.i, %if.end10.if.end20_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %cpu.1)
  %cmp21.not = icmp eq i32 %cpu.1, -1
  br i1 %cmp21.not, label %if.end20.if.end24_crit_edge, label %if.then23

if.end20.if.end24_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24

if.then23:                                        ; preds = %if.end20
  %affinity_mask = getelementptr inbounds %struct.ixgbe_q_vector, ptr %q_vector.0290, i32 0, i32 6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %12 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %cpu.1)
  %cmp.not.i.i.i = icmp ugt i32 %12, %cpu.1
  br i1 %cmp.not.i.i.i, label %if.then23.cpumask_set_cpu.exit_crit_edge, label %land.rhs.i.i.i

if.then23.cpumask_set_cpu.exit_crit_edge:         ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpumask_set_cpu.exit

land.rhs.i.i.i:                                   ; preds = %if.then23
  %.b37.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i, label %land.rhs.i.i.i.cpumask_set_cpu.exit_crit_edge, label %if.then.i.i.i, !prof !54

land.rhs.i.i.i.cpumask_set_cpu.exit_crit_edge:    ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpumask_set_cpu.exit

if.then.i.i.i:                                    ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 108, i32 noundef 9, ptr noundef null) #6
  br label %cpumask_set_cpu.exit

cpumask_set_cpu.exit:                             ; preds = %if.then.i.i.i, %land.rhs.i.i.i.cpumask_set_cpu.exit_crit_edge, %if.then23.cpumask_set_cpu.exit_crit_edge
  tail call void @_set_bit(i32 noundef %cpu.1, ptr noundef %affinity_mask) #6
  br label %if.end24

if.end24:                                         ; preds = %cpumask_set_cpu.exit, %if.end20.if.end24_crit_edge
  %numa_node = getelementptr inbounds %struct.ixgbe_q_vector, ptr %q_vector.0290, i32 0, i32 7
  %13 = ptrtoint ptr %numa_node to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %node.1, ptr %numa_node, align 4
  %netdev = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 1
  %14 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %netdev, align 128
  %napi = getelementptr inbounds %struct.ixgbe_q_vector, ptr %q_vector.0290, i32 0, i32 5
  tail call void @netif_napi_add(ptr noundef %15, ptr noundef %napi, ptr noundef nonnull @ixgbe_poll, i32 noundef 64) #6
  %arrayidx26 = getelementptr %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 36, i32 %v_idx
  %16 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %q_vector.0290, ptr %arrayidx26, align 4
  %17 = ptrtoint ptr %q_vector.0290 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %adapter, ptr %q_vector.0290, align 128
  %conv28 = trunc i32 %v_idx to i16
  %v_idx29 = getelementptr inbounds %struct.ixgbe_q_vector, ptr %q_vector.0290, i32 0, i32 1
  %18 = ptrtoint ptr %v_idx29 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %conv28, ptr %v_idx29, align 4
  %tx_work_limit = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 10
  %19 = ptrtoint ptr %tx_work_limit to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %tx_work_limit, align 2
  %tx = getelementptr inbounds %struct.ixgbe_q_vector, ptr %q_vector.0290, i32 0, i32 4
  %work_limit = getelementptr inbounds %struct.ixgbe_q_vector, ptr %q_vector.0290, i32 0, i32 4, i32 4
  %21 = ptrtoint ptr %work_limit to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %20, ptr %work_limit, align 4
  %itr = getelementptr inbounds %struct.ixgbe_q_vector, ptr %q_vector.0290, i32 0, i32 4, i32 6
  %22 = ptrtoint ptr %itr to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 -2, ptr %itr, align 1
  %rx = getelementptr inbounds %struct.ixgbe_q_vector, ptr %q_vector.0290, i32 0, i32 3
  %itr31 = getelementptr inbounds %struct.ixgbe_q_vector, ptr %q_vector.0290, i32 0, i32 3, i32 6
  %23 = ptrtoint ptr %itr31 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 -2, ptr %itr31, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %txr_count)
  %tobool32.not = icmp ne i32 %txr_count, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rxr_count)
  %tobool34.not = icmp eq i32 %rxr_count, 0
  %or.cond = and i1 %tobool32.not, %tobool34.not
  br i1 %or.cond, label %if.then35, label %if.else44

if.then35:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  %tx_itr_setting = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 9
  %24 = ptrtoint ptr %tx_itr_setting to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %tx_itr_setting, align 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %25)
  %cmp37 = icmp eq i16 %25, 1
  %itr40 = getelementptr inbounds %struct.ixgbe_q_vector, ptr %q_vector.0290, i32 0, i32 2
  %. = select i1 %cmp37, i16 336, i16 %25
  %26 = ptrtoint ptr %itr40 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %., ptr %itr40, align 2
  %ring55304 = getelementptr inbounds %struct.ixgbe_q_vector, ptr %q_vector.0290, i32 0, i32 11
  br label %while.body.lr.ph

if.else44:                                        ; preds = %if.end24
  %rx_itr_setting = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 13
  %27 = ptrtoint ptr %rx_itr_setting to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %rx_itr_setting, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %28)
  %cmp46 = icmp eq i16 %28, 1
  %itr49 = getelementptr inbounds %struct.ixgbe_q_vector, ptr %q_vector.0290, i32 0, i32 2
  %.308 = select i1 %cmp46, i16 200, i16 %28
  %29 = ptrtoint ptr %itr49 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %.308, ptr %itr49, align 2
  %ring55 = getelementptr inbounds %struct.ixgbe_q_vector, ptr %q_vector.0290, i32 0, i32 11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %txr_count)
  %tobool56.not291 = icmp eq i32 %txr_count, 0
  br i1 %tobool56.not291, label %if.else44.while.cond74.preheader_crit_edge, label %if.else44.while.body.lr.ph_crit_edge

if.else44.while.body.lr.ph_crit_edge:             ; preds = %if.else44
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.lr.ph

if.else44.while.cond74.preheader_crit_edge:       ; preds = %if.else44
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond74.preheader

while.body.lr.ph:                                 ; preds = %if.else44.while.body.lr.ph_crit_edge, %if.then35
  %ring55306 = phi ptr [ %ring55304, %if.then35 ], [ %ring55, %if.else44.while.body.lr.ph_crit_edge ]
  %count.i = getelementptr inbounds %struct.ixgbe_q_vector, ptr %q_vector.0290, i32 0, i32 4, i32 5
  %next_update.i = getelementptr inbounds %struct.ixgbe_q_vector, ptr %q_vector.0290, i32 0, i32 4, i32 1
  %tx_ring_count = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 58
  br label %while.body

while.cond74.preheader:                           ; preds = %while.body.while.cond74.preheader_crit_edge, %if.else44.while.cond74.preheader_crit_edge
  %ring.0.lcssa = phi ptr [ %ring55, %if.else44.while.cond74.preheader_crit_edge ], [ %incdec.ptr, %while.body.while.cond74.preheader_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %xdp_count)
  %tobool75.not295 = icmp eq i32 %xdp_count, 0
  br i1 %tobool75.not295, label %while.cond74.preheader.while.cond106.preheader_crit_edge, label %while.body76.lr.ph

while.cond74.preheader.while.cond106.preheader_crit_edge: ; preds = %while.cond74.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond106.preheader

while.body76.lr.ph:                               ; preds = %while.cond74.preheader
  %count.i280 = getelementptr inbounds %struct.ixgbe_q_vector, ptr %q_vector.0290, i32 0, i32 4, i32 5
  %next_update.i283 = getelementptr inbounds %struct.ixgbe_q_vector, ptr %q_vector.0290, i32 0, i32 4, i32 1
  %tx_ring_count84 = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 58
  br label %while.body76

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.lr.ph
  %txr_count.addr.0294 = phi i32 [ %txr_count, %while.body.lr.ph ], [ %dec, %while.body.while.body_crit_edge ]
  %ring.0293 = phi ptr [ %ring55306, %while.body.lr.ph ], [ %incdec.ptr, %while.body.while.body_crit_edge ]
  %txr_idx.addr.0292 = phi i32 [ %txr_idx, %while.body.lr.ph ], [ %add73, %while.body.while.body_crit_edge ]
  %30 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pdev, align 8
  %dev58 = getelementptr inbounds %struct.pci_dev, ptr %31, i32 0, i32 44
  %dev59 = getelementptr inbounds %struct.ixgbe_ring, ptr %ring.0293, i32 0, i32 4
  %32 = ptrtoint ptr %dev59 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %dev58, ptr %dev59, align 16
  %33 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %netdev, align 128
  %netdev61 = getelementptr inbounds %struct.ixgbe_ring, ptr %ring.0293, i32 0, i32 2
  %35 = ptrtoint ptr %netdev61 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %34, ptr %netdev61, align 8
  %q_vector62 = getelementptr inbounds %struct.ixgbe_ring, ptr %ring.0293, i32 0, i32 1
  %36 = ptrtoint ptr %q_vector62 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %q_vector.0290, ptr %q_vector62, align 4
  %37 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %tx, align 4
  %39 = ptrtoint ptr %ring.0293 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %38, ptr %ring.0293, align 128
  store ptr %ring.0293, ptr %tx, align 4
  %40 = ptrtoint ptr %count.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %count.i, align 2
  %inc.i = add i8 %41, 1
  store i8 %inc.i, ptr %count.i, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %42 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %42, 1
  %43 = ptrtoint ptr %next_update.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %add.i, ptr %next_update.i, align 32
  %44 = ptrtoint ptr %tx_ring_count to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %tx_ring_count, align 8
  %conv64 = trunc i32 %45 to i16
  %count = getelementptr inbounds %struct.ixgbe_ring, ptr %ring.0293, i32 0, i32 11
  %46 = ptrtoint ptr %count to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %conv64, ptr %count, align 4
  %conv65 = trunc i32 %txr_idx.addr.0292 to i8
  %queue_index = getelementptr inbounds %struct.ixgbe_ring, ptr %ring.0293, i32 0, i32 12
  %47 = ptrtoint ptr %queue_index to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %conv65, ptr %queue_index, align 2
  %arrayidx68 = getelementptr %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 21, i32 %txr_idx.addr.0292
  %48 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile ptr %ring.0293, ptr %arrayidx68, align 4
  %dec = add i32 %txr_count.addr.0294, -1
  %add73 = add i32 %txr_idx.addr.0292, %v_count
  %incdec.ptr = getelementptr %struct.ixgbe_ring, ptr %ring.0293, i32 1
  %tobool56.not = icmp eq i32 %dec, 0
  br i1 %tobool56.not, label %while.body.while.cond74.preheader_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

while.body.while.cond74.preheader_crit_edge:      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond74.preheader

while.cond106.preheader:                          ; preds = %while.body76.while.cond106.preheader_crit_edge, %while.cond74.preheader.while.cond106.preheader_crit_edge
  %ring.1.lcssa = phi ptr [ %ring.0.lcssa, %while.cond74.preheader.while.cond106.preheader_crit_edge ], [ %incdec.ptr104, %while.body76.while.cond106.preheader_crit_edge ]
  br i1 %tobool34.not, label %while.cond106.preheader.cleanup_crit_edge, label %while.body108.lr.ph

while.cond106.preheader.cleanup_crit_edge:        ; preds = %while.cond106.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

while.body108.lr.ph:                              ; preds = %while.cond106.preheader
  %count.i284 = getelementptr inbounds %struct.ixgbe_q_vector, ptr %q_vector.0290, i32 0, i32 3, i32 5
  %next_update.i287 = getelementptr inbounds %struct.ixgbe_q_vector, ptr %q_vector.0290, i32 0, i32 3, i32 1
  %type = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 54, i32 2, i32 1
  %offset = getelementptr %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 48, i32 4, i32 3
  %indices133 = getelementptr %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 48, i32 4, i32 1
  %rx_ring_count = getelementptr inbounds %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 60
  br label %while.body108

while.body76:                                     ; preds = %while.body76.while.body76_crit_edge, %while.body76.lr.ph
  %ring.1298 = phi ptr [ %ring.0.lcssa, %while.body76.lr.ph ], [ %incdec.ptr104, %while.body76.while.body76_crit_edge ]
  %xdp_idx.addr.0297 = phi i32 [ %xdp_idx, %while.body76.lr.ph ], [ %inc, %while.body76.while.body76_crit_edge ]
  %xdp_count.addr.0296 = phi i32 [ %xdp_count, %while.body76.lr.ph ], [ %dec103, %while.body76.while.body76_crit_edge ]
  %49 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %pdev, align 8
  %dev78 = getelementptr inbounds %struct.pci_dev, ptr %50, i32 0, i32 44
  %dev79 = getelementptr inbounds %struct.ixgbe_ring, ptr %ring.1298, i32 0, i32 4
  %51 = ptrtoint ptr %dev79 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %dev78, ptr %dev79, align 16
  %52 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %netdev, align 128
  %netdev81 = getelementptr inbounds %struct.ixgbe_ring, ptr %ring.1298, i32 0, i32 2
  %54 = ptrtoint ptr %netdev81 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %53, ptr %netdev81, align 8
  %q_vector82 = getelementptr inbounds %struct.ixgbe_ring, ptr %ring.1298, i32 0, i32 1
  %55 = ptrtoint ptr %q_vector82 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %q_vector.0290, ptr %q_vector82, align 4
  %56 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %tx, align 4
  %58 = ptrtoint ptr %ring.1298 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %57, ptr %ring.1298, align 128
  store ptr %ring.1298, ptr %tx, align 4
  %59 = ptrtoint ptr %count.i280 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %count.i280, align 2
  %inc.i281 = add i8 %60, 1
  store i8 %inc.i281, ptr %count.i280, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %61 = load volatile i32, ptr @jiffies, align 128
  %add.i282 = add i32 %61, 1
  %62 = ptrtoint ptr %next_update.i283 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %add.i282, ptr %next_update.i283, align 32
  %63 = ptrtoint ptr %tx_ring_count84 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %tx_ring_count84, align 8
  %conv85 = trunc i32 %64 to i16
  %count86 = getelementptr inbounds %struct.ixgbe_ring, ptr %ring.1298, i32 0, i32 11
  %65 = ptrtoint ptr %count86 to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 %conv85, ptr %count86, align 4
  %conv87 = trunc i32 %xdp_idx.addr.0297 to i8
  %queue_index88 = getelementptr inbounds %struct.ixgbe_ring, ptr %ring.1298, i32 0, i32 12
  %66 = ptrtoint ptr %queue_index88 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %conv87, ptr %queue_index88, align 2
  %state = getelementptr inbounds %struct.ixgbe_ring, ptr %ring.1298, i32 0, i32 7
  tail call void @_set_bit(i32 noundef 9, ptr noundef %state) #6
  %tx_lock = getelementptr inbounds %struct.ixgbe_ring, ptr %ring.1298, i32 0, i32 25
  tail call void @__raw_spin_lock_init(ptr noundef %tx_lock, ptr noundef nonnull @.str.25, ptr noundef nonnull @ixgbe_alloc_q_vector.__key, i16 noundef signext 3) #6
  %arrayidx98 = getelementptr %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 18, i32 %xdp_idx.addr.0297
  %67 = ptrtoint ptr %arrayidx98 to i32
  call void @__asan_store4_noabort(i32 %67)
  store volatile ptr %ring.1298, ptr %arrayidx98, align 4
  %dec103 = add i32 %xdp_count.addr.0296, -1
  %inc = add i32 %xdp_idx.addr.0297, 1
  %incdec.ptr104 = getelementptr %struct.ixgbe_ring, ptr %ring.1298, i32 1
  %tobool75.not = icmp eq i32 %dec103, 0
  br i1 %tobool75.not, label %while.body76.while.cond106.preheader_crit_edge, label %while.body76.while.body76_crit_edge

while.body76.while.body76_crit_edge:              ; preds = %while.body76
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body76

while.body76.while.cond106.preheader_crit_edge:   ; preds = %while.body76
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond106.preheader

while.body108:                                    ; preds = %if.end141.while.body108_crit_edge, %while.body108.lr.ph
  %ring.2303 = phi ptr [ %ring.1.lcssa, %while.body108.lr.ph ], [ %incdec.ptr158, %if.end141.while.body108_crit_edge ]
  %rxr_idx.addr.0302 = phi i32 [ %rxr_idx, %while.body108.lr.ph ], [ %add157, %if.end141.while.body108_crit_edge ]
  %rxr_count.addr.0301 = phi i32 [ %rxr_count, %while.body108.lr.ph ], [ %dec156, %if.end141.while.body108_crit_edge ]
  %68 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %pdev, align 8
  %dev110 = getelementptr inbounds %struct.pci_dev, ptr %69, i32 0, i32 44
  %dev111 = getelementptr inbounds %struct.ixgbe_ring, ptr %ring.2303, i32 0, i32 4
  %70 = ptrtoint ptr %dev111 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %dev110, ptr %dev111, align 16
  %71 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %netdev, align 128
  %netdev113 = getelementptr inbounds %struct.ixgbe_ring, ptr %ring.2303, i32 0, i32 2
  %73 = ptrtoint ptr %netdev113 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %72, ptr %netdev113, align 8
  %q_vector114 = getelementptr inbounds %struct.ixgbe_ring, ptr %ring.2303, i32 0, i32 1
  %74 = ptrtoint ptr %q_vector114 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %q_vector.0290, ptr %q_vector114, align 4
  %75 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %rx, align 8
  %77 = ptrtoint ptr %ring.2303 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %76, ptr %ring.2303, align 128
  store ptr %ring.2303, ptr %rx, align 8
  %78 = ptrtoint ptr %count.i284 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %count.i284, align 2
  %inc.i285 = add i8 %79, 1
  store i8 %inc.i285, ptr %count.i284, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %80 = load volatile i32, ptr @jiffies, align 128
  %add.i286 = add i32 %80, 1
  %81 = ptrtoint ptr %next_update.i287 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %add.i286, ptr %next_update.i287, align 4
  %82 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %83)
  %cmp116 = icmp eq i32 %83, 2
  br i1 %cmp116, label %if.then118, label %while.body108.if.end120_crit_edge

while.body108.if.end120_crit_edge:                ; preds = %while.body108
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end120

if.then118:                                       ; preds = %while.body108
  call void @__sanitizer_cov_trace_pc() #8
  %state119 = getelementptr inbounds %struct.ixgbe_ring, ptr %ring.2303, i32 0, i32 7
  tail call void @_set_bit(i32 noundef 3, ptr noundef %state119) #6
  br label %if.end120

if.end120:                                        ; preds = %if.then118, %while.body108.if.end120_crit_edge
  %84 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %netdev, align 128
  %features = getelementptr inbounds %struct.net_device, ptr %85, i32 0, i32 23
  %86 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %86)
  %87 = load i64, ptr %features, align 16
  %and122 = and i64 %87, 137438953472
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and122)
  %tobool123.not = icmp eq i64 %and122, 0
  br i1 %tobool123.not, label %if.end120.if.end141_crit_edge, label %if.then124

if.end120.if.end141_crit_edge:                    ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end141

if.then124:                                       ; preds = %if.end120
  %88 = ptrtoint ptr %offset to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %offset, align 2
  %conv127 = zext i16 %89 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %rxr_idx.addr.0302, i32 %conv127)
  %cmp128.not = icmp slt i32 %rxr_idx.addr.0302, %conv127
  br i1 %cmp128.not, label %if.then124.if.end141_crit_edge, label %land.lhs.true130

if.then124.if.end141_crit_edge:                   ; preds = %if.then124
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end141

land.lhs.true130:                                 ; preds = %if.then124
  %90 = ptrtoint ptr %indices133 to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %indices133, align 2
  %conv134 = zext i16 %91 to i32
  %add135 = add nuw nsw i32 %conv134, %conv127
  call void @__sanitizer_cov_trace_cmp4(i32 %rxr_idx.addr.0302, i32 %add135)
  %cmp136 = icmp slt i32 %rxr_idx.addr.0302, %add135
  br i1 %cmp136, label %if.then138, label %land.lhs.true130.if.end141_crit_edge

land.lhs.true130.if.end141_crit_edge:             ; preds = %land.lhs.true130
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end141

if.then138:                                       ; preds = %land.lhs.true130
  call void @__sanitizer_cov_trace_pc() #8
  %state139 = getelementptr inbounds %struct.ixgbe_ring, ptr %ring.2303, i32 0, i32 7
  tail call void @_set_bit(i32 noundef 4, ptr noundef %state139) #6
  br label %if.end141

if.end141:                                        ; preds = %if.then138, %land.lhs.true130.if.end141_crit_edge, %if.then124.if.end141_crit_edge, %if.end120.if.end141_crit_edge
  %92 = ptrtoint ptr %rx_ring_count to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %rx_ring_count, align 16
  %conv142 = trunc i32 %93 to i16
  %count143 = getelementptr inbounds %struct.ixgbe_ring, ptr %ring.2303, i32 0, i32 11
  %94 = ptrtoint ptr %count143 to i32
  call void @__asan_store2_noabort(i32 %94)
  store i16 %conv142, ptr %count143, align 4
  %conv144 = trunc i32 %rxr_idx.addr.0302 to i8
  %queue_index145 = getelementptr inbounds %struct.ixgbe_ring, ptr %ring.2303, i32 0, i32 12
  %95 = ptrtoint ptr %queue_index145 to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 %conv144, ptr %queue_index145, align 2
  %arrayidx151 = getelementptr %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 25, i32 %rxr_idx.addr.0302
  %96 = ptrtoint ptr %arrayidx151 to i32
  call void @__asan_store4_noabort(i32 %96)
  store volatile ptr %ring.2303, ptr %arrayidx151, align 4
  %dec156 = add i32 %rxr_count.addr.0301, -1
  %add157 = add i32 %rxr_idx.addr.0302, %v_count
  %incdec.ptr158 = getelementptr %struct.ixgbe_ring, ptr %ring.2303, i32 1
  %tobool107.not = icmp eq i32 %dec156, 0
  br i1 %tobool107.not, label %if.end141.cleanup_crit_edge, label %if.end141.while.body108_crit_edge

if.end141.while.body108_crit_edge:                ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body108

if.end141.cleanup_crit_edge:                      ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %if.end141.cleanup_crit_edge, %while.cond106.preheader.cleanup_crit_edge, %if.end8.i.i.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.end8.i.i.cleanup_crit_edge ], [ 0, %while.cond106.preheader.cleanup_crit_edge ], [ 0, %if.end141.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ixgbe_free_q_vector(ptr noundef %adapter, i32 noundef %v_idx) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 36, i32 %v_idx
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tx = getelementptr inbounds %struct.ixgbe_q_vector, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %2)
  %ring.073 = load ptr, ptr %tx, align 4
  %cmp.not74 = icmp eq ptr %ring.073, null
  br i1 %cmp.not74, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %ring.075 = phi ptr [ %ring.0, %for.body.for.body_crit_edge ], [ %ring.073, %entry.for.body_crit_edge ]
  %state = getelementptr inbounds %struct.ixgbe_ring, ptr %ring.075, i32 0, i32 7
  %3 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %state, align 4
  %5 = and i32 %4, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  %queue_index15 = getelementptr inbounds %struct.ixgbe_ring, ptr %ring.075, i32 0, i32 12
  %6 = ptrtoint ptr %queue_index15 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %queue_index15, align 2
  %idxprom16 = zext i8 %7 to i32
  %arrayidx5 = getelementptr %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 18, i32 %idxprom16
  %arrayidx17 = getelementptr %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 21, i32 %idxprom16
  %arrayidx5.sink = select i1 %tobool.not, ptr %arrayidx17, ptr %arrayidx5
  %8 = ptrtoint ptr %arrayidx5.sink to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr null, ptr %arrayidx5.sink, align 4
  %9 = ptrtoint ptr %ring.075 to i32
  call void @__asan_load4_noabort(i32 %9)
  %ring.0 = load ptr, ptr %ring.075, align 4
  %cmp.not = icmp eq ptr %ring.0, null
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %rx = getelementptr inbounds %struct.ixgbe_q_vector, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %10)
  %ring.176 = load ptr, ptr %rx, align 8
  %cmp24.not77 = icmp eq ptr %ring.176, null
  br i1 %cmp24.not77, label %for.end.for.end40_crit_edge, label %for.end.do.body30_crit_edge

for.end.do.body30_crit_edge:                      ; preds = %for.end
  br label %do.body30

for.end.for.end40_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end40

do.body30:                                        ; preds = %do.body30.do.body30_crit_edge, %for.end.do.body30_crit_edge
  %ring.178 = phi ptr [ %ring.1, %do.body30.do.body30_crit_edge ], [ %ring.176, %for.end.do.body30_crit_edge ]
  %queue_index31 = getelementptr inbounds %struct.ixgbe_ring, ptr %ring.178, i32 0, i32 12
  %11 = ptrtoint ptr %queue_index31 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %queue_index31, align 2
  %idxprom32 = zext i8 %12 to i32
  %arrayidx33 = getelementptr %struct.ixgbe_adapter, ptr %adapter, i32 0, i32 25, i32 %idxprom32
  %13 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr null, ptr %arrayidx33, align 4
  %14 = ptrtoint ptr %ring.178 to i32
  call void @__asan_load4_noabort(i32 %14)
  %ring.1 = load ptr, ptr %ring.178, align 8
  %cmp24.not = icmp eq ptr %ring.1, null
  br i1 %cmp24.not, label %do.body30.for.end40_crit_edge, label %do.body30.do.body30_crit_edge

do.body30.do.body30_crit_edge:                    ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body30

do.body30.for.end40_crit_edge:                    ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end40

for.end40:                                        ; preds = %do.body30.for.end40_crit_edge, %for.end.for.end40_crit_edge
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %arrayidx, align 4
  %napi = getelementptr inbounds %struct.ixgbe_q_vector, ptr %1, i32 0, i32 5
  tail call void @__netif_napi_del(ptr noundef %napi) #6
  %call43 = tail call i32 @static_key_count(ptr noundef nonnull @ixgbe_xdp_locking_key) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %cmp44 = icmp sgt i32 %call43, 0
  br i1 %cmp44, label %if.then46, label %for.end40.do.body48_crit_edge

for.end40.do.body48_crit_edge:                    ; preds = %for.end40
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body48

if.then46:                                        ; preds = %for.end40
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @static_key_slow_dec(ptr noundef nonnull @ixgbe_xdp_locking_key) #6
  br label %do.body48

do.body48:                                        ; preds = %if.then46, %for.end40.do.body48_crit_edge
  %tobool49.not = icmp eq ptr %1, null
  br i1 %tobool49.not, label %do.body48.if.end54_crit_edge, label %do.end53

do.body48.if.end54_crit_edge:                     ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end54

do.end53:                                         ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #8
  %rcu = getelementptr inbounds %struct.ixgbe_q_vector, ptr %1, i32 0, i32 8
  tail call void @kvfree_call_rcu(ptr noundef %rcu, ptr noundef nonnull inttoptr (i32 280 to ptr)) #6
  br label %if.end54

if.end54:                                         ; preds = %do.end53, %do.body48.if.end54_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpumask_local_spread(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_napi_add(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgbe_poll(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__netif_napi_del(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @static_key_count(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @static_key_slow_dec(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_msix(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_msi(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umax.i16(i16, i16) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(0) }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !13, !14, !15, !17, !18, !19, !20, !21, !23, !24, !25, !27, !28, !29, !31, !32, !33, !35, !36, !37, !38, !40, !41, !43}
!llvm.module.flags = !{!44, !45, !46, !47, !48, !49, !50, !51}
!llvm.ident = !{!52}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_lib.c", i32 1250, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @ixgbe_init_interrupt_scheme._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @ixgbe_init_interrupt_scheme._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_lib.c", i32 1256, i32 2}
!10 = !{ptr @.str.7, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @ixgbe_init_interrupt_scheme._entry.5, !9, !"_entry", i1 false, i1 false}
!12 = !{ptr @ixgbe_init_interrupt_scheme._entry_ptr.8, !9, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.9, !9, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.10, !9, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.11, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_lib.c", i32 1191, i32 3}
!17 = !{ptr @.str.12, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.13, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @ixgbe_set_interrupt_capability._entry, !16, !"_entry", i1 false, i1 false}
!20 = !{ptr @ixgbe_set_interrupt_capability._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.15, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_lib.c", i32 1207, i32 2}
!23 = !{ptr @ixgbe_set_interrupt_capability._entry.14, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @ixgbe_set_interrupt_capability._entry_ptr.16, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.18, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_lib.c", i32 1211, i32 2}
!27 = !{ptr @ixgbe_set_interrupt_capability._entry.17, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @ixgbe_set_interrupt_capability._entry_ptr.19, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.21, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_lib.c", i32 1222, i32 3}
!31 = !{ptr @ixgbe_set_interrupt_capability._entry.20, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @ixgbe_set_interrupt_capability._entry_ptr.22, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.23, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_lib.c", i32 786, i32 3}
!35 = !{ptr @.str.24, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @ixgbe_acquire_msix_vectors._entry, !34, !"_entry", i1 false, i1 false}
!37 = !{ptr @ixgbe_acquire_msix_vectors._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @ixgbe_alloc_q_vector.__key, !39, !"__key", i1 false, i1 false}
!39 = !{!"../drivers/net/ethernet/intel/ixgbe/ixgbe_lib.c", i32 953, i32 3}
!40 = !{ptr @.str.25, !39, !"<string literal>", i1 false, i1 false}
!41 = distinct !{null, !42, !"__already_done", i1 false, i1 false}
!42 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!43 = !{ptr @.str.26, !42, !"<string literal>", i1 false, i1 false}
!44 = !{i32 1, !"wchar_size", i32 2}
!45 = !{i32 1, !"min_enum_size", i32 4}
!46 = !{i32 8, !"branch-target-enforcement", i32 0}
!47 = !{i32 8, !"sign-return-address", i32 0}
!48 = !{i32 8, !"sign-return-address-all", i32 0}
!49 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!50 = !{i32 7, !"uwtable", i32 1}
!51 = !{i32 7, !"frame-pointer", i32 2}
!52 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!53 = !{!"branch_weights", i32 1, i32 2000}
!54 = !{!"branch_weights", i32 2000, i32 1}
