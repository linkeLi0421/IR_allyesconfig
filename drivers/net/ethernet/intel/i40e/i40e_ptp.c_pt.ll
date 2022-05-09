; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/intel/i40e/i40e_ptp.c_pt.bc'
source_filename = "../drivers/net/ethernet/intel/i40e/i40e_ptp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.ptp_pin_desc = type { [64 x i8], i32, i32, i32, [5 x i32] }
%struct.i40e_ptp_pins_settings = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.i40e_pf = type { ptr, %struct.i40e_hw, [2 x i32], ptr, i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i8, i8, %struct.hlist_head, i16, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, %struct.list_head, %struct.list_head, %struct.udp_tunnel_nic_shared, %struct.udp_tunnel_nic_info, %struct.hlist_head, i16, i32, i16, i16, i32, [32 x i8], i16, i32, i32, %struct.timer_list, %struct.work_struct, i32, i32, ptr, i8, %struct.i40e_hw_port_stats, %struct.i40e_hw_port_stats, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, %struct.mutex, i16, i16, i16, ptr, [16 x ptr], ptr, ptr, i16, i16, i16, ptr, ptr, i8, i16, ptr, i32, i32, i32, i16, %struct.i40e_filter_control_settings, %struct.i40e_rx_pb_config, %struct.i40e_dcbx_config, ptr, %struct.ptp_clock_info, ptr, i32, %struct.hwtstamp_config, %struct.timespec64, %struct.work_struct, %struct.work_struct, %struct.work_struct, i64, %struct.mutex, i32, i32, i32, i32, i32, i64, i32, %struct.spinlock, [3 x %struct.ptp_pin_desc], [4 x i32], i8, i8, ptr, i16, i32, i32, i32, i32, i16, i16, i16, i16, %struct.list_head }
%struct.i40e_hw = type { ptr, ptr, %struct.i40e_phy_info, %struct.i40e_mac_info, %struct.i40e_bus_info, %struct.i40e_nvm_info, %struct.i40e_fc_info, i16, i16, i16, i16, i8, i8, i8, %struct.i40e_hw_capabilities, %struct.i40e_hw_capabilities, i16, i8, i16, i16, i16, i16, i16, %struct.i40e_adminq_info, i32, %struct.i40e_aq_desc, %struct.i40e_aq_desc, %struct.i40e_virt_mem, i8, i16, %struct.i40e_hmc_info, i16, %struct.i40e_dcbx_config, %struct.i40e_dcbx_config, %struct.i40e_dcbx_config, i64, i16, i16, i16, i32, [16 x i8] }
%struct.i40e_phy_info = type { %struct.i40e_link_status, %struct.i40e_link_status, i8, i32, i64 }
%struct.i40e_link_status = type { i32, i32, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i8, [3 x i8] }
%struct.i40e_mac_info = type { i32, [6 x i8], [6 x i8], [6 x i8], [6 x i8], i16 }
%struct.i40e_bus_info = type { i32, i32, i32, i16, i16, i16, i16 }
%struct.i40e_nvm_info = type { i64, i32, i16, i8, i16, i32, i32 }
%struct.i40e_fc_info = type { i32, i32 }
%struct.i40e_hw_capabilities = type { i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i32, i32, i8, i32, i32, [30 x i8], [30 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i64 }
%struct.i40e_adminq_info = type { %struct.i40e_adminq_ring, %struct.i40e_adminq_ring, i32, i16, i16, i16, i16, i16, i16, i32, i16, i16, %struct.mutex, %struct.mutex, i32, i32 }
%struct.i40e_adminq_ring = type { %struct.i40e_virt_mem, %struct.i40e_dma_mem, %struct.i40e_virt_mem, %union.anon.180, i16, i16, i16, i16, i32, i32, i32, i32, i32 }
%struct.i40e_dma_mem = type { ptr, i32, i32 }
%union.anon.180 = type { ptr }
%struct.i40e_aq_desc = type { i16, i16, i16, i16, i32, i32, %union.anon.181 }
%union.anon.181 = type { %struct.anon.182 }
%struct.anon.182 = type { i32, i32, i32, i32 }
%struct.i40e_virt_mem = type { ptr, i32 }
%struct.i40e_hmc_info = type { i32, i8, i16, ptr, %struct.i40e_virt_mem, %struct.i40e_hmc_sd_table }
%struct.i40e_hmc_sd_table = type { %struct.i40e_virt_mem, i32, i32, ptr }
%struct.udp_tunnel_nic_shared = type { ptr, %struct.list_head }
%struct.udp_tunnel_nic_info = type { ptr, ptr, ptr, ptr, i32, [4 x %struct.udp_tunnel_nic_table_info] }
%struct.udp_tunnel_nic_table_info = type { i32, i32 }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.i40e_hw_port_stats = type { %struct.i40e_eth_stats, i64, i64, i64, i64, i64, i64, i64, i64, i64, [8 x i64], [8 x i64], i64, i64, [8 x i64], [8 x i64], [8 x i64], i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i64, i64 }
%struct.i40e_eth_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.i40e_filter_control_settings = type { i32, i32, i32, i32, i32, i8, i8, i8 }
%struct.i40e_rx_pb_config = type { i32, i32, i32, [8 x i32], [8 x i32], [8 x i32], [8 x i32], [8 x i32] }
%struct.i40e_dcbx_config = type { i8, i8, i32, i32, %struct.i40e_dcb_ets_config, %struct.i40e_dcb_ets_config, %struct.i40e_dcb_pfc_config, [32 x %struct.i40e_dcb_app_priority_table] }
%struct.i40e_dcb_ets_config = type { i8, i8, i8, [8 x i8], [8 x i8], [8 x i8] }
%struct.i40e_dcb_pfc_config = type { i8, i8, i8, i8 }
%struct.i40e_dcb_app_priority_table = type { i8, i8, i16 }
%struct.ptp_clock_info = type { ptr, [32 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.hwtstamp_config = type { i32, i32, i32 }
%struct.timespec64 = type { i64, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.179, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.179 = type { ptr }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.sk_buff = type { %union.anon.50, %union.anon.53, %union.anon.54, [48 x i8], %union.anon.55, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.57, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type { ptr, ptr, %union.anon.52 }
%union.anon.52 = type { ptr }
%union.anon.53 = type { ptr }
%union.anon.54 = type { i64 }
%union.anon.55 = type { %struct.anon.56 }
%struct.anon.56 = type { i32, ptr }
%union.anon.57 = type { %struct.anon.58 }
%struct.anon.58 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.59, i32, i32, i32, i16, i16, %union.anon.61, i32, %union.anon.62, %union.anon.63, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.59 = type { i32 }
%union.anon.61 = type { i32 }
%union.anon.62 = type { i32 }
%union.anon.63 = type { i16 }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.ifreq = type { %union.anon.186, %union.anon.187 }
%union.anon.186 = type { [16 x i8] }
%union.anon.187 = type { %struct.ifmap }
%struct.ifmap = type { i32, i32, i16, i8, i8, i8 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.ptp_system_timestamp = type { %struct.timespec64, %struct.timespec64 }
%struct.ptp_clock_event = type { i32, i32, %union.anon.218 }
%union.anon.218 = type { %struct.pps_event_time }
%struct.pps_event_time = type { %struct.timespec64 }
%struct.ptp_clock_request = type { i32, %union.anon.210 }
%union.anon.210 = type { %struct.ptp_perout_request }
%struct.ptp_perout_request = type { %union.anon.211, %struct.ptp_clock_time, i32, i32, %union.anon.212 }
%union.anon.211 = type { %struct.ptp_clock_time }
%struct.ptp_clock_time = type { i64, i32, i32 }
%union.anon.212 = type { %struct.ptp_clock_time }

@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@i40e_ptp_rx_hang.__UNIQUE_ID_ddebug677 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 -73, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"i40e\00", [27 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"i40e_ptp_rx_hang\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/net/ethernet/intel/i40e/i40e_ptp.c\00", [53 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Dropped %d missed RXTIME timestamp events\0A\00", [53 x i8] zeroinitializer }, align 32
@i40e_ptp_set_increment.warn_once = internal global { i32, [28 x i8] } zeroinitializer, align 32
@i40e_ptp_set_increment._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.2, i32 903, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"1588 functionality is not supported at 100 Mbps. Stopping the PHC.\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"i40e_ptp_set_increment\00", [41 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@i40e_ptp_set_increment._entry_ptr = internal global ptr @i40e_ptp_set_increment._entry, section ".printk_index", align 4
@i40e_ptp_alloc_pins._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 1153, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Cannot allocate memory for PTP pins structure.\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"i40e_ptp_alloc_pins\00", [44 x i8] zeroinitializer }, align 32
@i40e_ptp_alloc_pins._entry_ptr = internal global ptr @i40e_ptp_alloc_pins._entry, section ".printk_index", align 4
@i40e_ptp_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.2, i32 1507, ptr @.str.12, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: PTP not supported on %s\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"i40e_ptp_init\00", [18 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@i40e_ptp_init._entry_ptr = internal global ptr @i40e_ptp_init._entry, section ".printk_index", align 4
@i40e_ptp_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&pf->tmreg_lock\00", [16 x i8] zeroinitializer }, align 32
@i40e_ptp_init.__key.14 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.15 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&pf->ptp_rx_lock\00", [47 x i8] zeroinitializer }, align 32
@i40e_ptp_init._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.11, ptr @.str.2, i32 1519, ptr @.str.18, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: ptp_clock_register failed\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@i40e_ptp_init._entry_ptr.19 = internal global ptr @i40e_ptp_init._entry.16, section ".printk_index", align 4
@i40e_ptp_init._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.11, ptr @.str.2, i32 1524, ptr @.str.12, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"PHC enabled\0A\00", [19 x i8] zeroinitializer }, align 32
@i40e_ptp_init._entry_ptr.22 = internal global ptr @i40e_ptp_init._entry.20, section ".printk_index", align 4
@i40e_ptp_stop._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.2, i32 1576, ptr @.str.12, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: removed PHC on %s\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"i40e_ptp_stop\00", [18 x i8] zeroinitializer }, align 32
@i40e_ptp_stop._entry_ptr = internal global ptr @i40e_ptp_stop._entry, section ".printk_index", align 4
@.str.27 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@i40e_ptp_set_pins_hw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.2, i32 1078, ptr @.str.12, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"PTP configuration set to: SDP3_2: %s,  SDP3_3: %s,  GPIO_4: %s.\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"i40e_ptp_set_pins_hw\00", [43 x i8] zeroinitializer }, align 32
@i40e_ptp_set_pins_hw._entry_ptr = internal global ptr @i40e_ptp_set_pins_hw._entry, section ".printk_index", align 4
@i40e_ptp_gpio_pin_state2str = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34], [44 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"off\00", [28 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"in_A\00", [27 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"in_B\00", [27 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"out_A\00", [26 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"out_B\00", [26 x i8] zeroinitializer }, align 32
@i40e_ptp_set_timestamp_mode.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.35 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"(work_completion)(&pf->ptp_extts0_work)\00", [56 x i8] zeroinitializer }, align 32
@i40e_driver_name = external dso_local constant [0 x i8], align 1
@.str.36 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@sdp_desc = internal global { [3 x %struct.ptp_pin_desc], [64 x i8] } { [3 x %struct.ptp_pin_desc] [%struct.ptp_pin_desc { [64 x i8] c"SDP3_2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0, i32 0, [5 x i32] zeroinitializer }, %struct.ptp_pin_desc { [64 x i8] c"SDP3_3\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 0, i32 1, [5 x i32] zeroinitializer }, %struct.ptp_pin_desc { [64 x i8] c"GPIO_4\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2, i32 0, i32 1, [5 x i32] zeroinitializer }], [64 x i8] zeroinitializer }, align 32
@i40e_ptp_pin_led_allowed_states = internal constant { [56 x %struct.i40e_ptp_pins_settings], [384 x i8] } { [56 x %struct.i40e_ptp_pins_settings] [%struct.i40e_ptp_pins_settings { i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1 }, %struct.i40e_ptp_pins_settings { i32 0, i32 1, i32 0, i32 1, i32 1, i32 1, i32 0 }, %struct.i40e_ptp_pins_settings { i32 0, i32 3, i32 0, i32 1, i32 0, i32 1, i32 1 }, %struct.i40e_ptp_pins_settings { i32 0, i32 2, i32 0, i32 1, i32 1, i32 1, i32 0 }, %struct.i40e_ptp_pins_settings { i32 0, i32 4, i32 0, i32 1, i32 0, i32 1, i32 1 }, %struct.i40e_ptp_pins_settings { i32 1, i32 0, i32 0, i32 1, i32 1, i32 1, i32 0 }, %struct.i40e_ptp_pins_settings { i32 1, i32 2, i32 0, i32 1, i32 1, i32 1, i32 0 }, %struct.i40e_ptp_pins_settings { i32 1, i32 4, i32 0, i32 1, i32 0, i32 1, i32 1 }, %struct.i40e_ptp_pins_settings { i32 3, i32 0, i32 0, i32 1, i32 0, i32 1, i32 1 }, %struct.i40e_ptp_pins_settings { i32 3, i32 2, i32 0, i32 1, i32 0, i32 1, i32 1 }, %struct.i40e_ptp_pins_settings { i32 2, i32 0, i32 0, i32 1, i32 1, i32 1, i32 0 }, %struct.i40e_ptp_pins_settings { i32 2, i32 1, i32 0, i32 1, i32 1, i32 1, i32 0 }, %struct.i40e_ptp_pins_settings { i32 2, i32 3, i32 0, i32 1, i32 0, i32 1, i32 1 }, %struct.i40e_ptp_pins_settings { i32 4, i32 0, i32 0, i32 1, i32 0, i32 1, i32 1 }, %struct.i40e_ptp_pins_settings { i32 4, i32 1, i32 0, i32 1, i32 0, i32 1, i32 1 }, %struct.i40e_ptp_pins_settings { i32 0, i32 0, i32 1, i32 1, i32 1, i32 0, i32 1 }, %struct.i40e_ptp_pins_settings { i32 0, i32 3, i32 1, i32 1, i32 0, i32 0, i32 1 }, %struct.i40e_ptp_pins_settings { i32 0, i32 2, i32 1, i32 1, i32 1, i32 0, i32 0 }, %struct.i40e_ptp_pins_settings { i32 0, i32 4, i32 1, i32 1, i32 0, i32 0, i32 1 }, %struct.i40e_ptp_pins_settings { i32 3, i32 0, i32 1, i32 1, i32 0, i32 0, i32 1 }, %struct.i40e_ptp_pins_settings { i32 3, i32 2, i32 1, i32 1, i32 0, i32 0, i32 1 }, %struct.i40e_ptp_pins_settings { i32 2, i32 0, i32 1, i32 1, i32 1, i32 0, i32 0 }, %struct.i40e_ptp_pins_settings { i32 2, i32 3, i32 1, i32 1, i32 0, i32 0, i32 1 }, %struct.i40e_ptp_pins_settings { i32 4, i32 0, i32 1, i32 1, i32 0, i32 0, i32 1 }, %struct.i40e_ptp_pins_settings { i32 0, i32 0, i32 3, i32 0, i32 1, i32 1, i32 1 }, %struct.i40e_ptp_pins_settings { i32 0, i32 1, i32 3, i32 0, i32 1, i32 1, i32 0 }, %struct.i40e_ptp_pins_settings { i32 0, i32 2, i32 3, i32 0, i32 1, i32 1, i32 0 }, %struct.i40e_ptp_pins_settings { i32 0, i32 4, i32 3, i32 0, i32 0, i32 1, i32 1 }, %struct.i40e_ptp_pins_settings { i32 1, i32 0, i32 3, i32 0, i32 1, i32 1, i32 0 }, %struct.i40e_ptp_pins_settings { i32 1, i32 2, i32 3, i32 0, i32 1, i32 1, i32 0 }, %struct.i40e_ptp_pins_settings { i32 1, i32 4, i32 3, i32 0, i32 0, i32 1, i32 1 }, %struct.i40e_ptp_pins_settings { i32 2, i32 0, i32 3, i32 0, i32 1, i32 1, i32 0 }, %struct.i40e_ptp_pins_settings { i32 2, i32 1, i32 3, i32 0, i32 1, i32 1, i32 0 }, %struct.i40e_ptp_pins_settings { i32 4, i32 0, i32 3, i32 0, i32 0, i32 1, i32 1 }, %struct.i40e_ptp_pins_settings { i32 4, i32 1, i32 3, i32 0, i32 0, i32 1, i32 1 }, %struct.i40e_ptp_pins_settings { i32 0, i32 0, i32 2, i32 1, i32 1, i32 0, i32 1 }, %struct.i40e_ptp_pins_settings { i32 0, i32 1, i32 2, i32 1, i32 1, i32 0, i32 0 }, %struct.i40e_ptp_pins_settings { i32 0, i32 3, i32 2, i32 1, i32 0, i32 0, i32 1 }, %struct.i40e_ptp_pins_settings { i32 0, i32 4, i32 2, i32 1, i32 0, i32 0, i32 1 }, %struct.i40e_ptp_pins_settings { i32 1, i32 0, i32 2, i32 1, i32 1, i32 0, i32 0 }, %struct.i40e_ptp_pins_settings { i32 1, i32 4, i32 2, i32 1, i32 0, i32 0, i32 1 }, %struct.i40e_ptp_pins_settings { i32 3, i32 0, i32 2, i32 1, i32 0, i32 0, i32 1 }, %struct.i40e_ptp_pins_settings { i32 4, i32 0, i32 2, i32 1, i32 0, i32 0, i32 1 }, %struct.i40e_ptp_pins_settings { i32 4, i32 1, i32 2, i32 1, i32 0, i32 0, i32 1 }, %struct.i40e_ptp_pins_settings { i32 0, i32 0, i32 4, i32 0, i32 1, i32 1, i32 1 }, %struct.i40e_ptp_pins_settings { i32 0, i32 1, i32 4, i32 0, i32 1, i32 1, i32 0 }, %struct.i40e_ptp_pins_settings { i32 0, i32 3, i32 4, i32 0, i32 0, i32 1, i32 1 }, %struct.i40e_ptp_pins_settings { i32 0, i32 2, i32 4, i32 0, i32 1, i32 1, i32 0 }, %struct.i40e_ptp_pins_settings { i32 1, i32 0, i32 4, i32 0, i32 1, i32 1, i32 0 }, %struct.i40e_ptp_pins_settings { i32 1, i32 2, i32 4, i32 0, i32 1, i32 1, i32 0 }, %struct.i40e_ptp_pins_settings { i32 3, i32 0, i32 4, i32 0, i32 0, i32 1, i32 1 }, %struct.i40e_ptp_pins_settings { i32 3, i32 2, i32 4, i32 0, i32 0, i32 1, i32 1 }, %struct.i40e_ptp_pins_settings { i32 2, i32 0, i32 4, i32 0, i32 1, i32 1, i32 0 }, %struct.i40e_ptp_pins_settings { i32 2, i32 1, i32 4, i32 0, i32 1, i32 1, i32 0 }, %struct.i40e_ptp_pins_settings { i32 2, i32 3, i32 4, i32 0, i32 0, i32 1, i32 1 }, %struct.i40e_ptp_pins_settings { i32 -2, i32 -2, i32 -2, i32 -2, i32 -2, i32 -2, i32 -2 }], [384 x i8] zeroinitializer }, align 32
@i40e_ptp_set_pins._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.2, i32 1127, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"Unsupported PTP pin configuration: SDP3_2: %s,  SDP3_3: %s,  GPIO_4: %s.\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"i40e_ptp_set_pins\00", [46 x i8] zeroinitializer }, align 32
@i40e_ptp_set_pins._entry_ptr = internal global ptr @i40e_ptp_set_pins._entry, section ".printk_index", align 4
@i40e_can_set_pins._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.2, i32 200, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"PTP external clock not supported.\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"i40e_can_set_pins\00", [46 x i8] zeroinitializer }, align 32
@i40e_can_set_pins._entry_ptr = internal global ptr @i40e_can_set_pins._entry, section ".printk_index", align 4
@i40e_can_set_pins._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.40, ptr @.str.2, i32 206, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"PTP PIN manipulation not allowed.\0A\00", [61 x i8] zeroinitializer }, align 32
@i40e_can_set_pins._entry_ptr.43 = internal global ptr @i40e_can_set_pins._entry.41, section ".printk_index", align 4
@i40e_can_set_pins._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.40, ptr @.str.2, i32 212, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"PTP PINs should be accessed via PF0.\0A\00", [58 x i8] zeroinitializer }, align 32
@i40e_can_set_pins._entry_ptr.46 = internal global ptr @i40e_can_set_pins._entry.44, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 2, i64 4, i64 8, i64 128]
@__sancov_gen_cov_switch_values.47 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.48 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.49 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.50 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.51 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.52 = internal global [15 x i64] [i64 13, i64 32, i64 0, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14]
@__sancov_gen_cov_switch_values.53 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.54 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.55 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 733, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant [10 x i8] c"warn_once\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 899, i32 14 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 902, i32 4 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 1153, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 1505, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 1511, i32 2 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 1512, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 1518, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 1524, i32 4 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 1575, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 174, i32 2 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 1074, i32 2 }
@___asan_gen_.155 = private unnamed_addr constant [28 x i8] c"i40e_ptp_gpio_pin_state2str\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 61, i32 27 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 62, i32 2 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 62, i32 9 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 62, i32 17 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 62, i32 25 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 62, i32 34 }
@___asan_gen_.173 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 1206, i32 2 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 1371, i32 5 }
@___asan_gen_.182 = private unnamed_addr constant [9 x i8] c"sdp_desc\00", align 1
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 44, i32 28 }
@___asan_gen_.185 = private unnamed_addr constant [32 x i8] c"i40e_ptp_pin_led_allowed_states\00", align 1
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 82, i32 2 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 1123, i32 3 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 199, i32 3 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 205, i32 3 }
@___asan_gen_.212 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.215 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.216 = private constant [46 x i8] c"../drivers/net/ethernet/intel/i40e/i40e_ptp.c\00", align 1
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 211, i32 3 }
@llvm.compiler.used = appending global [65 x ptr] [ptr @i40e_can_set_pins._entry, ptr @i40e_can_set_pins._entry.41, ptr @i40e_can_set_pins._entry.44, ptr @i40e_can_set_pins._entry_ptr, ptr @i40e_can_set_pins._entry_ptr.43, ptr @i40e_can_set_pins._entry_ptr.46, ptr @i40e_ptp_alloc_pins._entry, ptr @i40e_ptp_alloc_pins._entry_ptr, ptr @i40e_ptp_init._entry, ptr @i40e_ptp_init._entry.16, ptr @i40e_ptp_init._entry.20, ptr @i40e_ptp_init._entry_ptr, ptr @i40e_ptp_init._entry_ptr.19, ptr @i40e_ptp_init._entry_ptr.22, ptr @i40e_ptp_set_increment._entry, ptr @i40e_ptp_set_increment._entry_ptr, ptr @i40e_ptp_set_pins._entry, ptr @i40e_ptp_set_pins._entry_ptr, ptr @i40e_ptp_set_pins_hw._entry, ptr @i40e_ptp_set_pins_hw._entry_ptr, ptr @i40e_ptp_stop._entry, ptr @i40e_ptp_stop._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @i40e_ptp_set_increment.warn_once, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @i40e_ptp_init.__key, ptr @.str.13, ptr @i40e_ptp_init.__key.14, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.21, ptr @.str.23, ptr @.str.24, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @i40e_ptp_gpio_pin_state2str, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @i40e_ptp_set_timestamp_mode.__key, ptr @.str.35, ptr @.str.36, ptr @sdp_desc, ptr @i40e_ptp_pin_led_allowed_states, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.42, ptr @.str.45], section "llvm.metadata"
@0 = internal global [54 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i40e_ptp_set_increment.warn_once to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i40e_ptp_set_increment._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i40e_ptp_alloc_pins._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i40e_ptp_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i40e_ptp_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i40e_ptp_init.__key.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i40e_ptp_init._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i40e_ptp_init._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i40e_ptp_stop._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i40e_ptp_set_pins_hw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i40e_ptp_gpio_pin_state2str to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i40e_ptp_set_timestamp_mode.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdp_desc to i32), i32 288, i32 352, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i40e_ptp_pin_led_allowed_states to i32), i32 1568, i32 1952, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i40e_ptp_set_pins._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i40e_can_set_pins._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i40e_can_set_pins._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i40e_can_set_pins._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @i40e_ptp_rx_hang(ptr noundef %pf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr inbounds %struct.i40e_pf, ptr %pf, i32 0, i32 1
  %flags = getelementptr inbounds %struct.i40e_pf, ptr %pf, i32 0, i32 54
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 8
  %and = and i32 %1, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %ptp_rx = getelementptr inbounds %struct.i40e_pf, ptr %pf, i32 0, i32 115
  %2 = ptrtoint ptr %ptp_rx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %ptp_rx, align 1, !range !107
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool2.not = icmp eq i8 %3, 0
  br i1 %tobool2.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %ptp_rx_lock = getelementptr inbounds %struct.i40e_pf, ptr %pf, i32 0, i32 111
  tail call void @_raw_spin_lock_bh(ptr noundef %ptp_rx_lock) #11
  %4 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw1, align 8
  %add.ptr.i = getelementptr i8, ptr %5, i32 545088
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !108
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !109
  %latch_event_flags.i = getelementptr inbounds %struct.i40e_pf, ptr %pf, i32 0, i32 108
  %8 = ptrtoint ptr %latch_event_flags.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %latch_event_flags.i, align 4
  %neg.i = xor i32 %9, -1
  %and.i = and i32 %7, %neg.i
  %and3.i = and i32 %and.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool.not.i = icmp eq i32 %and3.i, 0
  br i1 %tobool.not.i, label %if.end.for.inc.i_crit_edge, label %if.then.i

if.end.for.inc.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %10 = load volatile i32, ptr @jiffies, align 128
  %arrayidx.i = getelementptr %struct.i40e_pf, ptr %pf, i32 0, i32 113, i32 0
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %arrayidx.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %if.end.for.inc.i_crit_edge
  %and3.1.i = and i32 %and.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.1.i)
  %tobool.not.1.i = icmp eq i32 %and3.1.i, 0
  br i1 %tobool.not.1.i, label %for.inc.i.for.inc.1.i_crit_edge, label %if.then.1.i

for.inc.i.for.inc.1.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.1.i

if.then.1.i:                                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %12 = load volatile i32, ptr @jiffies, align 128
  %arrayidx.1.i = getelementptr %struct.i40e_pf, ptr %pf, i32 0, i32 113, i32 1
  %13 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %arrayidx.1.i, align 4
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %if.then.1.i, %for.inc.i.for.inc.1.i_crit_edge
  %and3.2.i = and i32 %and.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.2.i)
  %tobool.not.2.i = icmp eq i32 %and3.2.i, 0
  br i1 %tobool.not.2.i, label %for.inc.1.i.for.inc.2.i_crit_edge, label %if.then.2.i

for.inc.1.i.for.inc.2.i_crit_edge:                ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.2.i

if.then.2.i:                                      ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %14 = load volatile i32, ptr @jiffies, align 128
  %arrayidx.2.i = getelementptr %struct.i40e_pf, ptr %pf, i32 0, i32 113, i32 2
  %15 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %arrayidx.2.i, align 4
  br label %for.inc.2.i

for.inc.2.i:                                      ; preds = %if.then.2.i, %for.inc.1.i.for.inc.2.i_crit_edge
  %and3.3.i = and i32 %and.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.3.i)
  %tobool.not.3.i = icmp eq i32 %and3.3.i, 0
  br i1 %tobool.not.3.i, label %for.inc.2.i.i40e_ptp_get_rx_events.exit_crit_edge, label %if.then.3.i

for.inc.2.i.i40e_ptp_get_rx_events.exit_crit_edge: ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %i40e_ptp_get_rx_events.exit

if.then.3.i:                                      ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %16 = load volatile i32, ptr @jiffies, align 128
  %arrayidx.3.i = getelementptr %struct.i40e_pf, ptr %pf, i32 0, i32 113, i32 3
  %17 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %arrayidx.3.i, align 4
  br label %i40e_ptp_get_rx_events.exit

i40e_ptp_get_rx_events.exit:                      ; preds = %if.then.3.i, %for.inc.2.i.i40e_ptp_get_rx_events.exit_crit_edge
  %18 = ptrtoint ptr %latch_event_flags.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %7, ptr %latch_event_flags.i, align 4
  %and3 = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %i40e_ptp_get_rx_events.exit.for.inc_crit_edge, label %land.lhs.true

i40e_ptp_get_rx_events.exit.for.inc_crit_edge:    ; preds = %i40e_ptp_get_rx_events.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

land.lhs.true:                                    ; preds = %i40e_ptp_get_rx_events.exit
  %arrayidx = getelementptr %struct.i40e_pf, ptr %pf, i32 0, i32 113, i32 0
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx, align 4
  %add = add i32 %20, 100
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %21 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp5 = icmp slt i32 %sub, 0
  br i1 %cmp5, label %if.then6, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then6:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %22 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %hw1, align 8
  %add.ptr = getelementptr i8, ptr %23, i32 544832
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #11, !srcloc !108
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !110
  %25 = ptrtoint ptr %latch_event_flags.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %latch_event_flags.i, align 4
  %and12 = and i32 %26, -2
  store i32 %and12, ptr %latch_event_flags.i, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then6, %land.lhs.true.for.inc_crit_edge, %i40e_ptp_get_rx_events.exit.for.inc_crit_edge
  %cleared.1 = phi i32 [ 1, %if.then6 ], [ 0, %land.lhs.true.for.inc_crit_edge ], [ 0, %i40e_ptp_get_rx_events.exit.for.inc_crit_edge ]
  %27 = ptrtoint ptr %latch_event_flags.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %latch_event_flags.i, align 4
  %and3.1 = and i32 %28, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.1)
  %tobool4.not.1 = icmp eq i32 %and3.1, 0
  br i1 %tobool4.not.1, label %for.inc.for.inc.1_crit_edge, label %land.lhs.true.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.1

land.lhs.true.1:                                  ; preds = %for.inc
  %arrayidx.1 = getelementptr %struct.i40e_pf, ptr %pf, i32 0, i32 113, i32 1
  %29 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx.1, align 4
  %add.1 = add i32 %30, 100
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %31 = load volatile i32, ptr @jiffies, align 128
  %sub.1 = sub i32 %add.1, %31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.1)
  %cmp5.1 = icmp slt i32 %sub.1, 0
  br i1 %cmp5.1, label %if.then6.1, label %land.lhs.true.1.for.inc.1_crit_edge

land.lhs.true.1.for.inc.1_crit_edge:              ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.1

if.then6.1:                                       ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #13
  %32 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %hw1, align 8
  %add.ptr.1 = getelementptr i8, ptr %33, i32 544864
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.1) #11, !srcloc !108
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !110
  %35 = ptrtoint ptr %latch_event_flags.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %latch_event_flags.i, align 4
  %and12.1 = and i32 %36, -3
  store i32 %and12.1, ptr %latch_event_flags.i, align 4
  %inc.1 = add nuw nsw i32 %cleared.1, 1
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then6.1, %land.lhs.true.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %cleared.1.1 = phi i32 [ %inc.1, %if.then6.1 ], [ %cleared.1, %land.lhs.true.1.for.inc.1_crit_edge ], [ %cleared.1, %for.inc.for.inc.1_crit_edge ]
  %37 = ptrtoint ptr %latch_event_flags.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %latch_event_flags.i, align 4
  %and3.2 = and i32 %38, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.2)
  %tobool4.not.2 = icmp eq i32 %and3.2, 0
  br i1 %tobool4.not.2, label %for.inc.1.for.inc.2_crit_edge, label %land.lhs.true.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.2

land.lhs.true.2:                                  ; preds = %for.inc.1
  %arrayidx.2 = getelementptr %struct.i40e_pf, ptr %pf, i32 0, i32 113, i32 2
  %39 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx.2, align 4
  %add.2 = add i32 %40, 100
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %41 = load volatile i32, ptr @jiffies, align 128
  %sub.2 = sub i32 %add.2, %41
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.2)
  %cmp5.2 = icmp slt i32 %sub.2, 0
  br i1 %cmp5.2, label %if.then6.2, label %land.lhs.true.2.for.inc.2_crit_edge

land.lhs.true.2.for.inc.2_crit_edge:              ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.2

if.then6.2:                                       ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #13
  %42 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %hw1, align 8
  %add.ptr.2 = getelementptr i8, ptr %43, i32 544896
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.2) #11, !srcloc !108
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !110
  %45 = ptrtoint ptr %latch_event_flags.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %latch_event_flags.i, align 4
  %and12.2 = and i32 %46, -5
  store i32 %and12.2, ptr %latch_event_flags.i, align 4
  %inc.2 = add nuw nsw i32 %cleared.1.1, 1
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then6.2, %land.lhs.true.2.for.inc.2_crit_edge, %for.inc.1.for.inc.2_crit_edge
  %cleared.1.2 = phi i32 [ %inc.2, %if.then6.2 ], [ %cleared.1.1, %land.lhs.true.2.for.inc.2_crit_edge ], [ %cleared.1.1, %for.inc.1.for.inc.2_crit_edge ]
  %47 = ptrtoint ptr %latch_event_flags.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %latch_event_flags.i, align 4
  %and3.3 = and i32 %48, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.3)
  %tobool4.not.3 = icmp eq i32 %and3.3, 0
  br i1 %tobool4.not.3, label %for.inc.2.for.inc.3_crit_edge, label %land.lhs.true.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.3

land.lhs.true.3:                                  ; preds = %for.inc.2
  %arrayidx.3 = getelementptr %struct.i40e_pf, ptr %pf, i32 0, i32 113, i32 3
  %49 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx.3, align 4
  %add.3 = add i32 %50, 100
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %51 = load volatile i32, ptr @jiffies, align 128
  %sub.3 = sub i32 %add.3, %51
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.3)
  %cmp5.3 = icmp slt i32 %sub.3, 0
  br i1 %cmp5.3, label %if.then6.3, label %land.lhs.true.3.for.inc.3_crit_edge

land.lhs.true.3.for.inc.3_crit_edge:              ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.3

if.then6.3:                                       ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #13
  %52 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %hw1, align 8
  %add.ptr.3 = getelementptr i8, ptr %53, i32 544928
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.3) #11, !srcloc !108
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !110
  %55 = ptrtoint ptr %latch_event_flags.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %latch_event_flags.i, align 4
  %and12.3 = and i32 %56, -9
  store i32 %and12.3, ptr %latch_event_flags.i, align 4
  %inc.3 = add nuw nsw i32 %cleared.1.2, 1
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then6.3, %land.lhs.true.3.for.inc.3_crit_edge, %for.inc.2.for.inc.3_crit_edge
  %cleared.1.3 = phi i32 [ %inc.3, %if.then6.3 ], [ %cleared.1.2, %land.lhs.true.3.for.inc.3_crit_edge ], [ %cleared.1.2, %for.inc.2.for.inc.3_crit_edge ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %ptp_rx_lock) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %cleared.1.3)
  %cmp16 = icmp ugt i32 %cleared.1.3, 2
  br i1 %cmp16, label %do.body, label %for.inc.3.if.end25_crit_edge

for.inc.3.if.end25_crit_edge:                     ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25

do.body:                                          ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i40e_ptp_rx_hang.__UNIQUE_ID_ddebug677, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@i40e_ptp_rx_hang, %if.then23)) #11
          to label %if.end25 [label %if.then23], !srcloc !111

if.then23:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %57 = ptrtoint ptr %pf to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %pf, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %58, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i40e_ptp_rx_hang.__UNIQUE_ID_ddebug677, ptr noundef %dev, ptr noundef nonnull @.str.3, i32 noundef %cleared.1.3) #11
  br label %if.end25

if.end25:                                         ; preds = %if.then23, %do.body, %for.inc.3.if.end25_crit_edge
  %rx_hwtstamp_cleared = getelementptr inbounds %struct.i40e_pf, ptr %pf, i32 0, i32 107
  %59 = ptrtoint ptr %rx_hwtstamp_cleared to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %rx_hwtstamp_cleared, align 8
  %add26 = add i32 %60, %cleared.1.3
  store i32 %add26, ptr %rx_hwtstamp_cleared, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @i40e_ptp_tx_hang(ptr noundef %pf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.i40e_pf, ptr %pf, i32 0, i32 54
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 8
  %and = and i32 %1, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %ptp_tx = getelementptr inbounds %struct.i40e_pf, ptr %pf, i32 0, i32 114
  %2 = ptrtoint ptr %ptp_tx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %ptp_tx, align 8, !range !107
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool1.not = icmp eq i8 %3, 0
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %state = getelementptr inbounds %struct.i40e_pf, ptr %pf, i32 0, i32 2
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %state, align 4
  %6 = and i32 %5, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool2.not = icmp eq i32 %6, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %ptp_tx_start = getelementptr inbounds %struct.i40e_pf, ptr %pf, i32 0, i32 96
  %7 = ptrtoint ptr %ptp_tx_start to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ptp_tx_start, align 4
  %add = add i32 %8, 100
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %9 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %if.then5, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then5:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  %ptp_tx_skb = getelementptr inbounds %struct.i40e_pf, ptr %pf, i32 0, i32 95
  %10 = ptrtoint ptr %ptp_tx_skb to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ptp_tx_skb, align 8
  store ptr null, ptr %ptp_tx_skb, align 8
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %state, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !112
  tail call void @llvm.prefetch.p0(ptr %state, i32 1, i32 3, i32 1) #11
  %12 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %state, ptr %state, i32 524288, ptr elementtype(i32) %state) #11, !srcloc !113
  tail call void @__dev_kfree_skb_any(ptr noundef %11, i32 noundef 1) #11
  %tx_hwtstamp_timeouts = getelementptr inbounds %struct.i40e_pf, ptr %pf, i32 0, i32 105
  %13 = ptrtoint ptr %tx_hwtstamp_timeouts to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tx_hwtstamp_timeouts, align 8
  %inc = add i32 %14, 1
  store i32 %inc, ptr %tx_hwtstamp_timeouts, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then5, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @i40e_ptp_tx_hwtstamp(ptr noundef %pf) local_unnamed_addr #0 align 64 {
entry:
  %shhwtstamps = alloca %struct.skb_shared_hwtstamps, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %shhwtstamps) #11
  %ptp_tx_skb = getelementptr inbounds %struct.i40e_pf, ptr %pf, i32 0, i32 95
  %0 = ptrtoint ptr %ptp_tx_skb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ptp_tx_skb, align 8
  %hw1 = getelementptr inbounds %struct.i40e_pf, ptr %pf, i32 0, i32 1
  %flags = getelementptr inbounds %struct.i40e_pf, ptr %pf, i32 0, i32 54
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 8
  %and = and i32 %3, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %ptp_tx = getelementptr inbounds %struct.i40e_pf, ptr %pf, i32 0, i32 114
  %4 = ptrtoint ptr %ptp_tx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ptp_tx, align 8, !range !107
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool2.not = icmp eq i8 %5, 0
  %tobool4.not = icmp eq ptr %1, null
  %or.cond = select i1 %tobool2.not, i1 true, i1 %tobool4.not
  br i1 %or.cond, label %lor.lhs.false.cleanup_crit_edge, label %if.end6

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end6:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  %6 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw1, align 8
  %add.ptr = getelementptr i8, ptr %7, i32 1982912
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #11, !srcloc !108
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !114
  %9 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hw1, align 8
  %add.ptr11 = getelementptr i8, ptr %10, i32 1982944
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11) #11, !srcloc !108
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !115
  %12 = zext i32 %11 to i64
  %13 = zext i32 %8 to i64
  %14 = shl nuw i64 %13, 32
  %15 = or i64 %14, %12
  %16 = tail call i64 @llvm.bswap.i64(i64 %15)
  %17 = ptrtoint ptr %shhwtstamps to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %16, ptr %shhwtstamps, align 8
  %18 = ptrtoint ptr %ptp_tx_skb to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %ptp_tx_skb, align 8
  %state = getelementptr inbounds %struct.i40e_pf, ptr %pf, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %state, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !112
  tail call void @llvm.prefetch.p0(ptr %state, i32 1, i32 3, i32 1) #11
  %19 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %state, ptr %state, i32 524288, ptr elementtype(i32) %state) #11, !srcloc !113
  call void @skb_tstamp_tx(ptr noundef nonnull %1, ptr noundef nonnull %shhwtstamps) #11
  call void @__dev_kfree_skb_any(ptr noundef nonnull %1, i32 noundef 1) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %shhwtstamps) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_tstamp_tx(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @i40e_ptp_rx_hwtstamp(ptr noundef %pf, ptr nocapture noundef readonly %skb, i8 noundef zeroext %index) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.i40e_pf, ptr %pf, i32 0, i32 54
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 8
  %and = and i32 %1, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %ptp_rx = getelementptr inbounds %struct.i40e_pf, ptr %pf, i32 0, i32 115
  %2 = ptrtoint ptr %ptp_rx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %ptp_rx, align 1, !range !107
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool1.not = icmp eq i8 %3, 0
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %ptp_rx_lock = getelementptr inbounds %struct.i40e_pf, ptr %pf, i32 0, i32 111
  tail call void @_raw_spin_lock_bh(ptr noundef %ptp_rx_lock) #11
  %hw1.i = getelementptr inbounds %struct.i40e_pf, ptr %pf, i32 0, i32 1
  %4 = ptrtoint ptr %hw1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw1.i, align 8
  %add.ptr.i = getelementptr i8, ptr %5, i32 545088
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !108
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !109
  %latch_event_flags.i = getelementptr inbounds %struct.i40e_pf, ptr %pf, i32 0, i32 108
  %8 = ptrtoint ptr %latch_event_flags.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %latch_event_flags.i, align 4
  %neg.i = xor i32 %9, -1
  %and.i = and i32 %7, %neg.i
  %and3.i = and i32 %and.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool.not.i = icmp eq i32 %and3.i, 0
  br i1 %tobool.not.i, label %if.end.for.inc.i_crit_edge, label %if.then.i

if.end.for.inc.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %10 = load volatile i32, ptr @jiffies, align 128
  %arrayidx.i = getelementptr %struct.i40e_pf, ptr %pf, i32 0, i32 113, i32 0
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %arrayidx.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %if.end.for.inc.i_crit_edge
  %and3.1.i = and i32 %and.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.1.i)
  %tobool.not.1.i = icmp eq i32 %and3.1.i, 0
  br i1 %tobool.not.1.i, label %for.inc.i.for.inc.1.i_crit_edge, label %if.then.1.i

for.inc.i.for.inc.1.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.1.i

if.then.1.i:                                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %12 = load volatile i32, ptr @jiffies, align 128
  %arrayidx.1.i = getelementptr %struct.i40e_pf, ptr %pf, i32 0, i32 113, i32 1
  %13 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %arrayidx.1.i, align 4
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %if.then.1.i, %for.inc.i.for.inc.1.i_crit_edge
  %and3.2.i = and i32 %and.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.2.i)
  %tobool.not.2.i = icmp eq i32 %and3.2.i, 0
  br i1 %tobool.not.2.i, label %for.inc.1.i.for.inc.2.i_crit_edge, label %if.then.2.i

for.inc.1.i.for.inc.2.i_crit_edge:                ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.2.i

if.then.2.i:                                      ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %14 = load volatile i32, ptr @jiffies, align 128
  %arrayidx.2.i = getelementptr %struct.i40e_pf, ptr %pf, i32 0, i32 113, i32 2
  %15 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %arrayidx.2.i, align 4
  br label %for.inc.2.i

for.inc.2.i:                                      ; preds = %if.then.2.i, %for.inc.1.i.for.inc.2.i_crit_edge
  %and3.3.i = and i32 %and.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.3.i)
  %tobool.not.3.i = icmp eq i32 %and3.3.i, 0
  br i1 %tobool.not.3.i, label %for.inc.2.i.i40e_ptp_get_rx_events.exit_crit_edge, label %if.then.3.i

for.inc.2.i.i40e_ptp_get_rx_events.exit_crit_edge: ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %i40e_ptp_get_rx_events.exit

if.then.3.i:                                      ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %16 = load volatile i32, ptr @jiffies, align 128
  %arrayidx.3.i = getelementptr %struct.i40e_pf, ptr %pf, i32 0, i32 113, i32 3
  %17 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %arrayidx.3.i, align 4
  br label %i40e_ptp_get_rx_events.exit

i40e_ptp_get_rx_events.exit:                      ; preds = %if.then.3.i, %for.inc.2.i.i40e_ptp_get_rx_events.exit_crit_edge
  %18 = ptrtoint ptr %latch_event_flags.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %7, ptr %latch_event_flags.i, align 4
  %conv = zext i8 %index to i32
  %shl = shl nuw i32 1, %conv
  %and3 = and i32 %7, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %if.then5, label %if.end7

if.then5:                                         ; preds = %i40e_ptp_get_rx_events.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_raw_spin_unlock_bh(ptr noundef %ptp_rx_lock) #11
  br label %cleanup

if.end7:                                          ; preds = %i40e_ptp_get_rx_events.exit
  call void @__sanitizer_cov_trace_pc() #13
  %neg = xor i32 %shl, -1
  %and10 = and i32 %7, %neg
  %19 = ptrtoint ptr %latch_event_flags.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %and10, ptr %latch_event_flags.i, align 4
  %20 = ptrtoint ptr %hw1.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hw1.i, align 8
  %mul = shl nuw nsw i32 %conv, 5
  %add = add nuw nsw i32 %mul, 544960
  %add.ptr = getelementptr i8, ptr %21, i32 %add
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #11, !srcloc !108
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %23 = ptrtoint ptr %hw1.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %hw1.i, align 8
  %add19 = add nuw nsw i32 %mul, 544832
  %add.ptr20 = getelementptr i8, ptr %24, i32 %add19
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20) #11, !srcloc !108
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !117
  tail call void @_raw_spin_unlock_bh(ptr noundef %ptp_rx_lock) #11
  %26 = zext i32 %25 to i64
  %27 = zext i32 %22 to i64
  %28 = shl nuw i64 %27, 32
  %29 = or i64 %28, %26
  %30 = tail call i64 @llvm.bswap.i64(i64 %29)
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %31 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %end.i.i, align 4
  %hwtstamps.i = getelementptr inbounds %struct.skb_shared_info, ptr %32, i32 0, i32 7
  %33 = ptrtoint ptr %hwtstamps.i to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %30, ptr %hwtstamps.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.then5, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @i40e_ptp_set_increment(ptr noundef %pf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr inbounds %struct.i40e_pf, ptr %pf, i32 0, i32 1
  %call = tail call i32 @i40e_aq_get_link_info(ptr noundef %hw1, i1 noundef zeroext true, ptr noundef null, ptr noundef null) #11
  %link_speed = getelementptr inbounds %struct.i40e_pf, ptr %pf, i32 0, i32 1, i32 2, i32 0, i32 1
  %0 = ptrtoint ptr %link_speed to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %link_speed, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %sw.default [
    i32 8, label %entry.sw.epilog_crit_edge
    i32 128, label %entry.sw.epilog_crit_edge39
    i32 4, label %sw.bb4
    i32 2, label %sw.bb5
  ]

entry.sw.epilog_crit_edge39:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  %3 = load i32, ptr @i40e_ptp_set_increment.warn_once, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %do.end, label %sw.bb5.sw.epilog_crit_edge

sw.bb5.sw.epilog_crit_edge:                       ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

do.end:                                           ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #13
  %4 = ptrtoint ptr %pf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pf, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.4) #14
  %6 = load i32, ptr @i40e_ptp_set_increment.warn_once, align 4
  %inc = add i32 %6, 1
  store i32 %inc, ptr @i40e_ptp_set_increment.warn_once, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %do.end, %sw.bb5.sw.epilog_crit_edge, %sw.bb4, %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge39
  %mult.0 = phi i32 [ 1, %sw.default ], [ 20, %sw.bb4 ], [ 2, %entry.sw.epilog_crit_edge ], [ 2, %entry.sw.epilog_crit_edge39 ], [ 0, %do.end ], [ 0, %sw.bb5.sw.epilog_crit_edge ]
  %conv = zext i32 %mult.0 to i64
  %mul = mul nuw nsw i64 %conv, 6871947673
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !118
  tail call void @arm_heavy_mb() #11
  %conv10 = trunc i64 %mul to i32
  %7 = tail call i32 @llvm.bswap.i32(i32 %conv10)
  %8 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hw1, align 8
  %add.ptr = getelementptr i8, ptr %9, i32 1982528
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %7) #11, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !120
  tail call void @arm_heavy_mb() #11
  %sh.diff = lshr i64 %mul, 8
  %tr.sh.diff = trunc i64 %sh.diff to i32
  %10 = and i32 %tr.sh.diff, -16777216
  %11 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hw1, align 8
  %add.ptr16 = getelementptr i8, ptr %12, i32 1982560
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16, i32 %10) #11, !srcloc !119
  %ptp_adj_mult = getelementptr inbounds %struct.i40e_pf, ptr %pf, i32 0, i32 104
  %13 = ptrtoint ptr %ptp_adj_mult to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile i32 %mult.0, ptr %ptp_adj_mult, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !121
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i40e_aq_get_link_info(ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @i40e_ptp_get_ts_config(ptr noundef %pf, ptr nocapture noundef readonly %ifr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.i40e_pf, ptr %pf, i32 0, i32 54
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 8
  %and = and i32 %1, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %tstamp_config = getelementptr inbounds %struct.i40e_pf, ptr %pf, i32 0, i32 97
  %ifr_ifru = getelementptr inbounds %struct.ifreq, ptr %ifr, i32 0, i32 1
  %2 = ptrtoint ptr %ifr_ifru to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ifr_ifru, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.27, i32 noundef 174) #11
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i, label %if.end.cleanup_crit_edge, label %if.end.i.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end
  %4 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %3, i32 12, i32 -1226833920) #15, !srcloc !122
  %asmresult.i.i = extractvalue { i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i.i, label %copy_to_user.exit, label %if.end.i.i.cleanup_crit_edge

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

copy_to_user.exit:                                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %tstamp_config, i32 noundef 12) #11
  %call.i1.i.i = tail call i32 @arm_copy_to_user(ptr noundef %3, ptr noundef %tstamp_config, i32 noundef 12) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i.i)
  %tobool1.not = icmp eq i32 %call.i1.i.i, 0
  %spec.select = select i1 %tobool1.not, i32 0, i32 -14
  br label %cleanup

cleanup:                                          ; preds = %copy_to_user.exit, %if.end.i.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %entry.cleanup_crit_edge ], [ -14, %if.end.cleanup_crit_edge ], [ -14, %if.end.i.i.cleanup_crit_edge ], [ %spec.select, %copy_to_user.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @i40e_ptp_alloc_pins(ptr nocapture noundef %pf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.i40e_pf, ptr %pf, i32 0, i32 1
  %device_id.i = getelementptr inbounds %struct.i40e_pf, ptr %pf, i32 0, i32 1, i32 7
  %0 = ptrtoint ptr %device_id.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %device_id.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 5515, i16 %1)
  %cmp.i = icmp eq i16 %1, 5515
  br i1 %cmp.i, label %i40e_is_ptp_pin_dev.exit, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

i40e_is_ptp_pin_dev.exit:                         ; preds = %entry
  %subsystem_device_id.i = getelementptr inbounds %struct.i40e_pf, ptr %pf, i32 0, i32 1, i32 9
  %2 = ptrtoint ptr %subsystem_device_id.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %subsystem_device_id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 11, i16 %3)
  %cmp3.i = icmp eq i16 %3, 11
  br i1 %cmp3.i, label %if.end, label %i40e_is_ptp_pin_dev.exit.return_crit_edge

i40e_is_ptp_pin_dev.exit.return_crit_edge:        ; preds = %i40e_is_ptp_pin_dev.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %i40e_is_ptp_pin_dev.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 28) #16
  %ptp_pins = getelementptr inbounds %struct.i40e_pf, ptr %pf, i32 0, i32 116
  %5 = ptrtoint ptr %ptp_pins to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call7.i.i, ptr %ptp_pins, align 4
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %do.end, label %if.end4

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %6 = ptrtoint ptr %pf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pf, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.8) #14
  br label %return

if.end4:                                          ; preds = %if.end
  %8 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %call7.i.i, align 8
  %sdp3_3 = getelementptr inbounds %struct.i40e_ptp_pins_settings, ptr %call7.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %sdp3_3 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %sdp3_3, align 4
  %gpio_4 = getelementptr inbounds %struct.i40e_ptp_pins_settings, ptr %call7.i.i, i32 0, i32 2
  %10 = ptrtoint ptr %gpio_4 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %gpio_4, align 8
  %led2_0 = getelementptr inbounds %struct.i40e_ptp_pins_settings, ptr %call7.i.i, i32 0, i32 3
  %11 = ptrtoint ptr %led2_0 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %led2_0, align 4
  %led2_1 = getelementptr inbounds %struct.i40e_ptp_pins_settings, ptr %call7.i.i, i32 0, i32 4
  %12 = ptrtoint ptr %led2_1 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %led2_1, align 8
  %led3_0 = getelementptr inbounds %struct.i40e_ptp_pins_settings, ptr %call7.i.i, i32 0, i32 5
  %13 = ptrtoint ptr %led3_0 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %led3_0, align 4
  %led3_1 = getelementptr inbounds %struct.i40e_ptp_pins_settings, ptr %call7.i.i, i32 0, i32 6
  %14 = ptrtoint ptr %led3_1 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %led3_1, align 8
  %pf_id = getelementptr inbounds %struct.i40e_pf, ptr %pf, i32 0, i32 1, i32 17
  %15 = ptrtoint ptr %pf_id to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %pf_id, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool13.not = icmp eq i8 %16, 0
  br i1 %tobool13.not, label %if.end15, label %if.end4.return_crit_edge

if.end4.return_crit_edge:                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end15:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !123
  tail call void @arm_heavy_mb() #11
  %17 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hw, align 8
  %add.ptr.i = getelementptr i8, ptr %18, i32 557416
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 2013329411) #11, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !124
  tail call void @arm_heavy_mb() #11
  %19 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %hw, align 8
  %add.ptr4.i = getelementptr i8, ptr %20, i32 557420
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 2013329411) #11, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !125
  tail call void @arm_heavy_mb() #11
  %21 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %hw, align 8
  %add.ptr8.i = getelementptr i8, ptr %22, i32 557424
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i, i32 2013329411) #11, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !126
  tail call void @arm_heavy_mb() #11
  %23 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %hw, align 8
  %add.ptr12.i = getelementptr i8, ptr %24, i32 557428
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12.i, i32 2013329411) #11, !srcloc !119
  tail call fastcc void @i40e_ptp_set_pins_hw(ptr noundef %pf)
  br label %return

return:                                           ; preds = %if.end15, %if.end4.return_crit_edge, %do.end, %i40e_is_ptp_pin_dev.exit.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end15 ], [ 18, %do.end ], [ 0, %i40e_is_ptp_pin_dev.exit.return_crit_edge ], [ 0, %if.end4.return_crit_edge ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @i40e_ptp_set_pins_hw(ptr nocapture noundef readonly %pf) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %ptp_pins = getelementptr inbounds %struct.i40e_pf, ptr %pf, i32 0, i32 116
  %0 = ptrtoint ptr %ptp_pins to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ptp_pins, align 4
  %hw1 = getelementptr inbounds %struct.i40e_pf, ptr %pf, i32 0, i32 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !127
  tail call void @arm_heavy_mb() #11
  %2 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw1, align 8
  %add.ptr.i = getelementptr i8, ptr %3, i32 557384
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #11, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !127
  tail call void @arm_heavy_mb() #11
  %4 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw1, align 8
  %add.ptr.i27 = getelementptr i8, ptr %5, i32 557388
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27, i32 0) #11, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !127
  tail call void @arm_heavy_mb() #11
  %6 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw1, align 8
  %add.ptr.i28 = getelementptr i8, ptr %7, i32 557392
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i28, i32 0) #11, !srcloc !119
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %1, align 4
  tail call fastcc void @i40e_ptp_set_pin_hw(ptr noundef %hw1, i32 noundef 18, i32 noundef %9)
  %sdp3_3 = getelementptr inbounds %struct.i40e_ptp_pins_settings, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %sdp3_3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sdp3_3, align 4
  tail call fastcc void @i40e_ptp_set_pin_hw(ptr noundef %hw1, i32 noundef 19, i32 noundef %11)
  %gpio_4 = getelementptr inbounds %struct.i40e_ptp_pins_settings, ptr %1, i32 0, i32 2
  %12 = ptrtoint ptr %gpio_4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %gpio_4, align 4
  tail call fastcc void @i40e_ptp_set_pin_hw(ptr noundef %hw1, i32 noundef 20, i32 noundef %13)
  %led2_0 = getelementptr inbounds %struct.i40e_ptp_pins_settings, ptr %1, i32 0, i32 3
  %14 = ptrtoint ptr %led2_0 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %led2_0, align 4
  %16 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.47)
  switch i32 %15, label %entry.i40e_ptp_set_led_hw.exit_crit_edge [
    i32 0, label %do.body.i
    i32 1, label %do.body2.i
  ]

entry.i40e_ptp_set_led_hw.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %i40e_ptp_set_led_hw.exit

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !128
  tail call void @arm_heavy_mb() #11
  %17 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hw1, align 8
  %add.ptr.i29 = getelementptr i8, ptr %18, i32 557444
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29, i32 1509949440) #11, !srcloc !119
  br label %i40e_ptp_set_led_hw.exit

do.body2.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !129
  tail call void @arm_heavy_mb() #11
  %19 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %hw1, align 8
  %add.ptr6.i = getelementptr i8, ptr %20, i32 557444
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i, i32 2046820352) #11, !srcloc !119
  br label %i40e_ptp_set_led_hw.exit

i40e_ptp_set_led_hw.exit:                         ; preds = %do.body2.i, %do.body.i, %entry.i40e_ptp_set_led_hw.exit_crit_edge
  %led2_1 = getelementptr inbounds %struct.i40e_ptp_pins_settings, ptr %1, i32 0, i32 4
  %21 = ptrtoint ptr %led2_1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %led2_1, align 4
  %23 = zext i32 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.48)
  switch i32 %22, label %i40e_ptp_set_led_hw.exit.i40e_ptp_set_led_hw.exit34_crit_edge [
    i32 0, label %do.body.i31
    i32 1, label %do.body2.i33
  ]

i40e_ptp_set_led_hw.exit.i40e_ptp_set_led_hw.exit34_crit_edge: ; preds = %i40e_ptp_set_led_hw.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %i40e_ptp_set_led_hw.exit34

do.body.i31:                                      ; preds = %i40e_ptp_set_led_hw.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !128
  tail call void @arm_heavy_mb() #11
  %24 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %hw1, align 8
  %add.ptr.i30 = getelementptr i8, ptr %25, i32 557444
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i30, i32 1526726656) #11, !srcloc !119
  br label %i40e_ptp_set_led_hw.exit34

do.body2.i33:                                     ; preds = %i40e_ptp_set_led_hw.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !129
  tail call void @arm_heavy_mb() #11
  %26 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %hw1, align 8
  %add.ptr6.i32 = getelementptr i8, ptr %27, i32 557444
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i32, i32 2063597568) #11, !srcloc !119
  br label %i40e_ptp_set_led_hw.exit34

i40e_ptp_set_led_hw.exit34:                       ; preds = %do.body2.i33, %do.body.i31, %i40e_ptp_set_led_hw.exit.i40e_ptp_set_led_hw.exit34_crit_edge
  %led3_0 = getelementptr inbounds %struct.i40e_ptp_pins_settings, ptr %1, i32 0, i32 5
  %28 = ptrtoint ptr %led3_0 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %led3_0, align 4
  %30 = zext i32 %29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.49)
  switch i32 %29, label %i40e_ptp_set_led_hw.exit34.i40e_ptp_set_led_hw.exit39_crit_edge [
    i32 0, label %do.body.i36
    i32 1, label %do.body2.i38
  ]

i40e_ptp_set_led_hw.exit34.i40e_ptp_set_led_hw.exit39_crit_edge: ; preds = %i40e_ptp_set_led_hw.exit34
  call void @__sanitizer_cov_trace_pc() #13
  br label %i40e_ptp_set_led_hw.exit39

do.body.i36:                                      ; preds = %i40e_ptp_set_led_hw.exit34
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !128
  tail call void @arm_heavy_mb() #11
  %31 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %hw1, align 8
  %add.ptr.i35 = getelementptr i8, ptr %32, i32 557444
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i35, i32 1543503872) #11, !srcloc !119
  br label %i40e_ptp_set_led_hw.exit39

do.body2.i38:                                     ; preds = %i40e_ptp_set_led_hw.exit34
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !129
  tail call void @arm_heavy_mb() #11
  %33 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %hw1, align 8
  %add.ptr6.i37 = getelementptr i8, ptr %34, i32 557444
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i37, i32 2080374784) #11, !srcloc !119
  br label %i40e_ptp_set_led_hw.exit39

i40e_ptp_set_led_hw.exit39:                       ; preds = %do.body2.i38, %do.body.i36, %i40e_ptp_set_led_hw.exit34.i40e_ptp_set_led_hw.exit39_crit_edge
  %led3_1 = getelementptr inbounds %struct.i40e_ptp_pins_settings, ptr %1, i32 0, i32 6
  %35 = ptrtoint ptr %led3_1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %led3_1, align 4
  %37 = zext i32 %36 to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values.50)
  switch i32 %36, label %i40e_ptp_set_led_hw.exit39.i40e_ptp_set_led_hw.exit44_crit_edge [
    i32 0, label %do.body.i41
    i32 1, label %do.body2.i43
  ]

i40e_ptp_set_led_hw.exit39.i40e_ptp_set_led_hw.exit44_crit_edge: ; preds = %i40e_ptp_set_led_hw.exit39
  call void @__sanitizer_cov_trace_pc() #13
  br label %i40e_ptp_set_led_hw.exit44

do.body.i41:                                      ; preds = %i40e_ptp_set_led_hw.exit39
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !128
  tail call void @arm_heavy_mb() #11
  %38 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %hw1, align 8
  %add.ptr.i40 = getelementptr i8, ptr %39, i32 557444
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i40, i32 1560281088) #11, !srcloc !119
  br label %i40e_ptp_set_led_hw.exit44

do.body2.i43:                                     ; preds = %i40e_ptp_set_led_hw.exit39
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !129
  tail call void @arm_heavy_mb() #11
  %40 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %hw1, align 8
  %add.ptr6.i42 = getelementptr i8, ptr %41, i32 557444
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i42, i32 2097152000) #11, !srcloc !119
  br label %i40e_ptp_set_led_hw.exit44

i40e_ptp_set_led_hw.exit44:                       ; preds = %do.body2.i43, %do.body.i41, %i40e_ptp_set_led_hw.exit39.i40e_ptp_set_led_hw.exit44_crit_edge
  %42 = ptrtoint ptr %pf to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %pf, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %43, i32 0, i32 44
  %44 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %1, align 4
  %arrayidx = getelementptr [5 x ptr], ptr @i40e_ptp_gpio_pin_state2str, i32 0, i32 %45
  %46 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx, align 4
  %48 = ptrtoint ptr %sdp3_3 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %sdp3_3, align 4
  %arrayidx4 = getelementptr [5 x ptr], ptr @i40e_ptp_gpio_pin_state2str, i32 0, i32 %49
  %50 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %arrayidx4, align 4
  %52 = ptrtoint ptr %gpio_4 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %gpio_4, align 4
  %arrayidx6 = getelementptr [5 x ptr], ptr @i40e_ptp_gpio_pin_state2str, i32 0, i32 %53
  %54 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %arrayidx6, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.28, ptr noundef %47, ptr noundef %51, ptr noundef %55) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @i40e_ptp_set_ts_config(ptr noundef %pf, ptr nocapture noundef readonly %ifr) local_unnamed_addr #0 align 64 {
entry:
  %config = alloca %struct.hwtstamp_config, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %config) #11
  %0 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %config, align 4, !annotation !130
  %1 = getelementptr inbounds %struct.hwtstamp_config, ptr %config, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !130
  %3 = getelementptr inbounds %struct.hwtstamp_config, ptr %config, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4, !annotation !130
  %flags = getelementptr inbounds %struct.i40e_pf, ptr %pf, i32 0, i32 54
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags, align 8
  %and = and i32 %6, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %ifr_ifru = getelementptr inbounds %struct.ifreq, ptr %ifr, i32 0, i32 1
  %7 = ptrtoint ptr %ifr_ifru to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ifr_ifru, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.27, i32 noundef 156) #11
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i, label %if.end.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.end.if.then11.i.i_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.end
  %9 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %8, i32 12, i32 -1226833920) #15, !srcloc !131
  %asmresult.i.i = extractvalue { i32, i32 } %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !132

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %config, i32 noundef 12) #11
  %10 = call i32 @llvm.read_register.i32(metadata !97) #11
  %and.i.i.i.i.i.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 4
  %12 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #7, !srcloc !133
  %and.i.i.i.i = and i32 %12, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #11, !srcloc !134
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !135
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %config, ptr noundef %8, i32 noundef 12) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %12) #11, !srcloc !134
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !135
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end3, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !132

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.end.if.then11.i.i_crit_edge
  %res.03.i.i = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 12, %if.end.if.then11.i.i_crit_edge ], [ 12, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 12, %res.03.i.i
  %add.ptr.i.i = getelementptr i8, ptr %config, i32 %sub.i.i
  %13 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.03.i.i)
  br label %cleanup

if.end3:                                          ; preds = %if.end.i.i
  %call4 = call fastcc i32 @i40e_ptp_set_timestamp_mode(ptr noundef %pf, ptr noundef nonnull %config)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.then.i19, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then.i19:                                      ; preds = %if.end3
  %tstamp_config = getelementptr inbounds %struct.i40e_pf, ptr %pf, i32 0, i32 97
  %14 = call ptr @memcpy(ptr %tstamp_config, ptr %config, i32 12)
  %15 = ptrtoint ptr %ifr_ifru to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ifr_ifru, align 4
  call void @__might_fault(ptr noundef nonnull @.str.27, i32 noundef 174) #11
  %call.i.i18 = call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i18, label %if.then.i19.cleanup_crit_edge, label %if.end.i.i22

if.then.i19.cleanup_crit_edge:                    ; preds = %if.then.i19
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i.i22:                                     ; preds = %if.then.i19
  %17 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %16, i32 12, i32 -1226833920) #15, !srcloc !122
  %asmresult.i.i20 = extractvalue { i32, i32 } %17, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i20)
  %cmp.i.i21 = icmp eq i32 %asmresult.i.i20, 0
  br i1 %cmp.i.i21, label %copy_to_user.exit, label %if.end.i.i22.cleanup_crit_edge

if.end.i.i22.cleanup_crit_edge:                   ; preds = %if.end.i.i22
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

copy_to_user.exit:                                ; preds = %if.end.i.i22
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i23 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %config, i32 noundef 12) #11
  %call.i1.i.i = call i32 @arm_copy_to_user(ptr noundef %16, ptr noundef nonnull %config, i32 noundef 12) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i.i)
  %tobool10.not = icmp eq i32 %call.i1.i.i, 0
  %spec.select = select i1 %tobool10.not, i32 0, i32 -14
  br label %cleanup

cleanup:                                          ; preds = %copy_to_user.exit, %if.end.i.i22.cleanup_crit_edge, %if.then.i19.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.then11.i.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %entry.cleanup_crit_edge ], [ %call4, %if.end3.cleanup_crit_edge ], [ -14, %if.then11.i.i ], [ -14, %if.then.i19.cleanup_crit_edge ], [ -14, %if.end.i.i22.cleanup_crit_edge ], [ %spec.select, %copy_to_user.exit ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %config) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @i40e_ptp_set_timestamp_mode(ptr noundef %pf, ptr nocapture noundef %config) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr inbounds %struct.i40e_pf, ptr %pf, i32 0, i32 1
  %0 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw1, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 1983136
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #11, !srcloc !108
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !136
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !137
  tail call void @arm_heavy_mb() #11
  %3 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hw1, align 8
  %add.ptr4 = getelementptr i8, ptr %4, i32 1983136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 256) #11, !srcloc !119
  %5 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hw1, align 8
  %add.ptr8 = getelementptr i8, ptr %6, i32 1982976
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8) #11, !srcloc !108
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !138
  %8 = or i32 %7, 67108864
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !139
  tail call void @arm_heavy_mb() #11
  %9 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hw1, align 8
  %add.ptr17 = getelementptr i8, ptr %10, i32 1982976
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17, i32 %8) #11, !srcloc !119
  %ptp_extts0_work = getelementptr inbounds %struct.i40e_pf, ptr %pf, i32 0, i32 100
  tail call void @__init_work(ptr noundef %ptp_extts0_work, i32 noundef 0) #11
  %11 = ptrtoint ptr %ptp_extts0_work to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -64, ptr %ptp_extts0_work, align 4
  %lockdep_map = getelementptr inbounds %struct.i40e_pf, ptr %pf, i32 0, i32 100, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.35, ptr noundef nonnull @i40e_ptp_set_timestamp_mode.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  %entry22 = getelementptr inbounds %struct.i40e_pf, ptr %pf, i32 0, i32 100, i32 1
  %12 = ptrtoint ptr %entry22 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %entry22, ptr %entry22, align 4
  %prev.i = getelementptr inbounds %struct.i40e_pf, ptr %pf, i32 0, i32 100, i32 1, i32 1
  %13 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %entry22, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.i40e_pf, ptr %pf, i32 0, i32 100, i32 2
  %14 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @i40e_ptp_extts0_work, ptr %func, align 4
  %tx_type = getelementptr inbounds %struct.hwtstamp_config, ptr %config, i32 0, i32 1
  %15 = ptrtoint ptr %tx_type to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %tx_type, align 4
  %17 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.51)
  switch i32 %16, label %entry.cleanup_crit_edge [
    i32 0, label %entry.sw.epilog_crit_edge
    i32 1, label %sw.bb26
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb26:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb26, %entry.sw.epilog_crit_edge
  %.sink = phi i8 [ 1, %sw.bb26 ], [ 0, %entry.sw.epilog_crit_edge ]
  %ptp_tx27 = getelementptr inbounds %struct.i40e_pf, ptr %pf, i32 0, i32 114
  %18 = ptrtoint ptr %ptp_tx27 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %.sink, ptr %ptp_tx27, align 8
  %rx_filter = getelementptr inbounds %struct.hwtstamp_config, ptr %config, i32 0, i32 2
  %19 = ptrtoint ptr %rx_filter to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %rx_filter, align 4
  %21 = zext i32 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.52)
  switch i32 %20, label %sw.epilog.cleanup_crit_edge [
    i32 0, label %sw.bb28
    i32 4, label %sw.epilog.sw.bb29_crit_edge
    i32 5, label %sw.epilog.sw.bb29_crit_edge201
    i32 3, label %sw.epilog.sw.bb29_crit_edge202
    i32 12, label %sw.epilog.sw.bb33_crit_edge
    i32 6, label %sw.epilog.sw.bb33_crit_edge203
    i32 13, label %sw.epilog.sw.bb33_crit_edge204
    i32 7, label %sw.epilog.sw.bb33_crit_edge205
    i32 14, label %sw.epilog.sw.bb33_crit_edge206
    i32 8, label %sw.epilog.sw.bb33_crit_edge207
    i32 9, label %sw.epilog.sw.bb39_crit_edge
    i32 10, label %sw.epilog.sw.bb39_crit_edge208
    i32 11, label %sw.epilog.sw.bb39_crit_edge209
  ]

sw.epilog.sw.bb39_crit_edge209:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb39

sw.epilog.sw.bb39_crit_edge208:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb39

sw.epilog.sw.bb39_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb39

sw.epilog.sw.bb33_crit_edge207:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb33

sw.epilog.sw.bb33_crit_edge206:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb33

sw.epilog.sw.bb33_crit_edge205:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb33

sw.epilog.sw.bb33_crit_edge204:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb33

sw.epilog.sw.bb33_crit_edge203:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb33

sw.epilog.sw.bb33_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb33

sw.epilog.sw.bb29_crit_edge202:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb29

sw.epilog.sw.bb29_crit_edge201:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb29

sw.epilog.sw.bb29_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb29

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb28:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  %ptp_rx = getelementptr inbounds %struct.i40e_pf, ptr %pf, i32 0, i32 115
  %22 = ptrtoint ptr %ptp_rx to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %ptp_rx, align 1
  br label %sw.epilog51

sw.bb29:                                          ; preds = %sw.epilog.sw.bb29_crit_edge, %sw.epilog.sw.bb29_crit_edge201, %sw.epilog.sw.bb29_crit_edge202
  %hw_features = getelementptr inbounds %struct.i40e_pf, ptr %pf, i32 0, i32 53
  %23 = ptrtoint ptr %hw_features to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %hw_features, align 4
  %and30 = and i32 %24, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool.not = icmp eq i32 %and30, 0
  br i1 %tobool.not, label %sw.bb29.cleanup_crit_edge, label %if.end

sw.bb29.cleanup_crit_edge:                        ; preds = %sw.bb29
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %sw.bb29
  call void @__sanitizer_cov_trace_pc() #13
  %ptp_rx31 = getelementptr inbounds %struct.i40e_pf, ptr %pf, i32 0, i32 115
  %25 = ptrtoint ptr %ptp_rx31 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 1, ptr %ptp_rx31, align 1
  %26 = ptrtoint ptr %rx_filter to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 3, ptr %rx_filter, align 4
  br label %sw.epilog51

sw.bb33:                                          ; preds = %sw.epilog.sw.bb33_crit_edge, %sw.epilog.sw.bb33_crit_edge203, %sw.epilog.sw.bb33_crit_edge204, %sw.epilog.sw.bb33_crit_edge205, %sw.epilog.sw.bb33_crit_edge206, %sw.epilog.sw.bb33_crit_edge207
  %hw_features34 = getelementptr inbounds %struct.i40e_pf, ptr %pf, i32 0, i32 53
  %27 = ptrtoint ptr %hw_features34 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %hw_features34, align 4
  %and35 = and i32 %28, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  br i1 %tobool36.not, label %sw.bb33.cleanup_crit_edge, label %sw.bb33.sw.bb39_crit_edge

sw.bb33.sw.bb39_crit_edge:                        ; preds = %sw.bb33
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb39

sw.bb33.cleanup_crit_edge:                        ; preds = %sw.bb33
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb39:                                          ; preds = %sw.bb33.sw.bb39_crit_edge, %sw.epilog.sw.bb39_crit_edge, %sw.epilog.sw.bb39_crit_edge208, %sw.epilog.sw.bb39_crit_edge209
  %ptp_rx40 = getelementptr inbounds %struct.i40e_pf, ptr %pf, i32 0, i32 115
  %29 = ptrtoint ptr %ptp_rx40 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 1, ptr %ptp_rx40, align 1
  %hw_features41 = getelementptr inbounds %struct.i40e_pf, ptr %pf, i32 0, i32 53
  %30 = ptrtoint ptr %hw_features41 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %hw_features41, align 4
  %and42 = and i32 %31, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42)
  %tobool43.not = icmp eq i32 %and42, 0
  br i1 %tobool43.not, label %if.else, label %if.then44

if.then44:                                        ; preds = %sw.bb39
  call void @__sanitizer_cov_trace_pc() #13
  %32 = ptrtoint ptr %rx_filter to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 12, ptr %rx_filter, align 4
  br label %sw.epilog51

if.else:                                          ; preds = %sw.bb39
  call void @__sanitizer_cov_trace_pc() #13
  %33 = ptrtoint ptr %rx_filter to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 9, ptr %rx_filter, align 4
  br label %sw.epilog51

sw.epilog51:                                      ; preds = %if.else, %if.then44, %if.end, %sw.bb28
  %tsyntype.0 = phi i32 [ 235864064, %if.then44 ], [ 34537472, %if.else ], [ 218104063, %if.end ], [ 16777216, %sw.bb28 ]
  %ptp_rx_lock = getelementptr inbounds %struct.i40e_pf, ptr %pf, i32 0, i32 111
  tail call void @_raw_spin_lock_bh(ptr noundef %ptp_rx_lock) #11
  %34 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %hw1, align 8
  %add.ptr55 = getelementptr i8, ptr %35, i32 1983008
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr55) #11, !srcloc !108
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !140
  %37 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %hw1, align 8
  %add.ptr62 = getelementptr i8, ptr %38, i32 1982944
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr62) #11, !srcloc !108
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !141
  %40 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %hw1, align 8
  %add.ptr69 = getelementptr i8, ptr %41, i32 544832
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr69) #11, !srcloc !108
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !142
  %43 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %hw1, align 8
  %add.ptr76 = getelementptr i8, ptr %44, i32 544864
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr76) #11, !srcloc !108
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !143
  %46 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %hw1, align 8
  %add.ptr83 = getelementptr i8, ptr %47, i32 544896
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr83) #11, !srcloc !108
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !144
  %49 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %hw1, align 8
  %add.ptr90 = getelementptr i8, ptr %50, i32 544928
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr90) #11, !srcloc !108
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !145
  %latch_event_flags = getelementptr inbounds %struct.i40e_pf, ptr %pf, i32 0, i32 108
  %52 = ptrtoint ptr %latch_event_flags to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 0, ptr %latch_event_flags, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %ptp_rx_lock) #11
  %53 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %hw1, align 8
  %add.ptr98 = getelementptr i8, ptr %54, i32 1982976
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr98) #11, !srcloc !108
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !146
  %ptp_tx102 = getelementptr inbounds %struct.i40e_pf, ptr %pf, i32 0, i32 114
  %56 = ptrtoint ptr %ptp_tx102 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %ptp_tx102, align 8, !range !107
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool103.not = icmp eq i8 %57, 0
  %58 = and i32 %55, -33554433
  %59 = tail call i32 @llvm.bswap.i32(i32 %58)
  %masksel = select i1 %tobool103.not, i32 0, i32 2
  %regval.0 = or i32 %masksel, %59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !147
  tail call void @arm_heavy_mb() #11
  %60 = tail call i32 @llvm.bswap.i32(i32 %regval.0)
  %61 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %hw1, align 8
  %add.ptr113 = getelementptr i8, ptr %62, i32 1982976
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr113, i32 %60) #11, !srcloc !119
  %63 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %hw1, align 8
  %add.ptr117 = getelementptr i8, ptr %64, i32 231424
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr117) #11, !srcloc !108
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !148
  %66 = ptrtoint ptr %ptp_tx102 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %ptp_tx102, align 8, !range !107
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %tobool122.not = icmp eq i8 %67, 0
  %68 = and i32 %65, -32769
  %69 = tail call i32 @llvm.bswap.i32(i32 %68)
  %masksel200 = select i1 %tobool122.not, i32 0, i32 8388608
  %regval.1 = or i32 %masksel200, %69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !149
  tail call void @arm_heavy_mb() #11
  %70 = tail call i32 @llvm.bswap.i32(i32 %regval.1)
  %71 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %hw1, align 8
  %add.ptr132 = getelementptr i8, ptr %72, i32 231424
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr132, i32 %70) #11, !srcloc !119
  %73 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %hw1, align 8
  %add.ptr136 = getelementptr i8, ptr %74, i32 544800
  %75 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr136) #11, !srcloc !108
  %76 = shl i32 %75, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !150
  %and140 = and i32 %76, -2147483648
  %or141 = or i32 %and140, %tsyntype.0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !151
  tail call void @arm_heavy_mb() #11
  %77 = tail call i32 @llvm.bswap.i32(i32 %or141)
  %78 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %hw1, align 8
  %add.ptr146 = getelementptr i8, ptr %79, i32 544800
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr146, i32 %77) #11, !srcloc !119
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog51, %sw.bb33.cleanup_crit_edge, %sw.bb29.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog51 ], [ -34, %entry.cleanup_crit_edge ], [ -34, %sw.bb29.cleanup_crit_edge ], [ -34, %sw.bb33.cleanup_crit_edge ], [ -34, %sw.epilog.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @i40e_ptp_save_hw_time(ptr noundef %pf) local_unnamed_addr #0 align 64 {
entry:
  %tmp11.i.i = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.i40e_pf, ptr %pf, i32 0, i32 54
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 8
  %and = and i32 %1, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %ptp_prev_hw_time = getelementptr inbounds %struct.i40e_pf, ptr %pf, i32 0, i32 98
  %tmreg_lock.i = getelementptr %struct.i40e_pf, ptr %pf, i32 0, i32 103
  tail call void @mutex_lock_nested(ptr noundef %tmreg_lock.i, i32 noundef 0) #11
  %hw1.i.i = getelementptr %struct.i40e_pf, ptr %pf, i32 0, i32 1
  %2 = ptrtoint ptr %hw1.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw1.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 1982720
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #11, !srcloc !108
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !152
  %5 = ptrtoint ptr %hw1.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hw1.i.i, align 8
  %add.ptr6.i.i = getelementptr i8, ptr %6, i32 1982752
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i.i) #11, !srcloc !108
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !153
  %8 = zext i32 %7 to i64
  %9 = zext i32 %4 to i64
  %10 = shl nuw i64 %9, 32
  %11 = or i64 %10, %8
  %12 = tail call i64 @llvm.bswap.i64(i64 %11) #11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp11.i.i) #11
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %tmp11.i.i, i64 noundef %12) #11
  %13 = call ptr @memcpy(ptr %ptp_prev_hw_time, ptr %tmp11.i.i, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp11.i.i) #11
  call void @mutex_unlock(ptr noundef %tmreg_lock.i) #11
  %call1 = call i64 @ktime_get() #11
  %ptp_reset_start = getelementptr inbounds %struct.i40e_pf, ptr %pf, i32 0, i32 102
  %14 = ptrtoint ptr %ptp_reset_start to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %call1, ptr %ptp_reset_start, align 8
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @i40e_ptp_gettimex(ptr noundef %ptp, ptr nocapture noundef writeonly %ts, ptr noundef %sts) #0 align 64 {
entry:
  %tmp11.i = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tmreg_lock = getelementptr i8, ptr %ptp, i32 292
  tail call void @mutex_lock_nested(ptr noundef %tmreg_lock, i32 noundef 0) #11
  %hw1.i = getelementptr i8, ptr %ptp, i32 -4164
  %tobool.not.i.i = icmp eq ptr %sts, null
  br i1 %tobool.not.i.i, label %entry.ptp_read_system_prets.exit.i_crit_edge, label %if.then.i.i

entry.ptp_read_system_prets.exit.i_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %ptp_read_system_prets.exit.i

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @ktime_get_real_ts64(ptr noundef nonnull %sts) #11
  br label %ptp_read_system_prets.exit.i

ptp_read_system_prets.exit.i:                     ; preds = %if.then.i.i, %entry.ptp_read_system_prets.exit.i_crit_edge
  %0 = ptrtoint ptr %hw1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw1.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 1982720
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !108
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !152
  br i1 %tobool.not.i.i, label %ptp_read_system_prets.exit.i.i40e_ptp_read.exit_crit_edge, label %if.then.i15.i

ptp_read_system_prets.exit.i.i40e_ptp_read.exit_crit_edge: ; preds = %ptp_read_system_prets.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %i40e_ptp_read.exit

if.then.i15.i:                                    ; preds = %ptp_read_system_prets.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %post_ts.i.i = getelementptr inbounds %struct.ptp_system_timestamp, ptr %sts, i32 0, i32 1
  tail call void @ktime_get_real_ts64(ptr noundef %post_ts.i.i) #11
  br label %i40e_ptp_read.exit

i40e_ptp_read.exit:                               ; preds = %if.then.i15.i, %ptp_read_system_prets.exit.i.i40e_ptp_read.exit_crit_edge
  %3 = ptrtoint ptr %hw1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hw1.i, align 8
  %add.ptr6.i = getelementptr i8, ptr %4, i32 1982752
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i) #11, !srcloc !108
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !153
  %6 = zext i32 %5 to i64
  %7 = zext i32 %2 to i64
  %8 = shl nuw i64 %7, 32
  %9 = or i64 %8, %6
  %10 = tail call i64 @llvm.bswap.i64(i64 %9) #11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp11.i) #11
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %tmp11.i, i64 noundef %10) #11
  %11 = call ptr @memcpy(ptr %ts, ptr %tmp11.i, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp11.i) #11
  call void @mutex_unlock(ptr noundef %tmreg_lock) #11
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @i40e_ptp_restore_hw_time(ptr noundef %pf) local_unnamed_addr #0 align 64 {
entry:
  %dividend.addr.i.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i64 @ktime_get() #11
  %ptp_reset_start = getelementptr inbounds %struct.i40e_pf, ptr %pf, i32 0, i32 102
  %0 = ptrtoint ptr %ptp_reset_start to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %ptp_reset_start, align 8
  %sub = sub i64 %call, %1
  %ptp_prev_hw_time = getelementptr inbounds %struct.i40e_pf, ptr %pf, i32 0, i32 98
  %tv_nsec.i = getelementptr inbounds %struct.i40e_pf, ptr %pf, i32 0, i32 98, i32 1
  %2 = ptrtoint ptr %tv_nsec.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tv_nsec.i, align 8
  %conv.i = sext i32 %3 to i64
  %add.i = add i64 %sub, %conv.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %dividend.addr.i.i) #11
  %4 = ptrtoint ptr %dividend.addr.i.i to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %add.i, ptr %dividend.addr.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 999999999, i64 %add.i)
  %cmp1.i.i = icmp ugt i64 %add.i, 999999999
  %extract.t.i = trunc i64 %add.i to i32
  br i1 %cmp1.i.i, label %entry.while.body.i.i_crit_edge, label %entry.timespec64_add_ns.exit_crit_edge

entry.timespec64_add_ns.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %timespec64_add_ns.exit

entry.while.body.i.i_crit_edge:                   ; preds = %entry
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %entry.while.body.i.i_crit_edge
  %ret.02.i.i = phi i32 [ %inc.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ 0, %entry.while.body.i.i_crit_edge ]
  %5 = phi i64 [ %sub.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ %add.i, %entry.while.body.i.i_crit_edge ]
  call void asm "", "=*rm,0"(ptr nonnull elementtype(i64) %dividend.addr.i.i, i64 %5) #11, !srcloc !154
  %6 = ptrtoint ptr %dividend.addr.i.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %dividend.addr.i.i, align 8
  %sub.i.i = add i64 %7, -1000000000
  store i64 %sub.i.i, ptr %dividend.addr.i.i, align 8
  %inc.i.i = add i32 %ret.02.i.i, 1
  %cmp.i.i = icmp ugt i64 %sub.i.i, 999999999
  br i1 %cmp.i.i, label %while.body.i.i.while.body.i.i_crit_edge, label %__iter_div_u64_rem.exit.loopexit.i

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i.i

__iter_div_u64_rem.exit.loopexit.i:               ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %extract.t7.le.i = trunc i64 %sub.i.i to i32
  br label %timespec64_add_ns.exit

timespec64_add_ns.exit:                           ; preds = %__iter_div_u64_rem.exit.loopexit.i, %entry.timespec64_add_ns.exit_crit_edge
  %.lcssa.i.off0.i = phi i32 [ %extract.t.i, %entry.timespec64_add_ns.exit_crit_edge ], [ %extract.t7.le.i, %__iter_div_u64_rem.exit.loopexit.i ]
  %ret.0.lcssa.i.i = phi i32 [ 0, %entry.timespec64_add_ns.exit_crit_edge ], [ %inc.i.i, %__iter_div_u64_rem.exit.loopexit.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %dividend.addr.i.i) #11
  %conv1.i = zext i32 %ret.0.lcssa.i.i to i64
  %8 = ptrtoint ptr %ptp_prev_hw_time to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %ptp_prev_hw_time, align 8
  %add2.i = add i64 %9, %conv1.i
  store i64 %add2.i, ptr %ptp_prev_hw_time, align 8
  %10 = ptrtoint ptr %tv_nsec.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %.lcssa.i.off0.i, ptr %tv_nsec.i, align 8
  %tmreg_lock.i = getelementptr %struct.i40e_pf, ptr %pf, i32 0, i32 103
  call void @mutex_lock_nested(ptr noundef %tmreg_lock.i, i32 noundef 0) #11
  %11 = ptrtoint ptr %ptp_prev_hw_time to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %ptp_prev_hw_time, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 9223372035, i64 %12)
  %cmp.i.i.i = icmp sgt i64 %12, 9223372035
  br i1 %cmp.i.i.i, label %timespec64_add_ns.exit.i40e_ptp_settime.exit_crit_edge, label %if.end.i.i.i

timespec64_add_ns.exit.i40e_ptp_settime.exit_crit_edge: ; preds = %timespec64_add_ns.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %i40e_ptp_settime.exit

if.end.i.i.i:                                     ; preds = %timespec64_add_ns.exit
  call void @__sanitizer_cov_trace_const_cmp8(i64 -9223372035, i64 %12)
  %cmp2.i.i.i = icmp slt i64 %12, -9223372035
  br i1 %cmp2.i.i.i, label %if.end.i.i.i.i40e_ptp_settime.exit_crit_edge, label %if.end4.i.i.i

if.end.i.i.i.i40e_ptp_settime.exit_crit_edge:     ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %i40e_ptp_settime.exit

if.end4.i.i.i:                                    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %mul.i.i.i = mul nsw i64 %12, 1000000000
  %13 = ptrtoint ptr %tv_nsec.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tv_nsec.i, align 8
  %conv.i.i.i = sext i32 %14 to i64
  %add.i.i.i = add i64 %mul.i.i.i, %conv.i.i.i
  %extract.t.i.i = trunc i64 %add.i.i.i to i32
  %extract.i.i = lshr i64 %add.i.i.i, 32
  %extract.t10.i.i = trunc i64 %extract.i.i to i32
  br label %i40e_ptp_settime.exit

i40e_ptp_settime.exit:                            ; preds = %if.end4.i.i.i, %if.end.i.i.i.i40e_ptp_settime.exit_crit_edge, %timespec64_add_ns.exit.i40e_ptp_settime.exit_crit_edge
  %retval.0.i.off0.i.i = phi i32 [ %extract.t.i.i, %if.end4.i.i.i ], [ -1, %timespec64_add_ns.exit.i40e_ptp_settime.exit_crit_edge ], [ 0, %if.end.i.i.i.i40e_ptp_settime.exit_crit_edge ]
  %retval.0.i.off32.i.i = phi i32 [ %extract.t10.i.i, %if.end4.i.i.i ], [ 2147483647, %timespec64_add_ns.exit.i40e_ptp_settime.exit_crit_edge ], [ -2147483648, %if.end.i.i.i.i40e_ptp_settime.exit_crit_edge ]
  %hw1.i.i = getelementptr %struct.i40e_pf, ptr %pf, i32 0, i32 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !155
  call void @arm_heavy_mb() #11
  %15 = call i32 @llvm.bswap.i32(i32 %retval.0.i.off0.i.i) #11
  %16 = ptrtoint ptr %hw1.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hw1.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %17, i32 1982720
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %15) #11, !srcloc !119
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !156
  call void @arm_heavy_mb() #11
  %18 = call i32 @llvm.bswap.i32(i32 %retval.0.i.off32.i.i) #11
  %19 = ptrtoint ptr %hw1.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %hw1.i.i, align 8
  %add.ptr7.i.i = getelementptr i8, ptr %20, i32 1982752
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7.i.i, i32 %18) #11, !srcloc !119
  call void @mutex_unlock(ptr noundef %tmreg_lock.i) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @i40e_ptp_settime(ptr noundef %ptp, ptr nocapture noundef readonly %ts) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tmreg_lock = getelementptr i8, ptr %ptp, i32 292
  tail call void @mutex_lock_nested(ptr noundef %tmreg_lock, i32 noundef 0) #11
  %0 = ptrtoint ptr %ts to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %ts, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 9223372035, i64 %1)
  %cmp.i.i = icmp sgt i64 %1, 9223372035
  br i1 %cmp.i.i, label %entry.i40e_ptp_write.exit_crit_edge, label %if.end.i.i

entry.i40e_ptp_write.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %i40e_ptp_write.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp8(i64 -9223372035, i64 %1)
  %cmp2.i.i = icmp slt i64 %1, -9223372035
  br i1 %cmp2.i.i, label %if.end.i.i.i40e_ptp_write.exit_crit_edge, label %if.end4.i.i

if.end.i.i.i40e_ptp_write.exit_crit_edge:         ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %i40e_ptp_write.exit

if.end4.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %mul.i.i = mul nsw i64 %1, 1000000000
  %tv_nsec.i.i = getelementptr inbounds %struct.timespec64, ptr %ts, i32 0, i32 1
  %2 = ptrtoint ptr %tv_nsec.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tv_nsec.i.i, align 8
  %conv.i.i = sext i32 %3 to i64
  %add.i.i = add i64 %mul.i.i, %conv.i.i
  %extract.t.i = trunc i64 %add.i.i to i32
  %extract.i = lshr i64 %add.i.i, 32
  %extract.t10.i = trunc i64 %extract.i to i32
  br label %i40e_ptp_write.exit

i40e_ptp_write.exit:                              ; preds = %if.end4.i.i, %if.end.i.i.i40e_ptp_write.exit_crit_edge, %entry.i40e_ptp_write.exit_crit_edge
  %retval.0.i.off0.i = phi i32 [ %extract.t.i, %if.end4.i.i ], [ -1, %entry.i40e_ptp_write.exit_crit_edge ], [ 0, %if.end.i.i.i40e_ptp_write.exit_crit_edge ]
  %retval.0.i.off32.i = phi i32 [ %extract.t10.i, %if.end4.i.i ], [ 2147483647, %entry.i40e_ptp_write.exit_crit_edge ], [ -2147483648, %if.end.i.i.i40e_ptp_write.exit_crit_edge ]
  %hw1.i = getelementptr i8, ptr %ptp, i32 -4164
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !155
  tail call void @arm_heavy_mb() #11
  %4 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i.off0.i) #11
  %5 = ptrtoint ptr %hw1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hw1.i, align 8
  %add.ptr.i = getelementptr i8, ptr %6, i32 1982720
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %4) #11, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !156
  tail call void @arm_heavy_mb() #11
  %7 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i.off32.i) #11
  %8 = ptrtoint ptr %hw1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hw1.i, align 8
  %add.ptr7.i = getelementptr i8, ptr %9, i32 1982752
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7.i, i32 %7) #11, !srcloc !119
  tail call void @mutex_unlock(ptr noundef %tmreg_lock) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @i40e_ptp_init(ptr noundef %pf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %vsi = getelementptr inbounds %struct.i40e_pf, ptr %pf, i32 0, i32 74
  %0 = ptrtoint ptr %vsi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vsi, align 8
  %lan_vsi = getelementptr inbounds %struct.i40e_pf, ptr %pf, i32 0, i32 71
  %2 = ptrtoint ptr %lan_vsi to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %lan_vsi, align 8
  %idxprom = zext i16 %3 to i32
  %arrayidx = getelementptr ptr, ptr %1, i32 %idxprom
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 128
  %hw2 = getelementptr inbounds %struct.i40e_pf, ptr %pf, i32 0, i32 1
  %8 = ptrtoint ptr %hw2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hw2, align 8
  %add.ptr = getelementptr i8, ptr %9, i32 1982976
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #11, !srcloc !108
  %11 = lshr i32 %10, 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !157
  %and = and i32 %11, 15
  %pf_id4 = getelementptr inbounds %struct.i40e_pf, ptr %pf, i32 0, i32 1, i32 17
  %12 = ptrtoint ptr %pf_id4 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %pf_id4, align 2
  %conv = zext i8 %13 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %conv)
  %cmp.not = icmp eq i32 %and, %conv
  br i1 %cmp.not, label %do.body7, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %flags = getelementptr inbounds %struct.i40e_pf, ptr %pf, i32 0, i32 54
  %14 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags, align 8
  %and6 = and i32 %15, -131073
  store i32 %and6, ptr %flags, align 8
  %16 = ptrtoint ptr %pf to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pf, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, ptr noundef %7) #14
  br label %cleanup

do.body7:                                         ; preds = %entry
  %tmreg_lock = getelementptr inbounds %struct.i40e_pf, ptr %pf, i32 0, i32 103
  tail call void @__mutex_init(ptr noundef %tmreg_lock, ptr noundef nonnull @.str.13, ptr noundef nonnull @i40e_ptp_init.__key) #11
  %ptp_rx_lock = getelementptr inbounds %struct.i40e_pf, ptr %pf, i32 0, i32 111
  tail call void @__raw_spin_lock_init(ptr noundef %ptp_rx_lock, ptr noundef nonnull @.str.15, ptr noundef nonnull @i40e_ptp_init.__key.14, i16 noundef signext 3) #11
  %ptp_clock.i = getelementptr inbounds %struct.i40e_pf, ptr %pf, i32 0, i32 93
  %18 = ptrtoint ptr %ptp_clock.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ptp_clock.i, align 8
  %tobool.not.i.i = icmp eq ptr %19, null
  %cmp.i.i = icmp ugt ptr %19, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i = or i1 %tobool.not.i.i, %cmp.i.i
  br i1 %spec.select.i.i, label %if.end.i, label %do.body7.if.then23_crit_edge

do.body7.if.then23_crit_edge:                     ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then23

if.end.i:                                         ; preds = %do.body7
  %ptp_caps.i = getelementptr inbounds %struct.i40e_pf, ptr %pf, i32 0, i32 94
  %name.i = getelementptr inbounds %struct.i40e_pf, ptr %pf, i32 0, i32 94, i32 1
  %call1.i = tail call i32 @strlcpy(ptr noundef %name.i, ptr noundef nonnull @i40e_driver_name, i32 noundef 31) #11
  %20 = ptrtoint ptr %ptp_caps.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %ptp_caps.i, align 4
  %max_adj.i = getelementptr inbounds %struct.i40e_pf, ptr %pf, i32 0, i32 94, i32 2
  %21 = ptrtoint ptr %max_adj.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 999999999, ptr %max_adj.i, align 4
  %adjfreq.i = getelementptr inbounds %struct.i40e_pf, ptr %pf, i32 0, i32 94, i32 10
  %22 = ptrtoint ptr %adjfreq.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @i40e_ptp_adjfreq, ptr %adjfreq.i, align 4
  %adjtime.i = getelementptr inbounds %struct.i40e_pf, ptr %pf, i32 0, i32 94, i32 12
  %23 = ptrtoint ptr %adjtime.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @i40e_ptp_adjtime, ptr %adjtime.i, align 4
  %gettimex64.i = getelementptr inbounds %struct.i40e_pf, ptr %pf, i32 0, i32 94, i32 14
  %24 = ptrtoint ptr %gettimex64.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @i40e_ptp_gettimex, ptr %gettimex64.i, align 4
  %settime64.i = getelementptr inbounds %struct.i40e_pf, ptr %pf, i32 0, i32 94, i32 16
  %25 = ptrtoint ptr %settime64.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @i40e_ptp_settime, ptr %settime64.i, align 4
  %device_id.i.i = getelementptr inbounds %struct.i40e_pf, ptr %pf, i32 0, i32 1, i32 7
  %26 = ptrtoint ptr %device_id.i.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %device_id.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 5515, i16 %27)
  %cmp.i44.i = icmp eq i16 %27, 5515
  br i1 %cmp.i44.i, label %i40e_is_ptp_pin_dev.exit.i, label %if.end.i.if.end13.i_crit_edge

if.end.i.if.end13.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13.i

i40e_is_ptp_pin_dev.exit.i:                       ; preds = %if.end.i
  %subsystem_device_id.i.i = getelementptr inbounds %struct.i40e_pf, ptr %pf, i32 0, i32 1, i32 9
  %28 = ptrtoint ptr %subsystem_device_id.i.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %subsystem_device_id.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 11, i16 %29)
  %cmp3.i.i = icmp eq i16 %29, 11
  br i1 %cmp3.i.i, label %if.then9.i, label %i40e_is_ptp_pin_dev.exit.i.if.end13.i_crit_edge

i40e_is_ptp_pin_dev.exit.i.if.end13.i_crit_edge:  ; preds = %i40e_is_ptp_pin_dev.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13.i

if.then9.i:                                       ; preds = %i40e_is_ptp_pin_dev.exit.i
  %n_pins.i.i = getelementptr inbounds %struct.i40e_pf, ptr %pf, i32 0, i32 94, i32 6
  %30 = ptrtoint ptr %n_pins.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 3, ptr %n_pins.i.i, align 4
  %n_ext_ts.i.i = getelementptr inbounds %struct.i40e_pf, ptr %pf, i32 0, i32 94, i32 4
  %31 = ptrtoint ptr %n_ext_ts.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 2, ptr %n_ext_ts.i.i, align 4
  %pps.i.i = getelementptr inbounds %struct.i40e_pf, ptr %pf, i32 0, i32 94, i32 7
  %32 = ptrtoint ptr %pps.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 1, ptr %pps.i.i, align 4
  %n_per_out.i.i = getelementptr inbounds %struct.i40e_pf, ptr %pf, i32 0, i32 94, i32 5
  %33 = ptrtoint ptr %n_per_out.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 2, ptr %n_per_out.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %34 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %34, i32 noundef 3520, i32 noundef 288) #16
  %pin_config.i.i = getelementptr inbounds %struct.i40e_pf, ptr %pf, i32 0, i32 94, i32 8
  %35 = ptrtoint ptr %pin_config.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call7.i.i.i.i.i, ptr %pin_config.i.i, align 4
  %tobool.not.i45.i = icmp eq ptr %call7.i.i.i.i.i, null
  br i1 %tobool.not.i45.i, label %if.then9.i.if.then15_crit_edge, label %for.cond.preheader.i.i

if.then9.i.if.then15_crit_edge:                   ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then15

for.cond.preheader.i.i:                           ; preds = %if.then9.i
  %36 = ptrtoint ptr %n_pins.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %n_pins.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp56.i.i = icmp sgt i32 %37, 0
  br i1 %cmp56.i.i, label %for.cond.preheader.i.i.for.body.i.i_crit_edge, label %for.cond.preheader.i.i.i40e_init_pin_config.exit.thread.i_crit_edge

for.cond.preheader.i.i.i40e_init_pin_config.exit.thread.i_crit_edge: ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %i40e_init_pin_config.exit.thread.i

for.cond.preheader.i.i.for.body.i.i_crit_edge:    ; preds = %for.cond.preheader.i.i
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.cond.preheader.i.i.for.body.i.i_crit_edge
  %i.057.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %for.cond.preheader.i.i.for.body.i.i_crit_edge ]
  %38 = ptrtoint ptr %pin_config.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pin_config.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.ptp_pin_desc, ptr %39, i32 %i.057.i.i
  %arrayidx13.i.i = getelementptr [3 x %struct.ptp_pin_desc], ptr @sdp_desc, i32 0, i32 %i.057.i.i
  %call16.i.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %arrayidx.i.i, i32 noundef 64, ptr noundef nonnull @.str.36, ptr noundef %arrayidx13.i.i) #11
  %index.i.i = getelementptr [3 x %struct.ptp_pin_desc], ptr @sdp_desc, i32 0, i32 %i.057.i.i, i32 1
  %40 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %index.i.i, align 4
  %42 = ptrtoint ptr %pin_config.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %pin_config.i.i, align 4
  %index21.i.i = getelementptr %struct.ptp_pin_desc, ptr %43, i32 %i.057.i.i, i32 1
  %44 = ptrtoint ptr %index21.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %41, ptr %index21.i.i, align 4
  %45 = load ptr, ptr %pin_config.i.i, align 4
  %func.i.i = getelementptr %struct.ptp_pin_desc, ptr %45, i32 %i.057.i.i, i32 2
  %46 = ptrtoint ptr %func.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %func.i.i, align 4
  %chan.i.i = getelementptr [3 x %struct.ptp_pin_desc], ptr @sdp_desc, i32 0, i32 %i.057.i.i, i32 3
  %47 = ptrtoint ptr %chan.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %chan.i.i, align 4
  %49 = load ptr, ptr %pin_config.i.i, align 4
  %chan29.i.i = getelementptr %struct.ptp_pin_desc, ptr %49, i32 %i.057.i.i, i32 3
  %50 = ptrtoint ptr %chan29.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %48, ptr %chan29.i.i, align 4
  %inc.i.i = add nuw nsw i32 %i.057.i.i, 1
  %51 = ptrtoint ptr %n_pins.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %n_pins.i.i, align 4
  %cmp.i46.i = icmp slt i32 %inc.i.i, %52
  br i1 %cmp.i46.i, label %for.body.i.i.for.body.i.i_crit_edge, label %for.body.i.i.i40e_init_pin_config.exit.thread.i_crit_edge

for.body.i.i.i40e_init_pin_config.exit.thread.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %i40e_init_pin_config.exit.thread.i

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

i40e_init_pin_config.exit.thread.i:               ; preds = %for.body.i.i.i40e_init_pin_config.exit.thread.i_crit_edge, %for.cond.preheader.i.i.i40e_init_pin_config.exit.thread.i_crit_edge
  %verify.i.i = getelementptr inbounds %struct.i40e_pf, ptr %pf, i32 0, i32 94, i32 18
  %53 = ptrtoint ptr %verify.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr @i40e_ptp_verify, ptr %verify.i.i, align 4
  %enable.i.i = getelementptr inbounds %struct.i40e_pf, ptr %pf, i32 0, i32 94, i32 17
  %54 = ptrtoint ptr %enable.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr @i40e_ptp_feature_enable, ptr %enable.i.i, align 4
  %55 = ptrtoint ptr %pps.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 1, ptr %pps.i.i, align 4
  br label %if.end13.i

if.end13.i:                                       ; preds = %i40e_init_pin_config.exit.thread.i, %i40e_is_ptp_pin_dev.exit.i.if.end13.i_crit_edge, %if.end.i.if.end13.i_crit_edge
  %56 = ptrtoint ptr %pf to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %pf, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %57, i32 0, i32 44
  %call15.i = tail call ptr @ptp_clock_register(ptr noundef %ptp_caps.i, ptr noundef %dev.i) #11
  %58 = ptrtoint ptr %ptp_clock.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %call15.i, ptr %ptp_clock.i, align 8
  %cmp.i47.i = icmp ugt ptr %call15.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i47.i, label %if.end13.i.if.then15_crit_edge, label %i40e_ptp_create_clock.exit.thread

if.end13.i.if.then15_crit_edge:                   ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then15

i40e_ptp_create_clock.exit.thread:                ; preds = %if.end13.i
  %rx_filter.i = getelementptr inbounds %struct.i40e_pf, ptr %pf, i32 0, i32 97, i32 2
  %59 = ptrtoint ptr %rx_filter.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 0, ptr %rx_filter.i, align 8
  %tx_type.i = getelementptr inbounds %struct.i40e_pf, ptr %pf, i32 0, i32 97, i32 1
  %60 = ptrtoint ptr %tx_type.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 0, ptr %tx_type.i, align 4
  %ptp_prev_hw_time.i = getelementptr inbounds %struct.i40e_pf, ptr %pf, i32 0, i32 98
  tail call void @ktime_get_real_ts64(ptr noundef %ptp_prev_hw_time.i) #11
  %call24.i = tail call i64 @ktime_get() #11
  %ptp_reset_start.i = getelementptr inbounds %struct.i40e_pf, ptr %pf, i32 0, i32 102
  %61 = ptrtoint ptr %ptp_reset_start.i to i32
  call void @__asan_store8_noabort(i32 %61)
  store i64 %call24.i, ptr %ptp_reset_start.i, align 8
  %62 = ptrtoint ptr %ptp_clock.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %.pr.pr = load ptr, ptr %ptp_clock.i, align 8
  %tobool22.not = icmp eq ptr %.pr.pr, null
  br i1 %tobool22.not, label %i40e_ptp_create_clock.exit.thread.if.end63_crit_edge, label %i40e_ptp_create_clock.exit.thread.if.then23_crit_edge

i40e_ptp_create_clock.exit.thread.if.then23_crit_edge: ; preds = %i40e_ptp_create_clock.exit.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then23

i40e_ptp_create_clock.exit.thread.if.end63_crit_edge: ; preds = %i40e_ptp_create_clock.exit.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end63

if.then15:                                        ; preds = %if.end13.i.if.then15_crit_edge, %if.then9.i.if.then15_crit_edge
  %63 = ptrtoint ptr %ptp_clock.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr null, ptr %ptp_clock.i, align 8
  %64 = ptrtoint ptr %pf to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %pf, align 8
  %dev20 = getelementptr inbounds %struct.pci_dev, ptr %65, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev20, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.11) #14
  br label %if.end63

if.then23:                                        ; preds = %i40e_ptp_create_clock.exit.thread.if.then23_crit_edge, %do.body7.if.then23_crit_edge
  %debug_mask = getelementptr inbounds %struct.i40e_pf, ptr %pf, i32 0, i32 1, i32 39
  %66 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %debug_mask, align 8
  %and25 = and i32 %67, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %if.then23.if.end33_crit_edge, label %do.end30

if.then23.if.end33_crit_edge:                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end33

do.end30:                                         ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #13
  %68 = ptrtoint ptr %pf to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %pf, align 8
  %dev32 = getelementptr inbounds %struct.pci_dev, ptr %69, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev32, ptr noundef nonnull @.str.21) #14
  br label %if.end33

if.end33:                                         ; preds = %do.end30, %if.then23.if.end33_crit_edge
  %flags34 = getelementptr inbounds %struct.i40e_pf, ptr %pf, i32 0, i32 54
  %70 = ptrtoint ptr %flags34 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %flags34, align 8
  %or = or i32 %71, 131072
  store i32 %or, ptr %flags34, align 8
  %72 = ptrtoint ptr %hw2 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %hw2, align 8
  %add.ptr38 = getelementptr i8, ptr %73, i32 1982976
  %74 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr38) #11, !srcloc !108
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !158
  %75 = or i32 %74, 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !159
  tail call void @arm_heavy_mb() #11
  %76 = ptrtoint ptr %hw2 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %hw2, align 8
  %add.ptr47 = getelementptr i8, ptr %77, i32 1982976
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr47, i32 %75) #11, !srcloc !119
  %78 = ptrtoint ptr %hw2 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %hw2, align 8
  %add.ptr51 = getelementptr i8, ptr %79, i32 544800
  %80 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51) #11, !srcloc !108
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !160
  %81 = or i32 %80, 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !161
  tail call void @arm_heavy_mb() #11
  %82 = ptrtoint ptr %hw2 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %hw2, align 8
  %add.ptr60 = getelementptr i8, ptr %83, i32 544800
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr60, i32 %81) #11, !srcloc !119
  tail call void @i40e_ptp_set_increment(ptr noundef %pf)
  %tstamp_config = getelementptr inbounds %struct.i40e_pf, ptr %pf, i32 0, i32 97
  %call61 = tail call fastcc i32 @i40e_ptp_set_timestamp_mode(ptr noundef %pf, ptr noundef %tstamp_config)
  tail call void @i40e_ptp_restore_hw_time(ptr noundef %pf)
  br label %if.end63

if.end63:                                         ; preds = %if.end33, %if.then15, %i40e_ptp_create_clock.exit.thread.if.end63_crit_edge
  tail call fastcc void @i40e_ptp_set_1pps_signal_hw(ptr noundef %pf)
  br label %cleanup

cleanup:                                          ; preds = %if.end63, %if.then
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @i40e_ptp_set_1pps_signal_hw(ptr nocapture noundef readonly %pf) unnamed_addr #0 align 64 {
entry:
  %tmp11.i = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr inbounds %struct.i40e_pf, ptr %pf, i32 0, i32 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !162
  tail call void @arm_heavy_mb() #11
  %0 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw1, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 1983168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #11, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !163
  tail call void @arm_heavy_mb() #11
  %2 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw1, align 8
  %add.ptr6 = getelementptr i8, ptr %3, i32 1983232
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 16777216) #11, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !164
  tail call void @arm_heavy_mb() #11
  %4 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw1, align 8
  %add.ptr11 = getelementptr i8, ptr %5, i32 1983168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11, i32 16777216) #11, !srcloc !119
  %6 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw1, align 8
  %add.ptr.i = getelementptr i8, ptr %7, i32 1982720
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !108
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !152
  %9 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hw1, align 8
  %add.ptr6.i = getelementptr i8, ptr %10, i32 1982752
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i) #11, !srcloc !108
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !153
  %12 = zext i32 %11 to i64
  %13 = zext i32 %8 to i64
  %14 = shl nuw i64 %13, 32
  %15 = or i64 %14, %12
  %16 = tail call i64 @llvm.bswap.i64(i64 %15) #11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp11.i) #11
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %tmp11.i, i64 noundef %16) #11
  %17 = ptrtoint ptr %tmp11.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %now.sroa.0.0.copyload48 = load i64, ptr %tmp11.i, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp11.i) #11
  %add = add i64 %now.sroa.0.0.copyload48, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 9223372035, i64 %add)
  %cmp.i = icmp sgt i64 %add, 9223372035
  call void @__sanitizer_cov_trace_const_cmp8(i64 -9223372035, i64 %add)
  %cmp2.i = icmp slt i64 %add, -9223372035
  %mul.i = mul nsw i64 %add, 1000000000
  %spec.select = select i1 %cmp2.i, i64 -9223372036854775808, i64 %mul.i
  %retval.0.i = select i1 %cmp.i, i64 9223372036854775807, i64 %spec.select
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !165
  call void @arm_heavy_mb() #11
  %conv = trunc i64 %retval.0.i to i32
  %18 = call i32 @llvm.bswap.i32(i32 %conv)
  %19 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %hw1, align 8
  %add.ptr16 = getelementptr i8, ptr %20, i32 1982816
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16, i32 %18) #11, !srcloc !119
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !166
  call void @arm_heavy_mb() #11
  %shr = lshr i64 %retval.0.i, 32
  %conv20 = trunc i64 %shr to i32
  %21 = call i32 @llvm.bswap.i32(i32 %conv20)
  %22 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %hw1, align 8
  %add.ptr22 = getelementptr i8, ptr %23, i32 1982880
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22, i32 %21) #11, !srcloc !119
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !167
  call void @arm_heavy_mb() #11
  %24 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %hw1, align 8
  %add.ptr27 = getelementptr i8, ptr %25, i32 1983072
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr27, i32 6671645) #11, !srcloc !119
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !168
  call void @arm_heavy_mb() #11
  %26 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %hw1, align 8
  %add.ptr32 = getelementptr i8, ptr %27, i32 1983232
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr32, i32 16777216) #11, !srcloc !119
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !169
  call void @arm_heavy_mb() #11
  %28 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %hw1, align 8
  %add.ptr37 = getelementptr i8, ptr %29, i32 1983168
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr37, i32 117440512) #11, !srcloc !119
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @i40e_ptp_stop(ptr noundef %pf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr inbounds %struct.i40e_pf, ptr %pf, i32 0, i32 1
  %flags = getelementptr inbounds %struct.i40e_pf, ptr %pf, i32 0, i32 54
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 8
  %and = and i32 %1, -131073
  store i32 %and, ptr %flags, align 8
  %ptp_tx = getelementptr inbounds %struct.i40e_pf, ptr %pf, i32 0, i32 114
  %2 = ptrtoint ptr %ptp_tx to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %ptp_tx, align 8
  %ptp_rx = getelementptr inbounds %struct.i40e_pf, ptr %pf, i32 0, i32 115
  %3 = ptrtoint ptr %ptp_rx to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %ptp_rx, align 1
  %ptp_tx_skb = getelementptr inbounds %struct.i40e_pf, ptr %pf, i32 0, i32 95
  %4 = ptrtoint ptr %ptp_tx_skb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ptp_tx_skb, align 8
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %6 = ptrtoint ptr %ptp_tx_skb to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %ptp_tx_skb, align 8
  %state = getelementptr inbounds %struct.i40e_pf, ptr %pf, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %state, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !112
  tail call void @llvm.prefetch.p0(ptr %state, i32 1, i32 3, i32 1) #11
  %7 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %state, ptr %state, i32 524288, ptr elementtype(i32) %state) #11, !srcloc !113
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %5, i32 noundef 1) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ptp_clock = getelementptr inbounds %struct.i40e_pf, ptr %pf, i32 0, i32 93
  %8 = ptrtoint ptr %ptp_clock to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ptp_clock, align 8
  %tobool4.not = icmp eq ptr %9, null
  br i1 %tobool4.not, label %if.end.if.end9_crit_edge, label %if.then5

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 @ptp_clock_unregister(ptr noundef nonnull %9) #11
  %10 = ptrtoint ptr %ptp_clock to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %ptp_clock, align 8
  %11 = ptrtoint ptr %pf to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pf, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %12, i32 0, i32 44
  %vsi = getelementptr inbounds %struct.i40e_pf, ptr %pf, i32 0, i32 74
  %13 = ptrtoint ptr %vsi to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %vsi, align 8
  %lan_vsi = getelementptr inbounds %struct.i40e_pf, ptr %pf, i32 0, i32 71
  %15 = ptrtoint ptr %lan_vsi to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %lan_vsi, align 8
  %idxprom = zext i16 %16 to i32
  %arrayidx = getelementptr ptr, ptr %14, i32 %idxprom
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 128
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.24, ptr noundef %20) #14
  br label %if.end9

if.end9:                                          ; preds = %if.then5, %if.end.if.end9_crit_edge
  %device_id.i = getelementptr inbounds %struct.i40e_pf, ptr %pf, i32 0, i32 1, i32 7
  %21 = ptrtoint ptr %device_id.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %device_id.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 5515, i16 %22)
  %cmp.i = icmp eq i16 %22, 5515
  br i1 %cmp.i, label %i40e_is_ptp_pin_dev.exit, label %if.end9.if.end13_crit_edge

if.end9.if.end13_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13

i40e_is_ptp_pin_dev.exit:                         ; preds = %if.end9
  %subsystem_device_id.i = getelementptr inbounds %struct.i40e_pf, ptr %pf, i32 0, i32 1, i32 9
  %23 = ptrtoint ptr %subsystem_device_id.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %subsystem_device_id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 11, i16 %24)
  %cmp3.i = icmp eq i16 %24, 11
  br i1 %cmp3.i, label %if.then12, label %i40e_is_ptp_pin_dev.exit.if.end13_crit_edge

i40e_is_ptp_pin_dev.exit.if.end13_crit_edge:      ; preds = %i40e_is_ptp_pin_dev.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13

if.then12:                                        ; preds = %i40e_is_ptp_pin_dev.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !127
  tail call void @arm_heavy_mb() #11
  %25 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %hw1, align 8
  %add.ptr.i = getelementptr i8, ptr %26, i32 557384
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #11, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !127
  tail call void @arm_heavy_mb() #11
  %27 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %hw1, align 8
  %add.ptr.i60 = getelementptr i8, ptr %28, i32 557388
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i60, i32 0) #11, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !127
  tail call void @arm_heavy_mb() #11
  %29 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %hw1, align 8
  %add.ptr.i61 = getelementptr i8, ptr %30, i32 557392
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i61, i32 0) #11, !srcloc !119
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %i40e_is_ptp_pin_dev.exit.if.end13_crit_edge, %if.end9.if.end13_crit_edge
  %31 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %hw1, align 8
  %add.ptr = getelementptr i8, ptr %32, i32 1983136
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #11, !srcloc !108
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !170
  %34 = and i32 %33, -513
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !171
  tail call void @arm_heavy_mb() #11
  %35 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %hw1, align 8
  %add.ptr21 = getelementptr i8, ptr %36, i32 1983136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21, i32 %34) #11, !srcloc !119
  %37 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %hw1, align 8
  %add.ptr25 = getelementptr i8, ptr %38, i32 1982976
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr25) #11, !srcloc !108
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !172
  %40 = and i32 %39, -67108865
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !173
  tail call void @arm_heavy_mb() #11
  %41 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %hw1, align 8
  %add.ptr34 = getelementptr i8, ptr %42, i32 1982976
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr34, i32 %40) #11, !srcloc !119
  %43 = ptrtoint ptr %device_id.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %device_id.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 5515, i16 %44)
  %cmp.i.i = icmp eq i16 %44, 5515
  br i1 %cmp.i.i, label %i40e_is_ptp_pin_dev.exit.i, label %if.end13.i40e_ptp_free_pins.exit_crit_edge

if.end13.i40e_ptp_free_pins.exit_crit_edge:       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %i40e_ptp_free_pins.exit

i40e_is_ptp_pin_dev.exit.i:                       ; preds = %if.end13
  %subsystem_device_id.i.i = getelementptr inbounds %struct.i40e_pf, ptr %pf, i32 0, i32 1, i32 9
  %45 = ptrtoint ptr %subsystem_device_id.i.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %subsystem_device_id.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 11, i16 %46)
  %cmp3.i.i = icmp eq i16 %46, 11
  br i1 %cmp3.i.i, label %if.then.i, label %i40e_is_ptp_pin_dev.exit.i.i40e_ptp_free_pins.exit_crit_edge

i40e_is_ptp_pin_dev.exit.i.i40e_ptp_free_pins.exit_crit_edge: ; preds = %i40e_is_ptp_pin_dev.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %i40e_ptp_free_pins.exit

if.then.i:                                        ; preds = %i40e_is_ptp_pin_dev.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %ptp_pins.i = getelementptr inbounds %struct.i40e_pf, ptr %pf, i32 0, i32 116
  %47 = ptrtoint ptr %ptp_pins.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ptp_pins.i, align 4
  tail call void @kfree(ptr noundef %48) #11
  %pin_config.i = getelementptr inbounds %struct.i40e_pf, ptr %pf, i32 0, i32 94, i32 8
  %49 = ptrtoint ptr %pin_config.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %pin_config.i, align 4
  tail call void @kfree(ptr noundef %50) #11
  %51 = ptrtoint ptr %ptp_pins.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr null, ptr %ptp_pins.i, align 4
  br label %i40e_ptp_free_pins.exit

i40e_ptp_free_pins.exit:                          ; preds = %if.then.i, %i40e_is_ptp_pin_dev.exit.i.i40e_ptp_free_pins.exit_crit_edge, %if.end13.i40e_ptp_free_pins.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ptp_clock_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @i40e_ptp_set_pin_hw(ptr nocapture noundef readonly %hw, i32 noundef %pin, i32 noundef %state) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %state to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.53)
  switch i32 %state, label %entry.sw.epilog_crit_edge [
    i32 0, label %do.body
    i32 1, label %do.body2
    i32 2, label %do.body9
    i32 3, label %do.body16
    i32 4, label %do.body23
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !127
  tail call void @arm_heavy_mb() #11
  %1 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hw, align 8
  %mul = shl i32 %pin, 2
  %add = add i32 %mul, 557312
  %add.ptr = getelementptr i8, ptr %2, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #11, !srcloc !119
  br label %sw.epilog

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !174
  tail call void @arm_heavy_mb() #11
  %3 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hw, align 8
  %mul5 = shl i32 %pin, 2
  %add6 = add i32 %mul5, 557312
  %add.ptr7 = getelementptr i8, ptr %4, i32 %add6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 -2080247805) #11, !srcloc !119
  br label %sw.epilog

do.body9:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !175
  tail call void @arm_heavy_mb() #11
  %5 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hw, align 8
  %mul12 = shl i32 %pin, 2
  %add13 = add i32 %mul12, 557312
  %add.ptr14 = getelementptr i8, ptr %6, i32 %add13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14, i32 -2063470589) #11, !srcloc !119
  br label %sw.epilog

do.body16:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !176
  tail call void @arm_heavy_mb() #11
  %7 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hw, align 8
  %mul19 = shl i32 %pin, 2
  %add20 = add i32 %mul19, 557312
  %add.ptr21 = getelementptr i8, ptr %8, i32 %add20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21, i32 1946349571) #11, !srcloc !119
  br label %sw.epilog

do.body23:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !177
  tail call void @arm_heavy_mb() #11
  %9 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hw, align 8
  %mul26 = shl i32 %pin, 2
  %add27 = add i32 %mul26, 557312
  %add.ptr28 = getelementptr i8, ptr %10, i32 %add27
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr28, i32 1963126787) #11, !srcloc !119
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.body23, %do.body16, %do.body9, %do.body2, %do.body, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @i40e_ptp_extts0_work(ptr nocapture noundef readonly %work) #0 align 64 {
entry:
  %event = alloca %struct.ptp_clock_event, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr i8, ptr %work, i32 -4356
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %event) #11
  %0 = getelementptr inbounds i8, ptr %event, i32 16
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 -1, ptr %0, align 8
  %2 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw1, align 8
  %add.ptr2 = getelementptr i8, ptr %3, i32 1982592
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2) #11, !srcloc !108
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !178
  %5 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hw1, align 8
  %add.ptr8 = getelementptr i8, ptr %6, i32 1982656
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8) #11, !srcloc !108
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !179
  %8 = zext i32 %7 to i64
  %9 = zext i32 %4 to i64
  %10 = shl nuw i64 %9, 32
  %11 = or i64 %10, %8
  %12 = tail call i64 @llvm.bswap.i64(i64 %11)
  %13 = getelementptr inbounds %struct.ptp_clock_event, ptr %event, i32 0, i32 2
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %12, ptr %13, align 8
  %15 = ptrtoint ptr %event to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %event, align 8
  %pf_id = getelementptr i8, ptr %work, i32 -3754
  %16 = ptrtoint ptr %pf_id to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %pf_id, align 2
  %conv13 = zext i8 %17 to i32
  %index = getelementptr inbounds %struct.ptp_clock_event, ptr %event, i32 0, i32 1
  %18 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %conv13, ptr %index, align 4
  %ptp_clock = getelementptr i8, ptr %work, i32 -196
  %19 = ptrtoint ptr %ptp_clock to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ptp_clock, align 8
  call void @ptp_clock_event(ptr noundef %20, ptr noundef nonnull %event) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %event) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ptp_clock_event(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ns_to_timespec64(ptr sret(%struct.timespec64) align 8, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ktime_get_real_ts64(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @i40e_ptp_adjfreq(ptr noundef %ptp, i32 noundef %ppb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ppb)
  %cmp = icmp slt i32 %ppb, 0
  %0 = tail call i32 @llvm.abs.i32(i32 %ppb, i1 false)
  %conv = sext i32 %0 to i64
  %mul = mul i64 %conv, 6871947673
  %1 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -8543223759426509417, i64 %mul, i32 0) #15, !srcloc !180
  %asmresult.i.i.i = extractvalue { i64, i32 } %1, 0
  %asmresult4.i.i.i = extractvalue { i64, i32 } %1, 1
  %2 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -8543223759426509417, i64 %mul, i64 %asmresult.i.i.i, i32 %asmresult4.i.i.i) #15, !srcloc !181
  %asmresult10.i.i.i = extractvalue { i64, i32 } %2, 0
  %div1581.i.i = lshr i64 %asmresult10.i.i.i, 29
  %3 = sub nsw i64 0, %div1581.i.i
  %adj.0.p = select i1 %cmp, i64 %3, i64 %div1581.i.i
  %adj.0 = add nsw i64 %adj.0.p, 6871947673
  %hw1 = getelementptr i8, ptr %ptp, i32 -4164
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !182
  %ptp_adj_mult = getelementptr i8, ptr %ptp, i32 384
  %4 = ptrtoint ptr %ptp_adj_mult to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %ptp_adj_mult, align 4
  %conv12 = zext i32 %5 to i64
  %mul13 = mul i64 %adj.0, %conv12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !183
  tail call void @arm_heavy_mb() #11
  %conv17 = trunc i64 %mul13 to i32
  %6 = tail call i32 @llvm.bswap.i32(i32 %conv17)
  %7 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hw1, align 8
  %add.ptr18 = getelementptr i8, ptr %8, i32 1982528
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18, i32 %6) #11, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !184
  tail call void @arm_heavy_mb() #11
  %shr = lshr i64 %mul13, 32
  %conv22 = trunc i64 %shr to i32
  %9 = tail call i32 @llvm.bswap.i32(i32 %conv22)
  %10 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hw1, align 8
  %add.ptr24 = getelementptr i8, ptr %11, i32 1982560
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24, i32 %9) #11, !srcloc !119
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @i40e_ptp_adjtime(ptr noundef %ptp, i64 noundef %delta) #0 align 64 {
entry:
  %tmp11.i = alloca %struct.timespec64, align 8
  %tmp9 = alloca %struct.timespec64, align 8
  %tmp10 = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %ptp, i32 -4172
  %tmreg_lock = getelementptr i8, ptr %ptp, i32 292
  tail call void @mutex_lock_nested(ptr noundef %tmreg_lock, i32 noundef 0) #11
  %0 = add i64 %delta, 999999899
  call void @__sanitizer_cov_trace_const_cmp8(i64 1999999799, i64 %0)
  %1 = icmp ult i64 %0, 1999999799
  br i1 %1, label %if.then, label %if.else8

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %hw1 = getelementptr i8, ptr %ptp, i32 -4164
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %delta)
  %cmp3 = icmp slt i64 %delta, 0
  %2 = trunc i64 %delta to i32
  %extract.t = sub nsw i32 0, %2
  %tohw.0.off0 = select i1 %cmp3, i32 %extract.t, i32 %2
  %conv = and i32 %tohw.0.off0, 1073741823
  %or = or i32 %conv, -2147483648
  %timadj.0 = select i1 %cmp3, i32 %or, i32 %conv
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !185
  tail call void @arm_heavy_mb() #11
  %3 = tail call i32 @llvm.bswap.i32(i32 %timadj.0)
  %4 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw1, align 8
  %add.ptr7 = getelementptr i8, ptr %5, i32 1983104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 %3) #11, !srcloc !119
  br label %if.end11

if.else8:                                         ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp9) #11
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %tmp9, i64 noundef %delta) #11
  %6 = ptrtoint ptr %tmp9 to i32
  call void @__asan_load8_noabort(i32 %6)
  %then.sroa.0.0.copyload19 = load i64, ptr %tmp9, align 8
  %then.sroa.5.0.tmp9.sroa_idx = getelementptr inbounds i8, ptr %tmp9, i32 8
  %7 = ptrtoint ptr %then.sroa.5.0.tmp9.sroa_idx to i32
  call void @__asan_load8_noabort(i32 %7)
  %then.sroa.5.0.copyload20 = load i64, ptr %then.sroa.5.0.tmp9.sroa_idx, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp9) #11
  %hw1.i = getelementptr i8, ptr %ptp, i32 -4164
  %8 = ptrtoint ptr %hw1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hw1.i, align 8
  %add.ptr.i = getelementptr i8, ptr %9, i32 1982720
  %10 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !108
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !152
  %11 = ptrtoint ptr %hw1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hw1.i, align 8
  %add.ptr6.i = getelementptr i8, ptr %12, i32 1982752
  %13 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i) #11, !srcloc !108
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !153
  %14 = zext i32 %13 to i64
  %15 = zext i32 %10 to i64
  %16 = shl nuw i64 %15, 32
  %17 = or i64 %16, %14
  %18 = call i64 @llvm.bswap.i64(i64 %17) #11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp11.i) #11
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %tmp11.i, i64 noundef %18) #11
  %19 = ptrtoint ptr %tmp11.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %now.sroa.0.0.copyload36 = load i64, ptr %tmp11.i, align 8
  %now.sroa.7.0.tmp11.i.sroa_idx = getelementptr inbounds i8, ptr %tmp11.i, i32 8
  %20 = ptrtoint ptr %now.sroa.7.0.tmp11.i.sroa_idx to i32
  call void @__asan_load8_noabort(i32 %20)
  %now.sroa.7.0.copyload38 = load i64, ptr %now.sroa.7.0.tmp11.i.sroa_idx, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp11.i) #11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp10) #11
  %lhs.sroa.2.8.extract.shift.i = lshr i64 %now.sroa.7.0.copyload38, 32
  %lhs.sroa.2.8.extract.trunc.i = trunc i64 %lhs.sroa.2.8.extract.shift.i to i32
  %rhs.sroa.2.8.extract.shift.i = lshr i64 %then.sroa.5.0.copyload20, 32
  %rhs.sroa.2.8.extract.trunc.i = trunc i64 %rhs.sroa.2.8.extract.shift.i to i32
  %21 = call ptr @memset(ptr %tmp10, i32 255, i32 16)
  %add.i = add i64 %now.sroa.0.0.copyload36, %then.sroa.0.0.copyload19
  %add3.i = add i32 %lhs.sroa.2.8.extract.trunc.i, %rhs.sroa.2.8.extract.trunc.i
  %conv.i = sext i32 %add3.i to i64
  call void @set_normalized_timespec64(ptr noundef nonnull %tmp10, i64 noundef %add.i, i64 noundef %conv.i) #11
  %22 = ptrtoint ptr %tmp10 to i32
  call void @__asan_load8_noabort(i32 %22)
  %now.sroa.0.0.copyload35 = load i64, ptr %tmp10, align 8
  %now.sroa.7.0.tmp10.sroa_idx = getelementptr inbounds i8, ptr %tmp10, i32 8
  %23 = ptrtoint ptr %now.sroa.7.0.tmp10.sroa_idx to i32
  call void @__asan_load8_noabort(i32 %23)
  %now.sroa.7.0.copyload37 = load i64, ptr %now.sroa.7.0.tmp10.sroa_idx, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp10) #11
  call void @__sanitizer_cov_trace_const_cmp8(i64 9223372035, i64 %now.sroa.0.0.copyload35)
  %cmp.i.i = icmp sgt i64 %now.sroa.0.0.copyload35, 9223372035
  br i1 %cmp.i.i, label %if.else8.i40e_ptp_write.exit_crit_edge, label %if.end.i.i

if.else8.i40e_ptp_write.exit_crit_edge:           ; preds = %if.else8
  call void @__sanitizer_cov_trace_pc() #13
  br label %i40e_ptp_write.exit

if.end.i.i:                                       ; preds = %if.else8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -9223372035, i64 %now.sroa.0.0.copyload35)
  %cmp2.i.i = icmp slt i64 %now.sroa.0.0.copyload35, -9223372035
  br i1 %cmp2.i.i, label %if.end.i.i.i40e_ptp_write.exit_crit_edge, label %if.end4.i.i

if.end.i.i.i40e_ptp_write.exit_crit_edge:         ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %i40e_ptp_write.exit

if.end4.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %mul.i.i = mul nsw i64 %now.sroa.0.0.copyload35, 1000000000
  %conv.i.i = ashr i64 %now.sroa.7.0.copyload37, 32
  %add.i.i = add i64 %conv.i.i, %mul.i.i
  %extract.t.i = trunc i64 %add.i.i to i32
  %extract.i = lshr i64 %add.i.i, 32
  %extract.t10.i = trunc i64 %extract.i to i32
  br label %i40e_ptp_write.exit

i40e_ptp_write.exit:                              ; preds = %if.end4.i.i, %if.end.i.i.i40e_ptp_write.exit_crit_edge, %if.else8.i40e_ptp_write.exit_crit_edge
  %retval.0.i.off0.i = phi i32 [ %extract.t.i, %if.end4.i.i ], [ -1, %if.else8.i40e_ptp_write.exit_crit_edge ], [ 0, %if.end.i.i.i40e_ptp_write.exit_crit_edge ]
  %retval.0.i.off32.i = phi i32 [ %extract.t10.i, %if.end4.i.i ], [ 2147483647, %if.else8.i40e_ptp_write.exit_crit_edge ], [ -2147483648, %if.end.i.i.i40e_ptp_write.exit_crit_edge ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !155
  call void @arm_heavy_mb() #11
  %24 = call i32 @llvm.bswap.i32(i32 %retval.0.i.off0.i) #11
  %25 = ptrtoint ptr %hw1.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %hw1.i, align 8
  %add.ptr.i34 = getelementptr i8, ptr %26, i32 1982720
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i34, i32 %24) #11, !srcloc !119
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !156
  call void @arm_heavy_mb() #11
  %27 = call i32 @llvm.bswap.i32(i32 %retval.0.i.off32.i) #11
  %28 = ptrtoint ptr %hw1.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %hw1.i, align 8
  %add.ptr7.i = getelementptr i8, ptr %29, i32 1982752
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7.i, i32 %27) #11, !srcloc !119
  call fastcc void @i40e_ptp_set_1pps_signal_hw(ptr noundef %add.ptr)
  br label %if.end11

if.end11:                                         ; preds = %i40e_ptp_write.exit, %if.then
  call void @mutex_unlock(ptr noundef %tmreg_lock) #11
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ptp_clock_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_normalized_timespec64(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @i40e_ptp_verify(ptr nocapture noundef readnone %ptp, i32 noundef %pin, i32 noundef %func, i32 noundef %chan) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %func)
  %cond = icmp eq i32 %func, 3
  %. = select i1 %cond, i32 -95, i32 0
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @i40e_ptp_feature_enable(ptr noundef %ptp, ptr nocapture noundef readonly %rq, i32 noundef %on) #0 align 64 {
entry:
  %pins.sroa.0.i = alloca i32, align 4
  %pins.sroa.11.i = alloca i32, align 4
  %pins.sroa.19.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %ptp, i32 -4172
  %0 = ptrtoint ptr %rq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rq, align 8
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.54)
  switch i32 %1, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb3
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %3 = getelementptr inbounds %struct.ptp_clock_request, ptr %rq, i32 0, i32 1
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %index2 = getelementptr inbounds %struct.ptp_clock_request, ptr %rq, i32 0, i32 1, i32 0, i32 2
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %on)
  %tobool.not.i = icmp eq i32 %on, 0
  br i1 %tobool.not.i, label %sw.bb3.cleanup_crit_edge, label %if.then.i

sw.bb3.cleanup_crit_edge:                         ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then.i:                                        ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @i40e_ptp_set_1pps_signal_hw(ptr noundef %add.ptr) #11
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb1, %sw.bb
  %cmp1.i.i = phi i1 [ false, %sw.bb1 ], [ true, %sw.bb ]
  %cmp9.i.i = phi i1 [ true, %sw.bb1 ], [ false, %sw.bb ]
  %func.0 = phi i32 [ 2, %sw.bb1 ], [ 1, %sw.bb ]
  %chan.0.in = phi ptr [ %index2, %sw.bb1 ], [ %3, %sw.bb ]
  %4 = ptrtoint ptr %chan.0.in to i32
  call void @__asan_load4_noabort(i32 %4)
  %chan.0 = load i32, ptr %chan.0.in, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pins.sroa.0.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pins.sroa.11.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pins.sroa.19.i)
  %pf_id.i = getelementptr i8, ptr %ptp, i32 -3562
  %5 = ptrtoint ptr %pf_id.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %pf_id.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not.i12 = icmp eq i8 %6, 0
  br i1 %tobool.not.i12, label %if.end.i, label %sw.epilog.i40e_ptp_enable_pin.exit_crit_edge

sw.epilog.i40e_ptp_enable_pin.exit_crit_edge:     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %i40e_ptp_enable_pin.exit

if.end.i:                                         ; preds = %sw.epilog
  %ptp_pins.i = getelementptr i8, ptr %ptp, i32 768
  %7 = ptrtoint ptr %ptp_pins.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ptp_pins.i, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 4
  %11 = ptrtoint ptr %pins.sroa.0.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %pins.sroa.0.i, align 4
  %sdp3_3.i = getelementptr inbounds %struct.i40e_ptp_pins_settings, ptr %8, i32 0, i32 1
  %12 = ptrtoint ptr %sdp3_3.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sdp3_3.i, align 4
  %14 = ptrtoint ptr %pins.sroa.11.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %pins.sroa.11.i, align 4
  %gpio_4.i = getelementptr inbounds %struct.i40e_ptp_pins_settings, ptr %8, i32 0, i32 2
  %15 = ptrtoint ptr %gpio_4.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %gpio_4.i, align 4
  %17 = ptrtoint ptr %pins.sroa.19.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %pins.sroa.19.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %on)
  %tobool6.not.i = icmp eq i32 %on, 0
  br i1 %tobool6.not.i, label %if.else.i, label %if.then7.i

if.then7.i:                                       ; preds = %if.end.i
  %ptp_clock.i = getelementptr i8, ptr %ptp, i32 -4
  %18 = ptrtoint ptr %ptp_clock.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ptp_clock.i, align 8
  %call.i = tail call i32 @ptp_find_pin(ptr noundef %19, i32 noundef %func.0, i32 noundef %chan.0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then7.i.i40e_ptp_enable_pin.exit_crit_edge, label %if.end9.i

if.then7.i.i40e_ptp_enable_pin.exit_crit_edge:    ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %i40e_ptp_enable_pin.exit

if.end9.i:                                        ; preds = %if.then7.i
  %20 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.55)
  switch i32 %call.i, label %if.end9.i.i40e_ptp_enable_pin.exit_crit_edge [
    i32 0, label %if.end9.i.sw.epilog.i_crit_edge
    i32 1, label %sw.bb11.i
    i32 2, label %sw.bb13.i
  ]

if.end9.i.sw.epilog.i_crit_edge:                  ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i

if.end9.i.i40e_ptp_enable_pin.exit_crit_edge:     ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %i40e_ptp_enable_pin.exit

sw.bb11.i:                                        ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i

sw.bb13.i:                                        ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb13.i, %sw.bb11.i, %if.end9.i.sw.epilog.i_crit_edge
  %pin.0.i = phi ptr [ %pins.sroa.19.i, %sw.bb13.i ], [ %pins.sroa.11.i, %sw.bb11.i ], [ %pins.sroa.0.i, %if.end9.i.sw.epilog.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %chan.0)
  %cmp.i.i = icmp eq i32 %chan.0, 0
  %or.cond.i.i = and i1 %cmp1.i.i, %cmp.i.i
  %state.0.i.i = zext i1 %or.cond.i.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %chan.0)
  %cmp2.i.i = icmp eq i32 %chan.0, 1
  %or.cond23.i.i = and i1 %cmp1.i.i, %cmp2.i.i
  %state.1.i.i = select i1 %or.cond23.i.i, i32 2, i32 %state.0.i.i
  %or.cond24.i.i = and i1 %cmp9.i.i, %cmp.i.i
  %state.2.i.i = select i1 %or.cond24.i.i, i32 3, i32 %state.1.i.i
  %or.cond25.i.i = and i1 %cmp9.i.i, %cmp2.i.i
  %state.3.i.i = select i1 %or.cond25.i.i, i32 4, i32 %state.2.i.i
  %21 = ptrtoint ptr %pin.0.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %state.3.i.i, ptr %pin.0.i, align 4
  br label %if.end19.i

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %22 = ptrtoint ptr %pins.sroa.0.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %pins.sroa.0.i, align 4
  %23 = ptrtoint ptr %pins.sroa.11.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %pins.sroa.11.i, align 4
  %24 = ptrtoint ptr %pins.sroa.19.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %pins.sroa.19.i, align 4
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.else.i, %sw.epilog.i
  %device_id.i.i.i.i = getelementptr i8, ptr %ptp, i32 -3996
  %25 = ptrtoint ptr %device_id.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %device_id.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 5515, i16 %26)
  %cmp.i.i.i.i = icmp eq i16 %26, 5515
  br i1 %cmp.i.i.i.i, label %i40e_is_ptp_pin_dev.exit.i.i.i, label %if.end19.i.i40e_can_set_pins.exit.thread93.i.i_crit_edge

if.end19.i.i40e_can_set_pins.exit.thread93.i.i_crit_edge: ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %i40e_can_set_pins.exit.thread93.i.i

i40e_is_ptp_pin_dev.exit.i.i.i:                   ; preds = %if.end19.i
  %subsystem_device_id.i.i.i.i = getelementptr i8, ptr %ptp, i32 -3992
  %27 = ptrtoint ptr %subsystem_device_id.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %subsystem_device_id.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 11, i16 %28)
  %cmp3.i.i.i.i = icmp eq i16 %28, 11
  br i1 %cmp3.i.i.i.i, label %if.end.i.i.i, label %i40e_is_ptp_pin_dev.exit.i.i.i.i40e_can_set_pins.exit.thread93.i.i_crit_edge

i40e_is_ptp_pin_dev.exit.i.i.i.i40e_can_set_pins.exit.thread93.i.i_crit_edge: ; preds = %i40e_is_ptp_pin_dev.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %i40e_can_set_pins.exit.thread93.i.i

if.end.i.i.i:                                     ; preds = %i40e_is_ptp_pin_dev.exit.i.i.i
  %29 = ptrtoint ptr %ptp_pins.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ptp_pins.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %30, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i.i40e_can_set_pins.exit.thread93.i.i_crit_edge, label %if.end6.i.i.i

if.end.i.i.i.i40e_can_set_pins.exit.thread93.i.i_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %i40e_can_set_pins.exit.thread93.i.i

if.end6.i.i.i:                                    ; preds = %if.end.i.i.i
  %31 = ptrtoint ptr %pf_id.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %pf_id.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool8.not.i.i.i = icmp eq i8 %32, 0
  br i1 %tobool8.not.i.i.i, label %if.end3.i.i, label %if.then2.i.i

i40e_can_set_pins.exit.thread93.i.i:              ; preds = %if.end.i.i.i.i40e_can_set_pins.exit.thread93.i.i_crit_edge, %i40e_is_ptp_pin_dev.exit.i.i.i.i40e_can_set_pins.exit.thread93.i.i_crit_edge, %if.end19.i.i40e_can_set_pins.exit.thread93.i.i_crit_edge
  %.str.45.sink.i.ph.i.i = phi ptr [ @.str.42, %if.end.i.i.i.i40e_can_set_pins.exit.thread93.i.i_crit_edge ], [ @.str.39, %i40e_is_ptp_pin_dev.exit.i.i.i.i40e_can_set_pins.exit.thread93.i.i_crit_edge ], [ @.str.39, %if.end19.i.i40e_can_set_pins.exit.thread93.i.i_crit_edge ]
  %33 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %add.ptr, align 8
  %dev13.i96.i.i = getelementptr inbounds %struct.pci_dev, ptr %34, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev13.i96.i.i, ptr noundef nonnull %.str.45.sink.i.ph.i.i) #14
  br label %i40e_ptp_enable_pin.exit

if.then2.i.i:                                     ; preds = %if.end6.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %35 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %add.ptr, align 8
  %dev13.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %36, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev13.i.i.i, ptr noundef nonnull @.str.45) #14
  br label %i40e_ptp_enable_pin.exit

if.end3.i.i:                                      ; preds = %if.end6.i.i.i
  %37 = ptrtoint ptr %pins.sroa.0.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %pins.sroa.0.i.0.pins.sroa.0.i.0.pins.sroa.0.0.pins.sroa.0.0.pins.sroa.0.0..i = load i32, ptr %pins.sroa.0.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %pins.sroa.0.i.0.pins.sroa.0.i.0.pins.sroa.0.0.pins.sroa.0.0.pins.sroa.0.0..i)
  %cmp4.i.i = icmp eq i32 %pins.sroa.0.i.0.pins.sroa.0.i.0.pins.sroa.0.0.pins.sroa.0.0.pins.sroa.0.0..i, -1
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end3.i.i.if.end8.i.i_crit_edge

if.end3.i.i.if.end8.i.i_crit_edge:                ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8.i.i

if.then5.i.i:                                     ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %38 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %30, align 4
  %40 = ptrtoint ptr %pins.sroa.0.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %pins.sroa.0.i, align 4
  br label %if.end8.i.i

if.end8.i.i:                                      ; preds = %if.then5.i.i, %if.end3.i.i.if.end8.i.i_crit_edge
  %41 = ptrtoint ptr %pins.sroa.11.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %pins.sroa.11.i.0.pins.sroa.11.i.0.pins.sroa.11.0.pins.sroa.11.0.pins.sroa.11.4..i = load i32, ptr %pins.sroa.11.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %pins.sroa.11.i.0.pins.sroa.11.i.0.pins.sroa.11.0.pins.sroa.11.0.pins.sroa.11.4..i)
  %cmp9.i32.i = icmp eq i32 %pins.sroa.11.i.0.pins.sroa.11.i.0.pins.sroa.11.0.pins.sroa.11.0.pins.sroa.11.4..i, -1
  br i1 %cmp9.i32.i, label %if.then10.i.i, label %if.end8.i.i.if.end14.i.i_crit_edge

if.end8.i.i.if.end14.i.i_crit_edge:               ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14.i.i

if.then10.i.i:                                    ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %sdp3_312.i.i = getelementptr inbounds %struct.i40e_ptp_pins_settings, ptr %30, i32 0, i32 1
  %42 = ptrtoint ptr %sdp3_312.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %sdp3_312.i.i, align 4
  %44 = ptrtoint ptr %pins.sroa.11.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %pins.sroa.11.i, align 4
  br label %if.end14.i.i

if.end14.i.i:                                     ; preds = %if.then10.i.i, %if.end8.i.i.if.end14.i.i_crit_edge
  %45 = ptrtoint ptr %pins.sroa.19.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %pins.sroa.19.i.0.pins.sroa.19.i.0.pins.sroa.19.0.pins.sroa.19.0.pins.sroa.19.8..i = load i32, ptr %pins.sroa.19.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %pins.sroa.19.i.0.pins.sroa.19.i.0.pins.sroa.19.0.pins.sroa.19.0.pins.sroa.19.8..i)
  %cmp15.i.i = icmp eq i32 %pins.sroa.19.i.0.pins.sroa.19.i.0.pins.sroa.19.0.pins.sroa.19.0.pins.sroa.19.8..i, -1
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end14.i.i.if.end20.i.i_crit_edge

if.end14.i.i.if.end20.i.i_crit_edge:              ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20.i.i

if.then16.i.i:                                    ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %gpio_418.i.i = getelementptr inbounds %struct.i40e_ptp_pins_settings, ptr %30, i32 0, i32 2
  %46 = ptrtoint ptr %gpio_418.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %gpio_418.i.i, align 4
  %48 = ptrtoint ptr %pins.sroa.19.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %pins.sroa.19.i, align 4
  br label %if.end20.i.i

if.end20.i.i:                                     ; preds = %if.then16.i.i, %if.end14.i.i.if.end20.i.i_crit_edge
  %49 = ptrtoint ptr %pins.sroa.0.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %pins.sroa.0.i.0.pins.sroa.0.i.0.pins.sroa.0.0.pins.sroa.0.0.pins.sroa.0.0.33.i = load i32, ptr %pins.sroa.0.i, align 4
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %if.end45.i.i.while.body.i.i_crit_edge, %if.end20.i.i
  %50 = phi i32 [ 0, %if.end20.i.i ], [ %58, %if.end45.i.i.while.body.i.i_crit_edge ]
  %i.098.i.i = phi i32 [ 0, %if.end20.i.i ], [ %inc.i.i, %if.end45.i.i.while.body.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %pins.sroa.0.i.0.pins.sroa.0.i.0.pins.sroa.0.0.pins.sroa.0.0.pins.sroa.0.0.33.i, i32 %50)
  %cmp26.i.i = icmp eq i32 %pins.sroa.0.i.0.pins.sroa.0.i.0.pins.sroa.0.0.pins.sroa.0.0.pins.sroa.0.0.33.i, %50
  br i1 %cmp26.i.i, label %land.lhs.true.i.i, label %while.body.i.i.if.end45.i.i_crit_edge

while.body.i.i.if.end45.i.i_crit_edge:            ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end45.i.i

land.lhs.true.i.i:                                ; preds = %while.body.i.i
  %51 = ptrtoint ptr %pins.sroa.11.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %pins.sroa.11.i.0.pins.sroa.11.i.0.pins.sroa.11.0.pins.sroa.11.0.pins.sroa.11.4.36.i = load i32, ptr %pins.sroa.11.i, align 4
  %sdp3_329.i.i = getelementptr [56 x %struct.i40e_ptp_pins_settings], ptr @i40e_ptp_pin_led_allowed_states, i32 0, i32 %i.098.i.i, i32 1
  %52 = ptrtoint ptr %sdp3_329.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %sdp3_329.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %pins.sroa.11.i.0.pins.sroa.11.i.0.pins.sroa.11.0.pins.sroa.11.0.pins.sroa.11.4.36.i, i32 %53)
  %cmp30.i.i = icmp eq i32 %pins.sroa.11.i.0.pins.sroa.11.i.0.pins.sroa.11.0.pins.sroa.11.0.pins.sroa.11.4.36.i, %53
  br i1 %cmp30.i.i, label %land.lhs.true31.i.i, label %land.lhs.true.i.i.if.end45.i.i_crit_edge

land.lhs.true.i.i.if.end45.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end45.i.i

land.lhs.true31.i.i:                              ; preds = %land.lhs.true.i.i
  %54 = ptrtoint ptr %pins.sroa.19.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %pins.sroa.19.i.0.pins.sroa.19.i.0.pins.sroa.19.0.pins.sroa.19.0.pins.sroa.19.8.38.i = load i32, ptr %pins.sroa.19.i, align 4
  %gpio_434.i.i = getelementptr [56 x %struct.i40e_ptp_pins_settings], ptr @i40e_ptp_pin_led_allowed_states, i32 0, i32 %i.098.i.i, i32 2
  %55 = ptrtoint ptr %gpio_434.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %gpio_434.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %pins.sroa.19.i.0.pins.sroa.19.i.0.pins.sroa.19.0.pins.sroa.19.0.pins.sroa.19.8.38.i, i32 %56)
  %cmp35.i.i = icmp eq i32 %pins.sroa.19.i.0.pins.sroa.19.i.0.pins.sroa.19.0.pins.sroa.19.0.pins.sroa.19.8.38.i, %56
  br i1 %cmp35.i.i, label %if.end56.i.i, label %land.lhs.true31.i.i.if.end45.i.i_crit_edge

land.lhs.true31.i.i.if.end45.i.i_crit_edge:       ; preds = %land.lhs.true31.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end45.i.i

if.end45.i.i:                                     ; preds = %land.lhs.true31.i.i.if.end45.i.i_crit_edge, %land.lhs.true.i.i.if.end45.i.i_crit_edge, %while.body.i.i.if.end45.i.i_crit_edge
  %inc.i.i = add nuw nsw i32 %i.098.i.i, 1
  %arrayidx.i.i = getelementptr [56 x %struct.i40e_ptp_pins_settings], ptr @i40e_ptp_pin_led_allowed_states, i32 0, i32 %inc.i.i
  %57 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx.i.i, align 4
  %exitcond.i.i = icmp eq i32 %inc.i.i, 55
  br i1 %exitcond.i.i, label %do.end.i.i, label %if.end45.i.i.while.body.i.i_crit_edge

if.end45.i.i.while.body.i.i_crit_edge:            ; preds = %if.end45.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i.i

do.end.i.i:                                       ; preds = %if.end45.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %59 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %add.ptr, align 8
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %60, i32 0, i32 44
  %arrayidx51.i.i = getelementptr [5 x ptr], ptr @i40e_ptp_gpio_pin_state2str, i32 0, i32 %pins.sroa.0.i.0.pins.sroa.0.i.0.pins.sroa.0.0.pins.sroa.0.0.pins.sroa.0.0.33.i
  %61 = ptrtoint ptr %arrayidx51.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %arrayidx51.i.i, align 4
  %63 = ptrtoint ptr %pins.sroa.11.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %pins.sroa.11.i.0.pins.sroa.11.i.0.pins.sroa.11.0.pins.sroa.11.0.pins.sroa.11.4.35.i = load i32, ptr %pins.sroa.11.i, align 4
  %arrayidx53.i.i = getelementptr [5 x ptr], ptr @i40e_ptp_gpio_pin_state2str, i32 0, i32 %pins.sroa.11.i.0.pins.sroa.11.i.0.pins.sroa.11.0.pins.sroa.11.0.pins.sroa.11.4.35.i
  %64 = ptrtoint ptr %arrayidx53.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %arrayidx53.i.i, align 4
  %66 = ptrtoint ptr %pins.sroa.19.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %pins.sroa.19.i.0.pins.sroa.19.i.0.pins.sroa.19.0.pins.sroa.19.0.pins.sroa.19.8.37.i = load i32, ptr %pins.sroa.19.i, align 4
  %arrayidx55.i.i = getelementptr [5 x ptr], ptr @i40e_ptp_gpio_pin_state2str, i32 0, i32 %pins.sroa.19.i.0.pins.sroa.19.i.0.pins.sroa.19.0.pins.sroa.19.0.pins.sroa.19.8.37.i
  %67 = ptrtoint ptr %arrayidx55.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %arrayidx55.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i.i, ptr noundef nonnull @.str.37, ptr noundef %62, ptr noundef %65, ptr noundef %68) #14
  br label %i40e_ptp_enable_pin.exit

if.end56.i.i:                                     ; preds = %land.lhs.true31.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %led2_0.i.i = getelementptr [56 x %struct.i40e_ptp_pins_settings], ptr @i40e_ptp_pin_led_allowed_states, i32 0, i32 %i.098.i.i, i32 3
  %69 = ptrtoint ptr %led2_0.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %led2_0.i.i, align 4
  %led2_1.i.i = getelementptr [56 x %struct.i40e_ptp_pins_settings], ptr @i40e_ptp_pin_led_allowed_states, i32 0, i32 %i.098.i.i, i32 4
  %71 = ptrtoint ptr %led2_1.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %led2_1.i.i, align 4
  %led3_0.i.i = getelementptr [56 x %struct.i40e_ptp_pins_settings], ptr @i40e_ptp_pin_led_allowed_states, i32 0, i32 %i.098.i.i, i32 5
  %73 = ptrtoint ptr %led3_0.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %led3_0.i.i, align 4
  %led3_1.i.i = getelementptr [56 x %struct.i40e_ptp_pins_settings], ptr @i40e_ptp_pin_led_allowed_states, i32 0, i32 %i.098.i.i, i32 6
  %75 = ptrtoint ptr %led3_1.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %led3_1.i.i, align 4
  %77 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %pins.sroa.0.i.0.pins.sroa.0.i.0.pins.sroa.0.0.pins.sroa.0.0.pins.sroa.0.0.33.i, ptr %30, align 4
  %pins.sroa.11.0..sroa_idx.i = getelementptr inbounds i8, ptr %30, i32 4
  %78 = ptrtoint ptr %pins.sroa.11.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %pins.sroa.11.i.0.pins.sroa.11.i.0.pins.sroa.11.0.pins.sroa.11.0.pins.sroa.11.4.36.i, ptr %pins.sroa.11.0..sroa_idx.i, align 4
  %pins.sroa.19.0..sroa_idx.i = getelementptr inbounds i8, ptr %30, i32 8
  %79 = ptrtoint ptr %pins.sroa.19.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %pins.sroa.19.i.0.pins.sroa.19.i.0.pins.sroa.19.0.pins.sroa.19.0.pins.sroa.19.8.38.i, ptr %pins.sroa.19.0..sroa_idx.i, align 4
  %pins.sroa.27.0..sroa_idx.i = getelementptr inbounds i8, ptr %30, i32 12
  %80 = ptrtoint ptr %pins.sroa.27.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %70, ptr %pins.sroa.27.0..sroa_idx.i, align 4
  %pins.sroa.29.0..sroa_idx.i = getelementptr inbounds i8, ptr %30, i32 16
  %81 = ptrtoint ptr %pins.sroa.29.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %72, ptr %pins.sroa.29.0..sroa_idx.i, align 4
  %pins.sroa.31.0..sroa_idx.i = getelementptr inbounds i8, ptr %30, i32 20
  %82 = ptrtoint ptr %pins.sroa.31.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %74, ptr %pins.sroa.31.0..sroa_idx.i, align 4
  %pins.sroa.33.0..sroa_idx.i = getelementptr inbounds i8, ptr %30, i32 24
  %83 = ptrtoint ptr %pins.sroa.33.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %76, ptr %pins.sroa.33.0..sroa_idx.i, align 4
  tail call fastcc void @i40e_ptp_set_pins_hw(ptr noundef %add.ptr) #11
  %ptp_rx_lock.i.i.i = getelementptr i8, ptr %ptp, i32 416
  tail call void @_raw_spin_lock_bh(ptr noundef %ptp_rx_lock.i.i.i) #11
  %hw.i.i.i = getelementptr i8, ptr %ptp, i32 -4164
  %84 = ptrtoint ptr %hw.i.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %hw.i.i.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %85, i32 544960
  %86 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #11, !srcloc !108
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !186
  %87 = ptrtoint ptr %hw.i.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %hw.i.i.i, align 8
  %add.ptr8.i.i.i = getelementptr i8, ptr %88, i32 544832
  %89 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i.i.i) #11, !srcloc !108
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !187
  %arrayidx.i.i.i = getelementptr i8, ptr %ptp, i32 748
  %90 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 0, ptr %arrayidx.i.i.i, align 4
  %91 = ptrtoint ptr %hw.i.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %hw.i.i.i, align 8
  %add.ptr.1.i.i.i = getelementptr i8, ptr %92, i32 544992
  %93 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.1.i.i.i) #11, !srcloc !108
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !186
  %94 = ptrtoint ptr %hw.i.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %hw.i.i.i, align 8
  %add.ptr8.1.i.i.i = getelementptr i8, ptr %95, i32 544864
  %96 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.1.i.i.i) #11, !srcloc !108
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !187
  %arrayidx.1.i.i.i = getelementptr i8, ptr %ptp, i32 752
  %97 = ptrtoint ptr %arrayidx.1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 0, ptr %arrayidx.1.i.i.i, align 4
  %98 = ptrtoint ptr %hw.i.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %hw.i.i.i, align 8
  %add.ptr.2.i.i.i = getelementptr i8, ptr %99, i32 545024
  %100 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.2.i.i.i) #11, !srcloc !108
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !186
  %101 = ptrtoint ptr %hw.i.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %hw.i.i.i, align 8
  %add.ptr8.2.i.i.i = getelementptr i8, ptr %102, i32 544896
  %103 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.2.i.i.i) #11, !srcloc !108
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !187
  %arrayidx.2.i.i.i = getelementptr i8, ptr %ptp, i32 756
  %104 = ptrtoint ptr %arrayidx.2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 0, ptr %arrayidx.2.i.i.i, align 4
  %105 = ptrtoint ptr %hw.i.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %hw.i.i.i, align 8
  %add.ptr.3.i.i.i = getelementptr i8, ptr %106, i32 545056
  %107 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.3.i.i.i) #11, !srcloc !108
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !186
  %108 = ptrtoint ptr %hw.i.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %hw.i.i.i, align 8
  %add.ptr8.3.i.i.i = getelementptr i8, ptr %109, i32 544928
  %110 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.3.i.i.i) #11, !srcloc !108
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !187
  %arrayidx.3.i.i.i = getelementptr i8, ptr %ptp, i32 760
  %111 = ptrtoint ptr %arrayidx.3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 0, ptr %arrayidx.3.i.i.i, align 4
  %112 = ptrtoint ptr %hw.i.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %hw.i.i.i, align 8
  %add.ptr16.i.i.i = getelementptr i8, ptr %113, i32 1982912
  %114 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr16.i.i.i) #11, !srcloc !108
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !188
  %115 = ptrtoint ptr %hw.i.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %hw.i.i.i, align 8
  %add.ptr24.i.i.i = getelementptr i8, ptr %116, i32 1982944
  %117 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr24.i.i.i) #11, !srcloc !108
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  %tx_hwtstamp_timeouts.i.i.i = getelementptr i8, ptr %ptp, i32 388
  %118 = call ptr @memset(ptr %tx_hwtstamp_timeouts.i.i.i, i32 0, i32 16)
  tail call void @_raw_spin_unlock_bh(ptr noundef %ptp_rx_lock.i.i.i) #11
  br label %i40e_ptp_enable_pin.exit

i40e_ptp_enable_pin.exit:                         ; preds = %if.end56.i.i, %do.end.i.i, %if.then2.i.i, %i40e_can_set_pins.exit.thread93.i.i, %if.end9.i.i40e_ptp_enable_pin.exit_crit_edge, %if.then7.i.i40e_ptp_enable_pin.exit_crit_edge, %sw.epilog.i40e_ptp_enable_pin.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %sw.epilog.i40e_ptp_enable_pin.exit_crit_edge ], [ -16, %if.then7.i.i40e_ptp_enable_pin.exit_crit_edge ], [ -22, %if.end9.i.i40e_ptp_enable_pin.exit_crit_edge ], [ -22, %i40e_can_set_pins.exit.thread93.i.i ], [ -22, %do.end.i.i ], [ 0, %if.then2.i.i ], [ 0, %if.end56.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pins.sroa.0.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pins.sroa.11.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pins.sroa.19.i)
  br label %cleanup

cleanup:                                          ; preds = %i40e_ptp_enable_pin.exit, %if.then.i, %sw.bb3.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %i40e_ptp_enable_pin.exit ], [ -95, %entry.cleanup_crit_edge ], [ 0, %sw.bb3.cleanup_crit_edge ], [ 0, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ptp_find_pin(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

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

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 54)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 54)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind readonly }
attributes #8 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind readnone }
attributes #16 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !11, !12, !13, !14, !15, !17, !18, !19, !20, !22, !23, !24, !25, !26, !28, !29, !31, !32, !34, !35, !36, !37, !39, !40, !41, !43, !44, !45, !46, !48, !49, !51, !53, !55, !56, !57, !58, !60, !62, !64, !66, !68, !70, !72, !73, !75, !77, !79, !80, !81, !82, !84, !85, !86, !87, !89, !90, !91, !93, !94, !95}
!llvm.named.register.sp = !{!97}
!llvm.module.flags = !{!98, !99, !100, !101, !102, !103, !104, !105}
!llvm.ident = !{!106}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/intel/i40e/i40e_ptp.c", i32 733, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @i40e_ptp_rx_hang.__UNIQUE_ID_ddebug677, !1, !"__UNIQUE_ID_ddebug677", i1 false, i1 false}
!6 = !{ptr @i40e_ptp_set_increment.warn_once, !7, !"warn_once", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/intel/i40e/i40e_ptp.c", i32 899, i32 14}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/intel/i40e/i40e_ptp.c", i32 902, i32 4}
!10 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.7, !9, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @i40e_ptp_set_increment._entry, !9, !"_entry", i1 false, i1 false}
!14 = !{ptr @i40e_ptp_set_increment._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/net/ethernet/intel/i40e/i40e_ptp.c", i32 1153, i32 3}
!17 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @i40e_ptp_alloc_pins._entry, !16, !"_entry", i1 false, i1 false}
!19 = !{ptr @i40e_ptp_alloc_pins._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/intel/i40e/i40e_ptp.c", i32 1505, i32 3}
!22 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.12, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @i40e_ptp_init._entry, !21, !"_entry", i1 false, i1 false}
!25 = !{ptr @i40e_ptp_init._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @i40e_ptp_init.__key, !27, !"__key", i1 false, i1 false}
!27 = !{!"../drivers/net/ethernet/intel/i40e/i40e_ptp.c", i32 1511, i32 2}
!28 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @i40e_ptp_init.__key.14, !30, !"__key", i1 false, i1 false}
!30 = !{!"../drivers/net/ethernet/intel/i40e/i40e_ptp.c", i32 1512, i32 2}
!31 = !{ptr @.str.15, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.17, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/ethernet/intel/i40e/i40e_ptp.c", i32 1518, i32 3}
!34 = !{ptr @.str.18, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @i40e_ptp_init._entry.16, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @i40e_ptp_init._entry_ptr.19, !33, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.21, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/ethernet/intel/i40e/i40e_ptp.c", i32 1524, i32 4}
!39 = !{ptr @i40e_ptp_init._entry.20, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @i40e_ptp_init._entry_ptr.22, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.23, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/ethernet/intel/i40e/i40e_ptp.c", i32 1575, i32 3}
!43 = !{ptr @.str.24, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @i40e_ptp_stop._entry, !42, !"_entry", i1 false, i1 false}
!45 = !{ptr @i40e_ptp_stop._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!46 = distinct !{null, !47, !"__already_done", i1 false, i1 false}
!47 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!48 = distinct !{null, !47, !"<string literal>", i1 false, i1 false}
!49 = distinct !{null, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!51 = !{ptr @.str.27, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!53 = !{ptr @.str.28, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/ethernet/intel/i40e/i40e_ptp.c", i32 1074, i32 2}
!55 = !{ptr @.str.29, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @i40e_ptp_set_pins_hw._entry, !54, !"_entry", i1 false, i1 false}
!57 = !{ptr @i40e_ptp_set_pins_hw._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.30, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/ethernet/intel/i40e/i40e_ptp.c", i32 62, i32 2}
!60 = !{ptr @.str.31, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/ethernet/intel/i40e/i40e_ptp.c", i32 62, i32 9}
!62 = !{ptr @.str.32, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/ethernet/intel/i40e/i40e_ptp.c", i32 62, i32 17}
!64 = !{ptr @.str.33, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/ethernet/intel/i40e/i40e_ptp.c", i32 62, i32 25}
!66 = !{ptr @.str.34, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/ethernet/intel/i40e/i40e_ptp.c", i32 62, i32 34}
!68 = !{ptr @i40e_ptp_gpio_pin_state2str, !69, !"i40e_ptp_gpio_pin_state2str", i1 false, i1 false}
!69 = !{!"../drivers/net/ethernet/intel/i40e/i40e_ptp.c", i32 61, i32 27}
!70 = !{ptr @i40e_ptp_set_timestamp_mode.__key, !71, !"__key", i1 false, i1 false}
!71 = !{!"../drivers/net/ethernet/intel/i40e/i40e_ptp.c", i32 1206, i32 2}
!72 = !{ptr @.str.35, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @.str.36, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/net/ethernet/intel/i40e/i40e_ptp.c", i32 1371, i32 5}
!75 = !{ptr @sdp_desc, !76, !"sdp_desc", i1 false, i1 false}
!76 = !{!"../drivers/net/ethernet/intel/i40e/i40e_ptp.c", i32 44, i32 28}
!77 = !{ptr @.str.37, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/net/ethernet/intel/i40e/i40e_ptp.c", i32 1123, i32 3}
!79 = !{ptr @.str.38, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @i40e_ptp_set_pins._entry, !78, !"_entry", i1 false, i1 false}
!81 = !{ptr @i40e_ptp_set_pins._entry_ptr, !78, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.39, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/net/ethernet/intel/i40e/i40e_ptp.c", i32 199, i32 3}
!84 = !{ptr @.str.40, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @i40e_can_set_pins._entry, !83, !"_entry", i1 false, i1 false}
!86 = !{ptr @i40e_can_set_pins._entry_ptr, !83, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.42, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/net/ethernet/intel/i40e/i40e_ptp.c", i32 205, i32 3}
!89 = !{ptr @i40e_can_set_pins._entry.41, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @i40e_can_set_pins._entry_ptr.43, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.45, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/net/ethernet/intel/i40e/i40e_ptp.c", i32 211, i32 3}
!93 = !{ptr @i40e_can_set_pins._entry.44, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @i40e_can_set_pins._entry_ptr.46, !92, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @i40e_ptp_pin_led_allowed_states, !96, !"i40e_ptp_pin_led_allowed_states", i1 false, i1 false}
!96 = !{!"../drivers/net/ethernet/intel/i40e/i40e_ptp.c", i32 82, i32 2}
!97 = !{!"sp"}
!98 = !{i32 1, !"wchar_size", i32 2}
!99 = !{i32 1, !"min_enum_size", i32 4}
!100 = !{i32 8, !"branch-target-enforcement", i32 0}
!101 = !{i32 8, !"sign-return-address", i32 0}
!102 = !{i32 8, !"sign-return-address-all", i32 0}
!103 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!104 = !{i32 7, !"uwtable", i32 1}
!105 = !{i32 7, !"frame-pointer", i32 2}
!106 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!107 = !{i8 0, i8 2}
!108 = !{i64 6203235}
!109 = !{i64 2160339749}
!110 = !{i64 2160341148}
!111 = !{i64 2149103241, i64 2149103246, i64 2149103259, i64 2149103303, i64 2149103337, i64 2149103358}
!112 = !{i64 2148718216}
!113 = !{i64 2148628611, i64 2148628643, i64 2148628672, i64 2148628706, i64 2148628737, i64 2148628760}
!114 = !{i64 2160344956}
!115 = !{i64 2160345555}
!116 = !{i64 2160346535}
!117 = !{i64 2160347261}
!118 = !{i64 2160349664}
!119 = !{i64 6202817}
!120 = !{i64 2160350238}
!121 = !{i64 2160352815}
!122 = !{i64 2152501293, i64 2152501318}
!123 = !{i64 2160361803}
!124 = !{i64 2160363257}
!125 = !{i64 2160364711}
!126 = !{i64 2160366165}
!127 = !{i64 2160353291}
!128 = !{i64 2160359838}
!129 = !{i64 2160360519}
!130 = !{!"auto-init"}
!131 = !{i64 2152500612, i64 2152500637}
!132 = !{!"branch_weights", i32 2000, i32 1}
!133 = !{i64 4996167}
!134 = !{i64 4996364}
!135 = !{i64 2152481597}
!136 = !{i64 2160373976}
!137 = !{i64 2160374341}
!138 = !{i64 2160375170}
!139 = !{i64 2160375482}
!140 = !{i64 2160377940}
!141 = !{i64 2160378539}
!142 = !{i64 2160379241}
!143 = !{i64 2160379943}
!144 = !{i64 2160380645}
!145 = !{i64 2160381347}
!146 = !{i64 2160381946}
!147 = !{i64 2160382432}
!148 = !{i64 2160383244}
!149 = !{i64 2160383726}
!150 = !{i64 2160384538}
!151 = !{i64 2160384931}
!152 = !{i64 2160320375}
!153 = !{i64 2160320974}
!154 = !{i64 1637778}
!155 = !{i64 2160321302}
!156 = !{i64 2160321856}
!157 = !{i64 2160386223}
!158 = !{i64 2160392392}
!159 = !{i64 2160392785}
!160 = !{i64 2160393597}
!161 = !{i64 2160393990}
!162 = !{i64 2160327819}
!163 = !{i64 2160328443}
!164 = !{i64 2160329092}
!165 = !{i64 2160329725}
!166 = !{i64 2160330348}
!167 = !{i64 2160330968}
!168 = !{i64 2160331622}
!169 = !{i64 2160332409}
!170 = !{i64 2160396733}
!171 = !{i64 2160397179}
!172 = !{i64 2160398008}
!173 = !{i64 2160398405}
!174 = !{i64 2160354366}
!175 = !{i64 2160355651}
!176 = !{i64 2160357237}
!177 = !{i64 2160358931}
!178 = !{i64 2160311160}
!179 = !{i64 2160311862}
!180 = !{i64 1526416, i64 1526443, i64 1526465, i64 1526493}
!181 = !{i64 1526824, i64 1526851, i64 1526884, i64 1526905, i64 1526932, i64 1526958}
!182 = !{i64 2160323426}
!183 = !{i64 2160326686}
!184 = !{i64 2160327245}
!185 = !{i64 2160334211}
!186 = !{i64 2160317798}
!187 = !{i64 2160318525}
!188 = !{i64 2160319149}
!189 = !{i64 2160319773}
