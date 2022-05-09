; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/intel/ixgb/ixgb_main.c_pt.bc'
source_filename = "../drivers/net/ethernet/intel/ixgb/ixgb_main.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.124 }
%union.anon.124 = type { ptr }
%struct.pci_driver = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, %struct.pci_dynids }
%struct.list_head = type { ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.pci_error_handlers = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.ixgb_adapter = type { %struct.timer_list, [128 x i32], i32, i32, i32, i16, i16, %struct.work_struct, [20 x i8], %struct.ixgb_desc_ring, i32, i32, i32, i64, i64, i32, i32, i8, i8, %struct.ixgb_desc_ring, i64, i64, i32, i8, %struct.napi_struct, ptr, ptr, %struct.ixgb_hw, i16, %struct.ixgb_hw_stats, i32, i8, i32, [44 x i8] }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ixgb_desc_ring = type { ptr, i32, i32, i32, i32, i32, ptr }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.ixgb_hw = type { ptr, ptr, %struct.ixgb_fc, %struct.ixgb_bus, i32, i32, i32, i32, i32, i32, i32, [6 x i8], i32, i32, i32, i8, i8, i16, i16, i8, i16, i16, i32, i32, i32, i32, i16, [64 x i16], i32, i32, i32 }
%struct.ixgb_fc = type { i32, i32, i16, i8, i32 }
%struct.ixgb_bus = type { i32, i32, i32 }
%struct.ixgb_hw_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.130, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.151, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.130 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.151 = type { ptr }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.154, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.154 = type { ptr }
%struct.netdev_hw_addr = type { %struct.list_head, %struct.rb_node, [32 x i8], i8, i8, i32, i32, i32, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.ixgb_buffer = type { ptr, i32, i32, i16, i16, i16 }
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
%struct.page = type { i32, %union.anon.2, %union.anon.123, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.123 = type { %struct.atomic_t }
%struct.ixgb_rx_desc = type { i64, i16, i16, i8, i8, i16 }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.ixgb_tx_desc = type { i64, i32, i8, i8, i16 }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.tcphdr = type { i16, i16, i32, i32, i16, i16, i16, i16 }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.ixgb_context_desc = type { i8, i8, i16, i8, i8, i16, i32, i8, i8, i16 }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.anon.60 = type { i16, i16 }

@ixgb_driver_name = dso_local global { [5 x i8], [27 x i8] } { [5 x i8] c"ixgb\00", [27 x i8] zeroinitializer }, align 32
@__param_str_copybreak = internal constant [15 x i8] c"ixgb.copybreak\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@copybreak = internal global i32 256, section ".data..read_mostly", align 4
@__param_copybreak = internal constant %struct.kernel_param { ptr @__param_str_copybreak, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.124 { ptr @copybreak } }, section "__param", align 4
@__UNIQUE_ID_copybreaktype511 = internal constant [29 x i8] c"ixgb.parmtype=copybreak:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_copybreak512 = internal constant [85 x i8] c"ixgb.parm=copybreak:Maximum size of packet that is copied to a new buffer on receive\00", section ".modinfo", align 1
@__UNIQUE_ID_author513 = internal constant [54 x i8] c"ixgb.author=Intel Corporation, <linux.nics@intel.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description514 = internal constant [51 x i8] c"ixgb.description=Intel(R) PRO/10GbE Network Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file515 = internal constant [47 x i8] c"ixgb.file=drivers/net/ethernet/intel/ixgb/ixgb\00", section ".modinfo", align 1
@__UNIQUE_ID_license516 = internal constant [20 x i8] c"ixgb.license=GPL v2\00", section ".modinfo", align 1
@__param_str_debug = internal constant [11 x i8] c"ixgb.debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.124 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype517 = internal constant [24 x i8] c"ixgb.parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug518 = internal constant [48 x i8] c"ixgb.parm=debug:Debug level (0=none,...,16=all)\00", section ".modinfo", align 1
@__initcall__kmod_ixgb__519_125_ixgb_init_module6 = internal global ptr @ixgb_init_module, section ".initcall6.init", align 4
@ixgb_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @ixgb_driver_name, ptr @ixgb_pci_tbl, ptr @ixgb_probe, ptr @ixgb_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ixgb_err_handler, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_ixgb_exit_module = internal global ptr @ixgb_exit_module, section ".exitcall.exit", align 4
@.str = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Unable to allocate interrupt Error: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ixgb_init_hw failed\0A\00", [43 x i8] zeroinitializer }, align 32
@ixgb_init_module._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 119, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"\016ixgb: %s\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ixgb_init_module\00", [47 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"drivers/net/ethernet/intel/ixgb/ixgb_main.c\00", [52 x i8] zeroinitializer }, align 32
@ixgb_init_module._entry_ptr = internal global ptr @ixgb_init_module._entry, section ".printk_index", align 4
@ixgb_driver_string = internal global { [34 x i8], [62 x i8] } { [34 x i8] c"Intel(R) PRO/10GbE Network Driver\00", [62 x i8] zeroinitializer }, align 32
@ixgb_init_module._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 120, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ixgb_init_module._entry_ptr.6 = internal global ptr @ixgb_init_module._entry.5, section ".printk_index", align 4
@ixgb_copyright = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Copyright (c) 1999-2008 Intel Corporation.\00", [53 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ixgb\00", [27 x i8] zeroinitializer }, align 32
@ixgb_pci_tbl = internal constant { [5 x %struct.pci_device_id], [32 x i8] } { [5 x %struct.pci_device_id] [%struct.pci_device_id { i32 32902, i32 4168, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 4254, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 6728, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 6984, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@ixgb_err_handler = internal constant { %struct.pci_error_handlers, [40 x i8] } { %struct.pci_error_handlers { ptr @ixgb_io_error_detected, ptr null, ptr @ixgb_io_slot_reset, ptr null, ptr null, ptr @ixgb_io_resume }, [40 x i8] zeroinitializer }, align 32
@ixgb_probe.cards_found = internal global { i32, [28 x i8] } zeroinitializer, align 32
@ixgb_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.4, i32 380, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013ixgb: No usable DMA configuration, aborting\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ixgb_probe\00", [21 x i8] zeroinitializer }, align 32
@ixgb_probe._entry_ptr = internal global ptr @ixgb_probe._entry, section ".printk_index", align 4
@ixgb_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @ixgb_open, ptr @ixgb_close, ptr @ixgb_xmit_frame, ptr null, ptr null, ptr null, ptr @ixgb_set_multi, ptr @ixgb_set_mac, ptr @eth_validate_addr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ixgb_change_mtu, ptr null, ptr @ixgb_tx_timeout, ptr null, ptr null, ptr null, ptr null, ptr @ixgb_vlan_rx_add_vid, ptr @ixgb_vlan_rx_kill_vid, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ixgb_fix_features, ptr @ixgb_set_features, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"The EEPROM Checksum Is Not Valid\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Invalid MAC Address\0A\00", [43 x i8] zeroinitializer }, align 32
@ixgb_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"(&adapter->watchdog_timer)\00", [37 x i8] zeroinitializer }, align 32
@ixgb_probe.__key.13 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"(work_completion)(&adapter->tx_timeout_task)\00", [51 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"eth%d\00", [26 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Intel(R) PRO/10GbE Network Connection\0A\00", [57 x i8] zeroinitializer }, align 32
@ixgb_tx_map._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.4, i32 1371, ptr @.str.19, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"TX DMA map failed\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ixgb_tx_map\00", [20 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ixgb_tx_map._entry_ptr = internal global ptr @ixgb_tx_map._entry, section ".printk_index", align 4
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.21 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.23 = internal constant { [276 x i8], [76 x i8] } { [276 x i8] c"Detected Tx Unit Hang\0A  TDH                  <%x>\0A  TDT                  <%x>\0A  next_to_use          <%x>\0A  next_to_clean        <%x>\0Abuffer_info[next_to_clean]\0A  time_stamp           <%lx>\0A  next_to_watch        <%x>\0A  jiffies              <%lx>\0A  next_to_watch.status <%x>\0A\00", [76 x i8] zeroinitializer }, align 32
@ixgb_clean_rx_irq.__UNIQUE_ID_ddebug524 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.24, ptr @.str.4, ptr @.str.25, i8 1, i8 -13, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ixgb_clean_rx_irq\00", [46 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"Receive packet consumed multiple buffers length<%x>\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"ixgb: Receive packet consumed multiple buffers length<%x>\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"unsupported device id\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"NIC Link is Up 10 Gbps Full Duplex, Flow Control: %s\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"RX/TX\00", [26 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"RX\00", [29 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"TX\00", [29 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"None\00", [27 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"NIC Link is Down\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Cannot re-enable PCI device after reset\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"After reset, the EEPROM checksum is not valid\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"After reset, invalid MAC address\0A\00", [62 x i8] zeroinitializer }, align 32
@ixgb_io_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.4, i32 2286, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013ixgb: can't bring device back up after reset\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ixgb_io_resume\00", [17 x i8] zeroinitializer }, align 32
@ixgb_io_resume._entry_ptr = internal global ptr @ixgb_io_resume._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 16, i64 4168, i64 4254, i64 6728, i64 6984]
@__sancov_gen_cov_switch_values.39 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@___asan_gen_.40 = private unnamed_addr constant [17 x i8] c"ixgb_driver_name\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 9, i32 6 }
@___asan_gen_.43 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 105, i32 12 }
@___asan_gen_.46 = private unnamed_addr constant [12 x i8] c"ixgb_driver\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 92, i32 26 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 209, i32 3 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 282, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 119, i32 2 }
@___asan_gen_.67 = private unnamed_addr constant [19 x i8] c"ixgb_driver_string\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 10, i32 13 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 120, i32 2 }
@___asan_gen_.73 = private unnamed_addr constant [15 x i8] c"ixgb_copyright\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 12, i32 19 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 122, i32 9 }
@___asan_gen_.79 = private unnamed_addr constant [13 x i8] c"ixgb_pci_tbl\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 28, i32 35 }
@___asan_gen_.82 = private unnamed_addr constant [17 x i8] c"ixgb_err_handler\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 86, i32 40 }
@___asan_gen_.85 = private unnamed_addr constant [12 x i8] c"cards_found\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 363, i32 13 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 380, i32 4 }
@___asan_gen_.97 = private unnamed_addr constant [16 x i8] c"ixgb_netdev_ops\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 331, i32 36 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 459, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 469, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 476, i32 2 }
@___asan_gen_.112 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 478, i32 2 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 480, i32 23 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 488, i32 2 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 1371, i32 2 }
@___asan_gen_.143 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 326, i32 6 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 1842, i32 4 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 1995, i32 4 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 572, i32 3 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 1134, i32 9 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 1136, i32 9 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 1138, i32 10 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 1140, i32 9 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 1140, i32 16 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 1149, i32 24 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 2235, i32 3 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 2252, i32 3 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 2261, i32 3 }
@___asan_gen_.187 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.193 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.194 = private constant [47 x i8] c"../drivers/net/ethernet/intel/ixgb/ixgb_main.c\00", align 1
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 2286, i32 4 }
@llvm.compiler.used = appending global [70 x ptr] [ptr @__UNIQUE_ID_author513, ptr @__UNIQUE_ID_copybreak512, ptr @__UNIQUE_ID_copybreaktype511, ptr @__UNIQUE_ID_debug518, ptr @__UNIQUE_ID_debugtype517, ptr @__UNIQUE_ID_description514, ptr @__UNIQUE_ID_file515, ptr @__UNIQUE_ID_license516, ptr @__exitcall_ixgb_exit_module, ptr @__initcall__kmod_ixgb__519_125_ixgb_init_module6, ptr @__param_copybreak, ptr @__param_debug, ptr @ixgb_exit_module, ptr @ixgb_init_module._entry, ptr @ixgb_init_module._entry.5, ptr @ixgb_init_module._entry_ptr, ptr @ixgb_init_module._entry_ptr.6, ptr @ixgb_io_resume._entry, ptr @ixgb_io_resume._entry_ptr, ptr @ixgb_probe._entry, ptr @ixgb_probe._entry_ptr, ptr @ixgb_tx_map._entry, ptr @ixgb_tx_map._entry_ptr, ptr @ixgb_driver_name, ptr @debug, ptr @ixgb_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @ixgb_driver_string, ptr @ixgb_copyright, ptr @.str.7, ptr @ixgb_pci_tbl, ptr @ixgb_err_handler, ptr @ixgb_probe.cards_found, ptr @.str.8, ptr @.str.9, ptr @ixgb_netdev_ops, ptr @.str.10, ptr @.str.11, ptr @ixgb_probe.__key, ptr @.str.12, ptr @ixgb_probe.__key.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38], section "llvm.metadata"
@0 = internal global [52 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ixgb_driver_name to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ixgb_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ixgb_init_module._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ixgb_driver_string to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ixgb_init_module._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ixgb_copyright to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ixgb_pci_tbl to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ixgb_err_handler to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ixgb_probe.cards_found to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ixgb_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ixgb_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ixgb_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ixgb_probe.__key.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ixgb_tx_map._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 276, i32 352, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ixgb_io_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ixgb_init_module() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @ixgb_driver_string) #13
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @ixgb_copyright) #13
  %call5 = tail call i32 @__pci_register_driver(ptr noundef nonnull @ixgb_driver, ptr noundef null, ptr noundef nonnull @.str.7) #10
  ret i32 %call5
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ixgb_exit_module() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @pci_unregister_driver(ptr noundef nonnull @ixgb_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ixgb_up(ptr noundef %adapter) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %netdev1 = getelementptr inbounds %struct.ixgb_adapter, ptr %adapter, i32 0, i32 25
  %0 = ptrtoint ptr %netdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netdev1, align 8
  %mtu = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 20
  %2 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mtu, align 4
  %add2 = add i32 %3, 18
  %hw3 = getelementptr inbounds %struct.ixgb_adapter, ptr %adapter, i32 0, i32 27
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 86
  %4 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_addr, align 64
  tail call void @ixgb_rar_set(ptr noundef %hw3, ptr noundef %5, i32 noundef 0) #10
  tail call void @ixgb_set_multi(ptr noundef %1)
  %active_vlans.i = getelementptr inbounds %struct.ixgb_adapter, ptr %adapter, i32 0, i32 1
  %call.i = tail call i32 @_find_next_bit_be(ptr noundef %active_vlans.i, i32 noundef 4096, i32 noundef 0) #10
  %conv113.i = and i32 %call.i, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %conv113.i)
  %cmp14.i = icmp ult i32 %conv113.i, 4096
  br i1 %cmp14.i, label %entry.for.body.i_crit_edge, label %entry.ixgb_restore_vlan.exit_crit_edge

entry.ixgb_restore_vlan.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %ixgb_restore_vlan.exit

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %conv116.i = phi i32 [ %conv1.i, %for.body.i.for.body.i_crit_edge ], [ %conv113.i, %entry.for.body.i_crit_edge ]
  %vid.0.in15.i = phi i32 [ %call7.i, %for.body.i.for.body.i_crit_edge ], [ %call.i, %entry.for.body.i_crit_edge ]
  %6 = ptrtoint ptr %netdev1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %netdev1, align 8
  %conv.i.i = and i32 %vid.0.in15.i, 65535
  %8 = lshr i32 %vid.0.in15.i, 5
  %and.i.i = and i32 %8, 127
  %hw.i.i = getelementptr i8, ptr %7, i32 3296
  %9 = ptrtoint ptr %hw.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hw.i.i, align 32
  %add.ptr.i.i = getelementptr i8, ptr %10, i32 1024
  %shl.i.i = shl nuw nsw i32 %and.i.i, 2
  %add.ptr1.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %shl.i.i
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i) #10, !srcloc !129
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !130
  %and5.i.i = and i32 %vid.0.in15.i, 31
  %shl6.i.i = shl nuw i32 1, %and5.i.i
  %or.i.i = or i32 %12, %shl6.i.i
  tail call void @ixgb_write_vfta(ptr noundef %hw.i.i, i32 noundef %and.i.i, i32 noundef %or.i.i) #10
  %active_vlans.i.i = getelementptr i8, ptr %7, i32 2352
  tail call void @_set_bit(i32 noundef %conv.i.i, ptr noundef %active_vlans.i.i) #10
  %add.i = add nuw nsw i32 %conv116.i, 1
  %call7.i = tail call i32 @_find_next_bit_be(ptr noundef %active_vlans.i, i32 noundef 4096, i32 noundef %add.i) #10
  %conv1.i = and i32 %call7.i, 65535
  %cmp.i = icmp ult i32 %conv1.i, 4096
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.ixgb_restore_vlan.exit_crit_edge

for.body.i.ixgb_restore_vlan.exit_crit_edge:      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ixgb_restore_vlan.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

ixgb_restore_vlan.exit:                           ; preds = %for.body.i.ixgb_restore_vlan.exit_crit_edge, %entry.ixgb_restore_vlan.exit_crit_edge
  %dma.i = getelementptr inbounds %struct.ixgb_adapter, ptr %adapter, i32 0, i32 9, i32 1
  %13 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dma.i, align 4
  %count.i = getelementptr inbounds %struct.ixgb_adapter, ptr %adapter, i32 0, i32 9, i32 3
  %15 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %count.i, align 4
  %mul.i = shl i32 %16, 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !131
  tail call void @arm_heavy_mb() #10
  %17 = tail call i32 @llvm.bswap.i32(i32 %14) #10
  %18 = ptrtoint ptr %hw3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hw3, align 4
  %add.ptr.i = getelementptr i8, ptr %19, i32 1544
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %17) #10, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !133
  tail call void @arm_heavy_mb() #10
  %20 = ptrtoint ptr %hw3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hw3, align 4
  %add.ptr9.i = getelementptr i8, ptr %21, i32 1548
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i, i32 0) #10, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !134
  tail call void @arm_heavy_mb() #10
  %22 = tail call i32 @llvm.bswap.i32(i32 %mul.i) #10
  %23 = ptrtoint ptr %hw3 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %hw3, align 4
  %add.ptr14.i = getelementptr i8, ptr %24, i32 1552
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14.i, i32 %22) #10, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !135
  tail call void @arm_heavy_mb() #10
  %25 = ptrtoint ptr %hw3 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %hw3, align 4
  %add.ptr19.i = getelementptr i8, ptr %26, i32 1560
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr19.i, i32 0) #10, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !136
  tail call void @arm_heavy_mb() #10
  %27 = ptrtoint ptr %hw3 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %hw3, align 4
  %add.ptr24.i = getelementptr i8, ptr %28, i32 1568
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24.i, i32 0) #10, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !137
  tail call void @arm_heavy_mb() #10
  %tx_int_delay.i = getelementptr inbounds %struct.ixgb_adapter, ptr %adapter, i32 0, i32 15
  %29 = ptrtoint ptr %tx_int_delay.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %tx_int_delay.i, align 8
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #10
  %32 = ptrtoint ptr %hw3 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %hw3, align 4
  %add.ptr29.i = getelementptr i8, ptr %33, i32 1576
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr29.i, i32 %31) #10, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !138
  tail call void @arm_heavy_mb() #10
  %34 = ptrtoint ptr %hw3 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %hw3, align 4
  %add.ptr34.i = getelementptr i8, ptr %35, i32 1536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr34.i, i32 117440512) #10, !srcloc !132
  %tx_int_delay_enable.i = getelementptr inbounds %struct.ixgb_adapter, ptr %adapter, i32 0, i32 17
  %36 = ptrtoint ptr %tx_int_delay_enable.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %tx_int_delay_enable.i, align 64, !range !139
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool.not.i = icmp eq i8 %37, 0
  %or.i = select i1 %tobool.not.i, i32 1048576, i32 -2146435072
  %tx_cmd_type.i = getelementptr inbounds %struct.ixgb_adapter, ptr %adapter, i32 0, i32 12
  %38 = ptrtoint ptr %tx_cmd_type.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %or.i, ptr %tx_cmd_type.i, align 4
  %39 = ptrtoint ptr %hw3 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %hw3, align 32
  %add.ptr.i130 = getelementptr i8, ptr %40, i32 256
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i130) #10, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !140
  %42 = and i32 %41, -45121537
  %mc_filter_type.i = getelementptr inbounds %struct.ixgb_adapter, ptr %adapter, i32 0, i32 27, i32 9
  %43 = ptrtoint ptr %mc_filter_type.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %mc_filter_type.i, align 8
  %shl.i = shl i32 %44, 12
  %45 = or i32 %42, 41975808
  %46 = tail call i32 @llvm.bswap.i32(i32 %45) #10
  %or3.i = or i32 %46, %shl.i
  %or4.i = or i32 %or3.i, 67108864
  %rx_buffer_len.i = getelementptr inbounds %struct.ixgb_adapter, ptr %adapter, i32 0, i32 3
  %47 = ptrtoint ptr %rx_buffer_len.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %rx_buffer_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2049, i32 %48)
  %cmp.i131 = icmp ult i32 %48, 2049
  br i1 %cmp.i131, label %ixgb_restore_vlan.exit.ixgb_setup_rctl.exit_crit_edge, label %if.else.i

ixgb_restore_vlan.exit.ixgb_setup_rctl.exit_crit_edge: ; preds = %ixgb_restore_vlan.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %ixgb_setup_rctl.exit

if.else.i:                                        ; preds = %ixgb_restore_vlan.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 4097, i32 %48)
  %cmp7.i = icmp ult i32 %48, 4097
  br i1 %cmp7.i, label %if.then8.i, label %if.else10.i

if.then8.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  %or9.i = or i32 %or3.i, 67174400
  br label %ixgb_setup_rctl.exit

if.else10.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8193, i32 %48)
  %cmp12.i = icmp ult i32 %48, 8193
  br i1 %cmp12.i, label %if.then13.i, label %if.else15.i

if.then13.i:                                      ; preds = %if.else10.i
  call void @__sanitizer_cov_trace_pc() #12
  %or14.i = or i32 %or3.i, 67239936
  br label %ixgb_setup_rctl.exit

if.else15.i:                                      ; preds = %if.else10.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 16385, i32 %48)
  %cmp17.i = icmp ult i32 %48, 16385
  %or19.i = or i32 %or3.i, 67305472
  %spec.select.i = select i1 %cmp17.i, i32 %or19.i, i32 %or4.i
  br label %ixgb_setup_rctl.exit

ixgb_setup_rctl.exit:                             ; preds = %if.else15.i, %if.then13.i, %if.then8.i, %ixgb_restore_vlan.exit.ixgb_setup_rctl.exit_crit_edge
  %rctl.0.i = phi i32 [ %or9.i, %if.then8.i ], [ %or14.i, %if.then13.i ], [ %or4.i, %ixgb_restore_vlan.exit.ixgb_setup_rctl.exit_crit_edge ], [ %spec.select.i, %if.else15.i ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !141
  tail call void @arm_heavy_mb() #10
  %49 = tail call i32 @llvm.bswap.i32(i32 %rctl.0.i) #10
  %50 = ptrtoint ptr %hw3 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %hw3, align 32
  %add.ptr25.i = getelementptr i8, ptr %51, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25.i, i32 %49) #10, !srcloc !132
  %dma.i132 = getelementptr inbounds %struct.ixgb_adapter, ptr %adapter, i32 0, i32 19, i32 1
  %52 = ptrtoint ptr %dma.i132 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %dma.i132, align 4
  %count.i133 = getelementptr inbounds %struct.ixgb_adapter, ptr %adapter, i32 0, i32 19, i32 3
  %54 = ptrtoint ptr %count.i133 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %count.i133, align 4
  %mul.i134 = shl i32 %55, 4
  %56 = ptrtoint ptr %hw3 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %hw3, align 4
  %add.ptr.i136 = getelementptr i8, ptr %57, i32 256
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i136) #10, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !142
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !143
  tail call void @arm_heavy_mb() #10
  %59 = and i32 %58, -33554433
  %60 = ptrtoint ptr %hw3 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %hw3, align 4
  %add.ptr5.i = getelementptr i8, ptr %61, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 %59) #10, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !144
  tail call void @arm_heavy_mb() #10
  %rx_int_delay.i = getelementptr inbounds %struct.ixgb_adapter, ptr %adapter, i32 0, i32 22
  %62 = ptrtoint ptr %rx_int_delay.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %rx_int_delay.i, align 16
  %64 = tail call i32 @llvm.bswap.i32(i32 %63) #10
  %65 = ptrtoint ptr %hw3 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %hw3, align 4
  %add.ptr10.i = getelementptr i8, ptr %66, i32 312
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i, i32 %64) #10, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !145
  tail call void @arm_heavy_mb() #10
  %67 = tail call i32 @llvm.bswap.i32(i32 %53) #10
  %68 = ptrtoint ptr %hw3 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %hw3, align 4
  %add.ptr17.i = getelementptr i8, ptr %69, i32 280
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17.i, i32 %67) #10, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !146
  tail call void @arm_heavy_mb() #10
  %70 = ptrtoint ptr %hw3 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %hw3, align 4
  %add.ptr23.i = getelementptr i8, ptr %71, i32 284
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr23.i, i32 0) #10, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !147
  tail call void @arm_heavy_mb() #10
  %72 = tail call i32 @llvm.bswap.i32(i32 %mul.i134) #10
  %73 = ptrtoint ptr %hw3 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %hw3, align 4
  %add.ptr28.i = getelementptr i8, ptr %74, i32 288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr28.i, i32 %72) #10, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !148
  tail call void @arm_heavy_mb() #10
  %75 = ptrtoint ptr %hw3 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %hw3, align 4
  %add.ptr33.i = getelementptr i8, ptr %76, i32 296
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr33.i, i32 0) #10, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !149
  tail call void @arm_heavy_mb() #10
  %77 = ptrtoint ptr %hw3 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %hw3, align 4
  %add.ptr38.i = getelementptr i8, ptr %78, i32 304
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr38.i, i32 0) #10, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !150
  tail call void @arm_heavy_mb() #10
  %79 = ptrtoint ptr %hw3 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %hw3, align 4
  %add.ptr43.i = getelementptr i8, ptr %80, i32 320
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr43.i, i32 0) #10, !srcloc !132
  %rx_csum.i = getelementptr inbounds %struct.ixgb_adapter, ptr %adapter, i32 0, i32 23
  %81 = ptrtoint ptr %rx_csum.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %rx_csum.i, align 4, !range !139
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %82)
  %tobool.not.i137 = icmp eq i8 %82, 0
  br i1 %tobool.not.i137, label %ixgb_setup_rctl.exit.ixgb_configure_rx.exit_crit_edge, label %if.then.i

ixgb_setup_rctl.exit.ixgb_configure_rx.exit_crit_edge: ; preds = %ixgb_setup_rctl.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %ixgb_configure_rx.exit

if.then.i:                                        ; preds = %ixgb_setup_rctl.exit
  call void @__sanitizer_cov_trace_pc() #12
  %83 = ptrtoint ptr %hw3 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %hw3, align 4
  %add.ptr47.i = getelementptr i8, ptr %84, i32 344
  %85 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr47.i) #10, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !151
  %86 = or i32 %85, 131072
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !152
  tail call void @arm_heavy_mb() #10
  %87 = ptrtoint ptr %hw3 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %hw3, align 4
  %add.ptr55.i = getelementptr i8, ptr %88, i32 344
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr55.i, i32 %86) #10, !srcloc !132
  br label %ixgb_configure_rx.exit

ixgb_configure_rx.exit:                           ; preds = %if.then.i, %ixgb_setup_rctl.exit.ixgb_configure_rx.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !153
  tail call void @arm_heavy_mb() #10
  %89 = ptrtoint ptr %hw3 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %hw3, align 4
  %add.ptr60.i = getelementptr i8, ptr %90, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr60.i, i32 %58) #10, !srcloc !132
  %next_to_clean = getelementptr inbounds %struct.ixgb_adapter, ptr %adapter, i32 0, i32 19, i32 5
  %91 = ptrtoint ptr %next_to_clean to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %next_to_clean, align 4
  %next_to_use = getelementptr inbounds %struct.ixgb_adapter, ptr %adapter, i32 0, i32 19, i32 4
  %93 = ptrtoint ptr %next_to_use to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %next_to_use, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %92, i32 %94)
  %cmp = icmp ugt i32 %92, %94
  br i1 %cmp, label %ixgb_configure_rx.exit.cond.end_crit_edge, label %cond.false

ixgb_configure_rx.exit.cond.end_crit_edge:        ; preds = %ixgb_configure_rx.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

cond.false:                                       ; preds = %ixgb_configure_rx.exit
  call void @__sanitizer_cov_trace_pc() #12
  %95 = ptrtoint ptr %count.i133 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %count.i133, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %ixgb_configure_rx.exit.cond.end_crit_edge
  %cond = phi i32 [ %96, %cond.false ], [ 0, %ixgb_configure_rx.exit.cond.end_crit_edge ]
  %97 = xor i32 %94, -1
  %add8 = add i32 %92, %97
  %sub11 = add i32 %add8, %cond
  tail call fastcc void @ixgb_alloc_rx_buffers(ptr noundef %adapter, i32 noundef %sub11)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !154
  tail call void @arm_heavy_mb() #10
  %98 = ptrtoint ptr %hw3 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %hw3, align 32
  %add.ptr = getelementptr i8, ptr %99, i32 152
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 -1) #10, !srcloc !132
  %100 = ptrtoint ptr %hw3 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %hw3, align 32
  %add.ptr15 = getelementptr i8, ptr %101, i32 16
  %102 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr15) #10, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !155
  %103 = and i32 %102, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %103)
  %tobool.not = icmp eq i32 %103, 0
  br i1 %tobool.not, label %cond.end.if.end20_crit_edge, label %if.then

cond.end.if.end20_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

if.then:                                          ; preds = %cond.end
  %pdev = getelementptr inbounds %struct.ixgb_adapter, ptr %adapter, i32 0, i32 26
  %104 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %pdev, align 4
  %call17 = tail call i32 @pci_enable_msi(ptr noundef %105) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.then19, label %if.then.if.end20_crit_edge

if.then.if.end20_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

if.then19:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %have_msi = getelementptr inbounds %struct.ixgb_adapter, ptr %adapter, i32 0, i32 31
  %106 = ptrtoint ptr %have_msi to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 1, ptr %have_msi, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %if.then.if.end20_crit_edge, %cond.end.if.end20_crit_edge
  %irq_flags.0 = phi i32 [ 128, %if.then.if.end20_crit_edge ], [ 0, %if.then19 ], [ 128, %cond.end.if.end20_crit_edge ]
  %pdev21 = getelementptr inbounds %struct.ixgb_adapter, ptr %adapter, i32 0, i32 26
  %107 = ptrtoint ptr %pdev21 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %pdev21, align 4
  %irq = getelementptr inbounds %struct.pci_dev, ptr %108, i32 0, i32 46
  %109 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %irq, align 4
  %call.i138 = tail call i32 @request_threaded_irq(i32 noundef %110, ptr noundef nonnull @ixgb_intr, ptr noundef null, i32 noundef %irq_flags.0, ptr noundef %1, ptr noundef %1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i138)
  %tobool23.not = icmp eq i32 %call.i138, 0
  br i1 %tobool23.not, label %if.end38, label %if.then24

if.then24:                                        ; preds = %if.end20
  %have_msi25 = getelementptr inbounds %struct.ixgb_adapter, ptr %adapter, i32 0, i32 31
  %111 = ptrtoint ptr %have_msi25 to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %have_msi25, align 4, !range !139
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %112)
  %tobool26.not = icmp eq i8 %112, 0
  br i1 %tobool26.not, label %if.then24.do.body30_crit_edge, label %if.then27

if.then24.do.body30_crit_edge:                    ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body30

if.then27:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #12
  %113 = ptrtoint ptr %pdev21 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %pdev21, align 4
  tail call void @pci_disable_msi(ptr noundef %114) #10
  br label %do.body30

do.body30:                                        ; preds = %if.then27, %if.then24.do.body30_crit_edge
  %msg_enable = getelementptr inbounds %struct.ixgb_adapter, ptr %adapter, i32 0, i32 28
  %115 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load2_noabort(i32 %115)
  %116 = load i16, ptr %msg_enable, align 32
  %117 = and i16 %116, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %117)
  %tobool32.not = icmp eq i16 %117, 0
  br i1 %tobool32.not, label %do.body30.cleanup_crit_edge, label %if.then33

do.body30.cleanup_crit_edge:                      ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then33:                                        ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #12
  %118 = ptrtoint ptr %netdev1 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %netdev1, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %119, ptr noundef nonnull @.str, i32 noundef %call.i138) #13
  br label %cleanup

if.end38:                                         ; preds = %if.end20
  %max_frame_size = getelementptr inbounds %struct.ixgb_adapter, ptr %adapter, i32 0, i32 27, i32 8
  %120 = ptrtoint ptr %max_frame_size to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %max_frame_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %121, i32 %add2)
  %cmp39.not = icmp eq i32 %121, %add2
  br i1 %cmp39.not, label %lor.lhs.false, label %if.end38.if.then51_crit_edge

if.end38.if.then51_crit_edge:                     ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then51

lor.lhs.false:                                    ; preds = %if.end38
  %122 = ptrtoint ptr %hw3 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %hw3, align 4
  %add.ptr45 = getelementptr i8, ptr %123, i32 32
  %124 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr45) #10, !srcloc !129
  %125 = tail call i32 @llvm.bswap.i32(i32 %124)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !156
  %shr = lshr i32 %125, 16
  call void @__sanitizer_cov_trace_cmp4(i32 %add2, i32 %shr)
  %cmp49.not = icmp eq i32 %add2, %shr
  br i1 %cmp49.not, label %lor.lhs.false.if.end80_crit_edge, label %lor.lhs.false.if.then51_crit_edge

lor.lhs.false.if.then51_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then51

lor.lhs.false.if.end80_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end80

if.then51:                                        ; preds = %lor.lhs.false.if.then51_crit_edge, %if.end38.if.then51_crit_edge
  %126 = ptrtoint ptr %max_frame_size to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 %add2, ptr %max_frame_size, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !157
  tail call void @arm_heavy_mb() #10
  %127 = ptrtoint ptr %max_frame_size to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %max_frame_size, align 4
  %129 = tail call i32 @llvm.bswap.i32(i32 %128)
  %130 = lshr i32 %129, 16
  %131 = ptrtoint ptr %hw3 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %hw3, align 4
  %add.ptr58 = getelementptr i8, ptr %132, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr58, i32 %130) #10, !srcloc !132
  %133 = ptrtoint ptr %max_frame_size to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %max_frame_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1518, i32 %134)
  %cmp60 = icmp ugt i32 %134, 1518
  br i1 %cmp60, label %if.then62, label %if.then51.if.end80_crit_edge

if.then51.if.end80_crit_edge:                     ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end80

if.then62:                                        ; preds = %if.then51
  %135 = ptrtoint ptr %hw3 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %hw3, align 4
  %137 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %136) #10, !srcloc !129
  %138 = tail call i32 @llvm.bswap.i32(i32 %137)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !158
  %and70 = and i32 %138, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and70)
  %tobool71.not = icmp eq i32 %and70, 0
  br i1 %tobool71.not, label %if.then72, label %if.then62.if.end80_crit_edge

if.then62.if.end80_crit_edge:                     ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end80

if.then72:                                        ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #12
  %or = or i32 %138, 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !159
  tail call void @arm_heavy_mb() #10
  %139 = tail call i32 @llvm.bswap.i32(i32 %or)
  %140 = ptrtoint ptr %hw3 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %hw3, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %141, i32 %139) #10, !srcloc !132
  br label %if.end80

if.end80:                                         ; preds = %if.then72, %if.then62.if.end80_crit_edge, %if.then51.if.end80_crit_edge, %lor.lhs.false.if.end80_crit_edge
  %flags = getelementptr inbounds %struct.ixgb_adapter, ptr %adapter, i32 0, i32 32
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %flags) #10
  %napi = getelementptr inbounds %struct.ixgb_adapter, ptr %adapter, i32 0, i32 24
  tail call void @napi_enable(ptr noundef %napi) #10
  %subsystem_vendor_id.i = getelementptr inbounds %struct.ixgb_adapter, ptr %adapter, i32 0, i32 27, i32 20
  %142 = ptrtoint ptr %subsystem_vendor_id.i to i32
  call void @__asan_load2_noabort(i32 %142)
  %143 = load i16, ptr %subsystem_vendor_id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 4238, i16 %143)
  %cmp.i139 = icmp eq i16 %143, 4238
  %spec.select.i140 = select i1 %cmp.i139, i32 2197, i32 149
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !160
  tail call void @arm_heavy_mb() #10
  %144 = tail call i32 @llvm.bswap.i32(i32 %spec.select.i140) #10
  %145 = ptrtoint ptr %hw3 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %hw3, align 32
  %add.ptr.i142 = getelementptr i8, ptr %146, i32 144
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i142, i32 %144) #10, !srcloc !132
  %147 = ptrtoint ptr %hw3 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %hw3, align 32
  %add.ptr5.i143 = getelementptr i8, ptr %148, i32 16
  %149 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i143) #10, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !161
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 103
  %150 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %_tx.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %151) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %152 = load volatile i32, ptr @jiffies, align 128
  %call81 = tail call i32 @mod_timer(ptr noundef %adapter, i32 noundef %152) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end80, %if.then33, %do.body30.cleanup_crit_edge
  ret i32 %call.i138
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ixgb_rar_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ixgb_set_multi(ptr noundef %netdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr i8, ptr %netdev, i32 3296
  %0 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw1, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 256
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !162
  %flags = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 14
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags, align 8
  %and = and i32 %4, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %5 = and i32 %2, -402656257
  %6 = call i32 @llvm.bswap.i32(i32 %5)
  %and4 = or i32 %6, 24
  %and7 = lshr i32 %4, 5
  %7 = and i32 %and7, 16
  %8 = or i32 %6, %7
  %and15 = or i32 %8, 262144
  %rctl.1 = select i1 %tobool.not, i32 %and15, i32 %and4
  %mc = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 66
  %count = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 66, i32 1
  %9 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %10)
  %cmp = icmp sgt i32 %10, 128
  br i1 %cmp, label %if.then17, label %if.else21

if.then17:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %or18 = or i32 %rctl.1, 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !163
  tail call void @arm_heavy_mb() #10
  %11 = tail call i32 @llvm.bswap.i32(i32 %or18)
  %12 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hw1, align 4
  %add.ptr20 = getelementptr i8, ptr %13, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20, i32 %11) #10, !srcloc !132
  br label %alloc_failed

if.else21:                                        ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %14 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %14, i32 noundef 2592, i32 noundef 768) #14
  %tobool23.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool23.not, label %if.else21.alloc_failed_crit_edge, label %do.body26

if.else21.alloc_failed_crit_edge:                 ; preds = %if.else21
  call void @__sanitizer_cov_trace_pc() #12
  br label %alloc_failed

do.body26:                                        ; preds = %if.else21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !164
  tail call void @arm_heavy_mb() #10
  %15 = tail call i32 @llvm.bswap.i32(i32 %rctl.1)
  %16 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hw1, align 4
  %add.ptr30 = getelementptr i8, ptr %17, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr30, i32 %15) #10, !srcloc !132
  %18 = ptrtoint ptr %mc to i32
  call void @__asan_load4_noabort(i32 %18)
  %ha.083 = load ptr, ptr %mc, align 4
  %cmp37.not84 = icmp eq ptr %ha.083, %mc
  br i1 %cmp37.not84, label %do.body26.for.end_crit_edge, label %do.body26.for.body_crit_edge

do.body26.for.body_crit_edge:                     ; preds = %do.body26
  br label %for.body

do.body26.for.end_crit_edge:                      ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %do.body26.for.body_crit_edge
  %ha.086 = phi ptr [ %ha.0, %for.body.for.body_crit_edge ], [ %ha.083, %do.body26.for.body_crit_edge ]
  %addr.085 = phi ptr [ %add.ptr39, %for.body.for.body_crit_edge ], [ %call7.i.i, %do.body26.for.body_crit_edge ]
  %addr38 = getelementptr inbounds %struct.netdev_hw_addr, ptr %ha.086, i32 0, i32 2
  %19 = call ptr @memcpy(ptr %addr.085, ptr %addr38, i32 6)
  %add.ptr39 = getelementptr i8, ptr %addr.085, i32 6
  %20 = ptrtoint ptr %ha.086 to i32
  call void @__asan_load4_noabort(i32 %20)
  %ha.0 = load ptr, ptr %ha.086, align 4
  %cmp37.not = icmp eq ptr %ha.0, %mc
  br i1 %cmp37.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %do.body26.for.end_crit_edge
  %21 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %count, align 8
  tail call void @ixgb_mc_addr_list_update(ptr noundef %hw1, ptr noundef nonnull %call7.i.i, i32 noundef %22, i32 noundef 0) #10
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #10
  br label %alloc_failed

alloc_failed:                                     ; preds = %for.end, %if.else21.alloc_failed_crit_edge, %if.then17
  %features = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 23
  %23 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %features, align 16
  %and49 = and i64 %24, 256
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and49)
  %tobool50.not = icmp eq i64 %and49, 0
  %25 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %hw1, align 32
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %26) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  br i1 %tobool50.not, label %if.else52, label %if.then51

if.then51:                                        ; preds = %alloc_failed
  call void @__sanitizer_cov_trace_pc() #12
  %28 = or i32 %27, 64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !165
  tail call void @arm_heavy_mb() #10
  %29 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %hw1, align 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 %28) #10, !srcloc !132
  br label %if.end53

if.else52:                                        ; preds = %alloc_failed
  call void @__sanitizer_cov_trace_pc() #12
  %31 = and i32 %27, -65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !166
  tail call void @arm_heavy_mb() #10
  %32 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %hw1, align 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 %31) #10, !srcloc !132
  br label %if.end53

if.end53:                                         ; preds = %if.else52, %if.then51
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ixgb_alloc_rx_buffers(ptr nocapture noundef %adapter, i32 noundef %cleaned_count) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_ring1 = getelementptr inbounds %struct.ixgb_adapter, ptr %adapter, i32 0, i32 19
  %netdev2 = getelementptr inbounds %struct.ixgb_adapter, ptr %adapter, i32 0, i32 25
  %0 = ptrtoint ptr %netdev2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netdev2, align 8
  %pdev3 = getelementptr inbounds %struct.ixgb_adapter, ptr %adapter, i32 0, i32 26
  %2 = ptrtoint ptr %pdev3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev3, align 4
  %next_to_use = getelementptr inbounds %struct.ixgb_adapter, ptr %adapter, i32 0, i32 19, i32 4
  %4 = ptrtoint ptr %next_to_use to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %next_to_use, align 4
  %buffer_info4 = getelementptr inbounds %struct.ixgb_adapter, ptr %adapter, i32 0, i32 19, i32 6
  %6 = ptrtoint ptr %buffer_info4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %buffer_info4, align 4
  %arrayidx = getelementptr %struct.ixgb_buffer, ptr %7, i32 %5
  %next_to_clean = getelementptr inbounds %struct.ixgb_adapter, ptr %adapter, i32 0, i32 19, i32 5
  %8 = ptrtoint ptr %next_to_clean to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %next_to_clean, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %5)
  %cmp = icmp ugt i32 %9, %5
  br i1 %cmp, label %entry.cond.end_crit_edge, label %cond.false

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %count = getelementptr inbounds %struct.ixgb_adapter, ptr %adapter, i32 0, i32 19, i32 3
  %10 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %count, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %cond = phi i32 [ %11, %cond.false ], [ 0, %entry.cond.end_crit_edge ]
  %12 = xor i32 %5, -1
  %add = add i32 %9, %12
  %sub8 = add i32 %add, %cond
  %dec126 = add i32 %sub8, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %dec126)
  %cmp9127 = icmp sgt i32 %dec126, 2
  br i1 %cmp9127, label %land.rhs.lr.ph, label %cond.end.while.end_crit_edge

cond.end.while.end_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

land.rhs.lr.ph:                                   ; preds = %cond.end
  %rx_buffer_len = getelementptr inbounds %struct.ixgb_adapter, ptr %adapter, i32 0, i32 3
  %dev = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %count35 = getelementptr inbounds %struct.ixgb_adapter, ptr %adapter, i32 0, i32 19, i32 3
  br label %land.rhs

land.rhs:                                         ; preds = %if.end30.land.rhs_crit_edge, %land.rhs.lr.ph
  %dec131 = phi i32 [ %dec126, %land.rhs.lr.ph ], [ %dec, %if.end30.land.rhs_crit_edge ]
  %i.0130 = phi i32 [ %5, %land.rhs.lr.ph ], [ %spec.store.select, %if.end30.land.rhs_crit_edge ]
  %buffer_info.0129 = phi ptr [ %arrayidx, %land.rhs.lr.ph ], [ %arrayidx41, %if.end30.land.rhs_crit_edge ]
  %cleaned_count.addr.0128 = phi i32 [ %cleaned_count, %land.rhs.lr.ph ], [ %dec10, %if.end30.land.rhs_crit_edge ]
  %dec10 = add i32 %cleaned_count.addr.0128, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cleaned_count.addr.0128)
  %tobool.not = icmp eq i32 %cleaned_count.addr.0128, 0
  br i1 %tobool.not, label %land.rhs.while.end_crit_edge, label %while.body

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body:                                       ; preds = %land.rhs
  %13 = ptrtoint ptr %buffer_info.0129 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %buffer_info.0129, align 4
  %tobool12.not = icmp eq ptr %14, null
  br i1 %tobool12.not, label %if.end, label %if.then

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @skb_trim(ptr noundef nonnull %14, i32 noundef 0) #10
  br label %map_skb

if.end:                                           ; preds = %while.body
  %15 = ptrtoint ptr %rx_buffer_len to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %rx_buffer_len, align 4
  %add.i.i = add i32 %16, 2
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef %1, i32 noundef %add.i.i, i32 noundef 2592) #10
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %if.end.while.end.sink.split_crit_edge, label %if.end18

if.end.while.end.sink.split_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.sink.split

if.end18:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %17 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %18, i32 2
  store ptr %add.ptr.i.i.i, ptr %data.i.i.i, align 4
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %19 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %tail.i.i.i, align 8
  %add.ptr1.i.i.i = getelementptr i8, ptr %20, i32 2
  store ptr %add.ptr1.i.i.i, ptr %tail.i.i.i, align 8
  %21 = ptrtoint ptr %buffer_info.0129 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call.i.i, ptr %buffer_info.0129, align 4
  %22 = ptrtoint ptr %rx_buffer_len to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %rx_buffer_len, align 4
  %conv = trunc i32 %23 to i16
  %length = getelementptr inbounds %struct.ixgb_buffer, ptr %buffer_info.0129, i32 0, i32 3
  %24 = ptrtoint ptr %length to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %conv, ptr %length, align 4
  br label %map_skb

map_skb:                                          ; preds = %if.end18, %if.then
  %skb.0 = phi ptr [ %14, %if.then ], [ %call.i.i, %if.end18 ]
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb.0, i32 0, i32 19
  %25 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %data, align 4
  %27 = ptrtoint ptr %rx_buffer_len to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %rx_buffer_len, align 4
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %26) #10
  br i1 %call.i, label %land.rhs.i, label %dma_map_single_attrs.exit

land.rhs.i:                                       ; preds = %map_skb
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge, label %if.then.i, !prof !167

land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_map_single_attrs.exit.thread

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %dev) #10
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44, i32 3
  %29 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i108 = icmp eq ptr %30, null
  br i1 %tobool.not.i.i108, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %31 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %32, %if.end.i.i ], [ %30, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.22, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #10
  br label %dma_map_single_attrs.exit.thread

dma_map_single_attrs.exit.thread:                 ; preds = %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge
  %dma110 = getelementptr inbounds %struct.ixgb_buffer, ptr %buffer_info.0129, i32 0, i32 1
  %33 = ptrtoint ptr %dma110 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 -1, ptr %dma110, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %dev, i32 noundef -1) #10
  br label %while.end.sink.split

dma_map_single_attrs.exit:                        ; preds = %map_skb
  tail call void @debug_dma_map_single(ptr noundef %dev, ptr noundef %26, i32 noundef %28) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %34 = load ptr, ptr @mem_map, align 4
  %35 = ptrtoint ptr %26 to i32
  %sub.i = add i32 %35, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i = getelementptr %struct.page, ptr %34, i32 %shr.i
  %and.i = and i32 %35, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev, ptr noundef %add.ptr.i, i32 noundef %and.i, i32 noundef %28, i32 noundef 2, i32 noundef 0) #10
  %dma = getelementptr inbounds %struct.ixgb_buffer, ptr %buffer_info.0129, i32 0, i32 1
  %36 = ptrtoint ptr %dma to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %call41.i, ptr %dma, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %dev, i32 noundef %call41.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i)
  %cmp.i = icmp eq i32 %call41.i, -1
  br i1 %cmp.i, label %dma_map_single_attrs.exit.while.end.sink.split_crit_edge, label %if.end30

dma_map_single_attrs.exit.while.end.sink.split_crit_edge: ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.sink.split

if.end30:                                         ; preds = %dma_map_single_attrs.exit
  %37 = ptrtoint ptr %rx_ring1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %rx_ring1, align 4
  %arrayidx31 = getelementptr %struct.ixgb_rx_desc, ptr %38, i32 %i.0130
  %39 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %dma, align 4
  %conv33 = zext i32 %40 to i64
  %41 = tail call i64 @llvm.bswap.i64(i64 %conv33)
  %42 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 %41, ptr %arrayidx31, align 8
  %status = getelementptr %struct.ixgb_rx_desc, ptr %38, i32 %i.0130, i32 3
  %43 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 0, ptr %status, align 4
  %inc34 = add i32 %i.0130, 1
  %44 = ptrtoint ptr %count35 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %count35, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc34, i32 %45)
  %cmp36 = icmp eq i32 %inc34, %45
  %spec.store.select = select i1 %cmp36, i32 0, i32 %inc34
  %46 = ptrtoint ptr %buffer_info4 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %buffer_info4, align 4
  %arrayidx41 = getelementptr %struct.ixgb_buffer, ptr %47, i32 %spec.store.select
  %dec = add i32 %dec131, -1
  %cmp9 = icmp sgt i32 %dec, 2
  br i1 %cmp9, label %if.end30.land.rhs_crit_edge, label %if.end30.while.end_crit_edge

if.end30.while.end_crit_edge:                     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

if.end30.land.rhs_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs

while.end.sink.split:                             ; preds = %dma_map_single_attrs.exit.while.end.sink.split_crit_edge, %dma_map_single_attrs.exit.thread, %if.end.while.end.sink.split_crit_edge
  %alloc_rx_buff_failed = getelementptr inbounds %struct.ixgb_adapter, ptr %adapter, i32 0, i32 30
  %48 = ptrtoint ptr %alloc_rx_buff_failed to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %alloc_rx_buff_failed, align 8
  %inc29 = add i32 %49, 1
  store i32 %inc29, ptr %alloc_rx_buff_failed, align 8
  br label %while.end

while.end:                                        ; preds = %while.end.sink.split, %if.end30.while.end_crit_edge, %land.rhs.while.end_crit_edge, %cond.end.while.end_crit_edge
  %i.0120 = phi i32 [ %5, %cond.end.while.end_crit_edge ], [ %i.0130, %while.end.sink.split ], [ %i.0130, %land.rhs.while.end_crit_edge ], [ %spec.store.select, %if.end30.while.end_crit_edge ]
  %50 = ptrtoint ptr %next_to_use to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %next_to_use, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %51, i32 %i.0120)
  %cmp43.not = icmp eq i32 %51, %i.0120
  br i1 %cmp43.not, label %while.end.if.end69_crit_edge, label %if.then51, !prof !168

while.end.if.end69_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then51:                                        ; preds = %while.end
  %52 = ptrtoint ptr %next_to_use to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %i.0120, ptr %next_to_use, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0120)
  %cmp54 = icmp eq i32 %i.0120, 0
  br i1 %cmp54, label %if.then62, label %if.then51.do.body_crit_edge, !prof !168

if.then51.do.body_crit_edge:                      ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

if.then62:                                        ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #12
  %count63 = getelementptr inbounds %struct.ixgb_adapter, ptr %adapter, i32 0, i32 19, i32 3
  %53 = ptrtoint ptr %count63 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %count63, align 4
  br label %do.body

do.body:                                          ; preds = %if.then62, %if.then51.do.body_crit_edge
  %i.1.in = phi i32 [ %54, %if.then62 ], [ %i.0120, %if.then51.do.body_crit_edge ]
  %i.1 = add i32 %i.1.in, -1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !169
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !170
  tail call void @arm_heavy_mb() #10
  %55 = tail call i32 @llvm.bswap.i32(i32 %i.1)
  %hw = getelementptr inbounds %struct.ixgb_adapter, ptr %adapter, i32 0, i32 27
  %56 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %hw, align 32
  %add.ptr = getelementptr i8, ptr %57, i32 304
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %55) #10, !srcloc !132
  br label %if.end69

if.end69:                                         ; preds = %do.body, %while.end.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_msi(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ixgb_intr(i32 noundef %irq, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %data, i32 2304
  %hw1 = getelementptr i8, ptr %data, i32 3296
  %0 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw1, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 128
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !171
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end, !prof !168

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = and i32 %2, 201326592
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool7.not = icmp eq i32 %3, 0
  br i1 %tobool7.not, label %if.end.if.end20_crit_edge, label %if.then14, !prof !167

if.end.if.end20_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

if.then14:                                        ; preds = %if.end
  %flags = getelementptr i8, ptr %data, i32 4048
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %flags, align 4
  %and1.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool16.not = icmp eq i32 %and1.i, 0
  br i1 %tobool16.not, label %if.then17, label %if.then14.if.end20_crit_edge

if.then14.if.end20_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

if.then17:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %6 = load volatile i32, ptr @jiffies, align 128
  %call18 = tail call i32 @mod_timer(ptr noundef %add.ptr.i, i32 noundef %6) #10
  br label %if.end20

if.end20:                                         ; preds = %if.then17, %if.then14.if.end20_crit_edge, %if.end.if.end20_crit_edge
  %napi = getelementptr i8, ptr %data, i32 3064
  %call21 = tail call zeroext i1 @napi_schedule_prep(ptr noundef %napi) #10
  br i1 %call21, label %do.body, label %if.end20.cleanup_crit_edge

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body:                                          ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !172
  tail call void @arm_heavy_mb() #10
  %7 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hw1, align 32
  %add.ptr25 = getelementptr i8, ptr %8, i32 152
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25, i32 -1) #10, !srcloc !132
  tail call void @__napi_schedule(ptr noundef %napi) #10
  br label %cleanup

cleanup:                                          ; preds = %do.body, %if.end20.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 1, %do.body ], [ 1, %if.end20.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_msi(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ixgb_down(ptr noundef %adapter, i1 noundef zeroext %kill_watchdog) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %netdev1 = getelementptr inbounds %struct.ixgb_adapter, ptr %adapter, i32 0, i32 25
  %0 = ptrtoint ptr %netdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netdev1, align 8
  %flags = getelementptr inbounds %struct.ixgb_adapter, ptr %adapter, i32 0, i32 32
  tail call void @_set_bit(i32 noundef 0, ptr noundef %flags) #10
  tail call void @netif_carrier_off(ptr noundef %1) #10
  %napi = getelementptr inbounds %struct.ixgb_adapter, ptr %adapter, i32 0, i32 24
  tail call void @napi_disable(ptr noundef %napi) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !173
  tail call void @arm_heavy_mb() #10
  %hw.i = getelementptr inbounds %struct.ixgb_adapter, ptr %adapter, i32 0, i32 27
  %2 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw.i, align 32
  %add.ptr.i = getelementptr i8, ptr %3, i32 152
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 -1) #10, !srcloc !132
  %4 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw.i, align 32
  %add.ptr3.i = getelementptr i8, ptr %5, i32 16
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i) #10, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !174
  %pdev.i = getelementptr inbounds %struct.ixgb_adapter, ptr %adapter, i32 0, i32 26
  %7 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pdev.i, align 4
  %irq.i = getelementptr inbounds %struct.pci_dev, ptr %8, i32 0, i32 46
  %9 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %irq.i, align 4
  tail call void @synchronize_irq(i32 noundef %10) #10
  %11 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pdev.i, align 4
  %irq = getelementptr inbounds %struct.pci_dev, ptr %12, i32 0, i32 46
  %13 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %irq, align 4
  %call = tail call ptr @free_irq(i32 noundef %14, ptr noundef %1) #10
  %have_msi = getelementptr inbounds %struct.ixgb_adapter, ptr %adapter, i32 0, i32 31
  %15 = ptrtoint ptr %have_msi to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %have_msi, align 4, !range !139
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not = icmp eq i8 %16, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %17 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pdev.i, align 4
  tail call void @pci_disable_msi(ptr noundef %18) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  br i1 %kill_watchdog, label %if.then4, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call5 = tail call i32 @del_timer_sync(ptr noundef %adapter) #10
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end.if.end6_crit_edge
  %link_speed = getelementptr inbounds %struct.ixgb_adapter, ptr %adapter, i32 0, i32 5
  %19 = ptrtoint ptr %link_speed to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 0, ptr %link_speed, align 4
  %link_duplex = getelementptr inbounds %struct.ixgb_adapter, ptr %adapter, i32 0, i32 6
  %20 = ptrtoint ptr %link_duplex to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 0, ptr %link_duplex, align 2
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 103
  %21 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %22, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #10
  tail call void @ixgb_reset(ptr noundef %adapter)
  tail call fastcc void @ixgb_clean_tx_ring(ptr noundef %adapter)
  tail call fastcc void @ixgb_clean_rx_ring(ptr noundef %adapter)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ixgb_reset(ptr noundef %adapter) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr inbounds %struct.ixgb_adapter, ptr %adapter, i32 0, i32 27
  %call = tail call zeroext i1 @ixgb_adapter_stop(ptr noundef %hw1) #10
  %call2 = tail call zeroext i1 @ixgb_init_hw(ptr noundef %hw1) #10
  br i1 %call2, label %entry.do.body5_crit_edge, label %do.body

entry.do.body5_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body5

do.body:                                          ; preds = %entry
  %msg_enable = getelementptr inbounds %struct.ixgb_adapter, ptr %adapter, i32 0, i32 28
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %msg_enable, align 32
  %2 = and i16 %1, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %tobool.not = icmp eq i16 %2, 0
  br i1 %tobool.not, label %do.body.do.body5_crit_edge, label %if.then3

do.body.do.body5_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body5

if.then3:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %netdev = getelementptr inbounds %struct.ixgb_adapter, ptr %adapter, i32 0, i32 25
  %3 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %netdev, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %4, ptr noundef nonnull @.str.1) #13
  br label %do.body5

do.body5:                                         ; preds = %if.then3, %do.body.do.body5_crit_edge, %entry.do.body5_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !175
  tail call void @arm_heavy_mb() #10
  %max_frame_size = getelementptr inbounds %struct.ixgb_adapter, ptr %adapter, i32 0, i32 27, i32 8
  %5 = ptrtoint ptr %max_frame_size to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %max_frame_size, align 4
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  %8 = lshr i32 %7, 16
  %9 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hw1, align 4
  %add.ptr = getelementptr i8, ptr %10, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %8) #10, !srcloc !132
  %11 = ptrtoint ptr %max_frame_size to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %max_frame_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1518, i32 %12)
  %cmp = icmp ugt i32 %12, 1518
  br i1 %cmp, label %if.then10, label %do.body5.if.end24_crit_edge

do.body5.if.end24_crit_edge:                      ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

if.then10:                                        ; preds = %do.body5
  %13 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hw1, align 4
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #10, !srcloc !129
  %16 = tail call i32 @llvm.bswap.i32(i32 %15)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !176
  %and15 = and i32 %16, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.then17, label %if.then10.if.end24_crit_edge

if.then10.if.end24_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

if.then17:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #12
  %or = or i32 %16, 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !177
  tail call void @arm_heavy_mb() #10
  %17 = tail call i32 @llvm.bswap.i32(i32 %or)
  %18 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hw1, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %17) #10, !srcloc !132
  br label %if.end24

if.end24:                                         ; preds = %if.then17, %if.then10.if.end24_crit_edge, %do.body5.if.end24_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ixgb_clean_tx_ring(ptr nocapture noundef %adapter) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %count = getelementptr inbounds %struct.ixgb_adapter, ptr %adapter, i32 0, i32 9, i32 3
  %0 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp24.not = icmp eq i32 %1, 0
  br i1 %cmp24.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %buffer_info2 = getelementptr inbounds %struct.ixgb_adapter, ptr %adapter, i32 0, i32 9, i32 6
  %pdev4.i = getelementptr inbounds %struct.ixgb_adapter, ptr %adapter, i32 0, i32 26
  br label %for.body

for.body:                                         ; preds = %ixgb_unmap_and_free_tx_resource.exit.for.body_crit_edge, %for.body.lr.ph
  %i.025 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %ixgb_unmap_and_free_tx_resource.exit.for.body_crit_edge ]
  %2 = ptrtoint ptr %buffer_info2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %buffer_info2, align 4
  %arrayidx = getelementptr %struct.ixgb_buffer, ptr %3, i32 %i.025
  %dma.i = getelementptr %struct.ixgb_buffer, ptr %3, i32 %i.025, i32 1
  %4 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dma.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i, label %for.body.if.end10.i_crit_edge, label %if.then.i

for.body.if.end10.i_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10.i

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %pdev4.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdev4.i, align 4
  %dev5.i = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  %length7.i = getelementptr %struct.ixgb_buffer, ptr %3, i32 %i.025, i32 3
  %8 = ptrtoint ptr %length7.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %length7.i, align 4
  %conv8.i = zext i16 %9 to i32
  tail call void @dma_unmap_page_attrs(ptr noundef %dev5.i, i32 noundef %5, i32 noundef %conv8.i, i32 noundef 1, i32 noundef 0) #10
  %10 = ptrtoint ptr %dma.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %dma.i, align 4
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then.i, %for.body.if.end10.i_crit_edge
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx, align 4
  %tobool11.not.i = icmp eq ptr %12, null
  br i1 %tobool11.not.i, label %if.end10.i.ixgb_unmap_and_free_tx_resource.exit_crit_edge, label %if.then12.i

if.end10.i.ixgb_unmap_and_free_tx_resource.exit_crit_edge: ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ixgb_unmap_and_free_tx_resource.exit

if.then12.i:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %12, i32 noundef 1) #10
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %arrayidx, align 4
  br label %ixgb_unmap_and_free_tx_resource.exit

ixgb_unmap_and_free_tx_resource.exit:             ; preds = %if.then12.i, %if.end10.i.ixgb_unmap_and_free_tx_resource.exit_crit_edge
  %time_stamp.i = getelementptr %struct.ixgb_buffer, ptr %3, i32 %i.025, i32 2
  %14 = ptrtoint ptr %time_stamp.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %time_stamp.i, align 4
  %inc = add nuw i32 %i.025, 1
  %15 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %count, align 4
  %cmp = icmp ult i32 %inc, %16
  br i1 %cmp, label %ixgb_unmap_and_free_tx_resource.exit.for.body_crit_edge, label %for.end.loopexit

ixgb_unmap_and_free_tx_resource.exit.for.body_crit_edge: ; preds = %ixgb_unmap_and_free_tx_resource.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end.loopexit:                                 ; preds = %ixgb_unmap_and_free_tx_resource.exit
  call void @__sanitizer_cov_trace_pc() #12
  %phi.bo = mul i32 %16, 20
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %entry.for.end_crit_edge
  %.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %phi.bo, %for.end.loopexit ]
  %tx_ring1 = getelementptr inbounds %struct.ixgb_adapter, ptr %adapter, i32 0, i32 9
  %buffer_info4 = getelementptr inbounds %struct.ixgb_adapter, ptr %adapter, i32 0, i32 9, i32 6
  %17 = ptrtoint ptr %buffer_info4 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %buffer_info4, align 4
  %19 = call ptr @memset(ptr %18, i32 0, i32 %.lcssa)
  %20 = ptrtoint ptr %tx_ring1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %tx_ring1, align 4
  %size5 = getelementptr inbounds %struct.ixgb_adapter, ptr %adapter, i32 0, i32 9, i32 2
  %22 = ptrtoint ptr %size5 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %size5, align 4
  %24 = call ptr @memset(ptr %21, i32 0, i32 %23)
  %next_to_use = getelementptr inbounds %struct.ixgb_adapter, ptr %adapter, i32 0, i32 9, i32 4
  %25 = ptrtoint ptr %next_to_use to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %next_to_use, align 4
  %next_to_clean = getelementptr inbounds %struct.ixgb_adapter, ptr %adapter, i32 0, i32 9, i32 5
  %26 = ptrtoint ptr %next_to_clean to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %next_to_clean, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !178
  tail call void @arm_heavy_mb() #10
  %hw = getelementptr inbounds %struct.ixgb_adapter, ptr %adapter, i32 0, i32 27
  %27 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %hw, align 32
  %add.ptr = getelementptr i8, ptr %28, i32 1560
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #10, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !179
  tail call void @arm_heavy_mb() #10
  %29 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %hw, align 32
  %add.ptr11 = getelementptr i8, ptr %30, i32 1568
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11, i32 0) #10, !srcloc !132
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ixgb_clean_rx_ring(ptr nocapture noundef %adapter) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %count = getelementptr inbounds %struct.ixgb_adapter, ptr %adapter, i32 0, i32 19, i32 3
  %0 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp42.not = icmp eq i32 %1, 0
  br i1 %cmp42.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %pdev2 = getelementptr inbounds %struct.ixgb_adapter, ptr %adapter, i32 0, i32 26
  %2 = ptrtoint ptr %pdev2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev2, align 4
  %buffer_info3 = getelementptr inbounds %struct.ixgb_adapter, ptr %adapter, i32 0, i32 19, i32 6
  %dev = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.043 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %4 = ptrtoint ptr %buffer_info3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %buffer_info3, align 4
  %arrayidx = getelementptr %struct.ixgb_buffer, ptr %5, i32 %i.043
  %dma = getelementptr %struct.ixgb_buffer, ptr %5, i32 %i.043, i32 1
  %6 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dma, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %for.body.if.end_crit_edge, label %if.then

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %length = getelementptr %struct.ixgb_buffer, ptr %5, i32 %i.043, i32 3
  %8 = ptrtoint ptr %length to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %length, align 4
  %conv = zext i16 %9 to i32
  tail call void @dma_unmap_page_attrs(ptr noundef %dev, i32 noundef %7, i32 noundef %conv, i32 noundef 2, i32 noundef 0) #10
  %10 = ptrtoint ptr %dma to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %dma, align 4
  %11 = ptrtoint ptr %length to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 0, ptr %length, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.if.end_crit_edge
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx, align 4
  %tobool7.not = icmp eq ptr %13, null
  br i1 %tobool7.not, label %if.end.for.inc_crit_edge, label %if.then8

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @consume_skb(ptr noundef nonnull %13) #10
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then8, %if.end.for.inc_crit_edge
  %inc = add nuw i32 %i.043, 1
  %15 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %count, align 4
  %cmp = icmp ult i32 %inc, %16
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.end.loopexit

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end.loopexit:                                 ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  %phi.bo = mul i32 %16, 20
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %entry.for.end_crit_edge
  %.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %phi.bo, %for.end.loopexit ]
  %rx_ring1 = getelementptr inbounds %struct.ixgb_adapter, ptr %adapter, i32 0, i32 19
  %buffer_info13 = getelementptr inbounds %struct.ixgb_adapter, ptr %adapter, i32 0, i32 19, i32 6
  %17 = ptrtoint ptr %buffer_info13 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %buffer_info13, align 4
  %19 = call ptr @memset(ptr %18, i32 0, i32 %.lcssa)
  %20 = ptrtoint ptr %rx_ring1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rx_ring1, align 4
  %size14 = getelementptr inbounds %struct.ixgb_adapter, ptr %adapter, i32 0, i32 19, i32 2
  %22 = ptrtoint ptr %size14 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %size14, align 4
  %24 = call ptr @memset(ptr %21, i32 0, i32 %23)
  %next_to_clean = getelementptr inbounds %struct.ixgb_adapter, ptr %adapter, i32 0, i32 19, i32 5
  %25 = ptrtoint ptr %next_to_clean to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %next_to_clean, align 4
  %next_to_use = getelementptr inbounds %struct.ixgb_adapter, ptr %adapter, i32 0, i32 19, i32 4
  %26 = ptrtoint ptr %next_to_use to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %next_to_use, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !180
  tail call void @arm_heavy_mb() #10
  %hw = getelementptr inbounds %struct.ixgb_adapter, ptr %adapter, i32 0, i32 27
  %27 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %hw, align 32
  %add.ptr = getelementptr i8, ptr %28, i32 296
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #10, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !181
  tail call void @arm_heavy_mb() #10
  %29 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %hw, align 32
  %add.ptr20 = getelementptr i8, ptr %30, i32 304
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20, i32 0) #10, !srcloc !132
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ixgb_adapter_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ixgb_init_hw(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ixgb_setup_tx_resources(ptr noundef %adapter) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev1 = getelementptr inbounds %struct.ixgb_adapter, ptr %adapter, i32 0, i32 26
  %0 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev1, align 4
  %count = getelementptr inbounds %struct.ixgb_adapter, ptr %adapter, i32 0, i32 9, i32 3
  %2 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %count, align 4
  %mul = mul i32 %3, 20
  %call = tail call noalias ptr @vzalloc(i32 noundef %mul) #15
  %buffer_info = getelementptr inbounds %struct.ixgb_adapter, ptr %adapter, i32 0, i32 9, i32 6
  %4 = ptrtoint ptr %buffer_info to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call, ptr %buffer_info, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %tx_ring = getelementptr inbounds %struct.ixgb_adapter, ptr %adapter, i32 0, i32 9
  %5 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %count, align 4
  %mul4 = shl i32 %6, 4
  %size5 = getelementptr inbounds %struct.ixgb_adapter, ptr %adapter, i32 0, i32 9, i32 2
  %add = add i32 %mul4, 4095
  %and = and i32 %add, -4096
  %7 = ptrtoint ptr %size5 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %and, ptr %size5, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %dma = getelementptr inbounds %struct.ixgb_adapter, ptr %adapter, i32 0, i32 9, i32 1
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev, i32 noundef %and, ptr noundef %dma, i32 noundef 3264, i32 noundef 0) #10
  %8 = ptrtoint ptr %tx_ring to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i, ptr %tx_ring, align 4
  %tobool11.not = icmp eq ptr %call.i, null
  br i1 %tobool11.not, label %if.then12, label %if.end14

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %9 = ptrtoint ptr %buffer_info to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %buffer_info, align 4
  tail call void @vfree(ptr noundef %10) #10
  br label %cleanup

if.end14:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %next_to_use = getelementptr inbounds %struct.ixgb_adapter, ptr %adapter, i32 0, i32 9, i32 4
  %11 = ptrtoint ptr %next_to_use to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %next_to_use, align 4
  %next_to_clean = getelementptr inbounds %struct.ixgb_adapter, ptr %adapter, i32 0, i32 9, i32 5
  %12 = ptrtoint ptr %next_to_clean to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %next_to_clean, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.then12, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end14 ], [ -12, %if.then12 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vzalloc(i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ixgb_setup_rx_resources(ptr noundef %adapter) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev1 = getelementptr inbounds %struct.ixgb_adapter, ptr %adapter, i32 0, i32 26
  %0 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev1, align 4
  %count = getelementptr inbounds %struct.ixgb_adapter, ptr %adapter, i32 0, i32 19, i32 3
  %2 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %count, align 4
  %mul = mul i32 %3, 20
  %call = tail call noalias ptr @vzalloc(i32 noundef %mul) #15
  %buffer_info = getelementptr inbounds %struct.ixgb_adapter, ptr %adapter, i32 0, i32 19, i32 6
  %4 = ptrtoint ptr %buffer_info to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call, ptr %buffer_info, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %rx_ring = getelementptr inbounds %struct.ixgb_adapter, ptr %adapter, i32 0, i32 19
  %5 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %count, align 4
  %mul4 = shl i32 %6, 4
  %size5 = getelementptr inbounds %struct.ixgb_adapter, ptr %adapter, i32 0, i32 19, i32 2
  %add = add i32 %mul4, 4095
  %and = and i32 %add, -4096
  %7 = ptrtoint ptr %size5 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %and, ptr %size5, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %dma = getelementptr inbounds %struct.ixgb_adapter, ptr %adapter, i32 0, i32 19, i32 1
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev, i32 noundef %and, ptr noundef %dma, i32 noundef 3264, i32 noundef 0) #10
  %8 = ptrtoint ptr %rx_ring to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i, ptr %rx_ring, align 4
  %tobool11.not = icmp eq ptr %call.i, null
  br i1 %tobool11.not, label %if.then12, label %if.end14

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %9 = ptrtoint ptr %buffer_info to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %buffer_info, align 4
  tail call void @vfree(ptr noundef %10) #10
  br label %cleanup

if.end14:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %next_to_clean = getelementptr inbounds %struct.ixgb_adapter, ptr %adapter, i32 0, i32 19, i32 5
  %11 = ptrtoint ptr %next_to_clean to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %next_to_clean, align 4
  %next_to_use = getelementptr inbounds %struct.ixgb_adapter, ptr %adapter, i32 0, i32 19, i32 4
  %12 = ptrtoint ptr %next_to_use to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %next_to_use, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.then12, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end14 ], [ -12, %if.then12 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ixgb_free_tx_resources(ptr nocapture noundef %adapter) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev1 = getelementptr inbounds %struct.ixgb_adapter, ptr %adapter, i32 0, i32 26
  %0 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev1, align 4
  tail call fastcc void @ixgb_clean_tx_ring(ptr noundef %adapter)
  %tx_ring = getelementptr inbounds %struct.ixgb_adapter, ptr %adapter, i32 0, i32 9
  %buffer_info = getelementptr inbounds %struct.ixgb_adapter, ptr %adapter, i32 0, i32 9, i32 6
  %2 = ptrtoint ptr %buffer_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %buffer_info, align 8
  tail call void @vfree(ptr noundef %3) #10
  %4 = ptrtoint ptr %buffer_info to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %buffer_info, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %size = getelementptr inbounds %struct.ixgb_adapter, ptr %adapter, i32 0, i32 9, i32 2
  %5 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %size, align 8
  %7 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tx_ring, align 128
  %dma = getelementptr inbounds %struct.ixgb_adapter, ptr %adapter, i32 0, i32 9, i32 1
  %9 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %dma, align 4
  tail call void @dma_free_attrs(ptr noundef %dev, i32 noundef %6, ptr noundef %8, i32 noundef %10, i32 noundef 0) #10
  %11 = ptrtoint ptr %tx_ring to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %tx_ring, align 128
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ixgb_free_rx_resources(ptr nocapture noundef %adapter) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_ring1 = getelementptr inbounds %struct.ixgb_adapter, ptr %adapter, i32 0, i32 19
  %pdev2 = getelementptr inbounds %struct.ixgb_adapter, ptr %adapter, i32 0, i32 26
  %0 = ptrtoint ptr %pdev2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev2, align 4
  tail call fastcc void @ixgb_clean_rx_ring(ptr noundef %adapter)
  %buffer_info = getelementptr inbounds %struct.ixgb_adapter, ptr %adapter, i32 0, i32 19, i32 6
  %2 = ptrtoint ptr %buffer_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %buffer_info, align 4
  tail call void @vfree(ptr noundef %3) #10
  %4 = ptrtoint ptr %buffer_info to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %buffer_info, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %size = getelementptr inbounds %struct.ixgb_adapter, ptr %adapter, i32 0, i32 19, i32 2
  %5 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %size, align 4
  %7 = ptrtoint ptr %rx_ring1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rx_ring1, align 4
  %dma = getelementptr inbounds %struct.ixgb_adapter, ptr %adapter, i32 0, i32 19, i32 1
  %9 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %dma, align 4
  tail call void @dma_free_attrs(ptr noundef %dev, i32 noundef %6, ptr noundef %8, i32 noundef %10, i32 noundef 0) #10
  %11 = ptrtoint ptr %rx_ring1 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %rx_ring1, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ixgb_update_stats(ptr noundef %adapter) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %netdev1 = getelementptr inbounds %struct.ixgb_adapter, ptr %adapter, i32 0, i32 25
  %0 = ptrtoint ptr %netdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netdev1, align 8
  %pdev2 = getelementptr inbounds %struct.ixgb_adapter, ptr %adapter, i32 0, i32 26
  %2 = ptrtoint ptr %pdev2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev2, align 4
  %error_state.i = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 43
  %4 = ptrtoint ptr %error_state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %error_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp.i.not = icmp eq i32 %5, 1
  br i1 %cmp.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 14
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags, align 8
  %8 = and i32 %7, 768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %lor.lhs.false7, label %if.end.if.then8_crit_edge

if.end.if.then8_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then8

lor.lhs.false7:                                   ; preds = %if.end
  %count = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 66, i32 1
  %10 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %11)
  %cmp = icmp sgt i32 %11, 128
  br i1 %cmp, label %lor.lhs.false7.if.then8_crit_edge, label %if.else

lor.lhs.false7.if.then8_crit_edge:                ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then8

if.then8:                                         ; preds = %lor.lhs.false7.if.then8_crit_edge, %if.end.if.then8_crit_edge
  %hw = getelementptr inbounds %struct.ixgb_adapter, ptr %adapter, i32 0, i32 27
  %12 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hw, align 32
  %add.ptr = getelementptr i8, ptr %13, i32 8216
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !182
  %15 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hw, align 32
  %add.ptr15 = getelementptr i8, ptr %16, i32 8208
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr15) #10, !srcloc !129
  %18 = tail call i32 @llvm.bswap.i32(i32 %17)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !183
  %19 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %hw, align 32
  %add.ptr23 = getelementptr i8, ptr %20, i32 8212
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr23) #10, !srcloc !129
  %22 = tail call i32 @llvm.bswap.i32(i32 %21)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !184
  %conv27 = zext i32 %22 to i64
  %shl = shl nuw i64 %conv27, 32
  %conv28 = zext i32 %18 to i64
  %or = or i64 %shl, %conv28
  %23 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %hw, align 32
  %add.ptr33 = getelementptr i8, ptr %24, i32 8220
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr33) #10, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !185
  %26 = zext i32 %25 to i64
  %27 = zext i32 %14 to i64
  %28 = shl nuw i64 %27, 32
  %29 = or i64 %28, %26
  %30 = tail call i64 @llvm.bswap.i64(i64 %29)
  call void @__sanitizer_cov_trace_cmp8(i64 %30, i64 %or)
  %cmp40.not = icmp ult i64 %30, %or
  %sub = select i1 %cmp40.not, i64 0, i64 %or
  %spec.select = sub i64 %30, %sub
  %and44 = and i64 %spec.select, 4294967295
  %mprcl = getelementptr inbounds %struct.ixgb_adapter, ptr %adapter, i32 0, i32 29, i32 6
  %31 = ptrtoint ptr %mprcl to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %mprcl, align 8
  %add = add i64 %and44, %32
  store i64 %add, ptr %mprcl, align 8
  %shr = lshr i64 %spec.select, 32
  %mprch = getelementptr inbounds %struct.ixgb_adapter, ptr %adapter, i32 0, i32 29, i32 7
  %33 = ptrtoint ptr %mprch to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %mprch, align 8
  %add46 = add i64 %shr, %34
  store i64 %add46, ptr %mprch, align 8
  %bprcl = getelementptr inbounds %struct.ixgb_adapter, ptr %adapter, i32 0, i32 29, i32 4
  %35 = ptrtoint ptr %bprcl to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %bprcl, align 8
  %add49 = add i64 %36, %conv28
  store i64 %add49, ptr %bprcl, align 8
  br label %if.end101

if.else:                                          ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_pc() #12
  %hw55 = getelementptr inbounds %struct.ixgb_adapter, ptr %adapter, i32 0, i32 27
  %37 = ptrtoint ptr %hw55 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %hw55, align 32
  %add.ptr57 = getelementptr i8, ptr %38, i32 8216
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr57) #10, !srcloc !129
  %40 = tail call i32 @llvm.bswap.i32(i32 %39)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !186
  %conv61 = zext i32 %40 to i64
  %mprcl63 = getelementptr inbounds %struct.ixgb_adapter, ptr %adapter, i32 0, i32 29, i32 6
  %41 = ptrtoint ptr %mprcl63 to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %mprcl63, align 8
  %add64 = add i64 %42, %conv61
  store i64 %add64, ptr %mprcl63, align 8
  %43 = ptrtoint ptr %hw55 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %hw55, align 32
  %add.ptr69 = getelementptr i8, ptr %44, i32 8220
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr69) #10, !srcloc !129
  %46 = tail call i32 @llvm.bswap.i32(i32 %45)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !187
  %conv73 = zext i32 %46 to i64
  %mprch75 = getelementptr inbounds %struct.ixgb_adapter, ptr %adapter, i32 0, i32 29, i32 7
  %47 = ptrtoint ptr %mprch75 to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %mprch75, align 8
  %add76 = add i64 %48, %conv73
  store i64 %add76, ptr %mprch75, align 8
  %49 = ptrtoint ptr %hw55 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %hw55, align 32
  %add.ptr81 = getelementptr i8, ptr %50, i32 8208
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr81) #10, !srcloc !129
  %52 = tail call i32 @llvm.bswap.i32(i32 %51)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !188
  %conv85 = zext i32 %52 to i64
  %bprcl87 = getelementptr inbounds %struct.ixgb_adapter, ptr %adapter, i32 0, i32 29, i32 4
  %53 = ptrtoint ptr %bprcl87 to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %bprcl87, align 8
  %add88 = add i64 %54, %conv85
  store i64 %add88, ptr %bprcl87, align 8
  %55 = ptrtoint ptr %hw55 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %hw55, align 32
  %add.ptr93 = getelementptr i8, ptr %56, i32 8212
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr93) #10, !srcloc !129
  %58 = tail call i32 @llvm.bswap.i32(i32 %57)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !189
  %conv97 = zext i32 %58 to i64
  br label %if.end101

if.end101:                                        ; preds = %if.else, %if.then8
  %conv97.sink = phi i64 [ %conv97, %if.else ], [ %conv27, %if.then8 ]
  %bprch99 = getelementptr inbounds %struct.ixgb_adapter, ptr %adapter, i32 0, i32 29, i32 5
  %59 = ptrtoint ptr %bprch99 to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %bprch99, align 8
  %add100 = add i64 %60, %conv97.sink
  store i64 %add100, ptr %bprch99, align 8
  %hw104 = getelementptr inbounds %struct.ixgb_adapter, ptr %adapter, i32 0, i32 27
  %61 = ptrtoint ptr %hw104 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %hw104, align 32
  %add.ptr106 = getelementptr i8, ptr %62, i32 8192
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr106) #10, !srcloc !129
  %64 = tail call i32 @llvm.bswap.i32(i32 %63)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !190
  %conv110 = zext i32 %64 to i64
  %stats111 = getelementptr inbounds %struct.ixgb_adapter, ptr %adapter, i32 0, i32 29
  %65 = ptrtoint ptr %stats111 to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %stats111, align 8
  %add112 = add i64 %66, %conv110
  store i64 %add112, ptr %stats111, align 8
  %67 = ptrtoint ptr %hw104 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %hw104, align 32
  %add.ptr117 = getelementptr i8, ptr %68, i32 8196
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr117) #10, !srcloc !129
  %70 = tail call i32 @llvm.bswap.i32(i32 %69)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !191
  %conv121 = zext i32 %70 to i64
  %tprh = getelementptr inbounds %struct.ixgb_adapter, ptr %adapter, i32 0, i32 29, i32 1
  %71 = ptrtoint ptr %tprh to i32
  call void @__asan_load8_noabort(i32 %71)
  %72 = load i64, ptr %tprh, align 8
  %add123 = add i64 %72, %conv121
  store i64 %add123, ptr %tprh, align 8
  %73 = ptrtoint ptr %hw104 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %hw104, align 32
  %add.ptr128 = getelementptr i8, ptr %74, i32 8200
  %75 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr128) #10, !srcloc !129
  %76 = tail call i32 @llvm.bswap.i32(i32 %75)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !192
  %conv132 = zext i32 %76 to i64
  %gprcl = getelementptr inbounds %struct.ixgb_adapter, ptr %adapter, i32 0, i32 29, i32 2
  %77 = ptrtoint ptr %gprcl to i32
  call void @__asan_load8_noabort(i32 %77)
  %78 = load i64, ptr %gprcl, align 8
  %add134 = add i64 %78, %conv132
  store i64 %add134, ptr %gprcl, align 8
  %79 = ptrtoint ptr %hw104 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %hw104, align 32
  %add.ptr139 = getelementptr i8, ptr %80, i32 8204
  %81 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr139) #10, !srcloc !129
  %82 = tail call i32 @llvm.bswap.i32(i32 %81)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !193
  %conv143 = zext i32 %82 to i64
  %gprch = getelementptr inbounds %struct.ixgb_adapter, ptr %adapter, i32 0, i32 29, i32 3
  %83 = ptrtoint ptr %gprch to i32
  call void @__asan_load8_noabort(i32 %83)
  %84 = load i64, ptr %gprch, align 8
  %add145 = add i64 %84, %conv143
  store i64 %add145, ptr %gprch, align 8
  %85 = ptrtoint ptr %hw104 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %hw104, align 32
  %add.ptr150 = getelementptr i8, ptr %86, i32 8224
  %87 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr150) #10, !srcloc !129
  %88 = tail call i32 @llvm.bswap.i32(i32 %87)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !194
  %conv154 = zext i32 %88 to i64
  %uprcl = getelementptr inbounds %struct.ixgb_adapter, ptr %adapter, i32 0, i32 29, i32 8
  %89 = ptrtoint ptr %uprcl to i32
  call void @__asan_load8_noabort(i32 %89)
  %90 = load i64, ptr %uprcl, align 8
  %add156 = add i64 %90, %conv154
  store i64 %add156, ptr %uprcl, align 8
  %91 = ptrtoint ptr %hw104 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %hw104, align 32
  %add.ptr161 = getelementptr i8, ptr %92, i32 8228
  %93 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr161) #10, !srcloc !129
  %94 = tail call i32 @llvm.bswap.i32(i32 %93)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !195
  %conv165 = zext i32 %94 to i64
  %uprch = getelementptr inbounds %struct.ixgb_adapter, ptr %adapter, i32 0, i32 29, i32 9
  %95 = ptrtoint ptr %uprch to i32
  call void @__asan_load8_noabort(i32 %95)
  %96 = load i64, ptr %uprch, align 8
  %add167 = add i64 %96, %conv165
  store i64 %add167, ptr %uprch, align 8
  %97 = ptrtoint ptr %hw104 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %hw104, align 32
  %add.ptr172 = getelementptr i8, ptr %98, i32 8232
  %99 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr172) #10, !srcloc !129
  %100 = tail call i32 @llvm.bswap.i32(i32 %99)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !196
  %conv176 = zext i32 %100 to i64
  %vprcl = getelementptr inbounds %struct.ixgb_adapter, ptr %adapter, i32 0, i32 29, i32 10
  %101 = ptrtoint ptr %vprcl to i32
  call void @__asan_load8_noabort(i32 %101)
  %102 = load i64, ptr %vprcl, align 8
  %add178 = add i64 %102, %conv176
  store i64 %add178, ptr %vprcl, align 8
  %103 = ptrtoint ptr %hw104 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %hw104, align 32
  %add.ptr183 = getelementptr i8, ptr %104, i32 8236
  %105 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr183) #10, !srcloc !129
  %106 = tail call i32 @llvm.bswap.i32(i32 %105)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !197
  %conv187 = zext i32 %106 to i64
  %vprch = getelementptr inbounds %struct.ixgb_adapter, ptr %adapter, i32 0, i32 29, i32 11
  %107 = ptrtoint ptr %vprch to i32
  call void @__asan_load8_noabort(i32 %107)
  %108 = load i64, ptr %vprch, align 8
  %add189 = add i64 %108, %conv187
  store i64 %add189, ptr %vprch, align 8
  %109 = ptrtoint ptr %hw104 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %hw104, align 32
  %add.ptr194 = getelementptr i8, ptr %110, i32 8240
  %111 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr194) #10, !srcloc !129
  %112 = tail call i32 @llvm.bswap.i32(i32 %111)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !198
  %conv198 = zext i32 %112 to i64
  %jprcl = getelementptr inbounds %struct.ixgb_adapter, ptr %adapter, i32 0, i32 29, i32 12
  %113 = ptrtoint ptr %jprcl to i32
  call void @__asan_load8_noabort(i32 %113)
  %114 = load i64, ptr %jprcl, align 8
  %add200 = add i64 %114, %conv198
  store i64 %add200, ptr %jprcl, align 8
  %115 = ptrtoint ptr %hw104 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %hw104, align 32
  %add.ptr205 = getelementptr i8, ptr %116, i32 8244
  %117 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr205) #10, !srcloc !129
  %118 = tail call i32 @llvm.bswap.i32(i32 %117)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !199
  %conv209 = zext i32 %118 to i64
  %jprch = getelementptr inbounds %struct.ixgb_adapter, ptr %adapter, i32 0, i32 29, i32 13
  %119 = ptrtoint ptr %jprch to i32
  call void @__asan_load8_noabort(i32 %119)
  %120 = load i64, ptr %jprch, align 8
  %add211 = add i64 %120, %conv209
  store i64 %add211, ptr %jprch, align 8
  %121 = ptrtoint ptr %hw104 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %hw104, align 32
  %add.ptr216 = getelementptr i8, ptr %122, i32 8248
  %123 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr216) #10, !srcloc !129
  %124 = tail call i32 @llvm.bswap.i32(i32 %123)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !200
  %conv220 = zext i32 %124 to i64
  %gorcl = getelementptr inbounds %struct.ixgb_adapter, ptr %adapter, i32 0, i32 29, i32 14
  %125 = ptrtoint ptr %gorcl to i32
  call void @__asan_load8_noabort(i32 %125)
  %126 = load i64, ptr %gorcl, align 8
  %add222 = add i64 %126, %conv220
  store i64 %add222, ptr %gorcl, align 8
  %127 = ptrtoint ptr %hw104 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %hw104, align 32
  %add.ptr227 = getelementptr i8, ptr %128, i32 8252
  %129 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr227) #10, !srcloc !129
  %130 = tail call i32 @llvm.bswap.i32(i32 %129)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !201
  %conv231 = zext i32 %130 to i64
  %gorch = getelementptr inbounds %struct.ixgb_adapter, ptr %adapter, i32 0, i32 29, i32 15
  %131 = ptrtoint ptr %gorch to i32
  call void @__asan_load8_noabort(i32 %131)
  %132 = load i64, ptr %gorch, align 8
  %add233 = add i64 %132, %conv231
  store i64 %add233, ptr %gorch, align 8
  %133 = ptrtoint ptr %hw104 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %hw104, align 32
  %add.ptr238 = getelementptr i8, ptr %134, i32 8256
  %135 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr238) #10, !srcloc !129
  %136 = tail call i32 @llvm.bswap.i32(i32 %135)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !202
  %conv242 = zext i32 %136 to i64
  %torl = getelementptr inbounds %struct.ixgb_adapter, ptr %adapter, i32 0, i32 29, i32 16
  %137 = ptrtoint ptr %torl to i32
  call void @__asan_load8_noabort(i32 %137)
  %138 = load i64, ptr %torl, align 8
  %add244 = add i64 %138, %conv242
  store i64 %add244, ptr %torl, align 8
  %139 = ptrtoint ptr %hw104 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %hw104, align 32
  %add.ptr249 = getelementptr i8, ptr %140, i32 8260
  %141 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr249) #10, !srcloc !129
  %142 = tail call i32 @llvm.bswap.i32(i32 %141)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !203
  %conv253 = zext i32 %142 to i64
  %torh = getelementptr inbounds %struct.ixgb_adapter, ptr %adapter, i32 0, i32 29, i32 17
  %143 = ptrtoint ptr %torh to i32
  call void @__asan_load8_noabort(i32 %143)
  %144 = load i64, ptr %torh, align 8
  %add255 = add i64 %144, %conv253
  store i64 %add255, ptr %torh, align 8
  %145 = ptrtoint ptr %hw104 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %hw104, align 32
  %add.ptr260 = getelementptr i8, ptr %146, i32 8264
  %147 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr260) #10, !srcloc !129
  %148 = tail call i32 @llvm.bswap.i32(i32 %147)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !204
  %conv264 = zext i32 %148 to i64
  %rnbc = getelementptr inbounds %struct.ixgb_adapter, ptr %adapter, i32 0, i32 29, i32 18
  %149 = ptrtoint ptr %rnbc to i32
  call void @__asan_load8_noabort(i32 %149)
  %150 = load i64, ptr %rnbc, align 8
  %add266 = add i64 %150, %conv264
  store i64 %add266, ptr %rnbc, align 8
  %151 = ptrtoint ptr %hw104 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %hw104, align 32
  %add.ptr271 = getelementptr i8, ptr %152, i32 8272
  %153 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr271) #10, !srcloc !129
  %154 = tail call i32 @llvm.bswap.i32(i32 %153)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !205
  %conv275 = zext i32 %154 to i64
  %ruc = getelementptr inbounds %struct.ixgb_adapter, ptr %adapter, i32 0, i32 29, i32 19
  %155 = ptrtoint ptr %ruc to i32
  call void @__asan_load8_noabort(i32 %155)
  %156 = load i64, ptr %ruc, align 8
  %add277 = add i64 %156, %conv275
  store i64 %add277, ptr %ruc, align 8
  %157 = ptrtoint ptr %hw104 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %hw104, align 32
  %add.ptr282 = getelementptr i8, ptr %158, i32 8280
  %159 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr282) #10, !srcloc !129
  %160 = tail call i32 @llvm.bswap.i32(i32 %159)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !206
  %conv286 = zext i32 %160 to i64
  %roc = getelementptr inbounds %struct.ixgb_adapter, ptr %adapter, i32 0, i32 29, i32 20
  %161 = ptrtoint ptr %roc to i32
  call void @__asan_load8_noabort(i32 %161)
  %162 = load i64, ptr %roc, align 8
  %add288 = add i64 %162, %conv286
  store i64 %add288, ptr %roc, align 8
  %163 = ptrtoint ptr %hw104 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %hw104, align 32
  %add.ptr293 = getelementptr i8, ptr %164, i32 8288
  %165 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr293) #10, !srcloc !129
  %166 = tail call i32 @llvm.bswap.i32(i32 %165)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !207
  %conv297 = zext i32 %166 to i64
  %rlec = getelementptr inbounds %struct.ixgb_adapter, ptr %adapter, i32 0, i32 29, i32 21
  %167 = ptrtoint ptr %rlec to i32
  call void @__asan_load8_noabort(i32 %167)
  %168 = load i64, ptr %rlec, align 8
  %add299 = add i64 %168, %conv297
  store i64 %add299, ptr %rlec, align 8
  %169 = ptrtoint ptr %hw104 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %hw104, align 32
  %add.ptr304 = getelementptr i8, ptr %170, i32 8296
  %171 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr304) #10, !srcloc !129
  %172 = tail call i32 @llvm.bswap.i32(i32 %171)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !208
  %conv308 = zext i32 %172 to i64
  %crcerrs = getelementptr inbounds %struct.ixgb_adapter, ptr %adapter, i32 0, i32 29, i32 22
  %173 = ptrtoint ptr %crcerrs to i32
  call void @__asan_load8_noabort(i32 %173)
  %174 = load i64, ptr %crcerrs, align 8
  %add310 = add i64 %174, %conv308
  store i64 %add310, ptr %crcerrs, align 8
  %175 = ptrtoint ptr %hw104 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %hw104, align 32
  %add.ptr315 = getelementptr i8, ptr %176, i32 8304
  %177 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr315) #10, !srcloc !129
  %178 = tail call i32 @llvm.bswap.i32(i32 %177)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !209
  %conv319 = zext i32 %178 to i64
  %icbc = getelementptr inbounds %struct.ixgb_adapter, ptr %adapter, i32 0, i32 29, i32 23
  %179 = ptrtoint ptr %icbc to i32
  call void @__asan_load8_noabort(i32 %179)
  %180 = load i64, ptr %icbc, align 8
  %add321 = add i64 %180, %conv319
  store i64 %add321, ptr %icbc, align 8
  %181 = ptrtoint ptr %hw104 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %hw104, align 32
  %add.ptr326 = getelementptr i8, ptr %182, i32 8312
  %183 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr326) #10, !srcloc !129
  %184 = tail call i32 @llvm.bswap.i32(i32 %183)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !210
  %conv330 = zext i32 %184 to i64
  %ecbc = getelementptr inbounds %struct.ixgb_adapter, ptr %adapter, i32 0, i32 29, i32 24
  %185 = ptrtoint ptr %ecbc to i32
  call void @__asan_load8_noabort(i32 %185)
  %186 = load i64, ptr %ecbc, align 8
  %add332 = add i64 %186, %conv330
  store i64 %add332, ptr %ecbc, align 8
  %187 = ptrtoint ptr %hw104 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %hw104, align 32
  %add.ptr337 = getelementptr i8, ptr %188, i32 8320
  %189 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr337) #10, !srcloc !129
  %190 = tail call i32 @llvm.bswap.i32(i32 %189)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !211
  %conv341 = zext i32 %190 to i64
  %mpc = getelementptr inbounds %struct.ixgb_adapter, ptr %adapter, i32 0, i32 29, i32 25
  %191 = ptrtoint ptr %mpc to i32
  call void @__asan_load8_noabort(i32 %191)
  %192 = load i64, ptr %mpc, align 8
  %add343 = add i64 %192, %conv341
  store i64 %add343, ptr %mpc, align 8
  %193 = ptrtoint ptr %hw104 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %hw104, align 32
  %add.ptr348 = getelementptr i8, ptr %194, i32 8448
  %195 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr348) #10, !srcloc !129
  %196 = tail call i32 @llvm.bswap.i32(i32 %195)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !212
  %conv352 = zext i32 %196 to i64
  %tptl = getelementptr inbounds %struct.ixgb_adapter, ptr %adapter, i32 0, i32 29, i32 26
  %197 = ptrtoint ptr %tptl to i32
  call void @__asan_load8_noabort(i32 %197)
  %198 = load i64, ptr %tptl, align 8
  %add354 = add i64 %198, %conv352
  store i64 %add354, ptr %tptl, align 8
  %199 = ptrtoint ptr %hw104 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %hw104, align 32
  %add.ptr359 = getelementptr i8, ptr %200, i32 8452
  %201 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr359) #10, !srcloc !129
  %202 = tail call i32 @llvm.bswap.i32(i32 %201)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !213
  %conv363 = zext i32 %202 to i64
  %tpth = getelementptr inbounds %struct.ixgb_adapter, ptr %adapter, i32 0, i32 29, i32 27
  %203 = ptrtoint ptr %tpth to i32
  call void @__asan_load8_noabort(i32 %203)
  %204 = load i64, ptr %tpth, align 8
  %add365 = add i64 %204, %conv363
  store i64 %add365, ptr %tpth, align 8
  %205 = ptrtoint ptr %hw104 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %hw104, align 32
  %add.ptr370 = getelementptr i8, ptr %206, i32 8456
  %207 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr370) #10, !srcloc !129
  %208 = tail call i32 @llvm.bswap.i32(i32 %207)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !214
  %conv374 = zext i32 %208 to i64
  %gptcl = getelementptr inbounds %struct.ixgb_adapter, ptr %adapter, i32 0, i32 29, i32 28
  %209 = ptrtoint ptr %gptcl to i32
  call void @__asan_load8_noabort(i32 %209)
  %210 = load i64, ptr %gptcl, align 8
  %add376 = add i64 %210, %conv374
  store i64 %add376, ptr %gptcl, align 8
  %211 = ptrtoint ptr %hw104 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %hw104, align 32
  %add.ptr381 = getelementptr i8, ptr %212, i32 8460
  %213 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr381) #10, !srcloc !129
  %214 = tail call i32 @llvm.bswap.i32(i32 %213)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !215
  %conv385 = zext i32 %214 to i64
  %gptch = getelementptr inbounds %struct.ixgb_adapter, ptr %adapter, i32 0, i32 29, i32 29
  %215 = ptrtoint ptr %gptch to i32
  call void @__asan_load8_noabort(i32 %215)
  %216 = load i64, ptr %gptch, align 8
  %add387 = add i64 %216, %conv385
  store i64 %add387, ptr %gptch, align 8
  %217 = ptrtoint ptr %hw104 to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %hw104, align 32
  %add.ptr392 = getelementptr i8, ptr %218, i32 8464
  %219 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr392) #10, !srcloc !129
  %220 = tail call i32 @llvm.bswap.i32(i32 %219)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !216
  %conv396 = zext i32 %220 to i64
  %bptcl = getelementptr inbounds %struct.ixgb_adapter, ptr %adapter, i32 0, i32 29, i32 30
  %221 = ptrtoint ptr %bptcl to i32
  call void @__asan_load8_noabort(i32 %221)
  %222 = load i64, ptr %bptcl, align 8
  %add398 = add i64 %222, %conv396
  store i64 %add398, ptr %bptcl, align 8
  %223 = ptrtoint ptr %hw104 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %hw104, align 32
  %add.ptr403 = getelementptr i8, ptr %224, i32 8468
  %225 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr403) #10, !srcloc !129
  %226 = tail call i32 @llvm.bswap.i32(i32 %225)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !217
  %conv407 = zext i32 %226 to i64
  %bptch = getelementptr inbounds %struct.ixgb_adapter, ptr %adapter, i32 0, i32 29, i32 31
  %227 = ptrtoint ptr %bptch to i32
  call void @__asan_load8_noabort(i32 %227)
  %228 = load i64, ptr %bptch, align 8
  %add409 = add i64 %228, %conv407
  store i64 %add409, ptr %bptch, align 8
  %229 = ptrtoint ptr %hw104 to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %hw104, align 32
  %add.ptr414 = getelementptr i8, ptr %230, i32 8472
  %231 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr414) #10, !srcloc !129
  %232 = tail call i32 @llvm.bswap.i32(i32 %231)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !218
  %conv418 = zext i32 %232 to i64
  %mptcl = getelementptr inbounds %struct.ixgb_adapter, ptr %adapter, i32 0, i32 29, i32 32
  %233 = ptrtoint ptr %mptcl to i32
  call void @__asan_load8_noabort(i32 %233)
  %234 = load i64, ptr %mptcl, align 8
  %add420 = add i64 %234, %conv418
  store i64 %add420, ptr %mptcl, align 8
  %235 = ptrtoint ptr %hw104 to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %hw104, align 32
  %add.ptr425 = getelementptr i8, ptr %236, i32 8476
  %237 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr425) #10, !srcloc !129
  %238 = tail call i32 @llvm.bswap.i32(i32 %237)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !219
  %conv429 = zext i32 %238 to i64
  %mptch = getelementptr inbounds %struct.ixgb_adapter, ptr %adapter, i32 0, i32 29, i32 33
  %239 = ptrtoint ptr %mptch to i32
  call void @__asan_load8_noabort(i32 %239)
  %240 = load i64, ptr %mptch, align 8
  %add431 = add i64 %240, %conv429
  store i64 %add431, ptr %mptch, align 8
  %241 = ptrtoint ptr %hw104 to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %hw104, align 32
  %add.ptr436 = getelementptr i8, ptr %242, i32 8480
  %243 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr436) #10, !srcloc !129
  %244 = tail call i32 @llvm.bswap.i32(i32 %243)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !220
  %conv440 = zext i32 %244 to i64
  %uptcl = getelementptr inbounds %struct.ixgb_adapter, ptr %adapter, i32 0, i32 29, i32 34
  %245 = ptrtoint ptr %uptcl to i32
  call void @__asan_load8_noabort(i32 %245)
  %246 = load i64, ptr %uptcl, align 8
  %add442 = add i64 %246, %conv440
  store i64 %add442, ptr %uptcl, align 8
  %247 = ptrtoint ptr %hw104 to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %hw104, align 32
  %add.ptr447 = getelementptr i8, ptr %248, i32 8484
  %249 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr447) #10, !srcloc !129
  %250 = tail call i32 @llvm.bswap.i32(i32 %249)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !221
  %conv451 = zext i32 %250 to i64
  %uptch = getelementptr inbounds %struct.ixgb_adapter, ptr %adapter, i32 0, i32 29, i32 35
  %251 = ptrtoint ptr %uptch to i32
  call void @__asan_load8_noabort(i32 %251)
  %252 = load i64, ptr %uptch, align 8
  %add453 = add i64 %252, %conv451
  store i64 %add453, ptr %uptch, align 8
  %253 = ptrtoint ptr %hw104 to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %hw104, align 32
  %add.ptr458 = getelementptr i8, ptr %254, i32 8488
  %255 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr458) #10, !srcloc !129
  %256 = tail call i32 @llvm.bswap.i32(i32 %255)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !222
  %conv462 = zext i32 %256 to i64
  %vptcl = getelementptr inbounds %struct.ixgb_adapter, ptr %adapter, i32 0, i32 29, i32 36
  %257 = ptrtoint ptr %vptcl to i32
  call void @__asan_load8_noabort(i32 %257)
  %258 = load i64, ptr %vptcl, align 8
  %add464 = add i64 %258, %conv462
  store i64 %add464, ptr %vptcl, align 8
  %259 = ptrtoint ptr %hw104 to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %hw104, align 32
  %add.ptr469 = getelementptr i8, ptr %260, i32 8492
  %261 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr469) #10, !srcloc !129
  %262 = tail call i32 @llvm.bswap.i32(i32 %261)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !223
  %conv473 = zext i32 %262 to i64
  %vptch = getelementptr inbounds %struct.ixgb_adapter, ptr %adapter, i32 0, i32 29, i32 37
  %263 = ptrtoint ptr %vptch to i32
  call void @__asan_load8_noabort(i32 %263)
  %264 = load i64, ptr %vptch, align 8
  %add475 = add i64 %264, %conv473
  store i64 %add475, ptr %vptch, align 8
  %265 = ptrtoint ptr %hw104 to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %hw104, align 32
  %add.ptr480 = getelementptr i8, ptr %266, i32 8496
  %267 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr480) #10, !srcloc !129
  %268 = tail call i32 @llvm.bswap.i32(i32 %267)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !224
  %conv484 = zext i32 %268 to i64
  %jptcl = getelementptr inbounds %struct.ixgb_adapter, ptr %adapter, i32 0, i32 29, i32 38
  %269 = ptrtoint ptr %jptcl to i32
  call void @__asan_load8_noabort(i32 %269)
  %270 = load i64, ptr %jptcl, align 8
  %add486 = add i64 %270, %conv484
  store i64 %add486, ptr %jptcl, align 8
  %271 = ptrtoint ptr %hw104 to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %hw104, align 32
  %add.ptr491 = getelementptr i8, ptr %272, i32 8500
  %273 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr491) #10, !srcloc !129
  %274 = tail call i32 @llvm.bswap.i32(i32 %273)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !225
  %conv495 = zext i32 %274 to i64
  %jptch = getelementptr inbounds %struct.ixgb_adapter, ptr %adapter, i32 0, i32 29, i32 39
  %275 = ptrtoint ptr %jptch to i32
  call void @__asan_load8_noabort(i32 %275)
  %276 = load i64, ptr %jptch, align 8
  %add497 = add i64 %276, %conv495
  store i64 %add497, ptr %jptch, align 8
  %277 = ptrtoint ptr %hw104 to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load ptr, ptr %hw104, align 32
  %add.ptr502 = getelementptr i8, ptr %278, i32 8504
  %279 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr502) #10, !srcloc !129
  %280 = tail call i32 @llvm.bswap.i32(i32 %279)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !226
  %conv506 = zext i32 %280 to i64
  %gotcl = getelementptr inbounds %struct.ixgb_adapter, ptr %adapter, i32 0, i32 29, i32 40
  %281 = ptrtoint ptr %gotcl to i32
  call void @__asan_load8_noabort(i32 %281)
  %282 = load i64, ptr %gotcl, align 8
  %add508 = add i64 %282, %conv506
  store i64 %add508, ptr %gotcl, align 8
  %283 = ptrtoint ptr %hw104 to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load ptr, ptr %hw104, align 32
  %add.ptr513 = getelementptr i8, ptr %284, i32 8508
  %285 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr513) #10, !srcloc !129
  %286 = tail call i32 @llvm.bswap.i32(i32 %285)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !227
  %conv517 = zext i32 %286 to i64
  %gotch = getelementptr inbounds %struct.ixgb_adapter, ptr %adapter, i32 0, i32 29, i32 41
  %287 = ptrtoint ptr %gotch to i32
  call void @__asan_load8_noabort(i32 %287)
  %288 = load i64, ptr %gotch, align 8
  %add519 = add i64 %288, %conv517
  store i64 %add519, ptr %gotch, align 8
  %289 = ptrtoint ptr %hw104 to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load ptr, ptr %hw104, align 32
  %add.ptr524 = getelementptr i8, ptr %290, i32 8512
  %291 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr524) #10, !srcloc !129
  %292 = tail call i32 @llvm.bswap.i32(i32 %291)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !228
  %conv528 = zext i32 %292 to i64
  %totl = getelementptr inbounds %struct.ixgb_adapter, ptr %adapter, i32 0, i32 29, i32 42
  %293 = ptrtoint ptr %totl to i32
  call void @__asan_load8_noabort(i32 %293)
  %294 = load i64, ptr %totl, align 8
  %add530 = add i64 %294, %conv528
  store i64 %add530, ptr %totl, align 8
  %295 = ptrtoint ptr %hw104 to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load ptr, ptr %hw104, align 32
  %add.ptr535 = getelementptr i8, ptr %296, i32 8516
  %297 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr535) #10, !srcloc !129
  %298 = tail call i32 @llvm.bswap.i32(i32 %297)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !229
  %conv539 = zext i32 %298 to i64
  %toth = getelementptr inbounds %struct.ixgb_adapter, ptr %adapter, i32 0, i32 29, i32 43
  %299 = ptrtoint ptr %toth to i32
  call void @__asan_load8_noabort(i32 %299)
  %300 = load i64, ptr %toth, align 8
  %add541 = add i64 %300, %conv539
  store i64 %add541, ptr %toth, align 8
  %301 = ptrtoint ptr %hw104 to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load ptr, ptr %hw104, align 32
  %add.ptr546 = getelementptr i8, ptr %302, i32 8520
  %303 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr546) #10, !srcloc !129
  %304 = tail call i32 @llvm.bswap.i32(i32 %303)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !230
  %conv550 = zext i32 %304 to i64
  %dc = getelementptr inbounds %struct.ixgb_adapter, ptr %adapter, i32 0, i32 29, i32 44
  %305 = ptrtoint ptr %dc to i32
  call void @__asan_load8_noabort(i32 %305)
  %306 = load i64, ptr %dc, align 8
  %add552 = add i64 %306, %conv550
  store i64 %add552, ptr %dc, align 8
  %307 = ptrtoint ptr %hw104 to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load ptr, ptr %hw104, align 32
  %add.ptr557 = getelementptr i8, ptr %308, i32 8528
  %309 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr557) #10, !srcloc !129
  %310 = tail call i32 @llvm.bswap.i32(i32 %309)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !231
  %conv561 = zext i32 %310 to i64
  %plt64c = getelementptr inbounds %struct.ixgb_adapter, ptr %adapter, i32 0, i32 29, i32 45
  %311 = ptrtoint ptr %plt64c to i32
  call void @__asan_load8_noabort(i32 %311)
  %312 = load i64, ptr %plt64c, align 8
  %add563 = add i64 %312, %conv561
  store i64 %add563, ptr %plt64c, align 8
  %313 = ptrtoint ptr %hw104 to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load ptr, ptr %hw104, align 32
  %add.ptr568 = getelementptr i8, ptr %314, i32 8560
  %315 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr568) #10, !srcloc !129
  %316 = tail call i32 @llvm.bswap.i32(i32 %315)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !232
  %conv572 = zext i32 %316 to i64
  %tsctc = getelementptr inbounds %struct.ixgb_adapter, ptr %adapter, i32 0, i32 29, i32 46
  %317 = ptrtoint ptr %tsctc to i32
  call void @__asan_load8_noabort(i32 %317)
  %318 = load i64, ptr %tsctc, align 8
  %add574 = add i64 %318, %conv572
  store i64 %add574, ptr %tsctc, align 8
  %319 = ptrtoint ptr %hw104 to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load ptr, ptr %hw104, align 32
  %add.ptr579 = getelementptr i8, ptr %320, i32 8568
  %321 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr579) #10, !srcloc !129
  %322 = tail call i32 @llvm.bswap.i32(i32 %321)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !233
  %conv583 = zext i32 %322 to i64
  %tsctfc = getelementptr inbounds %struct.ixgb_adapter, ptr %adapter, i32 0, i32 29, i32 47
  %323 = ptrtoint ptr %tsctfc to i32
  call void @__asan_load8_noabort(i32 %323)
  %324 = load i64, ptr %tsctfc, align 8
  %add585 = add i64 %324, %conv583
  store i64 %add585, ptr %tsctfc, align 8
  %325 = ptrtoint ptr %hw104 to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load ptr, ptr %hw104, align 32
  %add.ptr590 = getelementptr i8, ptr %326, i32 8576
  %327 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr590) #10, !srcloc !129
  %328 = tail call i32 @llvm.bswap.i32(i32 %327)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !234
  %conv594 = zext i32 %328 to i64
  %ibic = getelementptr inbounds %struct.ixgb_adapter, ptr %adapter, i32 0, i32 29, i32 48
  %329 = ptrtoint ptr %ibic to i32
  call void @__asan_load8_noabort(i32 %329)
  %330 = load i64, ptr %ibic, align 8
  %add596 = add i64 %330, %conv594
  store i64 %add596, ptr %ibic, align 8
  %331 = ptrtoint ptr %hw104 to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load ptr, ptr %hw104, align 32
  %add.ptr601 = getelementptr i8, ptr %332, i32 8584
  %333 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr601) #10, !srcloc !129
  %334 = tail call i32 @llvm.bswap.i32(i32 %333)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !235
  %conv605 = zext i32 %334 to i64
  %rfc = getelementptr inbounds %struct.ixgb_adapter, ptr %adapter, i32 0, i32 29, i32 49
  %335 = ptrtoint ptr %rfc to i32
  call void @__asan_load8_noabort(i32 %335)
  %336 = load i64, ptr %rfc, align 8
  %add607 = add i64 %336, %conv605
  store i64 %add607, ptr %rfc, align 8
  %337 = ptrtoint ptr %hw104 to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load ptr, ptr %hw104, align 32
  %add.ptr612 = getelementptr i8, ptr %338, i32 8592
  %339 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr612) #10, !srcloc !129
  %340 = tail call i32 @llvm.bswap.i32(i32 %339)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !236
  %conv616 = zext i32 %340 to i64
  %lfc = getelementptr inbounds %struct.ixgb_adapter, ptr %adapter, i32 0, i32 29, i32 50
  %341 = ptrtoint ptr %lfc to i32
  call void @__asan_load8_noabort(i32 %341)
  %342 = load i64, ptr %lfc, align 8
  %add618 = add i64 %342, %conv616
  store i64 %add618, ptr %lfc, align 8
  %343 = ptrtoint ptr %hw104 to i32
  call void @__asan_load4_noabort(i32 %343)
  %344 = load ptr, ptr %hw104, align 32
  %add.ptr623 = getelementptr i8, ptr %344, i32 8600
  %345 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr623) #10, !srcloc !129
  %346 = tail call i32 @llvm.bswap.i32(i32 %345)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !237
  %conv627 = zext i32 %346 to i64
  %pfrc = getelementptr inbounds %struct.ixgb_adapter, ptr %adapter, i32 0, i32 29, i32 51
  %347 = ptrtoint ptr %pfrc to i32
  call void @__asan_load8_noabort(i32 %347)
  %348 = load i64, ptr %pfrc, align 8
  %add629 = add i64 %348, %conv627
  store i64 %add629, ptr %pfrc, align 8
  %349 = ptrtoint ptr %hw104 to i32
  call void @__asan_load4_noabort(i32 %349)
  %350 = load ptr, ptr %hw104, align 32
  %add.ptr634 = getelementptr i8, ptr %350, i32 8608
  %351 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr634) #10, !srcloc !129
  %352 = tail call i32 @llvm.bswap.i32(i32 %351)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !238
  %conv638 = zext i32 %352 to i64
  %pftc = getelementptr inbounds %struct.ixgb_adapter, ptr %adapter, i32 0, i32 29, i32 52
  %353 = ptrtoint ptr %pftc to i32
  call void @__asan_load8_noabort(i32 %353)
  %354 = load i64, ptr %pftc, align 8
  %add640 = add i64 %354, %conv638
  store i64 %add640, ptr %pftc, align 8
  %355 = ptrtoint ptr %hw104 to i32
  call void @__asan_load4_noabort(i32 %355)
  %356 = load ptr, ptr %hw104, align 32
  %add.ptr645 = getelementptr i8, ptr %356, i32 8616
  %357 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr645) #10, !srcloc !129
  %358 = tail call i32 @llvm.bswap.i32(i32 %357)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !239
  %conv649 = zext i32 %358 to i64
  %mcfrc = getelementptr inbounds %struct.ixgb_adapter, ptr %adapter, i32 0, i32 29, i32 53
  %359 = ptrtoint ptr %mcfrc to i32
  call void @__asan_load8_noabort(i32 %359)
  %360 = load i64, ptr %mcfrc, align 8
  %add651 = add i64 %360, %conv649
  store i64 %add651, ptr %mcfrc, align 8
  %361 = ptrtoint ptr %hw104 to i32
  call void @__asan_load4_noabort(i32 %361)
  %362 = load ptr, ptr %hw104, align 32
  %add.ptr656 = getelementptr i8, ptr %362, i32 8624
  %363 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr656) #10, !srcloc !129
  %364 = tail call i32 @llvm.bswap.i32(i32 %363)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !240
  %conv660 = zext i32 %364 to i64
  %mcftc = getelementptr inbounds %struct.ixgb_adapter, ptr %adapter, i32 0, i32 29, i32 54
  %365 = ptrtoint ptr %mcftc to i32
  call void @__asan_load8_noabort(i32 %365)
  %366 = load i64, ptr %mcftc, align 8
  %add662 = add i64 %366, %conv660
  store i64 %add662, ptr %mcftc, align 8
  %367 = ptrtoint ptr %hw104 to i32
  call void @__asan_load4_noabort(i32 %367)
  %368 = load ptr, ptr %hw104, align 32
  %add.ptr667 = getelementptr i8, ptr %368, i32 8632
  %369 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr667) #10, !srcloc !129
  %370 = tail call i32 @llvm.bswap.i32(i32 %369)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !241
  %conv671 = zext i32 %370 to i64
  %xonrxc = getelementptr inbounds %struct.ixgb_adapter, ptr %adapter, i32 0, i32 29, i32 55
  %371 = ptrtoint ptr %xonrxc to i32
  call void @__asan_load8_noabort(i32 %371)
  %372 = load i64, ptr %xonrxc, align 8
  %add673 = add i64 %372, %conv671
  store i64 %add673, ptr %xonrxc, align 8
  %373 = ptrtoint ptr %hw104 to i32
  call void @__asan_load4_noabort(i32 %373)
  %374 = load ptr, ptr %hw104, align 32
  %add.ptr678 = getelementptr i8, ptr %374, i32 8640
  %375 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr678) #10, !srcloc !129
  %376 = tail call i32 @llvm.bswap.i32(i32 %375)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !242
  %conv682 = zext i32 %376 to i64
  %xontxc = getelementptr inbounds %struct.ixgb_adapter, ptr %adapter, i32 0, i32 29, i32 56
  %377 = ptrtoint ptr %xontxc to i32
  call void @__asan_load8_noabort(i32 %377)
  %378 = load i64, ptr %xontxc, align 8
  %add684 = add i64 %378, %conv682
  store i64 %add684, ptr %xontxc, align 8
  %379 = ptrtoint ptr %hw104 to i32
  call void @__asan_load4_noabort(i32 %379)
  %380 = load ptr, ptr %hw104, align 32
  %add.ptr689 = getelementptr i8, ptr %380, i32 8648
  %381 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr689) #10, !srcloc !129
  %382 = tail call i32 @llvm.bswap.i32(i32 %381)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !243
  %conv693 = zext i32 %382 to i64
  %xoffrxc = getelementptr inbounds %struct.ixgb_adapter, ptr %adapter, i32 0, i32 29, i32 57
  %383 = ptrtoint ptr %xoffrxc to i32
  call void @__asan_load8_noabort(i32 %383)
  %384 = load i64, ptr %xoffrxc, align 8
  %add695 = add i64 %384, %conv693
  store i64 %add695, ptr %xoffrxc, align 8
  %385 = ptrtoint ptr %hw104 to i32
  call void @__asan_load4_noabort(i32 %385)
  %386 = load ptr, ptr %hw104, align 32
  %add.ptr700 = getelementptr i8, ptr %386, i32 8656
  %387 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr700) #10, !srcloc !129
  %388 = tail call i32 @llvm.bswap.i32(i32 %387)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !244
  %conv704 = zext i32 %388 to i64
  %xofftxc = getelementptr inbounds %struct.ixgb_adapter, ptr %adapter, i32 0, i32 29, i32 58
  %389 = ptrtoint ptr %xofftxc to i32
  call void @__asan_load8_noabort(i32 %389)
  %390 = load i64, ptr %xofftxc, align 8
  %add706 = add i64 %390, %conv704
  store i64 %add706, ptr %xofftxc, align 8
  %391 = ptrtoint ptr %hw104 to i32
  call void @__asan_load4_noabort(i32 %391)
  %392 = load ptr, ptr %hw104, align 32
  %add.ptr711 = getelementptr i8, ptr %392, i32 8664
  %393 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr711) #10, !srcloc !129
  %394 = tail call i32 @llvm.bswap.i32(i32 %393)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !245
  %conv715 = zext i32 %394 to i64
  %rjc = getelementptr inbounds %struct.ixgb_adapter, ptr %adapter, i32 0, i32 29, i32 59
  %395 = ptrtoint ptr %rjc to i32
  call void @__asan_load8_noabort(i32 %395)
  %396 = load i64, ptr %rjc, align 8
  %add717 = add i64 %396, %conv715
  store i64 %add717, ptr %rjc, align 8
  %397 = ptrtoint ptr %gprcl to i32
  call void @__asan_load8_noabort(i32 %397)
  %398 = load i64, ptr %gprcl, align 8
  %conv720 = trunc i64 %398 to i32
  %stats721 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36
  %399 = ptrtoint ptr %stats721 to i32
  call void @__asan_store4_noabort(i32 %399)
  store i32 %conv720, ptr %stats721, align 8
  %400 = ptrtoint ptr %gptcl to i32
  call void @__asan_load8_noabort(i32 %400)
  %401 = load i64, ptr %gptcl, align 8
  %conv724 = trunc i64 %401 to i32
  %tx_packets = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 1
  %402 = ptrtoint ptr %tx_packets to i32
  call void @__asan_store4_noabort(i32 %402)
  store i32 %conv724, ptr %tx_packets, align 4
  %403 = ptrtoint ptr %gorcl to i32
  call void @__asan_load8_noabort(i32 %403)
  %404 = load i64, ptr %gorcl, align 8
  %conv728 = trunc i64 %404 to i32
  %rx_bytes = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 2
  %405 = ptrtoint ptr %rx_bytes to i32
  call void @__asan_store4_noabort(i32 %405)
  store i32 %conv728, ptr %rx_bytes, align 8
  %406 = ptrtoint ptr %gotcl to i32
  call void @__asan_load8_noabort(i32 %406)
  %407 = load i64, ptr %gotcl, align 8
  %conv732 = trunc i64 %407 to i32
  %tx_bytes = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 3
  %408 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_store4_noabort(i32 %408)
  store i32 %conv732, ptr %tx_bytes, align 4
  %mprcl735 = getelementptr inbounds %struct.ixgb_adapter, ptr %adapter, i32 0, i32 29, i32 6
  %409 = ptrtoint ptr %mprcl735 to i32
  call void @__asan_load8_noabort(i32 %409)
  %410 = load i64, ptr %mprcl735, align 8
  %conv736 = trunc i64 %410 to i32
  %multicast = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 8
  %411 = ptrtoint ptr %multicast to i32
  call void @__asan_store4_noabort(i32 %411)
  store i32 %conv736, ptr %multicast, align 8
  %collisions = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 9
  %412 = ptrtoint ptr %collisions to i32
  call void @__asan_store4_noabort(i32 %412)
  store i32 0, ptr %collisions, align 4
  %413 = ptrtoint ptr %crcerrs to i32
  call void @__asan_load8_noabort(i32 %413)
  %414 = load i64, ptr %crcerrs, align 8
  %415 = ptrtoint ptr %ruc to i32
  call void @__asan_load8_noabort(i32 %415)
  %416 = load i64, ptr %ruc, align 8
  %add743 = add i64 %416, %414
  %417 = ptrtoint ptr %roc to i32
  call void @__asan_load8_noabort(i32 %417)
  %418 = load i64, ptr %roc, align 8
  %add746 = add i64 %add743, %418
  %419 = ptrtoint ptr %icbc to i32
  call void @__asan_load8_noabort(i32 %419)
  %420 = load i64, ptr %icbc, align 8
  %add749 = add i64 %add746, %420
  %421 = ptrtoint ptr %ecbc to i32
  call void @__asan_load8_noabort(i32 %421)
  %422 = load i64, ptr %ecbc, align 8
  %add752 = add i64 %add749, %422
  %423 = ptrtoint ptr %mpc to i32
  call void @__asan_load8_noabort(i32 %423)
  %424 = load i64, ptr %mpc, align 8
  %add755 = add i64 %add752, %424
  %conv756 = trunc i64 %add755 to i32
  %rx_errors = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 4
  %425 = ptrtoint ptr %rx_errors to i32
  call void @__asan_store4_noabort(i32 %425)
  store i32 %conv756, ptr %rx_errors, align 8
  %426 = load i64, ptr %crcerrs, align 8
  %conv760 = trunc i64 %426 to i32
  %rx_crc_errors = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 12
  %427 = ptrtoint ptr %rx_crc_errors to i32
  call void @__asan_store4_noabort(i32 %427)
  store i32 %conv760, ptr %rx_crc_errors, align 8
  %428 = load i64, ptr %mpc, align 8
  %conv764 = trunc i64 %428 to i32
  %rx_fifo_errors = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 14
  %429 = ptrtoint ptr %rx_fifo_errors to i32
  call void @__asan_store4_noabort(i32 %429)
  store i32 %conv764, ptr %rx_fifo_errors, align 8
  %430 = load i64, ptr %mpc, align 8
  %conv768 = trunc i64 %430 to i32
  %rx_missed_errors = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 15
  %431 = ptrtoint ptr %rx_missed_errors to i32
  call void @__asan_store4_noabort(i32 %431)
  store i32 %conv768, ptr %rx_missed_errors, align 4
  %432 = load i64, ptr %mpc, align 8
  %conv772 = trunc i64 %432 to i32
  %rx_over_errors = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 11
  %433 = ptrtoint ptr %rx_over_errors to i32
  call void @__asan_store4_noabort(i32 %433)
  store i32 %conv772, ptr %rx_over_errors, align 4
  %tx_errors = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 5
  %434 = ptrtoint ptr %tx_errors to i32
  call void @__asan_store4_noabort(i32 %434)
  store i32 0, ptr %tx_errors, align 4
  %rx_frame_errors = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 13
  %435 = ptrtoint ptr %rx_frame_errors to i32
  call void @__asan_store4_noabort(i32 %435)
  store i32 0, ptr %rx_frame_errors, align 4
  %tx_aborted_errors = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 16
  %436 = call ptr @memset(ptr %tx_aborted_errors, i32 0, i32 20)
  br label %cleanup

cleanup:                                          ; preds = %if.end101, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ixgb_probe(ptr noundef %pdev, ptr nocapture noundef readnone %ent) #2 align 64 {
entry:
  %addr = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %addr) #10
  %0 = call ptr @memset(ptr %addr, i32 255, i32 6)
  %call = tail call i32 @pci_enable_device(ptr noundef %pdev) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %call.i = tail call i32 @dma_set_mask(ptr noundef %dev, i64 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %if.end.if.end10_crit_edge, label %if.else

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

if.else:                                          ; preds = %if.end
  %call.i219 = tail call i32 @dma_set_mask(ptr noundef %dev, i64 noundef 4294967295) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i219)
  %cmp.i220 = icmp eq i32 %call.i219, 0
  br i1 %cmp.i220, label %if.else.if.end10_crit_edge, label %do.end

if.else.if.end10_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

do.end:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #13
  br label %err_dma_mask

if.end10:                                         ; preds = %if.else.if.end10_crit_edge, %if.end.if.end10_crit_edge
  %.sink = phi i64 [ -1, %if.end.if.end10_crit_edge ], [ 4294967295, %if.else.if.end10_crit_edge ]
  %call1.i221 = tail call i32 @dma_set_coherent_mask(ptr noundef %dev, i64 noundef %.sink) #10
  %call11 = tail call i32 @pci_request_regions(ptr noundef %pdev, ptr noundef nonnull @ixgb_driver_name) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %if.end10.err_dma_mask_crit_edge

if.end10.err_dma_mask_crit_edge:                  ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_dma_mask

if.end14:                                         ; preds = %if.end10
  tail call void @pci_set_master(ptr noundef %pdev) #10
  %call15 = tail call ptr @alloc_etherdev_mqs(i32 noundef 1792, i32 noundef 1, i32 noundef 1) #10
  %tobool16.not = icmp eq ptr %call15, null
  br i1 %tobool16.not, label %if.end14.err_alloc_etherdev_crit_edge, label %if.end18

if.end14.err_alloc_etherdev_crit_edge:            ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_alloc_etherdev

if.end18:                                         ; preds = %if.end14
  %parent = getelementptr inbounds %struct.net_device, ptr %call15, i32 0, i32 133, i32 1
  %1 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %dev, ptr %parent, align 8
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call15, ptr %driver_data.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %call15, i32 2304
  %netdev22 = getelementptr i8, ptr %call15, i32 3288
  %3 = ptrtoint ptr %netdev22 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call15, ptr %netdev22, align 8
  %pdev23 = getelementptr i8, ptr %call15, i32 3292
  %4 = ptrtoint ptr %pdev23 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %pdev, ptr %pdev23, align 4
  %hw = getelementptr i8, ptr %call15, i32 3296
  %back = getelementptr i8, ptr %call15, i32 3300
  %5 = ptrtoint ptr %back to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %add.ptr.i, ptr %back, align 4
  %6 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %6)
  %cmp1.i = icmp ugt i32 %6, 31
  br i1 %cmp1.i, label %if.end18.netif_msg_init.exit_crit_edge, label %if.end.i

if.end18.netif_msg_init.exit_crit_edge:           ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %netif_msg_init.exit

if.end.i:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp2.i = icmp eq i32 %6, 0
  br i1 %cmp2.i, label %if.end.i.netif_msg_init.exit_crit_edge, label %if.end4.i

if.end.i.netif_msg_init.exit_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %netif_msg_init.exit

if.end4.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %notmask.i = shl nsw i32 -1, %6
  %7 = trunc i32 %notmask.i to i16
  %phi.cast = xor i16 %7, -1
  br label %netif_msg_init.exit

netif_msg_init.exit:                              ; preds = %if.end4.i, %if.end.i.netif_msg_init.exit_crit_edge, %if.end18.netif_msg_init.exit_crit_edge
  %retval.0.i = phi i16 [ %phi.cast, %if.end4.i ], [ 7, %if.end18.netif_msg_init.exit_crit_edge ], [ 0, %if.end.i.netif_msg_init.exit_crit_edge ]
  %msg_enable = getelementptr i8, ptr %call15, i32 3552
  %8 = ptrtoint ptr %msg_enable to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %retval.0.i, ptr %msg_enable, align 32
  %call25 = tail call ptr @pci_ioremap_bar(ptr noundef %pdev, i32 noundef 0) #10
  %9 = ptrtoint ptr %hw to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call25, ptr %hw, align 32
  %tobool29.not = icmp eq ptr %call25, null
  br i1 %tobool29.not, label %netif_msg_init.exit.err_ioremap_crit_edge, label %for.body.preheader

netif_msg_init.exit.err_ioremap_crit_edge:        ; preds = %netif_msg_init.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_ioremap

for.body.preheader:                               ; preds = %netif_msg_init.exit
  %arrayidx = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 1
  %end = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 1, i32 1
  %10 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp33 = icmp eq i32 %11, 0
  br i1 %cmp33, label %for.body.preheader.for.inc_crit_edge, label %cond.end

for.body.preheader.for.inc_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

cond.end:                                         ; preds = %for.body.preheader
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx, align 8
  %sub = sub i32 %11, %13
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub)
  %cmp40 = icmp eq i32 %sub, -1
  br i1 %cmp40, label %cond.end.for.inc_crit_edge, label %if.end43

cond.end.for.inc_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end43:                                         ; preds = %cond.end
  %flags = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 1, i32 3
  %14 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags, align 4
  %and = and i32 %15, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool46.not = icmp eq i32 %and, 0
  br i1 %tobool46.not, label %if.end43.for.inc_crit_edge, label %if.end43.if.then47_crit_edge

if.end43.if.then47_crit_edge:                     ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then47

if.end43.for.inc_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then47:                                        ; preds = %if.end43.4.if.then47_crit_edge, %if.end43.3.if.then47_crit_edge, %if.end43.2.if.then47_crit_edge, %if.end43.1.if.then47_crit_edge, %if.end43.if.then47_crit_edge
  %arrayidx.lcssa = phi ptr [ %arrayidx, %if.end43.if.then47_crit_edge ], [ %arrayidx.1, %if.end43.1.if.then47_crit_edge ], [ %arrayidx.2, %if.end43.2.if.then47_crit_edge ], [ %arrayidx.3, %if.end43.3.if.then47_crit_edge ], [ %arrayidx.4, %if.end43.4.if.then47_crit_edge ]
  %16 = ptrtoint ptr %arrayidx.lcssa to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.lcssa, align 8
  %io_base = getelementptr i8, ptr %call15, i32 3540
  %18 = ptrtoint ptr %io_base to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %io_base, align 4
  br label %for.end

for.inc:                                          ; preds = %if.end43.for.inc_crit_edge, %cond.end.for.inc_crit_edge, %for.body.preheader.for.inc_crit_edge
  %arrayidx.1 = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 2
  %end.1 = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 2, i32 1
  %19 = ptrtoint ptr %end.1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %end.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp33.1 = icmp eq i32 %20, 0
  br i1 %cmp33.1, label %for.inc.for.inc.1_crit_edge, label %cond.end.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.1

cond.end.1:                                       ; preds = %for.inc
  %21 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx.1, align 8
  %sub.1 = sub i32 %20, %22
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.1)
  %cmp40.1 = icmp eq i32 %sub.1, -1
  br i1 %cmp40.1, label %cond.end.1.for.inc.1_crit_edge, label %if.end43.1

cond.end.1.for.inc.1_crit_edge:                   ; preds = %cond.end.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.1

if.end43.1:                                       ; preds = %cond.end.1
  %flags.1 = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 2, i32 3
  %23 = ptrtoint ptr %flags.1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %flags.1, align 4
  %and.1 = and i32 %24, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1)
  %tobool46.not.1 = icmp eq i32 %and.1, 0
  br i1 %tobool46.not.1, label %if.end43.1.for.inc.1_crit_edge, label %if.end43.1.if.then47_crit_edge

if.end43.1.if.then47_crit_edge:                   ; preds = %if.end43.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then47

if.end43.1.for.inc.1_crit_edge:                   ; preds = %if.end43.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.end43.1.for.inc.1_crit_edge, %cond.end.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %arrayidx.2 = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 3
  %end.2 = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 3, i32 1
  %25 = ptrtoint ptr %end.2 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %end.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp33.2 = icmp eq i32 %26, 0
  br i1 %cmp33.2, label %for.inc.1.for.inc.2_crit_edge, label %cond.end.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.2

cond.end.2:                                       ; preds = %for.inc.1
  %27 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx.2, align 8
  %sub.2 = sub i32 %26, %28
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.2)
  %cmp40.2 = icmp eq i32 %sub.2, -1
  br i1 %cmp40.2, label %cond.end.2.for.inc.2_crit_edge, label %if.end43.2

cond.end.2.for.inc.2_crit_edge:                   ; preds = %cond.end.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.2

if.end43.2:                                       ; preds = %cond.end.2
  %flags.2 = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 3, i32 3
  %29 = ptrtoint ptr %flags.2 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %flags.2, align 4
  %and.2 = and i32 %30, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2)
  %tobool46.not.2 = icmp eq i32 %and.2, 0
  br i1 %tobool46.not.2, label %if.end43.2.for.inc.2_crit_edge, label %if.end43.2.if.then47_crit_edge

if.end43.2.if.then47_crit_edge:                   ; preds = %if.end43.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then47

if.end43.2.for.inc.2_crit_edge:                   ; preds = %if.end43.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.end43.2.for.inc.2_crit_edge, %cond.end.2.for.inc.2_crit_edge, %for.inc.1.for.inc.2_crit_edge
  %arrayidx.3 = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 4
  %end.3 = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 4, i32 1
  %31 = ptrtoint ptr %end.3 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %end.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp33.3 = icmp eq i32 %32, 0
  br i1 %cmp33.3, label %for.inc.2.for.inc.3_crit_edge, label %cond.end.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.3

cond.end.3:                                       ; preds = %for.inc.2
  %33 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx.3, align 8
  %sub.3 = sub i32 %32, %34
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.3)
  %cmp40.3 = icmp eq i32 %sub.3, -1
  br i1 %cmp40.3, label %cond.end.3.for.inc.3_crit_edge, label %if.end43.3

cond.end.3.for.inc.3_crit_edge:                   ; preds = %cond.end.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.3

if.end43.3:                                       ; preds = %cond.end.3
  %flags.3 = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 4, i32 3
  %35 = ptrtoint ptr %flags.3 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %flags.3, align 4
  %and.3 = and i32 %36, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3)
  %tobool46.not.3 = icmp eq i32 %and.3, 0
  br i1 %tobool46.not.3, label %if.end43.3.for.inc.3_crit_edge, label %if.end43.3.if.then47_crit_edge

if.end43.3.if.then47_crit_edge:                   ; preds = %if.end43.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then47

if.end43.3.for.inc.3_crit_edge:                   ; preds = %if.end43.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.end43.3.for.inc.3_crit_edge, %cond.end.3.for.inc.3_crit_edge, %for.inc.2.for.inc.3_crit_edge
  %arrayidx.4 = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 5
  %end.4 = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 5, i32 1
  %37 = ptrtoint ptr %end.4 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %end.4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp33.4 = icmp eq i32 %38, 0
  br i1 %cmp33.4, label %for.inc.3.for.end_crit_edge, label %cond.end.4

for.inc.3.for.end_crit_edge:                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

cond.end.4:                                       ; preds = %for.inc.3
  %39 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx.4, align 8
  %sub.4 = sub i32 %38, %40
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.4)
  %cmp40.4 = icmp eq i32 %sub.4, -1
  br i1 %cmp40.4, label %cond.end.4.for.end_crit_edge, label %if.end43.4

cond.end.4.for.end_crit_edge:                     ; preds = %cond.end.4
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.end43.4:                                       ; preds = %cond.end.4
  %flags.4 = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 5, i32 3
  %41 = ptrtoint ptr %flags.4 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %flags.4, align 4
  %and.4 = and i32 %42, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.4)
  %tobool46.not.4 = icmp eq i32 %and.4, 0
  br i1 %tobool46.not.4, label %if.end43.4.for.end_crit_edge, label %if.end43.4.if.then47_crit_edge

if.end43.4.if.then47_crit_edge:                   ; preds = %if.end43.4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then47

if.end43.4.for.end_crit_edge:                     ; preds = %if.end43.4
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %if.end43.4.for.end_crit_edge, %cond.end.4.for.end_crit_edge, %for.inc.3.for.end_crit_edge, %if.then47
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %call15, i32 0, i32 16
  %43 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @ixgb_netdev_ops, ptr %netdev_ops, align 8
  tail call void @ixgb_set_ethtool_ops(ptr noundef nonnull %call15) #10
  %watchdog_timeo = getelementptr inbounds %struct.net_device, ptr %call15, i32 0, i32 115
  %44 = ptrtoint ptr %watchdog_timeo to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 500, ptr %watchdog_timeo, align 4
  %napi = getelementptr i8, ptr %call15, i32 3064
  tail call void @netif_napi_add(ptr noundef nonnull %call15, ptr noundef %napi, ptr noundef nonnull @ixgb_clean, i32 noundef 64) #10
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 3
  %45 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %46, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %for.end.pci_name.exit_crit_edge

for.end.pci_name.exit_crit_edge:                  ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %47 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %for.end.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %48, %if.end.i.i ], [ %46, %for.end.pci_name.exit_crit_edge ]
  %call54 = tail call ptr @strncpy(ptr noundef nonnull %call15, ptr noundef %retval.0.i.i, i32 noundef 15)
  %49 = load i32, ptr @ixgb_probe.cards_found, align 4
  %bd_number = getelementptr i8, ptr %call15, i32 2864
  %50 = ptrtoint ptr %bd_number to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %bd_number, align 16
  %link_speed = getelementptr i8, ptr %call15, i32 2876
  %51 = ptrtoint ptr %link_speed to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 0, ptr %link_speed, align 4
  %link_duplex = getelementptr i8, ptr %call15, i32 2878
  %52 = ptrtoint ptr %link_duplex to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 0, ptr %link_duplex, align 2
  %53 = ptrtoint ptr %netdev22 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %netdev22, align 8
  %55 = ptrtoint ptr %pdev23 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %pdev23, align 4
  %vendor.i = getelementptr inbounds %struct.pci_dev, ptr %56, i32 0, i32 7
  %57 = ptrtoint ptr %vendor.i to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %vendor.i, align 8
  %vendor_id.i = getelementptr i8, ptr %call15, i32 3384
  %59 = ptrtoint ptr %vendor_id.i to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 %58, ptr %vendor_id.i, align 4
  %device.i = getelementptr inbounds %struct.pci_dev, ptr %56, i32 0, i32 8
  %60 = ptrtoint ptr %device.i to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %device.i, align 2
  %device_id.i = getelementptr i8, ptr %call15, i32 3382
  %62 = ptrtoint ptr %device_id.i to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 %61, ptr %device_id.i, align 2
  %subsystem_vendor.i = getelementptr inbounds %struct.pci_dev, ptr %56, i32 0, i32 9
  %63 = ptrtoint ptr %subsystem_vendor.i to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %subsystem_vendor.i, align 4
  %subsystem_vendor_id.i = getelementptr i8, ptr %call15, i32 3388
  %65 = ptrtoint ptr %subsystem_vendor_id.i to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 %64, ptr %subsystem_vendor_id.i, align 4
  %subsystem_device.i = getelementptr inbounds %struct.pci_dev, ptr %56, i32 0, i32 10
  %66 = ptrtoint ptr %subsystem_device.i to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %subsystem_device.i, align 2
  %subsystem_id.i = getelementptr i8, ptr %call15, i32 3390
  %68 = ptrtoint ptr %subsystem_id.i to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 %67, ptr %subsystem_id.i, align 2
  %mtu.i = getelementptr inbounds %struct.net_device, ptr %54, i32 0, i32 20
  %69 = ptrtoint ptr %mtu.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %mtu.i, align 4
  %add4.i = add i32 %70, 18
  %max_frame_size.i = getelementptr i8, ptr %call15, i32 3348
  %71 = ptrtoint ptr %max_frame_size.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %add4.i, ptr %max_frame_size.i, align 4
  %add6.i = add i32 %70, 26
  %rx_buffer_len.i = getelementptr i8, ptr %call15, i32 2868
  %72 = ptrtoint ptr %rx_buffer_len.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %add6.i, ptr %rx_buffer_len.i, align 4
  %73 = zext i16 %61 to i64
  call void @__sanitizer_cov_trace_switch(i64 %73, ptr @__sancov_gen_cov_switch_values)
  switch i16 %61, label %do.body.i [
    i16 4168, label %pci_name.exit.if.then.i224_crit_edge
    i16 4254, label %pci_name.exit.if.then.i224_crit_edge230
    i16 6984, label %pci_name.exit.if.then.i224_crit_edge231
    i16 6728, label %pci_name.exit.if.then.i224_crit_edge232
  ]

pci_name.exit.if.then.i224_crit_edge232:          ; preds = %pci_name.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i224

pci_name.exit.if.then.i224_crit_edge231:          ; preds = %pci_name.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i224

pci_name.exit.if.then.i224_crit_edge230:          ; preds = %pci_name.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i224

pci_name.exit.if.then.i224_crit_edge:             ; preds = %pci_name.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i224

if.then.i224:                                     ; preds = %pci_name.exit.if.then.i224_crit_edge, %pci_name.exit.if.then.i224_crit_edge230, %pci_name.exit.if.then.i224_crit_edge231, %pci_name.exit.if.then.i224_crit_edge232
  %mac_type.i = getelementptr i8, ptr %call15, i32 3340
  %74 = ptrtoint ptr %mac_type.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 1, ptr %mac_type.i, align 4
  br label %ixgb_sw_init.exit

do.body.i:                                        ; preds = %pci_name.exit
  %75 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %msg_enable, align 32
  %77 = and i16 %76, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %77)
  %tobool.not.i = icmp eq i16 %77, 0
  br i1 %tobool.not.i, label %do.body.i.ixgb_sw_init.exit_crit_edge, label %if.then24.i

do.body.i.ixgb_sw_init.exit_crit_edge:            ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ixgb_sw_init.exit

if.then24.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %54, ptr noundef nonnull @.str.27) #13
  br label %ixgb_sw_init.exit

ixgb_sw_init.exit:                                ; preds = %if.then24.i, %do.body.i.ixgb_sw_init.exit_crit_edge, %if.then.i224
  %send_xon.i = getelementptr i8, ptr %call15, i32 3314
  %78 = ptrtoint ptr %send_xon.i to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 1, ptr %send_xon.i, align 2
  %flags.i = getelementptr i8, ptr %call15, i32 4048
  tail call void @_set_bit(i32 noundef 0, ptr noundef %flags.i) #10
  %hw_features = getelementptr inbounds %struct.net_device, ptr %call15, i32 0, i32 24
  %features = getelementptr inbounds %struct.net_device, ptr %call15, i32 0, i32 23
  %79 = ptrtoint ptr %features to i32
  call void @__asan_store8_noabort(i32 %79)
  store i64 66441, ptr %features, align 16
  %80 = ptrtoint ptr %hw_features to i32
  call void @__asan_store8_noabort(i32 %80)
  store i64 1099511693705, ptr %hw_features, align 8
  br i1 %cmp.i, label %if.then63, label %ixgb_sw_init.exit.if.end67_crit_edge

ixgb_sw_init.exit.if.end67_crit_edge:             ; preds = %ixgb_sw_init.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end67

if.then63:                                        ; preds = %ixgb_sw_init.exit
  call void @__sanitizer_cov_trace_pc() #12
  %81 = ptrtoint ptr %features to i32
  call void @__asan_store8_noabort(i32 %81)
  store i64 66473, ptr %features, align 16
  %vlan_features = getelementptr inbounds %struct.net_device, ptr %call15, i32 0, i32 26
  %82 = ptrtoint ptr %vlan_features to i32
  call void @__asan_load8_noabort(i32 %82)
  %83 = load i64, ptr %vlan_features, align 8
  %or66 = or i64 %83, 32
  store i64 %or66, ptr %vlan_features, align 8
  br label %if.end67

if.end67:                                         ; preds = %if.then63, %ixgb_sw_init.exit.if.end67_crit_edge
  %min_mtu = getelementptr inbounds %struct.net_device, ptr %call15, i32 0, i32 30
  %84 = ptrtoint ptr %min_mtu to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 68, ptr %min_mtu, align 8
  %max_mtu = getelementptr inbounds %struct.net_device, ptr %call15, i32 0, i32 31
  %85 = ptrtoint ptr %max_mtu to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 16114, ptr %max_mtu, align 4
  %call69 = tail call zeroext i1 @ixgb_validate_eeprom_checksum(ptr noundef %hw) #10
  br i1 %call69, label %if.end81, label %do.body71

do.body71:                                        ; preds = %if.end67
  %86 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %msg_enable, align 32
  %88 = and i16 %87, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %88)
  %tobool75.not = icmp eq i16 %88, 0
  br i1 %tobool75.not, label %do.body71.err_eeprom_crit_edge, label %if.then76

do.body71.err_eeprom_crit_edge:                   ; preds = %do.body71
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_eeprom

if.then76:                                        ; preds = %do.body71
  call void @__sanitizer_cov_trace_pc() #12
  %89 = ptrtoint ptr %netdev22 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %netdev22, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %90, ptr noundef nonnull @.str.10) #13
  br label %err_eeprom

if.end81:                                         ; preds = %if.end67
  call void @ixgb_get_ee_mac_addr(ptr noundef %hw, ptr noundef nonnull %addr) #10
  call void @dev_addr_mod(ptr noundef nonnull %call15, i32 noundef 0, ptr noundef nonnull %addr, i32 noundef 6) #10
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %call15, i32 0, i32 86
  %91 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %dev_addr, align 64
  %93 = ptrtoint ptr %92 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %92, align 4
  %95 = and i32 %94, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %95)
  %tobool.i.not.i = icmp eq i32 %95, 0
  br i1 %tobool.i.not.i, label %is_valid_ether_addr.exit, label %if.end81.do.body87_crit_edge

if.end81.do.body87_crit_edge:                     ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body87

is_valid_ether_addr.exit:                         ; preds = %if.end81
  %add.ptr.i.i = getelementptr i8, ptr %92, i32 4
  %96 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %96)
  %97 = load i16, ptr %add.ptr.i.i, align 2
  %conv.i.i = zext i16 %97 to i32
  %or.i.i = or i32 %94, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i.not = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i.not, label %is_valid_ether_addr.exit.do.body87_crit_edge, label %if.end97

is_valid_ether_addr.exit.do.body87_crit_edge:     ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body87

do.body87:                                        ; preds = %is_valid_ether_addr.exit.do.body87_crit_edge, %if.end81.do.body87_crit_edge
  %98 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %msg_enable, align 32
  %100 = and i16 %99, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %100)
  %tobool91.not = icmp eq i16 %100, 0
  br i1 %tobool91.not, label %do.body87.err_eeprom_crit_edge, label %if.then92

do.body87.err_eeprom_crit_edge:                   ; preds = %do.body87
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_eeprom

if.then92:                                        ; preds = %do.body87
  call void @__sanitizer_cov_trace_pc() #12
  %101 = ptrtoint ptr %netdev22 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %netdev22, align 8
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %102, ptr noundef nonnull @.str.11) #13
  br label %err_eeprom

if.end97:                                         ; preds = %is_valid_ether_addr.exit
  %call99 = call i32 @ixgb_get_ee_pba_number(ptr noundef %hw) #10
  %part_num = getelementptr i8, ptr %call15, i32 2872
  %103 = ptrtoint ptr %part_num to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %call99, ptr %part_num, align 8
  call void @init_timer_key(ptr noundef %add.ptr.i, ptr noundef nonnull @ixgb_watchdog, i32 noundef 0, ptr noundef nonnull @.str.12, ptr noundef nonnull @ixgb_probe.__key) #10
  %tx_timeout_task = getelementptr i8, ptr %call15, i32 2880
  call void @__init_work(ptr noundef %tx_timeout_task, i32 noundef 0) #10
  %104 = ptrtoint ptr %tx_timeout_task to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 -64, ptr %tx_timeout_task, align 64
  %lockdep_map = getelementptr i8, ptr %call15, i32 2896
  call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.14, ptr noundef nonnull @ixgb_probe.__key.13, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  %entry107 = getelementptr i8, ptr %call15, i32 2884
  %105 = ptrtoint ptr %entry107 to i32
  call void @__asan_store4_noabort(i32 %105)
  store volatile ptr %entry107, ptr %entry107, align 4
  %prev.i = getelementptr i8, ptr %call15, i32 2888
  %106 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr %entry107, ptr %prev.i, align 4
  %func = getelementptr i8, ptr %call15, i32 2892
  %107 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr @ixgb_tx_timeout_task, ptr %func, align 4
  %108 = call ptr @memcpy(ptr %call15, ptr @.str.15, i32 6)
  %call114 = call i32 @register_netdev(ptr noundef nonnull %call15) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call114)
  %tobool115.not = icmp eq i32 %call114, 0
  br i1 %tobool115.not, label %if.end117, label %if.end97.err_eeprom_crit_edge

if.end97.err_eeprom_crit_edge:                    ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_eeprom

if.end117:                                        ; preds = %if.end97
  call void @netif_carrier_off(ptr noundef nonnull %call15) #10
  %109 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load2_noabort(i32 %109)
  %110 = load i16, ptr %msg_enable, align 32
  %111 = and i16 %110, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %111)
  %tobool122.not = icmp eq i16 %111, 0
  br i1 %tobool122.not, label %if.end117.do.end127_crit_edge, label %if.then123

if.end117.do.end127_crit_edge:                    ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end127

if.then123:                                       ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #12
  %112 = ptrtoint ptr %netdev22 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %netdev22, align 8
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %113, ptr noundef nonnull @.str.16) #13
  br label %do.end127

do.end127:                                        ; preds = %if.then123, %if.end117.do.end127_crit_edge
  call void @ixgb_check_options(ptr noundef %add.ptr.i) #10
  call void @ixgb_reset(ptr noundef %add.ptr.i)
  %114 = load i32, ptr @ixgb_probe.cards_found, align 4
  %inc128 = add i32 %114, 1
  store i32 %inc128, ptr @ixgb_probe.cards_found, align 4
  br label %cleanup

err_eeprom:                                       ; preds = %if.end97.err_eeprom_crit_edge, %if.then92, %do.body87.err_eeprom_crit_edge, %if.then76, %do.body71.err_eeprom_crit_edge
  %err.0 = phi i32 [ %call114, %if.end97.err_eeprom_crit_edge ], [ -5, %if.then76 ], [ -5, %do.body71.err_eeprom_crit_edge ], [ -5, %if.then92 ], [ -5, %do.body87.err_eeprom_crit_edge ]
  %115 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %hw, align 32
  call void @iounmap(ptr noundef %116) #10
  br label %err_ioremap

err_ioremap:                                      ; preds = %err_eeprom, %netif_msg_init.exit.err_ioremap_crit_edge
  %err.1 = phi i32 [ %err.0, %err_eeprom ], [ -5, %netif_msg_init.exit.err_ioremap_crit_edge ]
  call void @free_netdev(ptr noundef nonnull %call15) #10
  br label %err_alloc_etherdev

err_alloc_etherdev:                               ; preds = %err_ioremap, %if.end14.err_alloc_etherdev_crit_edge
  %err.2 = phi i32 [ %err.1, %err_ioremap ], [ -12, %if.end14.err_alloc_etherdev_crit_edge ]
  call void @pci_release_regions(ptr noundef %pdev) #10
  br label %err_dma_mask

err_dma_mask:                                     ; preds = %err_alloc_etherdev, %if.end10.err_dma_mask_crit_edge, %do.end
  %err.3 = phi i32 [ %call.i219, %do.end ], [ %call11, %if.end10.err_dma_mask_crit_edge ], [ %err.2, %err_alloc_etherdev ]
  call void @pci_disable_device(ptr noundef %pdev) #10
  br label %cleanup

cleanup:                                          ; preds = %err_dma_mask, %do.end127, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.3, %err_dma_mask ], [ 0, %do.end127 ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ixgb_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tx_timeout_task = getelementptr i8, ptr %1, i32 2880
  %call2 = tail call zeroext i1 @cancel_work_sync(ptr noundef %tx_timeout_task) #10
  tail call void @unregister_netdev(ptr noundef %1) #10
  %hw = getelementptr i8, ptr %1, i32 3296
  %2 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw, align 32
  tail call void @iounmap(ptr noundef %3) #10
  tail call void @pci_release_regions(ptr noundef %pdev) #10
  tail call void @free_netdev(ptr noundef %1) #10
  tail call void @pci_disable_device(ptr noundef %pdev) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_request_regions(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_etherdev_mqs(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_ioremap_bar(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ixgb_set_ethtool_ops(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_napi_add(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ixgb_clean(ptr noundef %napi, i32 noundef %budget) #2 align 64 {
entry:
  %work_done = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %napi, i32 -760
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %work_done) #10
  %0 = ptrtoint ptr %work_done to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %work_done, align 4
  %tx_ring1.i = getelementptr i8, ptr %napi, i32 -120
  %netdev2.i = getelementptr i8, ptr %napi, i32 224
  %1 = ptrtoint ptr %netdev2.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %netdev2.i, align 8
  %next_to_clean.i = getelementptr i8, ptr %napi, i32 -100
  %3 = ptrtoint ptr %next_to_clean.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %next_to_clean.i, align 4
  %buffer_info3.i = getelementptr i8, ptr %napi, i32 -96
  %5 = ptrtoint ptr %buffer_info3.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %buffer_info3.i, align 4
  %next_to_watch.i = getelementptr %struct.ixgb_buffer, ptr %6, i32 %4, i32 4
  %7 = ptrtoint ptr %next_to_watch.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %next_to_watch.i, align 2
  %conv.i = zext i16 %8 to i32
  %9 = ptrtoint ptr %tx_ring1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %tx_ring1.i, align 4
  %status7.i = getelementptr %struct.ixgb_tx_desc, ptr %10, i32 %conv.i, i32 2
  %11 = ptrtoint ptr %status7.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %status7.i, align 4
  %13 = and i8 %12, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not8.i = icmp eq i8 %13, 0
  br i1 %tobool.not8.i, label %entry.if.end55.i_crit_edge, label %while.body.lr.ph.i

entry.if.end55.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end55.i

while.body.lr.ph.i:                               ; preds = %entry
  %hw_csum_tx_good.i = getelementptr i8, ptr %napi, i32 -80
  %pdev4.i.i = getelementptr i8, ptr %napi, i32 228
  %count.i = getelementptr i8, ptr %napi, i32 -108
  br label %while.body.i

while.body.i:                                     ; preds = %for.end.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %i.010.i = phi i32 [ %4, %while.body.lr.ph.i ], [ %spec.store.select.i, %for.end.i.while.body.i_crit_edge ]
  %eop.09.i = phi i32 [ %conv.i, %while.body.lr.ph.i ], [ %conv24.i, %for.end.i.while.body.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !246
  br label %for.body.i

for.body.i:                                       ; preds = %ixgb_unmap_and_free_tx_resource.exit.i.for.body.i_crit_edge, %while.body.i
  %i.16.i = phi i32 [ %i.010.i, %while.body.i ], [ %spec.store.select.i, %ixgb_unmap_and_free_tx_resource.exit.i.for.body.i_crit_edge ]
  %14 = ptrtoint ptr %tx_ring1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %tx_ring1.i, align 4
  %16 = ptrtoint ptr %buffer_info3.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %buffer_info3.i, align 4
  %arrayidx10.i = getelementptr %struct.ixgb_buffer, ptr %17, i32 %i.16.i
  %popts.i = getelementptr %struct.ixgb_tx_desc, ptr %15, i32 %i.16.i, i32 3
  %18 = ptrtoint ptr %popts.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %popts.i, align 1
  %20 = and i8 %19, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool13.not.i = icmp eq i8 %20, 0
  br i1 %tobool13.not.i, label %for.body.i.if.end.i_crit_edge, label %if.then.i

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %21 = ptrtoint ptr %hw_csum_tx_good.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %hw_csum_tx_good.i, align 8
  %inc.i = add i64 %22, 1
  store i64 %inc.i, ptr %hw_csum_tx_good.i, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body.i.if.end.i_crit_edge
  %dma.i.i = getelementptr %struct.ixgb_buffer, ptr %17, i32 %i.16.i, i32 1
  %23 = ptrtoint ptr %dma.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %dma.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.not.i.i = icmp eq i32 %24, 0
  br i1 %tobool.not.i.i, label %if.end.i.if.end10.i.i_crit_edge, label %if.then.i.i

if.end.i.if.end10.i.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10.i.i

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %25 = ptrtoint ptr %pdev4.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pdev4.i.i, align 4
  %dev5.i.i = getelementptr inbounds %struct.pci_dev, ptr %26, i32 0, i32 44
  %length7.i.i = getelementptr %struct.ixgb_buffer, ptr %17, i32 %i.16.i, i32 3
  %27 = ptrtoint ptr %length7.i.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %length7.i.i, align 4
  %conv8.i.i = zext i16 %28 to i32
  tail call void @dma_unmap_page_attrs(ptr noundef %dev5.i.i, i32 noundef %24, i32 noundef %conv8.i.i, i32 noundef 1, i32 noundef 0) #10
  %29 = ptrtoint ptr %dma.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %dma.i.i, align 4
  br label %if.end10.i.i

if.end10.i.i:                                     ; preds = %if.then.i.i, %if.end.i.if.end10.i.i_crit_edge
  %30 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx10.i, align 4
  %tobool11.not.i.i = icmp eq ptr %31, null
  br i1 %tobool11.not.i.i, label %if.end10.i.i.ixgb_unmap_and_free_tx_resource.exit.i_crit_edge, label %if.then12.i.i

if.end10.i.i.ixgb_unmap_and_free_tx_resource.exit.i_crit_edge: ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ixgb_unmap_and_free_tx_resource.exit.i

if.then12.i.i:                                    ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %31, i32 noundef 1) #10
  %32 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %arrayidx10.i, align 4
  br label %ixgb_unmap_and_free_tx_resource.exit.i

ixgb_unmap_and_free_tx_resource.exit.i:           ; preds = %if.then12.i.i, %if.end10.i.i.ixgb_unmap_and_free_tx_resource.exit.i_crit_edge
  %time_stamp.i.i = getelementptr %struct.ixgb_buffer, ptr %17, i32 %i.16.i, i32 2
  %33 = ptrtoint ptr %time_stamp.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %time_stamp.i.i, align 4
  %status14.i = getelementptr %struct.ixgb_tx_desc, ptr %15, i32 %i.16.i, i32 2
  %34 = ptrtoint ptr %status14.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %status14.i, align 4
  %cmp.not.i = icmp eq i32 %i.16.i, %eop.09.i
  %inc16.i = add i32 %i.16.i, 1
  %35 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %count.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc16.i, i32 %36)
  %cmp17.i = icmp eq i32 %inc16.i, %36
  %spec.store.select.i = select i1 %cmp17.i, i32 0, i32 %inc16.i
  br i1 %cmp.not.i, label %for.end.i, label %ixgb_unmap_and_free_tx_resource.exit.i.for.body.i_crit_edge

ixgb_unmap_and_free_tx_resource.exit.i.for.body.i_crit_edge: ; preds = %ixgb_unmap_and_free_tx_resource.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.end.i:                                        ; preds = %ixgb_unmap_and_free_tx_resource.exit.i
  %37 = ptrtoint ptr %buffer_info3.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %buffer_info3.i, align 4
  %next_to_watch23.i = getelementptr %struct.ixgb_buffer, ptr %38, i32 %spec.store.select.i, i32 4
  %39 = ptrtoint ptr %next_to_watch23.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %next_to_watch23.i, align 2
  %conv24.i = zext i16 %40 to i32
  %41 = ptrtoint ptr %tx_ring1.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %tx_ring1.i, align 4
  %status.i = getelementptr %struct.ixgb_tx_desc, ptr %42, i32 %conv24.i, i32 2
  %43 = ptrtoint ptr %status.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %status.i, align 4
  %45 = and i8 %44, 1
  %tobool.not.i = icmp eq i8 %45, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %for.end.i.while.body.i_crit_edge

for.end.i.while.body.i_crit_edge:                 ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

land.lhs.true.i:                                  ; preds = %for.end.i
  %conv24.i.le = zext i16 %40 to i32
  %46 = ptrtoint ptr %next_to_clean.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %spec.store.select.i, ptr %next_to_clean.i, align 4
  %state.i.i = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 6
  %47 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %state.i.i, align 4
  %49 = and i32 %48, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool.not.i2.i = icmp eq i32 %49, 0
  br i1 %tobool.not.i2.i, label %land.rhs.i, label %land.lhs.true.i.if.end55.i_crit_edge

land.lhs.true.i.if.end55.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end55.i

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %next_to_use.i = getelementptr i8, ptr %napi, i32 -104
  %50 = ptrtoint ptr %next_to_use.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %next_to_use.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.store.select.i, i32 %51)
  %cmp32.i = icmp ugt i32 %spec.store.select.i, %51
  %spec.select = select i1 %cmp32.i, i32 0, i32 %36
  %52 = xor i32 %51, -1
  %add.i = add i32 %spec.store.select.i, %52
  %sub37.i = add i32 %add.i, %spec.select
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %sub37.i)
  %cmp38.i = icmp ugt i32 %sub37.i, 19
  br i1 %cmp38.i, label %do.end.i, label %land.rhs.i.if.end55.i_crit_edge, !prof !168

land.rhs.i.if.end55.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end55.i

do.end.i:                                         ; preds = %land.rhs.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !247
  %_tx.i.i.i = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 103
  %53 = ptrtoint ptr %_tx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %_tx.i.i.i, align 128
  %state.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %54, i32 0, i32 13
  %55 = ptrtoint ptr %state.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile i32, ptr %state.i.i.i, align 4
  %and1.i.i.i.i = and i32 %56, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i)
  %tobool.i.i.not.i = icmp eq i32 %and1.i.i.i.i, 0
  br i1 %tobool.i.i.not.i, label %do.end.i.if.end55.i_crit_edge, label %land.lhs.true49.i

do.end.i.if.end55.i_crit_edge:                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end55.i

land.lhs.true49.i:                                ; preds = %do.end.i
  %flags.i = getelementptr i8, ptr %napi, i32 984
  %57 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load volatile i32, ptr %flags.i, align 4
  %and1.i.i = and i32 %58, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool51.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool51.not.i, label %if.then52.i, label %land.lhs.true49.i.if.end55.i_crit_edge

land.lhs.true49.i.if.end55.i_crit_edge:           ; preds = %land.lhs.true49.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end55.i

if.then52.i:                                      ; preds = %land.lhs.true49.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @netif_tx_wake_queue(ptr noundef %54) #10
  %restart_queue.i = getelementptr i8, ptr %napi, i32 -92
  %59 = ptrtoint ptr %restart_queue.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %restart_queue.i, align 4
  %inc53.i = add i32 %60, 1
  store i32 %inc53.i, ptr %restart_queue.i, align 4
  br label %if.end55.i

if.end55.i:                                       ; preds = %if.then52.i, %land.lhs.true49.i.if.end55.i_crit_edge, %do.end.i.if.end55.i_crit_edge, %land.rhs.i.if.end55.i_crit_edge, %land.lhs.true.i.if.end55.i_crit_edge, %entry.if.end55.i_crit_edge
  %status.le20.i = phi ptr [ %status.i, %land.lhs.true.i.if.end55.i_crit_edge ], [ %status.i, %do.end.i.if.end55.i_crit_edge ], [ %status.i, %land.lhs.true49.i.if.end55.i_crit_edge ], [ %status.i, %if.then52.i ], [ %status.i, %land.rhs.i.if.end55.i_crit_edge ], [ %status7.i, %entry.if.end55.i_crit_edge ]
  %eop.0.lcssa19.i = phi i32 [ %conv24.i.le, %land.lhs.true.i.if.end55.i_crit_edge ], [ %conv24.i.le, %do.end.i.if.end55.i_crit_edge ], [ %conv24.i.le, %land.lhs.true49.i.if.end55.i_crit_edge ], [ %conv24.i.le, %if.then52.i ], [ %conv24.i.le, %land.rhs.i.if.end55.i_crit_edge ], [ %conv.i, %entry.if.end55.i_crit_edge ]
  %detect_tx_hung.i = getelementptr i8, ptr %napi, i32 -55
  %61 = ptrtoint ptr %detect_tx_hung.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %detect_tx_hung.i, align 1, !range !139
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %tobool56.not.i = icmp eq i8 %62, 0
  br i1 %tobool56.not.i, label %if.end55.i.ixgb_clean_tx_irq.exit_crit_edge, label %if.then57.i

if.end55.i.ixgb_clean_tx_irq.exit_crit_edge:      ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ixgb_clean_tx_irq.exit

if.then57.i:                                      ; preds = %if.end55.i
  %63 = ptrtoint ptr %detect_tx_hung.i to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 0, ptr %detect_tx_hung.i, align 1
  %64 = ptrtoint ptr %buffer_info3.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %buffer_info3.i, align 4
  %time_stamp.i = getelementptr %struct.ixgb_buffer, ptr %65, i32 %eop.0.lcssa19.i, i32 2
  %66 = ptrtoint ptr %time_stamp.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %time_stamp.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool61.not.i = icmp eq i32 %67, 0
  br i1 %tobool61.not.i, label %if.then57.i.ixgb_clean_tx_irq.exit_crit_edge, label %land.lhs.true62.i

if.then57.i.ixgb_clean_tx_irq.exit_crit_edge:     ; preds = %if.then57.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ixgb_clean_tx_irq.exit

land.lhs.true62.i:                                ; preds = %if.then57.i
  %add66.i = add i32 %67, 100
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %68 = load volatile i32, ptr @jiffies, align 128
  %sub67.i = sub i32 %add66.i, %68
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub67.i)
  %cmp68.i = icmp slt i32 %sub67.i, 0
  br i1 %cmp68.i, label %land.lhs.true70.i, label %land.lhs.true62.i.ixgb_clean_tx_irq.exit_crit_edge

land.lhs.true62.i.ixgb_clean_tx_irq.exit_crit_edge: ; preds = %land.lhs.true62.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ixgb_clean_tx_irq.exit

land.lhs.true70.i:                                ; preds = %land.lhs.true62.i
  %hw.i = getelementptr i8, ptr %napi, i32 232
  %69 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %hw.i, align 32
  %add.ptr.i = getelementptr i8, ptr %70, i32 16
  %71 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !248
  %72 = and i32 %71, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %tobool74.not.i = icmp eq i32 %72, 0
  br i1 %tobool74.not.i, label %do.body76.i, label %land.lhs.true70.i.ixgb_clean_tx_irq.exit_crit_edge

land.lhs.true70.i.ixgb_clean_tx_irq.exit_crit_edge: ; preds = %land.lhs.true70.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ixgb_clean_tx_irq.exit

do.body76.i:                                      ; preds = %land.lhs.true70.i
  %msg_enable.i = getelementptr i8, ptr %napi, i32 488
  %73 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %msg_enable.i, align 32
  %75 = and i16 %74, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %75)
  %tobool79.not.i = icmp eq i16 %75, 0
  br i1 %tobool79.not.i, label %do.body76.i.do.end107.i_crit_edge, label %if.then80.i

do.body76.i.do.end107.i_crit_edge:                ; preds = %do.body76.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end107.i

if.then80.i:                                      ; preds = %do.body76.i
  call void @__sanitizer_cov_trace_pc() #12
  %76 = ptrtoint ptr %netdev2.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %netdev2.i, align 8
  %78 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %hw.i, align 32
  %add.ptr86.i = getelementptr i8, ptr %79, i32 1560
  %80 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr86.i) #10, !srcloc !129
  %81 = tail call i32 @llvm.bswap.i32(i32 %80) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !249
  %82 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %hw.i, align 32
  %add.ptr94.i = getelementptr i8, ptr %83, i32 1568
  %84 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr94.i) #10, !srcloc !129
  %85 = tail call i32 @llvm.bswap.i32(i32 %84) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !250
  %next_to_use98.i = getelementptr i8, ptr %napi, i32 -104
  %86 = ptrtoint ptr %next_to_use98.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %next_to_use98.i, align 4
  %88 = ptrtoint ptr %next_to_clean.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %next_to_clean.i, align 4
  %90 = ptrtoint ptr %buffer_info3.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %buffer_info3.i, align 4
  %time_stamp102.i = getelementptr %struct.ixgb_buffer, ptr %91, i32 %eop.0.lcssa19.i, i32 2
  %92 = ptrtoint ptr %time_stamp102.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %time_stamp102.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %94 = load volatile i32, ptr @jiffies, align 128
  %95 = ptrtoint ptr %status.le20.i to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %status.le20.i, align 4
  %conv104.i = zext i8 %96 to i32
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %77, ptr noundef nonnull @.str.23, i32 noundef %81, i32 noundef %85, i32 noundef %87, i32 noundef %89, i32 noundef %93, i32 noundef %eop.0.lcssa19.i, i32 noundef %94, i32 noundef %conv104.i) #13
  br label %do.end107.i

do.end107.i:                                      ; preds = %if.then80.i, %do.body76.i.do.end107.i_crit_edge
  %_tx.i.i4.i = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 103
  %97 = ptrtoint ptr %_tx.i.i4.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %_tx.i.i4.i, align 128
  %state.i.i5.i = getelementptr inbounds %struct.netdev_queue, ptr %98, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i5.i) #10
  br label %ixgb_clean_tx_irq.exit

ixgb_clean_tx_irq.exit:                           ; preds = %do.end107.i, %land.lhs.true70.i.ixgb_clean_tx_irq.exit_crit_edge, %land.lhs.true62.i.ixgb_clean_tx_irq.exit_crit_edge, %if.then57.i.ixgb_clean_tx_irq.exit_crit_edge, %if.end55.i.ixgb_clean_tx_irq.exit_crit_edge
  call fastcc void @ixgb_clean_rx_irq(ptr noundef %add.ptr, ptr noundef nonnull %work_done, i32 noundef %budget)
  %99 = ptrtoint ptr %work_done to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %work_done, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %100, i32 %budget)
  %cmp = icmp slt i32 %100, %budget
  br i1 %cmp, label %if.then, label %ixgb_clean_tx_irq.exit.if.end5_crit_edge

ixgb_clean_tx_irq.exit.if.end5_crit_edge:         ; preds = %ixgb_clean_tx_irq.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

if.then:                                          ; preds = %ixgb_clean_tx_irq.exit
  %call2 = tail call zeroext i1 @napi_complete_done(ptr noundef %napi, i32 noundef %100) #10
  %flags = getelementptr i8, ptr %napi, i32 984
  %101 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load volatile i32, ptr %flags, align 4
  %and1.i = and i32 %102, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %if.then4, label %if.then.if.end5_crit_edge

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %subsystem_vendor_id.i = getelementptr i8, ptr %napi, i32 324
  %103 = ptrtoint ptr %subsystem_vendor_id.i to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %subsystem_vendor_id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 4238, i16 %104)
  %cmp.i = icmp eq i16 %104, 4238
  %spec.select.i = select i1 %cmp.i, i32 2197, i32 149
  %hw.i11 = getelementptr i8, ptr %napi, i32 232
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !160
  tail call void @arm_heavy_mb() #10
  %105 = tail call i32 @llvm.bswap.i32(i32 %spec.select.i) #10
  %106 = ptrtoint ptr %hw.i11 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %hw.i11, align 32
  %add.ptr.i12 = getelementptr i8, ptr %107, i32 144
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12, i32 %105) #10, !srcloc !132
  %108 = ptrtoint ptr %hw.i11 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %hw.i11, align 32
  %add.ptr5.i = getelementptr i8, ptr %109, i32 16
  %110 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i) #10, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !161
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.then.if.end5_crit_edge, %ixgb_clean_tx_irq.exit.if.end5_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %work_done) #10
  ret i32 %100
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ixgb_validate_eeprom_checksum(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ixgb_get_ee_mac_addr(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ixgb_get_ee_pba_number(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ixgb_watchdog(ptr noundef %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %netdev1 = getelementptr inbounds %struct.ixgb_adapter, ptr %t, i32 0, i32 25
  %0 = ptrtoint ptr %netdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netdev1, align 8
  %hw = getelementptr inbounds %struct.ixgb_adapter, ptr %t, i32 0, i32 27
  tail call void @ixgb_check_for_link(ptr noundef %hw) #10
  %call = tail call zeroext i1 @ixgb_check_for_bad_link(ptr noundef %hw) #10
  br i1 %call, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 103
  %2 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %3, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %link_up = getelementptr inbounds %struct.ixgb_adapter, ptr %t, i32 0, i32 27, i32 15
  %4 = ptrtoint ptr %link_up to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %link_up, align 4, !range !139
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  %state.i79 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %state.i79 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %state.i79, align 4
  %8 = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i80 = icmp eq i32 %8, 0
  br i1 %tobool.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.end
  br i1 %tobool.not.i80, label %if.then4.if.end27_crit_edge, label %if.then6

if.then4.if.end27_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

if.then6:                                         ; preds = %if.then4
  %type = getelementptr inbounds %struct.ixgb_adapter, ptr %t, i32 0, i32 27, i32 2, i32 4
  %9 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %type, align 4
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.39)
  switch i32 %10, label %cond.false13 [
    i32 3, label %if.then6.cond.end19_crit_edge
    i32 1, label %cond.end19.fold.split
  ]

if.then6.cond.end19_crit_edge:                    ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end19

cond.false13:                                     ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %10)
  %cmp17 = icmp eq i32 %10, 2
  %cond = select i1 %cmp17, ptr @.str.31, ptr @.str.32
  br label %cond.end19

cond.end19.fold.split:                            ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end19

cond.end19:                                       ; preds = %cond.end19.fold.split, %cond.false13, %if.then6.cond.end19_crit_edge
  %cond20 = phi ptr [ @.str.29, %if.then6.cond.end19_crit_edge ], [ %cond, %cond.false13 ], [ @.str.30, %cond.end19.fold.split ]
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %1, ptr noundef nonnull @.str.28, ptr noundef nonnull %cond20) #13
  %link_speed = getelementptr inbounds %struct.ixgb_adapter, ptr %t, i32 0, i32 5
  %12 = ptrtoint ptr %link_speed to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 10000, ptr %link_speed, align 4
  %link_duplex = getelementptr inbounds %struct.ixgb_adapter, ptr %t, i32 0, i32 6
  %13 = ptrtoint ptr %link_duplex to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 2, ptr %link_duplex, align 2
  tail call void @netif_carrier_on(ptr noundef %1) #10
  br label %if.end27

if.else:                                          ; preds = %if.end
  br i1 %tobool.not.i80, label %if.then23, label %if.else.if.end27_crit_edge

if.else.if.end27_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

if.then23:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %link_speed24 = getelementptr inbounds %struct.ixgb_adapter, ptr %t, i32 0, i32 5
  %14 = ptrtoint ptr %link_speed24 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 0, ptr %link_speed24, align 4
  %link_duplex25 = getelementptr inbounds %struct.ixgb_adapter, ptr %t, i32 0, i32 6
  %15 = ptrtoint ptr %link_duplex25 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 0, ptr %link_duplex25, align 2
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %1, ptr noundef nonnull @.str.33) #13
  tail call void @netif_carrier_off(ptr noundef %1) #10
  br label %if.end27

if.end27:                                         ; preds = %if.then23, %if.else.if.end27_crit_edge, %cond.end19, %if.then4.if.end27_crit_edge
  tail call void @ixgb_update_stats(ptr noundef %t)
  %state.i81 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %16 = ptrtoint ptr %state.i81 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %state.i81, align 4
  %18 = and i32 %17, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.i82 = icmp eq i32 %18, 0
  br i1 %tobool.not.i82, label %if.end27.if.end44_crit_edge, label %if.then29

if.end27.if.end44_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end44

if.then29:                                        ; preds = %if.end27
  %next_to_clean = getelementptr inbounds %struct.ixgb_adapter, ptr %t, i32 0, i32 9, i32 5
  %19 = ptrtoint ptr %next_to_clean to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %next_to_clean, align 4
  %next_to_use = getelementptr inbounds %struct.ixgb_adapter, ptr %t, i32 0, i32 9, i32 4
  %21 = ptrtoint ptr %next_to_use to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %next_to_use, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %22)
  %cmp30 = icmp ugt i32 %20, %22
  br i1 %cmp30, label %if.then29.cond.end33_crit_edge, label %cond.false32

if.then29.cond.end33_crit_edge:                   ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end33

cond.false32:                                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #12
  %count = getelementptr inbounds %struct.ixgb_adapter, ptr %t, i32 0, i32 9, i32 3
  %23 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %count, align 4
  br label %cond.end33

cond.end33:                                       ; preds = %cond.false32, %if.then29.cond.end33_crit_edge
  %cond34 = phi i32 [ %24, %cond.false32 ], [ 0, %if.then29.cond.end33_crit_edge ]
  %add = sub i32 %20, %22
  %sub = add i32 %add, %cond34
  %count39 = getelementptr inbounds %struct.ixgb_adapter, ptr %t, i32 0, i32 9, i32 3
  %25 = ptrtoint ptr %count39 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %count39, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %26)
  %cmp40 = icmp ult i32 %sub, %26
  br i1 %cmp40, label %if.then41, label %cond.end33.if.end44_crit_edge

cond.end33.if.end44_crit_edge:                    ; preds = %cond.end33
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end44

if.then41:                                        ; preds = %cond.end33
  call void @__sanitizer_cov_trace_pc() #12
  %tx_timeout_task = getelementptr inbounds %struct.ixgb_adapter, ptr %t, i32 0, i32 7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %27 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %27, ptr noundef %tx_timeout_task) #10
  br label %cleanup

if.end44:                                         ; preds = %cond.end33.if.end44_crit_edge, %if.end27.if.end44_crit_edge
  %detect_tx_hung = getelementptr inbounds %struct.ixgb_adapter, ptr %t, i32 0, i32 18
  %28 = ptrtoint ptr %detect_tx_hung to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 1, ptr %detect_tx_hung, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !251
  tail call void @arm_heavy_mb() #10
  %29 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %hw, align 32
  %add.ptr46 = getelementptr i8, ptr %30, i32 136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr46, i32 16777216) #10, !srcloc !132
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %31 = load volatile i32, ptr @jiffies, align 128
  %add47 = add i32 %31, 200
  %call48 = tail call i32 @mod_timer(ptr noundef %t, i32 noundef %add47) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end44, %if.then41
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ixgb_tx_timeout_task(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -576
  %tx_timeout_count = getelementptr i8, ptr %work, i32 124
  %0 = ptrtoint ptr %tx_timeout_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tx_timeout_count, align 4
  %inc = add i32 %1, 1
  store i32 %inc, ptr %tx_timeout_count, align 4
  tail call void @ixgb_down(ptr noundef %add.ptr, i1 noundef zeroext true)
  %call = tail call i32 @ixgb_up(ptr noundef %add.ptr)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @ixgb_check_options(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_release_regions(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ixgb_open(ptr noundef %netdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %pdev1.i = getelementptr i8, ptr %netdev, i32 3292
  %0 = ptrtoint ptr %pdev1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev1.i, align 4
  %count.i = getelementptr i8, ptr %netdev, i32 2956
  %2 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %count.i, align 4
  %mul.i = mul i32 %3, 20
  %call.i = tail call noalias ptr @vzalloc(i32 noundef %mul.i) #15
  %buffer_info.i = getelementptr i8, ptr %netdev, i32 2968
  %4 = ptrtoint ptr %buffer_info.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i, ptr %buffer_info.i, align 4
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.err_setup_tx_crit_edge, label %if.end.i

entry.err_setup_tx_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_setup_tx

if.end.i:                                         ; preds = %entry
  %tx_ring.i = getelementptr i8, ptr %netdev, i32 2944
  %5 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %count.i, align 4
  %mul4.i = shl i32 %6, 4
  %size5.i = getelementptr i8, ptr %netdev, i32 2952
  %add.i = add i32 %mul4.i, 4095
  %and.i = and i32 %add.i, -4096
  %7 = ptrtoint ptr %size5.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %and.i, ptr %size5.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %dma.i = getelementptr i8, ptr %netdev, i32 2948
  %call.i.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev.i, i32 noundef %and.i, ptr noundef %dma.i, i32 noundef 3264, i32 noundef 0) #10
  %8 = ptrtoint ptr %tx_ring.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i.i, ptr %tx_ring.i, align 4
  %tobool11.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool11.not.i, label %if.then12.i, label %if.end

if.then12.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %9 = ptrtoint ptr %buffer_info.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %buffer_info.i, align 4
  tail call void @vfree(ptr noundef %10) #10
  br label %err_setup_tx

if.end:                                           ; preds = %if.end.i
  %next_to_use.i = getelementptr i8, ptr %netdev, i32 2960
  %11 = ptrtoint ptr %next_to_use.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %next_to_use.i, align 4
  %next_to_clean.i = getelementptr i8, ptr %netdev, i32 2964
  %12 = ptrtoint ptr %next_to_clean.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %next_to_clean.i, align 4
  tail call void @netif_carrier_off(ptr noundef %netdev) #10
  %13 = ptrtoint ptr %pdev1.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pdev1.i, align 4
  %count.i22 = getelementptr i8, ptr %netdev, i32 3024
  %15 = ptrtoint ptr %count.i22 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %count.i22, align 4
  %mul.i23 = mul i32 %16, 20
  %call.i24 = tail call noalias ptr @vzalloc(i32 noundef %mul.i23) #15
  %buffer_info.i25 = getelementptr i8, ptr %netdev, i32 3036
  %17 = ptrtoint ptr %buffer_info.i25 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call.i24, ptr %buffer_info.i25, align 4
  %tobool.not.i26 = icmp eq ptr %call.i24, null
  br i1 %tobool.not.i26, label %if.end.err_setup_rx_crit_edge, label %if.end.i35

if.end.err_setup_rx_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_setup_rx

if.end.i35:                                       ; preds = %if.end
  %rx_ring.i = getelementptr i8, ptr %netdev, i32 3012
  %18 = ptrtoint ptr %count.i22 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %count.i22, align 4
  %mul4.i27 = shl i32 %19, 4
  %size5.i28 = getelementptr i8, ptr %netdev, i32 3020
  %add.i29 = add i32 %mul4.i27, 4095
  %and.i30 = and i32 %add.i29, -4096
  %20 = ptrtoint ptr %size5.i28 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %and.i30, ptr %size5.i28, align 4
  %dev.i31 = getelementptr inbounds %struct.pci_dev, ptr %14, i32 0, i32 44
  %dma.i32 = getelementptr i8, ptr %netdev, i32 3016
  %call.i.i33 = tail call ptr @dma_alloc_attrs(ptr noundef %dev.i31, i32 noundef %and.i30, ptr noundef %dma.i32, i32 noundef 3264, i32 noundef 0) #10
  %21 = ptrtoint ptr %rx_ring.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call.i.i33, ptr %rx_ring.i, align 4
  %tobool11.not.i34 = icmp eq ptr %call.i.i33, null
  br i1 %tobool11.not.i34, label %if.then12.i36, label %if.end5

if.then12.i36:                                    ; preds = %if.end.i35
  call void @__sanitizer_cov_trace_pc() #12
  %22 = ptrtoint ptr %buffer_info.i25 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %buffer_info.i25, align 4
  tail call void @vfree(ptr noundef %23) #10
  br label %err_setup_rx

if.end5:                                          ; preds = %if.end.i35
  %next_to_clean.i37 = getelementptr i8, ptr %netdev, i32 3032
  %24 = ptrtoint ptr %next_to_clean.i37 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %next_to_clean.i37, align 4
  %next_to_use.i38 = getelementptr i8, ptr %netdev, i32 3028
  %25 = ptrtoint ptr %next_to_use.i38 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %next_to_use.i38, align 4
  %call6 = tail call i32 @ixgb_up(ptr noundef %add.ptr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %err_up

if.end9:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 103
  %26 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %27, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i) #10
  br label %cleanup

err_up:                                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  %28 = ptrtoint ptr %pdev1.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pdev1.i, align 4
  tail call fastcc void @ixgb_clean_rx_ring(ptr noundef %add.ptr.i) #10
  %30 = ptrtoint ptr %buffer_info.i25 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %buffer_info.i25, align 4
  tail call void @vfree(ptr noundef %31) #10
  %32 = ptrtoint ptr %buffer_info.i25 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %buffer_info.i25, align 4
  %dev.i42 = getelementptr inbounds %struct.pci_dev, ptr %29, i32 0, i32 44
  %33 = ptrtoint ptr %size5.i28 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %size5.i28, align 4
  %35 = ptrtoint ptr %rx_ring.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %rx_ring.i, align 4
  %37 = ptrtoint ptr %dma.i32 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %dma.i32, align 4
  tail call void @dma_free_attrs(ptr noundef %dev.i42, i32 noundef %34, ptr noundef %36, i32 noundef %38, i32 noundef 0) #10
  %39 = ptrtoint ptr %rx_ring.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr null, ptr %rx_ring.i, align 4
  br label %err_setup_rx

err_setup_rx:                                     ; preds = %err_up, %if.then12.i36, %if.end.err_setup_rx_crit_edge
  %err.0 = phi i32 [ %call6, %err_up ], [ -12, %if.then12.i36 ], [ -12, %if.end.err_setup_rx_crit_edge ]
  %40 = ptrtoint ptr %pdev1.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %pdev1.i, align 4
  tail call fastcc void @ixgb_clean_tx_ring(ptr noundef %add.ptr.i) #10
  %42 = ptrtoint ptr %buffer_info.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %buffer_info.i, align 8
  tail call void @vfree(ptr noundef %43) #10
  %44 = ptrtoint ptr %buffer_info.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr null, ptr %buffer_info.i, align 8
  %dev.i47 = getelementptr inbounds %struct.pci_dev, ptr %41, i32 0, i32 44
  %45 = ptrtoint ptr %size5.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %size5.i, align 8
  %47 = ptrtoint ptr %tx_ring.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %tx_ring.i, align 128
  %49 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %dma.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev.i47, i32 noundef %46, ptr noundef %48, i32 noundef %50, i32 noundef 0) #10
  %51 = ptrtoint ptr %tx_ring.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr null, ptr %tx_ring.i, align 128
  br label %err_setup_tx

err_setup_tx:                                     ; preds = %err_setup_rx, %if.then12.i, %entry.err_setup_tx_crit_edge
  %err.1 = phi i32 [ %err.0, %err_setup_rx ], [ -12, %if.then12.i ], [ -12, %entry.err_setup_tx_crit_edge ]
  tail call void @ixgb_reset(ptr noundef %add.ptr.i)
  br label %cleanup

cleanup:                                          ; preds = %err_setup_tx, %if.end9
  %retval.0 = phi i32 [ %err.1, %err_setup_tx ], [ 0, %if.end9 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ixgb_close(ptr noundef %netdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  tail call void @ixgb_down(ptr noundef %add.ptr.i, i1 noundef zeroext true)
  %pdev1.i = getelementptr i8, ptr %netdev, i32 3292
  %0 = ptrtoint ptr %pdev1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev1.i, align 4
  tail call fastcc void @ixgb_clean_tx_ring(ptr noundef %add.ptr.i) #10
  %tx_ring.i = getelementptr i8, ptr %netdev, i32 2944
  %buffer_info.i = getelementptr i8, ptr %netdev, i32 2968
  %2 = ptrtoint ptr %buffer_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %buffer_info.i, align 8
  tail call void @vfree(ptr noundef %3) #10
  %4 = ptrtoint ptr %buffer_info.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %buffer_info.i, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %size.i = getelementptr i8, ptr %netdev, i32 2952
  %5 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %size.i, align 8
  %7 = ptrtoint ptr %tx_ring.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tx_ring.i, align 128
  %dma.i = getelementptr i8, ptr %netdev, i32 2948
  %9 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %dma.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev.i, i32 noundef %6, ptr noundef %8, i32 noundef %10, i32 noundef 0) #10
  %11 = ptrtoint ptr %tx_ring.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %tx_ring.i, align 128
  %rx_ring1.i = getelementptr i8, ptr %netdev, i32 3012
  %12 = ptrtoint ptr %pdev1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pdev1.i, align 4
  tail call fastcc void @ixgb_clean_rx_ring(ptr noundef %add.ptr.i) #10
  %buffer_info.i3 = getelementptr i8, ptr %netdev, i32 3036
  %14 = ptrtoint ptr %buffer_info.i3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %buffer_info.i3, align 4
  tail call void @vfree(ptr noundef %15) #10
  %16 = ptrtoint ptr %buffer_info.i3 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %buffer_info.i3, align 4
  %dev.i4 = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44
  %size.i5 = getelementptr i8, ptr %netdev, i32 3020
  %17 = ptrtoint ptr %size.i5 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %size.i5, align 4
  %19 = ptrtoint ptr %rx_ring1.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %rx_ring1.i, align 4
  %dma.i6 = getelementptr i8, ptr %netdev, i32 3016
  %21 = ptrtoint ptr %dma.i6 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %dma.i6, align 4
  tail call void @dma_free_attrs(ptr noundef %dev.i4, i32 noundef %18, ptr noundef %20, i32 noundef %22, i32 noundef 0) #10
  %23 = ptrtoint ptr %rx_ring1.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %rx_ring1.i, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ixgb_xmit_frame(ptr noundef %skb, ptr noundef %netdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %flags = getelementptr i8, ptr %netdev, i32 4048
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flags, align 4
  %and1.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %2 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #10
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %tx_ring = getelementptr i8, ptr %netdev, i32 2944
  %next_to_clean.i = getelementptr i8, ptr %netdev, i32 2964
  %4 = ptrtoint ptr %next_to_clean.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %next_to_clean.i, align 4
  %next_to_use.i = getelementptr i8, ptr %netdev, i32 2960
  %6 = ptrtoint ptr %next_to_use.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %next_to_use.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp.i = icmp ugt i32 %5, %7
  br i1 %cmp.i, label %if.end3.cond.end.i_crit_edge, label %cond.false.i

if.end3.cond.end.i_crit_edge:                     ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end.i

cond.false.i:                                     ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  %count.i = getelementptr i8, ptr %netdev, i32 2956
  %8 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %count.i, align 4
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %if.end3.cond.end.i_crit_edge
  %cond.i = phi i32 [ %9, %cond.false.i ], [ 0, %if.end3.cond.end.i_crit_edge ]
  %10 = xor i32 %7, -1
  %add.i = add i32 %5, %10
  %sub3.i = add i32 %add.i, %cond.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %sub3.i)
  %cmp4.i = icmp ugt i32 %sub3.i, 19
  br i1 %cmp4.i, label %cond.end.i.if.end9_crit_edge, label %ixgb_maybe_stop_tx.exit, !prof !167

cond.end.i.if.end9_crit_edge:                     ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

ixgb_maybe_stop_tx.exit:                          ; preds = %cond.end.i
  %call.i = tail call fastcc i32 @__ixgb_maybe_stop_tx(ptr noundef %netdev) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool5.not = icmp eq i32 %call.i, 0
  br i1 %tobool5.not, label %ixgb_maybe_stop_tx.exit.if.end9_crit_edge, label %ixgb_maybe_stop_tx.exit.cleanup_crit_edge, !prof !167

ixgb_maybe_stop_tx.exit.cleanup_crit_edge:        ; preds = %ixgb_maybe_stop_tx.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

ixgb_maybe_stop_tx.exit.if.end9_crit_edge:        ; preds = %ixgb_maybe_stop_tx.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

if.end9:                                          ; preds = %ixgb_maybe_stop_tx.exit.if.end9_crit_edge, %cond.end.i.if.end9_crit_edge
  %vlan_present = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %11 = ptrtoint ptr %vlan_present to i32
  call void @__asan_loadN_noabort(i32 %11, i32 4)
  %bf.load = load i32, ptr %vlan_present, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load)
  %tobool10.not = icmp sgt i32 %bf.load, -1
  br i1 %tobool10.not, label %if.end9.if.end12_crit_edge, label %if.then11

if.end9.if.end12_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

if.then11:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  %vlan_tci = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 10
  %12 = ptrtoint ptr %vlan_tci to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %vlan_tci, align 2
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %if.end9.if.end12_crit_edge
  %tx_flags.0 = phi i32 [ 1073741824, %if.then11 ], [ 0, %if.end9.if.end12_crit_edge ]
  %vlan_id.0 = phi i16 [ %13, %if.then11 ], [ 0, %if.end9.if.end12_crit_edge ]
  %14 = ptrtoint ptr %next_to_use.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %next_to_use.i, align 16
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %16 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %end.i.i.i, align 4
  %gso_size.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %17, i32 0, i32 4
  %18 = ptrtoint ptr %gso_size.i.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %gso_size.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %tobool.i.not.i = icmp eq i16 %19, 0
  br i1 %tobool.i.not.i, label %if.else, label %if.then.i, !prof !168

if.then.i:                                        ; preds = %if.end12
  %cloned.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 12
  %20 = ptrtoint ptr %cloned.i.i.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %bf.load.i.i.i = load i8, ptr %cloned.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i.i)
  %tobool.not.i.i.i = icmp sgt i8 %bf.load.i.i.i, -1
  br i1 %tobool.not.i.i.i, label %if.then.i.if.end.i78_crit_edge, label %skb_header_cloned.exit.i.i

if.then.i.if.end.i78_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i78

skb_header_cloned.exit.i.i:                       ; preds = %if.then.i
  %dataref1.i.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %17, i32 0, i32 10
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %dataref1.i.i.i, i32 noundef 4) #10
  %21 = ptrtoint ptr %dataref1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %dataref1.i.i.i, align 4
  %and.i.i.i = and i32 %22, 65535
  %shr.i.i.i = ashr i32 %22, 16
  %sub.i.i.i = sub nsw i32 %and.i.i.i, %shr.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i.i.i)
  %cmp.i.not.i.i = icmp eq i32 %sub.i.i.i, 1
  br i1 %cmp.i.not.i.i, label %skb_header_cloned.exit.i.i.if.end.i78_crit_edge, label %skb_cow_head.exit.i

skb_header_cloned.exit.i.i.if.end.i78_crit_edge:  ; preds = %skb_header_cloned.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i78

skb_cow_head.exit.i:                              ; preds = %skb_header_cloned.exit.i.i
  %call4.i.i.i = tail call i32 @pskb_expand_head(ptr noundef %skb, i32 noundef 0, i32 noundef 0, i32 noundef 2592) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i.i)
  %cmp.i75 = icmp slt i32 %call4.i.i.i, 0
  br i1 %cmp.i75, label %if.then17, label %skb_cow_head.exit.i.if.end.i78_crit_edge

skb_cow_head.exit.i.if.end.i78_crit_edge:         ; preds = %skb_cow_head.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i78

if.end.i78:                                       ; preds = %skb_cow_head.exit.i.if.end.i78_crit_edge, %skb_header_cloned.exit.i.i.if.end.i78_crit_edge, %if.then.i.if.end.i78_crit_edge
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %23 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %head.i.i.i, align 8
  %transport_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %25 = ptrtoint ptr %transport_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %transport_header.i.i.i, align 2
  %conv.i.i.i = zext i16 %26 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %24, i32 %conv.i.i.i
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %27 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %data.i.i, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %add.ptr.i.i.i to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %28 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %doff.i.i.i = getelementptr inbounds %struct.tcphdr, ptr %add.ptr.i.i.i, i32 0, i32 4
  %29 = ptrtoint ptr %doff.i.i.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %bf.load.i.i125.i = load i16, ptr %doff.i.i.i, align 4
  %30 = lshr i16 %bf.load.i.i125.i, 10
  %31 = and i16 %30, 60
  %mul.i.i.i = zext i16 %31 to i32
  %add.i76 = add i32 %sub.ptr.sub.i.i, %mul.i.i.i
  %conv.i = trunc i32 %add.i76 to i8
  %32 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %end.i.i.i, align 4
  %gso_size.i = getelementptr inbounds %struct.skb_shared_info, ptr %33, i32 0, i32 4
  %34 = ptrtoint ptr %gso_size.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %gso_size.i, align 4
  %network_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %36 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %network_header.i.i.i, align 4
  %conv.i.i127.i = zext i16 %37 to i32
  %add.ptr.i.i128.i = getelementptr i8, ptr %24, i32 %conv.i.i127.i
  %tot_len.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i128.i, i32 0, i32 2
  %38 = ptrtoint ptr %tot_len.i to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 0, ptr %tot_len.i, align 2
  %check.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i128.i, i32 0, i32 7
  %39 = ptrtoint ptr %check.i to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 0, ptr %check.i, align 2
  %saddr.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i128.i, i32 0, i32 8
  %40 = ptrtoint ptr %saddr.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %saddr.i, align 4
  %daddr.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i128.i, i32 0, i32 9
  %42 = ptrtoint ptr %daddr.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %daddr.i, align 4
  %44 = tail call i32 asm "adds\09$0, $1, $2\09@ csum_tcpudp_nofold0\09\0A\09adcs\09$0, $0, $3\09\09\09\09\0A\09adc\09$0, $0, #0", "=&r,r,r,r,~{cc}"(i32 %43, i32 %41, i32 6) #16, !srcloc !252
  %45 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %44) #16, !srcloc !253
  %neg.i.i.i = xor i32 %45, -1
  %shr.i.i129.i = lshr i32 %neg.i.i.i, 16
  %conv.i.i130.i = trunc i32 %shr.i.i129.i to i16
  %neg.i = xor i16 %conv.i.i130.i, -1
  %46 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %head.i.i.i, align 8
  %48 = ptrtoint ptr %transport_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %transport_header.i.i.i, align 2
  %conv.i.i133.i = zext i16 %49 to i32
  %add.ptr.i.i134.i = getelementptr i8, ptr %47, i32 %conv.i.i133.i
  %check12.i = getelementptr inbounds %struct.tcphdr, ptr %add.ptr.i.i134.i, i32 0, i32 6
  %50 = ptrtoint ptr %check12.i to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 %neg.i, ptr %check12.i, align 4
  %51 = load ptr, ptr %head.i.i.i, align 8
  %52 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %network_header.i.i.i, align 4
  %conv.i.i137.i = zext i16 %53 to i32
  %add.ptr.i.i138.i = getelementptr i8, ptr %51, i32 %conv.i.i137.i
  %54 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %data.i.i, align 4
  %sub.ptr.lhs.cast.i140.i = ptrtoint ptr %add.ptr.i.i138.i to i32
  %sub.ptr.rhs.cast.i141.i = ptrtoint ptr %55 to i32
  %sub.ptr.sub.i142.i = sub i32 %sub.ptr.lhs.cast.i140.i, %sub.ptr.rhs.cast.i141.i
  %conv14.i = trunc i32 %sub.ptr.sub.i142.i to i8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %check.i to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i141.i
  %conv16.i = trunc i32 %sub.ptr.sub.i to i8
  %56 = load i16, ptr %transport_header.i.i.i, align 2
  %conv.i.i145.i = zext i16 %56 to i32
  %add.ptr.i.i146.i = getelementptr i8, ptr %51, i32 %conv.i.i145.i
  %sub.ptr.lhs.cast.i148.i = ptrtoint ptr %add.ptr.i.i146.i to i32
  %sub.ptr.sub.i150.i = sub i32 %sub.ptr.lhs.cast.i148.i, %sub.ptr.rhs.cast.i141.i
  %57 = trunc i32 %sub.ptr.sub.i150.i to i16
  %conv18.i = add i16 %57, -1
  %conv20.i = trunc i32 %sub.ptr.sub.i150.i to i8
  %check22.i = getelementptr inbounds %struct.tcphdr, ptr %add.ptr.i.i146.i, i32 0, i32 6
  %sub.ptr.lhs.cast24.i = ptrtoint ptr %check22.i to i32
  %sub.ptr.sub26.i = sub i32 %sub.ptr.lhs.cast24.i, %sub.ptr.rhs.cast.i141.i
  %conv27.i = trunc i32 %sub.ptr.sub26.i to i8
  %58 = ptrtoint ptr %next_to_use.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %next_to_use.i, align 16
  %60 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %tx_ring, align 128
  %arrayidx.i = getelementptr %struct.ixgb_context_desc, ptr %61, i32 %59
  %buffer_info30.i = getelementptr i8, ptr %netdev, i32 2968
  %62 = ptrtoint ptr %buffer_info30.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %buffer_info30.i, align 8
  %dma.i = getelementptr %struct.ixgb_buffer, ptr %63, i32 %59, i32 1
  %64 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %dma.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %cmp32.not.i = icmp eq i32 %65, 0
  br i1 %cmp32.not.i, label %if.end.i78.if.then26_crit_edge, label %do.end.i, !prof !167

if.end.i78.if.then26_crit_edge:                   ; preds = %if.end.i78
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then26

do.end.i:                                         ; preds = %if.end.i78
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 1217, i32 noundef 9, ptr noundef null) #10
  br label %if.then26

if.then17:                                        ; preds = %skb_cow_head.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #10
  br label %cleanup

if.then26:                                        ; preds = %do.end.i, %if.end.i78.if.then26_crit_edge
  %66 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %conv14.i, ptr %arrayidx.i, align 4
  %ipcso60.i = getelementptr %struct.ixgb_context_desc, ptr %61, i32 %59, i32 1
  %67 = ptrtoint ptr %ipcso60.i to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %conv16.i, ptr %ipcso60.i, align 1
  %68 = tail call i16 @llvm.bswap.i16(i16 %conv18.i) #10
  %ipcse61.i = getelementptr %struct.ixgb_context_desc, ptr %61, i32 %59, i32 2
  %69 = ptrtoint ptr %ipcse61.i to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 %68, ptr %ipcse61.i, align 2
  %tucss62.i = getelementptr %struct.ixgb_context_desc, ptr %61, i32 %59, i32 3
  %70 = ptrtoint ptr %tucss62.i to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %conv20.i, ptr %tucss62.i, align 4
  %tucso63.i = getelementptr %struct.ixgb_context_desc, ptr %61, i32 %59, i32 4
  %71 = ptrtoint ptr %tucso63.i to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %conv27.i, ptr %tucso63.i, align 1
  %tucse64.i = getelementptr %struct.ixgb_context_desc, ptr %61, i32 %59, i32 5
  %72 = ptrtoint ptr %tucse64.i to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 0, ptr %tucse64.i, align 2
  %73 = tail call i16 @llvm.bswap.i16(i16 %35) #10
  %mss65.i = getelementptr %struct.ixgb_context_desc, ptr %61, i32 %59, i32 9
  %74 = ptrtoint ptr %mss65.i to i32
  call void @__asan_store2_noabort(i32 %74)
  store i16 %73, ptr %mss65.i, align 2
  %hdr_len66.i = getelementptr %struct.ixgb_context_desc, ptr %61, i32 %59, i32 8
  %75 = ptrtoint ptr %hdr_len66.i to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 %conv.i, ptr %hdr_len66.i, align 1
  %status.i = getelementptr %struct.ixgb_context_desc, ptr %61, i32 %59, i32 7
  %76 = ptrtoint ptr %status.i to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 0, ptr %status.i, align 4
  %77 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %len, align 4
  %conv67.i = and i32 %add.i76, 255
  %sub68.i = sub i32 %78, %conv67.i
  %or.i = or i32 %sub68.i, -2030043136
  %79 = tail call i32 @llvm.bswap.i32(i32 %or.i) #10
  %cmd_type_len.i = getelementptr %struct.ixgb_context_desc, ptr %61, i32 %59, i32 6
  %80 = ptrtoint ptr %cmd_type_len.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %79, ptr %cmd_type_len.i, align 4
  %inc.i = add i32 %59, 1
  %count.i79 = getelementptr i8, ptr %netdev, i32 2956
  %81 = ptrtoint ptr %count.i79 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %count.i79, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %82)
  %cmp70.i = icmp eq i32 %inc.i, %82
  %spec.store.select.i = select i1 %cmp70.i, i32 0, i32 %inc.i
  %83 = ptrtoint ptr %next_to_use.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %spec.store.select.i, ptr %next_to_use.i, align 16
  br label %if.end32

if.else:                                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  %call28 = tail call fastcc zeroext i1 @ixgb_tx_csum(ptr noundef %add.ptr.i, ptr noundef %skb)
  %or30 = zext i1 %call28 to i32
  br label %if.end32

if.end32:                                         ; preds = %if.else, %if.then26
  %or30.sink = phi i32 [ %or30, %if.else ], [ 4, %if.then26 ]
  %pdev2.i = getelementptr i8, ptr %netdev, i32 3292
  %84 = ptrtoint ptr %pdev2.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %pdev2.i, align 4
  %86 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %len, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %88 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %data_len.i.i, align 8
  %sub.i.i = sub i32 %87, %89
  %90 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %end.i.i.i, align 4
  %gso_size.i80 = getelementptr inbounds %struct.skb_shared_info, ptr %91, i32 0, i32 4
  %92 = ptrtoint ptr %gso_size.i80 to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %gso_size.i80, align 4
  %nr_frags5.i = getelementptr inbounds %struct.skb_shared_info, ptr %91, i32 0, i32 2
  %94 = ptrtoint ptr %nr_frags5.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %nr_frags5.i, align 2
  %conv6.i = zext i8 %95 to i32
  %96 = ptrtoint ptr %next_to_use.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %next_to_use.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i)
  %tobool.not289.i = icmp eq i32 %sub.i.i, 0
  br i1 %tobool.not289.i, label %if.end32.for.cond.preheader.i_crit_edge, label %while.body.lr.ph.i

if.end32.for.cond.preheader.i_crit_edge:          ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.preheader.i

while.body.lr.ph.i:                               ; preds = %if.end32
  %buffer_info7.i = getelementptr i8, ptr %netdev, i32 2968
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %93)
  %tobool9.not.i = icmp ne i16 %93, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %95)
  %tobool10.not.i = icmp eq i8 %95, 0
  %or.cond.i = select i1 %tobool9.not.i, i1 %tobool10.not.i, i1 false
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %85, i32 0, i32 44
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %count59.i = getelementptr i8, ptr %netdev, i32 2956
  br label %while.body.i

for.cond.preheader.i:                             ; preds = %if.end54.i.for.cond.preheader.i_crit_edge, %if.end32.for.cond.preheader.i_crit_edge
  %count.0.lcssa.i = phi i32 [ 0, %if.end32.for.cond.preheader.i_crit_edge ], [ %inc.i89, %if.end54.i.for.cond.preheader.i_crit_edge ]
  %i.0.lcssa.i = phi i32 [ %97, %if.end32.for.cond.preheader.i_crit_edge ], [ %i.0293.i, %if.end54.i.for.cond.preheader.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %95)
  %cmp65304.not.i = icmp eq i8 %95, 0
  br i1 %cmp65304.not.i, label %for.cond.preheader.i.ixgb_tx_map.exit_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.ixgb_tx_map.exit_crit_edge:  ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ixgb_tx_map.exit

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %count74.i = getelementptr i8, ptr %netdev, i32 2956
  %buffer_info79.i = getelementptr i8, ptr %netdev, i32 2968
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %93)
  %tobool88.not.i = icmp ne i16 %93, 0
  %sub90.i = add nsw i32 %conv6.i, -1
  %dev113.i = getelementptr inbounds %struct.pci_dev, ptr %85, i32 0, i32 44
  br label %for.body.i

while.body.i:                                     ; preds = %if.end64.i, %while.body.lr.ph.i
  %i.0293.i = phi i32 [ %97, %while.body.lr.ph.i ], [ %spec.store.select.i91, %if.end64.i ]
  %count.0292.i = phi i32 [ 0, %while.body.lr.ph.i ], [ %inc.i89, %if.end64.i ]
  %offset.0291.i = phi i32 [ 0, %while.body.lr.ph.i ], [ %add.i90, %if.end64.i ]
  %len.0290.i = phi i32 [ %sub.i.i, %while.body.lr.ph.i ], [ %sub55.i, %if.end64.i ]
  %98 = ptrtoint ptr %buffer_info7.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %buffer_info7.i, align 4
  %100 = tail call i32 @llvm.smin.i32(i32 %len.0290.i, i32 16384) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 16385, i32 %len.0290.i)
  %cmp12.i = icmp slt i32 %len.0290.i, 16385
  %or.cond254.i = select i1 %or.cond.i, i1 %cmp12.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %100)
  %cmp14.i = icmp ugt i32 %100, 8
  %or.cond257.i = select i1 %or.cond254.i, i1 %cmp14.i, i1 false
  br i1 %or.cond257.i, label %if.then.i82, label %while.body.i.if.end.i85_crit_edge, !prof !254

while.body.i.if.end.i85_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i85

if.then.i82:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i = add i32 %100, -4
  br label %if.end.i85

if.end.i85:                                       ; preds = %if.then.i82, %while.body.i.if.end.i85_crit_edge
  %size.0.i = phi i32 [ %sub.i, %if.then.i82 ], [ %100, %while.body.i.if.end.i85_crit_edge ]
  %conv18.i83 = trunc i32 %size.0.i to i16
  %length.i = getelementptr %struct.ixgb_buffer, ptr %99, i32 %i.0293.i, i32 3
  %101 = ptrtoint ptr %length.i to i32
  call void @__asan_store2_noabort(i32 %101)
  store i16 %conv18.i83, ptr %length.i, align 4
  %dma.i84 = getelementptr %struct.ixgb_buffer, ptr %99, i32 %i.0293.i, i32 1
  %102 = ptrtoint ptr %dma.i84 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %dma.i84, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %103)
  %cmp19.not.i = icmp eq i32 %103, 0
  br i1 %cmp19.not.i, label %if.end.i85.if.end39.i_crit_edge, label %do.end.i86, !prof !167

if.end.i85.if.end39.i_crit_edge:                  ; preds = %if.end.i85
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end39.i

do.end.i86:                                       ; preds = %if.end.i85
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 1311, i32 noundef 9, ptr noundef null) #10
  br label %if.end39.i

if.end39.i:                                       ; preds = %do.end.i86, %if.end.i85.if.end39.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %104 = load volatile i32, ptr @jiffies, align 128
  %time_stamp.i = getelementptr %struct.ixgb_buffer, ptr %99, i32 %i.0293.i, i32 2
  %105 = ptrtoint ptr %time_stamp.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %104, ptr %time_stamp.i, align 4
  %mapped_as_page.i = getelementptr %struct.ixgb_buffer, ptr %99, i32 %i.0293.i, i32 5
  %106 = ptrtoint ptr %mapped_as_page.i to i32
  call void @__asan_store2_noabort(i32 %106)
  store i16 0, ptr %mapped_as_page.i, align 4
  %107 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %data.i, align 4
  %add.ptr.i87 = getelementptr i8, ptr %108, i32 %offset.0291.i
  %call.i.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %add.ptr.i87) #10
  br i1 %call.i.i, label %land.rhs.i.i, label %dma_map_single_attrs.exit.i

land.rhs.i.i:                                     ; preds = %if.end39.i
  %arrayidx.le286.i = getelementptr %struct.ixgb_buffer, ptr %99, i32 %i.0293.i
  %.b1.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs.i.i.dma_map_single_attrs.exit.thread.i_crit_edge, label %if.then.i.i, !prof !167

land.rhs.i.i.dma_map_single_attrs.exit.thread.i_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_map_single_attrs.exit.thread.i

if.then.i.i:                                      ; preds = %land.rhs.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i = tail call ptr @dev_driver_string(ptr noundef %dev.i) #10
  %init_name.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %85, i32 0, i32 44, i32 3
  %109 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i88 = icmp eq ptr %110, null
  br i1 %tobool.not.i.i.i88, label %if.end.i.i.i, label %if.then.i.i.dev_name.exit.i.i_crit_edge

if.then.i.i.dev_name.exit.i.i_crit_edge:          ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_name.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %111 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %dev.i, align 4
  br label %dev_name.exit.i.i

dev_name.exit.i.i:                                ; preds = %if.end.i.i.i, %if.then.i.i.dev_name.exit.i.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %112, %if.end.i.i.i ], [ %110, %if.then.i.i.dev_name.exit.i.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.22, ptr noundef %call16.i.i, ptr noundef %retval.0.i.i.i) #10
  br label %dma_map_single_attrs.exit.thread.i

dma_map_single_attrs.exit.thread.i:               ; preds = %dev_name.exit.i.i, %land.rhs.i.i.dma_map_single_attrs.exit.thread.i_crit_edge
  %113 = ptrtoint ptr %dma.i84 to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 -1, ptr %dma.i84, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %dev.i, i32 noundef -1) #10
  br label %do.end137.i

dma_map_single_attrs.exit.i:                      ; preds = %if.end39.i
  tail call void @debug_dma_map_single(ptr noundef %dev.i, ptr noundef %add.ptr.i87, i32 noundef %size.0.i) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %114 = load ptr, ptr @mem_map, align 4
  %115 = ptrtoint ptr %add.ptr.i87 to i32
  %sub.i260.i = add i32 %115, 1073741824
  %shr.i.i = lshr i32 %sub.i260.i, 12
  %add.ptr.i.i = getelementptr %struct.page, ptr %114, i32 %shr.i.i
  %and.i.i = and i32 %115, 4095
  %call41.i.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev.i, ptr noundef %add.ptr.i.i, i32 noundef %and.i.i, i32 noundef %size.0.i, i32 noundef 1, i32 noundef 0) #10
  %116 = ptrtoint ptr %dma.i84 to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %call41.i.i, ptr %dma.i84, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %dev.i, i32 noundef %call41.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i.i)
  %cmp.i.i = icmp eq i32 %call41.i.i, -1
  br i1 %cmp.i.i, label %do.end137.loopexit273.i, label %if.end54.i

if.end54.i:                                       ; preds = %dma_map_single_attrs.exit.i
  %next_to_watch.i = getelementptr %struct.ixgb_buffer, ptr %99, i32 %i.0293.i, i32 4
  %117 = ptrtoint ptr %next_to_watch.i to i32
  call void @__asan_store2_noabort(i32 %117)
  store i16 0, ptr %next_to_watch.i, align 2
  %sub55.i = sub i32 %len.0290.i, %size.0.i
  %inc.i89 = add i32 %count.0292.i, 1
  %tobool56.not.i = icmp eq i32 %sub55.i, 0
  br i1 %tobool56.not.i, label %if.end54.i.for.cond.preheader.i_crit_edge, label %if.end64.i

if.end54.i.for.cond.preheader.i_crit_edge:        ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.preheader.i

if.end64.i:                                       ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.i90 = add i32 %size.0.i, %offset.0291.i
  %inc58.i = add i32 %i.0293.i, 1
  %118 = ptrtoint ptr %count59.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %count59.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc58.i, i32 %119)
  %cmp60.i = icmp eq i32 %inc58.i, %119
  %spec.store.select.i91 = select i1 %cmp60.i, i32 0, i32 %inc58.i
  br label %while.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %f.0307.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc127.i, %for.inc.i.for.body.i_crit_edge ]
  %i.2306.i = phi i32 [ %i.0.lcssa.i, %for.body.lr.ph.i ], [ %i.3.lcssa.i, %for.inc.i.for.body.i_crit_edge ]
  %count.1305.i = phi i32 [ %count.0.lcssa.i, %for.body.lr.ph.i ], [ %count.2.lcssa.i, %for.inc.i.for.body.i_crit_edge ]
  %120 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %end.i.i.i, align 4
  %arrayidx68.i = getelementptr %struct.skb_shared_info, ptr %121, i32 0, i32 12, i32 %f.0307.i
  %bv_len.i.i = getelementptr %struct.skb_shared_info, ptr %121, i32 0, i32 12, i32 %f.0307.i, i32 1
  %122 = ptrtoint ptr %bv_len.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %bv_len.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %123)
  %tobool71.not297.i = icmp eq i32 %123, 0
  br i1 %tobool71.not297.i, label %for.body.i.for.inc.i_crit_edge, label %while.body72.lr.ph.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

while.body72.lr.ph.i:                             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_cmp4(i32 %f.0307.i, i32 %sub90.i)
  %cmp91.i = icmp eq i32 %f.0307.i, %sub90.i
  %or.cond255.i = select i1 %tobool88.not.i, i1 %cmp91.i, i1 false
  %bv_offset.i.i.i = getelementptr %struct.skb_shared_info, ptr %121, i32 0, i32 12, i32 %f.0307.i, i32 2
  br label %while.body72.i

while.body72.i:                                   ; preds = %if.end121.i.while.body72.i_crit_edge, %while.body72.lr.ph.i
  %i.3301.i = phi i32 [ %i.2306.i, %while.body72.lr.ph.i ], [ %spec.store.select168.i, %if.end121.i.while.body72.i_crit_edge ]
  %count.2300.i = phi i32 [ %count.1305.i, %while.body72.lr.ph.i ], [ %inc125.i, %if.end121.i.while.body72.i_crit_edge ]
  %offset.1299.i = phi i32 [ 0, %while.body72.lr.ph.i ], [ %add124.i, %if.end121.i.while.body72.i_crit_edge ]
  %len.1298.i = phi i32 [ %123, %while.body72.lr.ph.i ], [ %sub123.i, %if.end121.i.while.body72.i_crit_edge ]
  %inc73.i = add i32 %i.3301.i, 1
  %124 = ptrtoint ptr %count74.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %count74.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc73.i, i32 %125)
  %cmp75.i = icmp eq i32 %inc73.i, %125
  %spec.store.select168.i = select i1 %cmp75.i, i32 0, i32 %inc73.i
  %126 = ptrtoint ptr %buffer_info79.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %buffer_info79.i, align 4
  %128 = tail call i32 @llvm.smin.i32(i32 %len.1298.i, i32 16384) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 16385, i32 %len.1298.i)
  %cmp94.i = icmp slt i32 %len.1298.i, 16385
  %or.cond256.i = select i1 %or.cond255.i, i1 %cmp94.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %128)
  %cmp97.i = icmp ugt i32 %128, 8
  %or.cond258.i = select i1 %or.cond256.i, i1 %cmp97.i, i1 false
  br i1 %or.cond258.i, label %if.then106.i, label %while.body72.i.if.end108.i_crit_edge, !prof !254

while.body72.i.if.end108.i_crit_edge:             ; preds = %while.body72.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end108.i

if.then106.i:                                     ; preds = %while.body72.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub107.i = add i32 %128, -4
  br label %if.end108.i

if.end108.i:                                      ; preds = %if.then106.i, %while.body72.i.if.end108.i_crit_edge
  %size.1.i = phi i32 [ %sub107.i, %if.then106.i ], [ %128, %while.body72.i.if.end108.i_crit_edge ]
  %conv109.i = trunc i32 %size.1.i to i16
  %length110.i = getelementptr %struct.ixgb_buffer, ptr %127, i32 %spec.store.select168.i, i32 3
  %129 = ptrtoint ptr %length110.i to i32
  call void @__asan_store2_noabort(i32 %129)
  store i16 %conv109.i, ptr %length110.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %130 = load volatile i32, ptr @jiffies, align 128
  %time_stamp111.i = getelementptr %struct.ixgb_buffer, ptr %127, i32 %spec.store.select168.i, i32 2
  %131 = ptrtoint ptr %time_stamp111.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 %130, ptr %time_stamp111.i, align 4
  %mapped_as_page112.i = getelementptr %struct.ixgb_buffer, ptr %127, i32 %spec.store.select168.i, i32 5
  %132 = ptrtoint ptr %mapped_as_page112.i to i32
  call void @__asan_store2_noabort(i32 %132)
  store i16 1, ptr %mapped_as_page112.i, align 4
  %133 = ptrtoint ptr %arrayidx68.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %arrayidx68.i, align 4
  %135 = ptrtoint ptr %bv_offset.i.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %bv_offset.i.i.i, align 4
  %add.i.i = add i32 %136, %offset.1299.i
  %call2.i.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev113.i, ptr noundef %134, i32 noundef %add.i.i, i32 noundef %size.1.i, i32 noundef 1, i32 noundef 0) #10
  %dma115.i = getelementptr %struct.ixgb_buffer, ptr %127, i32 %spec.store.select168.i, i32 1
  %137 = ptrtoint ptr %dma115.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 %call2.i.i, ptr %dma115.i, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %dev113.i, i32 noundef %call2.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call2.i.i)
  %cmp.i262.not.i = icmp eq i32 %call2.i.i, -1
  br i1 %cmp.i262.not.i, label %do.end137.loopexit.i, label %if.end121.i

if.end121.i:                                      ; preds = %if.end108.i
  %next_to_watch122.i = getelementptr %struct.ixgb_buffer, ptr %127, i32 %spec.store.select168.i, i32 4
  %138 = ptrtoint ptr %next_to_watch122.i to i32
  call void @__asan_store2_noabort(i32 %138)
  store i16 0, ptr %next_to_watch122.i, align 2
  %sub123.i = sub i32 %len.1298.i, %size.1.i
  %add124.i = add i32 %size.1.i, %offset.1299.i
  %inc125.i = add i32 %count.2300.i, 1
  %tobool71.not.i = icmp eq i32 %sub123.i, 0
  br i1 %tobool71.not.i, label %if.end121.i.for.inc.i_crit_edge, label %if.end121.i.while.body72.i_crit_edge

if.end121.i.while.body72.i_crit_edge:             ; preds = %if.end121.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body72.i

if.end121.i.for.inc.i_crit_edge:                  ; preds = %if.end121.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end121.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %count.2.lcssa.i = phi i32 [ %count.1305.i, %for.body.i.for.inc.i_crit_edge ], [ %inc125.i, %if.end121.i.for.inc.i_crit_edge ]
  %i.3.lcssa.i = phi i32 [ %i.2306.i, %for.body.i.for.inc.i_crit_edge ], [ %spec.store.select168.i, %if.end121.i.for.inc.i_crit_edge ]
  %inc127.i = add nuw nsw i32 %f.0307.i, 1
  %exitcond.not.i = icmp eq i32 %inc127.i, %conv6.i
  br i1 %exitcond.not.i, label %for.inc.i.ixgb_tx_map.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc.i.ixgb_tx_map.exit_crit_edge:             ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ixgb_tx_map.exit

do.end137.loopexit.i:                             ; preds = %if.end108.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx80.le.i = getelementptr %struct.ixgb_buffer, ptr %127, i32 %spec.store.select168.i
  br label %do.end137.i

do.end137.loopexit273.i:                          ; preds = %dma_map_single_attrs.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.le.i = getelementptr %struct.ixgb_buffer, ptr %99, i32 %i.0293.i
  br label %do.end137.i

do.end137.i:                                      ; preds = %do.end137.loopexit273.i, %do.end137.loopexit.i, %dma_map_single_attrs.exit.thread.i
  %buffer_info.4.i = phi ptr [ %arrayidx.le286.i, %dma_map_single_attrs.exit.thread.i ], [ %arrayidx80.le.i, %do.end137.loopexit.i ], [ %arrayidx.le.i, %do.end137.loopexit273.i ]
  %count.3.i = phi i32 [ %count.0292.i, %dma_map_single_attrs.exit.thread.i ], [ %count.2300.i, %do.end137.loopexit.i ], [ %count.0292.i, %do.end137.loopexit273.i ]
  %i.5.i = phi i32 [ %i.0293.i, %dma_map_single_attrs.exit.thread.i ], [ %spec.store.select168.i, %do.end137.loopexit.i ], [ %i.0293.i, %do.end137.loopexit273.i ]
  %dev138.i = getelementptr inbounds %struct.pci_dev, ptr %85, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev138.i, ptr noundef nonnull @.str.17) #13
  %dma139.i = getelementptr inbounds %struct.ixgb_buffer, ptr %buffer_info.4.i, i32 0, i32 1
  %139 = ptrtoint ptr %dma139.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 0, ptr %dma139.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %count.3.i)
  %140 = icmp ult i32 %count.3.i, 2
  br i1 %140, label %do.end137.i.if.else38_crit_edge, label %while.body146.lr.ph.i

do.end137.i.if.else38_crit_edge:                  ; preds = %do.end137.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else38

while.body146.lr.ph.i:                            ; preds = %do.end137.i
  %dec.i = add i32 %count.3.i, -1
  %count150.i = getelementptr i8, ptr %netdev, i32 2956
  %buffer_info154.i = getelementptr i8, ptr %netdev, i32 2968
  br label %while.body146.i

while.body146.i:                                  ; preds = %ixgb_unmap_and_free_tx_resource.exit.i.while.body146.i_crit_edge, %while.body146.lr.ph.i
  %dec144314.in.i = phi i32 [ %dec.i, %while.body146.lr.ph.i ], [ %dec144314.i, %ixgb_unmap_and_free_tx_resource.exit.i.while.body146.i_crit_edge ]
  %i.6313.i = phi i32 [ %i.5.i, %while.body146.lr.ph.i ], [ %dec153.i, %ixgb_unmap_and_free_tx_resource.exit.i.while.body146.i_crit_edge ]
  %dec144314.i = add i32 %dec144314.in.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.6313.i)
  %cmp147.i = icmp eq i32 %i.6313.i, 0
  br i1 %cmp147.i, label %if.then149.i, label %while.body146.i.if.end152.i_crit_edge

while.body146.i.if.end152.i_crit_edge:            ; preds = %while.body146.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end152.i

if.then149.i:                                     ; preds = %while.body146.i
  call void @__sanitizer_cov_trace_pc() #12
  %141 = ptrtoint ptr %count150.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %count150.i, align 4
  br label %if.end152.i

if.end152.i:                                      ; preds = %if.then149.i, %while.body146.i.if.end152.i_crit_edge
  %i.7.i = phi i32 [ %142, %if.then149.i ], [ %i.6313.i, %while.body146.i.if.end152.i_crit_edge ]
  %dec153.i = add i32 %i.7.i, -1
  %143 = ptrtoint ptr %buffer_info154.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %buffer_info154.i, align 4
  %arrayidx155.i = getelementptr %struct.ixgb_buffer, ptr %144, i32 %dec153.i
  %dma.i.i = getelementptr %struct.ixgb_buffer, ptr %144, i32 %dec153.i, i32 1
  %145 = ptrtoint ptr %dma.i.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %dma.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %146)
  %tobool.not.i.i = icmp eq i32 %146, 0
  br i1 %tobool.not.i.i, label %if.end152.i.if.end10.i.i_crit_edge, label %if.then.i264.i

if.end152.i.if.end10.i.i_crit_edge:               ; preds = %if.end152.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10.i.i

if.then.i264.i:                                   ; preds = %if.end152.i
  call void @__sanitizer_cov_trace_pc() #12
  %147 = ptrtoint ptr %pdev2.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %pdev2.i, align 4
  %dev5.i.i = getelementptr inbounds %struct.pci_dev, ptr %148, i32 0, i32 44
  %length7.i.i = getelementptr %struct.ixgb_buffer, ptr %144, i32 %dec153.i, i32 3
  %149 = ptrtoint ptr %length7.i.i to i32
  call void @__asan_load2_noabort(i32 %149)
  %150 = load i16, ptr %length7.i.i, align 4
  %conv8.i.i = zext i16 %150 to i32
  tail call void @dma_unmap_page_attrs(ptr noundef %dev5.i.i, i32 noundef %146, i32 noundef %conv8.i.i, i32 noundef 1, i32 noundef 0) #10
  %151 = ptrtoint ptr %dma.i.i to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 0, ptr %dma.i.i, align 4
  br label %if.end10.i.i

if.end10.i.i:                                     ; preds = %if.then.i264.i, %if.end152.i.if.end10.i.i_crit_edge
  %152 = ptrtoint ptr %arrayidx155.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %arrayidx155.i, align 4
  %tobool11.not.i.i = icmp eq ptr %153, null
  br i1 %tobool11.not.i.i, label %if.end10.i.i.ixgb_unmap_and_free_tx_resource.exit.i_crit_edge, label %if.then12.i.i

if.end10.i.i.ixgb_unmap_and_free_tx_resource.exit.i_crit_edge: ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ixgb_unmap_and_free_tx_resource.exit.i

if.then12.i.i:                                    ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %153, i32 noundef 1) #10
  %154 = ptrtoint ptr %arrayidx155.i to i32
  call void @__asan_store4_noabort(i32 %154)
  store ptr null, ptr %arrayidx155.i, align 4
  br label %ixgb_unmap_and_free_tx_resource.exit.i

ixgb_unmap_and_free_tx_resource.exit.i:           ; preds = %if.then12.i.i, %if.end10.i.i.ixgb_unmap_and_free_tx_resource.exit.i_crit_edge
  %time_stamp.i.i = getelementptr %struct.ixgb_buffer, ptr %144, i32 %dec153.i, i32 2
  %155 = ptrtoint ptr %time_stamp.i.i to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 0, ptr %time_stamp.i.i, align 4
  %tobool145.not.i = icmp eq i32 %dec144314.i, 0
  br i1 %tobool145.not.i, label %ixgb_unmap_and_free_tx_resource.exit.i.if.else38_crit_edge, label %ixgb_unmap_and_free_tx_resource.exit.i.while.body146.i_crit_edge

ixgb_unmap_and_free_tx_resource.exit.i.while.body146.i_crit_edge: ; preds = %ixgb_unmap_and_free_tx_resource.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body146.i

ixgb_unmap_and_free_tx_resource.exit.i.if.else38_crit_edge: ; preds = %ixgb_unmap_and_free_tx_resource.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else38

ixgb_tx_map.exit:                                 ; preds = %for.inc.i.ixgb_tx_map.exit_crit_edge, %for.cond.preheader.i.ixgb_tx_map.exit_crit_edge
  %count.1.lcssa.i = phi i32 [ %count.0.lcssa.i, %for.cond.preheader.i.ixgb_tx_map.exit_crit_edge ], [ %count.2.lcssa.i, %for.inc.i.ixgb_tx_map.exit_crit_edge ]
  %i.2.lcssa.i = phi i32 [ %i.0.lcssa.i, %for.cond.preheader.i.ixgb_tx_map.exit_crit_edge ], [ %i.3.lcssa.i, %for.inc.i.ixgb_tx_map.exit_crit_edge ]
  %buffer_info128.i = getelementptr i8, ptr %netdev, i32 2968
  %156 = ptrtoint ptr %buffer_info128.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %buffer_info128.i, align 4
  %arrayidx129.i = getelementptr %struct.ixgb_buffer, ptr %157, i32 %i.2.lcssa.i
  %158 = ptrtoint ptr %arrayidx129.i to i32
  call void @__asan_store4_noabort(i32 %158)
  store ptr %skb, ptr %arrayidx129.i, align 4
  %conv131.i = trunc i32 %i.2.lcssa.i to i16
  %159 = load ptr, ptr %buffer_info128.i, align 4
  %next_to_watch134.i = getelementptr %struct.ixgb_buffer, ptr %159, i32 %15, i32 4
  %160 = ptrtoint ptr %next_to_watch134.i to i32
  call void @__asan_store2_noabort(i32 %160)
  store i16 %conv131.i, ptr %next_to_watch134.i, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.1.lcssa.i)
  %tobool34.not = icmp eq i32 %count.1.lcssa.i, 0
  br i1 %tobool34.not, label %ixgb_tx_map.exit.if.else38_crit_edge, label %while.body.lr.ph.i94

ixgb_tx_map.exit.if.else38_crit_edge:             ; preds = %ixgb_tx_map.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else38

while.body.lr.ph.i94:                             ; preds = %ixgb_tx_map.exit
  %and.i = and i32 %or30.sink, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %spec.select58.i = select i1 %tobool.not.i, i8 0, i8 3
  %161 = trunc i32 %or30.sink to i8
  %162 = shl nuw nsw i8 %161, 1
  %163 = and i8 %162, 2
  %164 = or i8 %163, %spec.select58.i
  %165 = ptrtoint ptr %next_to_use.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %next_to_use.i, align 4
  %167 = shl nuw nsw i32 %and.i, 24
  %tx_cmd_type.i = getelementptr i8, ptr %netdev, i32 2980
  %168 = ptrtoint ptr %tx_cmd_type.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %tx_cmd_type.i, align 4
  %170 = or i32 %tx_flags.0, %167
  %171 = or i32 %169, %170
  %172 = tail call i16 @llvm.bswap.i16(i16 %vlan_id.0) #10
  %count26.i = getelementptr i8, ptr %netdev, i32 2956
  br label %while.body.i102

while.body.i102:                                  ; preds = %while.body.i102.while.body.i102_crit_edge, %while.body.lr.ph.i94
  %i.061.i = phi i32 [ %166, %while.body.lr.ph.i94 ], [ %spec.store.select.i101, %while.body.i102.while.body.i102_crit_edge ]
  %count.addr.060.i = phi i32 [ %count.1.lcssa.i, %while.body.lr.ph.i94 ], [ %dec.i95, %while.body.i102.while.body.i102_crit_edge ]
  %dec.i95 = add i32 %count.addr.060.i, -1
  %173 = ptrtoint ptr %buffer_info128.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %buffer_info128.i, align 4
  %175 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %tx_ring, align 4
  %arrayidx18.i = getelementptr %struct.ixgb_tx_desc, ptr %176, i32 %i.061.i
  %dma.i96 = getelementptr %struct.ixgb_buffer, ptr %174, i32 %i.061.i, i32 1
  %177 = ptrtoint ptr %dma.i96 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %dma.i96, align 4
  %conv19.i = zext i32 %178 to i64
  %179 = tail call i64 @llvm.bswap.i64(i64 %conv19.i) #10
  %180 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_store8_noabort(i32 %180)
  store i64 %179, ptr %arrayidx18.i, align 8
  %length.i97 = getelementptr %struct.ixgb_buffer, ptr %174, i32 %i.061.i, i32 3
  %181 = ptrtoint ptr %length.i97 to i32
  call void @__asan_load2_noabort(i32 %181)
  %182 = load i16, ptr %length.i97, align 4
  %conv20.i98 = zext i16 %182 to i32
  %or21.i = or i32 %171, %conv20.i98
  %183 = tail call i32 @llvm.bswap.i32(i32 %or21.i) #10
  %cmd_type_len22.i = getelementptr %struct.ixgb_tx_desc, ptr %176, i32 %i.061.i, i32 1
  %184 = ptrtoint ptr %cmd_type_len22.i to i32
  call void @__asan_store4_noabort(i32 %184)
  store i32 %183, ptr %cmd_type_len22.i, align 8
  %status23.i = getelementptr %struct.ixgb_tx_desc, ptr %176, i32 %i.061.i, i32 2
  %185 = ptrtoint ptr %status23.i to i32
  call void @__asan_store1_noabort(i32 %185)
  store i8 0, ptr %status23.i, align 4
  %popts24.i = getelementptr %struct.ixgb_tx_desc, ptr %176, i32 %i.061.i, i32 3
  %186 = ptrtoint ptr %popts24.i to i32
  call void @__asan_store1_noabort(i32 %186)
  store i8 %164, ptr %popts24.i, align 1
  %vlan.i = getelementptr %struct.ixgb_tx_desc, ptr %176, i32 %i.061.i, i32 4
  %187 = ptrtoint ptr %vlan.i to i32
  call void @__asan_store2_noabort(i32 %187)
  store i16 %172, ptr %vlan.i, align 2
  %inc.i99 = add i32 %i.061.i, 1
  %188 = ptrtoint ptr %count26.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %count26.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i99, i32 %189)
  %cmp.i100 = icmp eq i32 %inc.i99, %189
  %spec.store.select.i101 = select i1 %cmp.i100, i32 0, i32 %inc.i99
  %tobool16.not.i = icmp eq i32 %dec.i95, 0
  br i1 %tobool16.not.i, label %ixgb_tx_queue.exit, label %while.body.i102.while.body.i102_crit_edge

while.body.i102.while.body.i102_crit_edge:        ; preds = %while.body.i102
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i102

ixgb_tx_queue.exit:                               ; preds = %while.body.i102
  %190 = ptrtoint ptr %cmd_type_len22.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %cmd_type_len22.i, align 8
  %or31.i = or i32 %191, 9
  store i32 %or31.i, ptr %cmd_type_len22.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !255
  tail call void @arm_heavy_mb() #10
  %192 = ptrtoint ptr %next_to_use.i to i32
  call void @__asan_store4_noabort(i32 %192)
  store i32 %spec.store.select.i101, ptr %next_to_use.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !256
  tail call void @arm_heavy_mb() #10
  %193 = tail call i32 @llvm.bswap.i32(i32 %spec.store.select.i101) #10
  %hw.i = getelementptr i8, ptr %netdev, i32 3296
  %194 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %hw.i, align 32
  %add.ptr.i104 = getelementptr i8, ptr %195, i32 1568
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i104, i32 %193) #10, !srcloc !132
  %196 = ptrtoint ptr %next_to_clean.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %next_to_clean.i, align 4
  %198 = ptrtoint ptr %next_to_use.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %next_to_use.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %197, i32 %199)
  %cmp.i107 = icmp ugt i32 %197, %199
  br i1 %cmp.i107, label %ixgb_tx_queue.exit.cond.end.i114_crit_edge, label %cond.false.i109

ixgb_tx_queue.exit.cond.end.i114_crit_edge:       ; preds = %ixgb_tx_queue.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end.i114

cond.false.i109:                                  ; preds = %ixgb_tx_queue.exit
  call void @__sanitizer_cov_trace_pc() #12
  %200 = ptrtoint ptr %count26.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %count26.i, align 4
  br label %cond.end.i114

cond.end.i114:                                    ; preds = %cond.false.i109, %ixgb_tx_queue.exit.cond.end.i114_crit_edge
  %cond.i110 = phi i32 [ %201, %cond.false.i109 ], [ 0, %ixgb_tx_queue.exit.cond.end.i114_crit_edge ]
  %202 = xor i32 %199, -1
  %add.i111 = add i32 %197, %202
  %sub3.i112 = add i32 %add.i111, %cond.i110
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %sub3.i112)
  %cmp4.i113 = icmp ugt i32 %sub3.i112, 19
  br i1 %cmp4.i113, label %cond.end.i114.cleanup_crit_edge, label %if.end.i116, !prof !167

cond.end.i114.cleanup_crit_edge:                  ; preds = %cond.end.i114
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i116:                                      ; preds = %cond.end.i114
  call void @__sanitizer_cov_trace_pc() #12
  %call.i115 = tail call fastcc i32 @__ixgb_maybe_stop_tx(ptr noundef %netdev) #10
  br label %cleanup

if.else38:                                        ; preds = %ixgb_tx_map.exit.if.else38_crit_edge, %ixgb_unmap_and_free_tx_resource.exit.i.if.else38_crit_edge, %do.end137.i.if.else38_crit_edge
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #10
  %buffer_info = getelementptr i8, ptr %netdev, i32 2968
  %203 = ptrtoint ptr %buffer_info to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %buffer_info, align 8
  %time_stamp = getelementptr %struct.ixgb_buffer, ptr %204, i32 %15, i32 2
  %205 = ptrtoint ptr %time_stamp to i32
  call void @__asan_store4_noabort(i32 %205)
  store i32 0, ptr %time_stamp, align 4
  %206 = ptrtoint ptr %next_to_use.i to i32
  call void @__asan_store4_noabort(i32 %206)
  store i32 %15, ptr %next_to_use.i, align 16
  br label %cleanup

cleanup:                                          ; preds = %if.else38, %if.end.i116, %cond.end.i114.cleanup_crit_edge, %if.then17, %ixgb_maybe_stop_tx.exit.cleanup_crit_edge, %if.then2, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then2 ], [ 0, %if.then17 ], [ 16, %ixgb_maybe_stop_tx.exit.cleanup_crit_edge ], [ 0, %if.else38 ], [ 0, %cond.end.i114.cleanup_crit_edge ], [ 0, %if.end.i116 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ixgb_set_mac(ptr noundef %netdev, ptr noundef %p) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sa_data = getelementptr inbounds %struct.sockaddr, ptr %p, i32 0, i32 1
  %0 = ptrtoint ptr %sa_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sa_data, align 4
  %2 = and i32 %1, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.i.not.i = icmp eq i32 %2, 0
  br i1 %tobool.i.not.i, label %is_valid_ether_addr.exit, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

is_valid_ether_addr.exit:                         ; preds = %entry
  %add.ptr.i.i = getelementptr %struct.sockaddr, ptr %p, i32 0, i32 1, i32 4
  %3 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %add.ptr.i.i, align 2
  %conv.i.i = zext i16 %4 to i32
  %or.i.i = or i32 %1, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i.not = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i.not, label %is_valid_ether_addr.exit.cleanup_crit_edge, label %if.end

is_valid_ether_addr.exit.cleanup_crit_edge:       ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dev_addr_mod(ptr noundef %netdev, i32 noundef 0, ptr noundef %sa_data, i32 noundef 6) #10
  %hw = getelementptr i8, ptr %netdev, i32 3296
  tail call void @ixgb_rar_set(ptr noundef %hw, ptr noundef %sa_data, i32 noundef 0) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %is_valid_ether_addr.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -99, %is_valid_ether_addr.exit.cleanup_crit_edge ], [ -99, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_validate_addr(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ixgb_change_mtu(ptr noundef %netdev, i32 noundef %new_mtu) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %state.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 6
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @ixgb_down(ptr noundef %add.ptr.i, i1 noundef zeroext true)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %add3 = add i32 %new_mtu, 26
  %rx_buffer_len = getelementptr i8, ptr %netdev, i32 2868
  %2 = ptrtoint ptr %rx_buffer_len to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %add3, ptr %rx_buffer_len, align 4
  %mtu = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 20
  %3 = ptrtoint ptr %mtu to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %new_mtu, ptr %mtu, align 4
  %4 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %state.i, align 4
  %and1.i.i15 = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i15)
  %tobool.i16.not = icmp eq i32 %and1.i.i15, 0
  br i1 %tobool.i16.not, label %if.end.if.end7_crit_edge, label %if.then5

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call6 = tail call i32 @ixgb_up(ptr noundef %add.ptr.i)
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.end.if.end7_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ixgb_tx_timeout(ptr noundef %netdev, i32 noundef %txqueue) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_timeout_task = getelementptr i8, ptr %netdev, i32 2880
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %0 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %0, ptr noundef %tx_timeout_task) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ixgb_vlan_rx_add_vid(ptr noundef %netdev, i16 noundef zeroext %proto, i16 noundef zeroext %vid) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i16 %vid to i32
  %0 = lshr i32 %conv, 5
  %and = and i32 %0, 127
  %hw = getelementptr i8, ptr %netdev, i32 3296
  %1 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hw, align 32
  %add.ptr = getelementptr i8, ptr %2, i32 1024
  %shl = shl nuw nsw i32 %and, 2
  %add.ptr1 = getelementptr i8, ptr %add.ptr, i32 %shl
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1) #10, !srcloc !129
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !130
  %and5 = and i32 %conv, 31
  %shl6 = shl nuw i32 1, %and5
  %or = or i32 %4, %shl6
  tail call void @ixgb_write_vfta(ptr noundef %hw, i32 noundef %and, i32 noundef %or) #10
  %active_vlans = getelementptr i8, ptr %netdev, i32 2352
  tail call void @_set_bit(i32 noundef %conv, ptr noundef %active_vlans) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ixgb_vlan_rx_kill_vid(ptr noundef %netdev, i16 noundef zeroext %proto, i16 noundef zeroext %vid) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i16 %vid to i32
  %0 = lshr i32 %conv, 5
  %and = and i32 %0, 127
  %hw = getelementptr i8, ptr %netdev, i32 3296
  %1 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hw, align 32
  %add.ptr = getelementptr i8, ptr %2, i32 1024
  %shl = shl nuw nsw i32 %and, 2
  %add.ptr1 = getelementptr i8, ptr %add.ptr, i32 %shl
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1) #10, !srcloc !129
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !257
  %and5 = and i32 %conv, 31
  %shl6 = shl nuw i32 1, %and5
  %neg = xor i32 %shl6, -1
  %and7 = and i32 %4, %neg
  tail call void @ixgb_write_vfta(ptr noundef %hw, i32 noundef %and, i32 noundef %and7) #10
  %active_vlans = getelementptr i8, ptr %netdev, i32 2352
  tail call void @_clear_bit(i32 noundef %conv, ptr noundef %active_vlans) #10
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i64 @ixgb_fix_features(ptr nocapture noundef readnone %netdev, i64 noundef %features) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i64 %features, 256
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  %and1 = and i64 %features, -129
  %spec.select = select i1 %tobool.not, i64 %and1, i64 %features
  ret i64 %spec.select
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ixgb_set_features(ptr noundef %netdev, i64 noundef %features) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %features1 = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 23
  %0 = ptrtoint ptr %features1 to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %features1, align 16
  %xor = xor i64 %1, %features
  %and = and i64 %xor, 1099511628032
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %rx_csum = getelementptr i8, ptr %netdev, i32 3060
  %and2 = lshr i64 %features, 40
  %2 = trunc i64 %and2 to i8
  %3 = and i8 %2, 1
  %4 = ptrtoint ptr %rx_csum to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %3, ptr %rx_csum, align 4
  %state.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 6
  %5 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.else, label %if.then6

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @ixgb_down(ptr noundef %add.ptr.i, i1 noundef zeroext true)
  %call7 = tail call i32 @ixgb_up(ptr noundef %add.ptr.i)
  tail call void @ixgb_set_speed_duplex(ptr noundef %netdev) #10
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @ixgb_reset(ptr noundef %add.ptr.i)
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then6, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @ixgb_tx_csum(ptr nocapture noundef %adapter, ptr nocapture noundef readonly %skb) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ip_summed = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %0 = ptrtoint ptr %ip_summed to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %ip_summed, align 8
  %1 = and i16 %bf.load, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1536, i16 %1)
  %cmp = icmp eq i16 %1, 1536
  br i1 %cmp, label %if.then, label %entry.cleanup_crit_edge, !prof !167

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then:                                          ; preds = %entry
  %2 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 5
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %2, align 8
  %conv.i = zext i16 %4 to i32
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %5 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data.i.i, align 4
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %7 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %6 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %8 to i32
  %sub.ptr.sub.i.neg.i = sub i32 %conv.i, %sub.ptr.lhs.cast.i.i
  %sub.i = add i32 %sub.ptr.sub.i.neg.i, %sub.ptr.rhs.cast.i.i
  %conv3 = trunc i32 %sub.i to i8
  %csum_offset = getelementptr inbounds %struct.anon.60, ptr %2, i32 0, i32 1
  %9 = ptrtoint ptr %csum_offset to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %csum_offset, align 2
  %conv5 = zext i16 %10 to i32
  %add = add i32 %sub.i, %conv5
  %conv6 = trunc i32 %add to i8
  %tx_ring = getelementptr inbounds %struct.ixgb_adapter, ptr %adapter, i32 0, i32 9
  %next_to_use = getelementptr inbounds %struct.ixgb_adapter, ptr %adapter, i32 0, i32 9, i32 4
  %11 = ptrtoint ptr %next_to_use to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %next_to_use, align 16
  %13 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %tx_ring, align 128
  %arrayidx = getelementptr %struct.ixgb_context_desc, ptr %14, i32 %12
  %buffer_info9 = getelementptr inbounds %struct.ixgb_adapter, ptr %adapter, i32 0, i32 9, i32 6
  %15 = ptrtoint ptr %buffer_info9 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %buffer_info9, align 8
  %dma = getelementptr %struct.ixgb_buffer, ptr %16, i32 %12, i32 1
  %17 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %dma, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp11.not = icmp eq i32 %18, 0
  br i1 %cmp11.not, label %if.then.if.end_crit_edge, label %do.end, !prof !167

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 1261, i32 noundef 9, ptr noundef null) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then.if.end_crit_edge
  %tucss = getelementptr %struct.ixgb_context_desc, ptr %14, i32 %12, i32 3
  %19 = ptrtoint ptr %tucss to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv3, ptr %tucss, align 4
  %tucso = getelementptr %struct.ixgb_context_desc, ptr %14, i32 %12, i32 4
  %20 = ptrtoint ptr %tucso to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv6, ptr %tucso, align 1
  %tucse = getelementptr %struct.ixgb_context_desc, ptr %14, i32 %12, i32 5
  %21 = ptrtoint ptr %tucse to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 0, ptr %tucse, align 2
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %arrayidx, align 4
  %status = getelementptr %struct.ixgb_context_desc, ptr %14, i32 %12, i32 7
  %cmd_type_len = getelementptr %struct.ixgb_context_desc, ptr %14, i32 %12, i32 6
  %23 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %status, align 4
  %24 = ptrtoint ptr %cmd_type_len to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 128, ptr %cmd_type_len, align 4
  %inc = add i32 %12, 1
  %count = getelementptr inbounds %struct.ixgb_adapter, ptr %adapter, i32 0, i32 9, i32 3
  %25 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %26)
  %cmp38 = icmp eq i32 %inc, %26
  %spec.store.select = select i1 %cmp38, i32 0, i32 %inc
  %27 = ptrtoint ptr %next_to_use to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %spec.store.select, ptr %next_to_use, align 16
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i1 %cmp
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__ixgb_maybe_stop_tx(ptr nocapture noundef %netdev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 103
  %0 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %1, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !258
  %next_to_clean = getelementptr i8, ptr %netdev, i32 2964
  %2 = ptrtoint ptr %next_to_clean to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %next_to_clean, align 4
  %next_to_use = getelementptr i8, ptr %netdev, i32 2960
  %4 = ptrtoint ptr %next_to_use to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %next_to_use, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp = icmp ugt i32 %3, %5
  br i1 %cmp, label %entry.cond.end_crit_edge, label %cond.false

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %count = getelementptr i8, ptr %netdev, i32 2956
  %6 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %count, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %cond = phi i32 [ %7, %cond.false ], [ 0, %entry.cond.end_crit_edge ]
  %8 = xor i32 %5, -1
  %add = add i32 %3, %8
  %sub7 = add i32 %add, %cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %sub7)
  %cmp8 = icmp ult i32 %sub7, 20
  br i1 %cmp8, label %cond.end.cleanup_crit_edge, label %if.end, !prof !167

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  %9 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i2 = getelementptr inbounds %struct.netdev_queue, ptr %10, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i2) #10
  %restart_queue = getelementptr i8, ptr %netdev, i32 2972
  %11 = ptrtoint ptr %restart_queue to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %restart_queue, align 4
  %inc = add i32 %12, 1
  store i32 %inc, ptr %restart_queue, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %cond.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -16, %cond.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pskb_expand_head(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_map_single(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ixgb_write_vfta(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ixgb_set_speed_duplex(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ixgb_clean_rx_irq(ptr noundef %adapter, ptr nocapture noundef %work_done, i32 noundef %work_to_do) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_ring1 = getelementptr inbounds %struct.ixgb_adapter, ptr %adapter, i32 0, i32 19
  %netdev2 = getelementptr inbounds %struct.ixgb_adapter, ptr %adapter, i32 0, i32 25
  %0 = ptrtoint ptr %netdev2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netdev2, align 8
  %next_to_clean = getelementptr inbounds %struct.ixgb_adapter, ptr %adapter, i32 0, i32 19, i32 5
  %2 = ptrtoint ptr %next_to_clean to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %next_to_clean, align 4
  %4 = ptrtoint ptr %rx_ring1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rx_ring1, align 4
  %buffer_info4 = getelementptr inbounds %struct.ixgb_adapter, ptr %adapter, i32 0, i32 19, i32 6
  %status21 = getelementptr %struct.ixgb_rx_desc, ptr %5, i32 %3, i32 3
  %6 = ptrtoint ptr %status21 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %status21, align 4
  %8 = and i8 %7, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not22 = icmp eq i8 %8, 0
  br i1 %tobool.not22, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %arrayidx = getelementptr %struct.ixgb_rx_desc, ptr %5, i32 %3
  %9 = ptrtoint ptr %buffer_info4 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %buffer_info4, align 4
  %arrayidx5 = getelementptr %struct.ixgb_buffer, ptr %10, i32 %3
  %pdev3 = getelementptr inbounds %struct.ixgb_adapter, ptr %adapter, i32 0, i32 26
  %11 = ptrtoint ptr %pdev3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pdev3, align 4
  %count = getelementptr inbounds %struct.ixgb_adapter, ptr %adapter, i32 0, i32 19, i32 3
  %dev = getelementptr inbounds %struct.pci_dev, ptr %12, i32 0, i32 44
  %napi = getelementptr inbounds %struct.ixgb_adapter, ptr %adapter, i32 0, i32 24
  %hw_csum_rx_error.i = getelementptr inbounds %struct.ixgb_adapter, ptr %adapter, i32 0, i32 20
  %hw_csum_rx_good.i = getelementptr inbounds %struct.ixgb_adapter, ptr %adapter, i32 0, i32 21
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %status27 = phi ptr [ %status21, %while.body.lr.ph ], [ %status, %cleanup.while.body_crit_edge ]
  %cleaned_count.026 = phi i32 [ 0, %while.body.lr.ph ], [ %cleaned_count.2, %cleanup.while.body_crit_edge ]
  %i.025 = phi i32 [ %3, %while.body.lr.ph ], [ %spec.store.select, %cleanup.while.body_crit_edge ]
  %buffer_info.024 = phi ptr [ %arrayidx5, %while.body.lr.ph ], [ %arrayidx26, %cleanup.while.body_crit_edge ]
  %rx_desc.023 = phi ptr [ %arrayidx, %while.body.lr.ph ], [ %arrayidx17, %cleanup.while.body_crit_edge ]
  %13 = ptrtoint ptr %work_done to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %work_done, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %work_to_do)
  %cmp.not = icmp slt i32 %14, %work_to_do
  br i1 %cmp.not, label %if.end, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

if.end:                                           ; preds = %while.body
  %inc = add nsw i32 %14, 1
  %15 = ptrtoint ptr %work_done to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %inc, ptr %work_done, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !259
  %16 = ptrtoint ptr %status27 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %status27, align 4
  %18 = ptrtoint ptr %buffer_info.024 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %buffer_info.024, align 4
  store ptr null, ptr %buffer_info.024, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %19, i32 0, i32 19
  %20 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %data, align 4
  %add.ptr = getelementptr i8, ptr %21, i32 -2
  tail call void asm sideeffect "pld\09${0:a}", "r"(ptr %add.ptr) #10, !srcloc !260
  %inc11 = add i32 %i.025, 1
  %22 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc11, i32 %23)
  %cmp12 = icmp eq i32 %inc11, %23
  %spec.store.select = select i1 %cmp12, i32 0, i32 %inc11
  %24 = ptrtoint ptr %rx_ring1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %rx_ring1, align 4
  %arrayidx17 = getelementptr %struct.ixgb_rx_desc, ptr %25, i32 %spec.store.select
  tail call void asm sideeffect "pld\09${0:a}", "r"(ptr %arrayidx17) #10, !srcloc !260
  %add = add i32 %spec.store.select, 1
  %26 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %27)
  %cmp19 = icmp eq i32 %add, %27
  %spec.store.select108 = select i1 %cmp19, i32 0, i32 %add
  %28 = ptrtoint ptr %buffer_info4 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %buffer_info4, align 4
  %arrayidx24 = getelementptr %struct.ixgb_buffer, ptr %29, i32 %spec.store.select108
  tail call void asm sideeffect "pld\09${0:a}", "r"(ptr %arrayidx24) #10, !srcloc !260
  %30 = ptrtoint ptr %buffer_info4 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %buffer_info4, align 4
  %arrayidx26 = getelementptr %struct.ixgb_buffer, ptr %31, i32 %spec.store.select
  %inc27 = add nsw i32 %cleaned_count.026, 1
  %dma = getelementptr inbounds %struct.ixgb_buffer, ptr %buffer_info.024, i32 0, i32 1
  %32 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %dma, align 4
  %length28 = getelementptr inbounds %struct.ixgb_buffer, ptr %buffer_info.024, i32 0, i32 3
  %34 = ptrtoint ptr %length28 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %length28, align 4
  %conv29 = zext i16 %35 to i32
  tail call void @dma_unmap_page_attrs(ptr noundef %dev, i32 noundef %33, i32 noundef %conv29, i32 noundef 2, i32 noundef 0) #10
  %36 = ptrtoint ptr %dma to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %dma, align 4
  %length31 = getelementptr inbounds %struct.ixgb_rx_desc, ptr %rx_desc.023, i32 0, i32 1
  %37 = ptrtoint ptr %length31 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %length31, align 8
  %39 = tail call i16 @llvm.bswap.i16(i16 %38)
  %conv32 = zext i16 %39 to i32
  %40 = ptrtoint ptr %length31 to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 0, ptr %length31, align 8
  %conv34 = zext i8 %17 to i32
  %and35 = and i32 %conv34, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  br i1 %tobool36.not, label %do.body, label %if.end50, !prof !168

do.body:                                          ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixgb_clean_rx_irq.__UNIQUE_ID_ddebug524, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixgb_clean_rx_irq, %if.then48)) #10
          to label %do.end [label %if.then48], !srcloc !261

if.then48:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ixgb_clean_rx_irq.__UNIQUE_ID_ddebug524, ptr noundef nonnull @.str.26, i32 noundef %conv32) #10
  br label %do.end

do.end:                                           ; preds = %if.then48, %do.body
  tail call void @__dev_kfree_skb_irq(ptr noundef %19, i32 noundef 1) #10
  br label %rxdesc_done

if.end50:                                         ; preds = %if.end
  %errors = getelementptr inbounds %struct.ixgb_rx_desc, ptr %rx_desc.023, i32 0, i32 4
  %41 = ptrtoint ptr %errors to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %errors, align 1
  %43 = and i8 %42, -117
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool53.not = icmp eq i8 %43, 0
  br i1 %tobool53.not, label %if.end61, label %if.then60, !prof !167

if.then60:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__dev_kfree_skb_irq(ptr noundef %19, i32 noundef 1) #10
  br label %rxdesc_done

if.end61:                                         ; preds = %if.end50
  %44 = load i32, ptr @copybreak, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %44, i32 %conv32)
  %cmp.i = icmp ult i32 %44, %conv32
  br i1 %cmp.i, label %if.end61.ixgb_check_copybreak.exit_crit_edge, label %if.end.i

if.end61.ixgb_check_copybreak.exit_crit_edge:     ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #12
  br label %ixgb_check_copybreak.exit

if.end.i:                                         ; preds = %if.end61
  %call.i.i = tail call ptr @__napi_alloc_skb(ptr noundef %napi, i32 noundef %conv32, i32 noundef 2592) #10
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %if.end.i.ixgb_check_copybreak.exit_crit_edge, label %if.end2.i

if.end.i.ixgb_check_copybreak.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ixgb_check_copybreak.exit

if.end2.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %45 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %data, align 4
  %add.ptr.i = getelementptr i8, ptr %46, i32 -2
  %add.i = add nuw nsw i32 %conv32, 2
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %47 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %48, i32 -2
  %49 = call ptr @memcpy(ptr %add.ptr.i.i, ptr %add.ptr.i, i32 %add.i)
  %50 = ptrtoint ptr %buffer_info.024 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %19, ptr %buffer_info.024, align 4
  br label %ixgb_check_copybreak.exit

ixgb_check_copybreak.exit:                        ; preds = %if.end2.i, %if.end.i.ixgb_check_copybreak.exit_crit_edge, %if.end61.ixgb_check_copybreak.exit_crit_edge
  %skb.0 = phi ptr [ %19, %if.end61.ixgb_check_copybreak.exit_crit_edge ], [ %19, %if.end.i.ixgb_check_copybreak.exit_crit_edge ], [ %call.i.i, %if.end2.i ]
  %call62 = tail call ptr @skb_put(ptr noundef %skb.0, i32 noundef %conv32) #10
  %51 = ptrtoint ptr %status27 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %status27, align 4
  %53 = and i8 %52, 36
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %53)
  %.not.i = icmp eq i8 %53, 32
  br i1 %.not.i, label %if.end.i1, label %ixgb_check_copybreak.exit.ixgb_rx_checksum.exit_crit_edge

ixgb_check_copybreak.exit.ixgb_rx_checksum.exit_crit_edge: ; preds = %ixgb_check_copybreak.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %ixgb_rx_checksum.exit

if.end.i1:                                        ; preds = %ixgb_check_copybreak.exit
  %54 = ptrtoint ptr %errors to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %errors, align 1
  %56 = and i8 %55, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool7.not.i = icmp eq i8 %56, 0
  br i1 %tobool7.not.i, label %if.else.i, label %if.then8.i

if.then8.i:                                       ; preds = %if.end.i1
  call void @__sanitizer_cov_trace_pc() #12
  %57 = ptrtoint ptr %hw_csum_rx_error.i to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %hw_csum_rx_error.i, align 32
  %inc.i = add i64 %58, 1
  store i64 %inc.i, ptr %hw_csum_rx_error.i, align 32
  br label %ixgb_rx_checksum.exit

if.else.i:                                        ; preds = %if.end.i1
  call void @__sanitizer_cov_trace_pc() #12
  %ip_summed.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0, i32 0, i32 15
  %59 = ptrtoint ptr %ip_summed.i to i32
  call void @__asan_load2_noabort(i32 %59)
  %bf.load.i = load i16, ptr %ip_summed.i, align 8
  %bf.clear.i = and i16 %bf.load.i, -1537
  %bf.set.i = or i16 %bf.clear.i, 512
  store i16 %bf.set.i, ptr %ip_summed.i, align 8
  %60 = ptrtoint ptr %hw_csum_rx_good.i to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %hw_csum_rx_good.i, align 8
  %inc9.i = add i64 %61, 1
  store i64 %inc9.i, ptr %hw_csum_rx_good.i, align 8
  br label %ixgb_rx_checksum.exit

ixgb_rx_checksum.exit:                            ; preds = %if.else.i, %if.then8.i, %ixgb_check_copybreak.exit.ixgb_rx_checksum.exit_crit_edge
  %call63 = tail call zeroext i16 @eth_type_trans(ptr noundef %skb.0, ptr noundef %1) #10
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %skb.0, i32 0, i32 15, i32 0, i32 18
  %62 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 %call63, ptr %protocol, align 8
  %and65 = and i32 %conv34, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and65)
  %tobool66.not = icmp eq i32 %and65, 0
  br i1 %tobool66.not, label %ixgb_rx_checksum.exit.if.end68_crit_edge, label %if.then67

ixgb_rx_checksum.exit.if.end68_crit_edge:         ; preds = %ixgb_rx_checksum.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end68

if.then67:                                        ; preds = %ixgb_rx_checksum.exit
  call void @__sanitizer_cov_trace_pc() #12
  %special = getelementptr inbounds %struct.ixgb_rx_desc, ptr %rx_desc.023, i32 0, i32 5
  %63 = ptrtoint ptr %special to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %special, align 2
  %65 = tail call i16 @llvm.bswap.i16(i16 %64)
  %vlan_proto1.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0, i32 0, i32 15, i32 0, i32 9
  %66 = ptrtoint ptr %vlan_proto1.i to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 -32512, ptr %vlan_proto1.i, align 8
  %vlan_tci2.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0, i32 0, i32 15, i32 0, i32 10
  %67 = ptrtoint ptr %vlan_tci2.i to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 %65, ptr %vlan_tci2.i, align 2
  %vlan_present.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0, i32 0, i32 15, i32 0, i32 3
  %68 = ptrtoint ptr %vlan_present.i to i32
  call void @__asan_loadN_noabort(i32 %68, i32 4)
  %bf.load.i2 = load i32, ptr %vlan_present.i, align 2
  %bf.set.i3 = or i32 %bf.load.i2, -2147483648
  store i32 %bf.set.i3, ptr %vlan_present.i, align 2
  br label %if.end68

if.end68:                                         ; preds = %if.then67, %ixgb_rx_checksum.exit.if.end68_crit_edge
  %call69 = tail call i32 @netif_receive_skb(ptr noundef %skb.0) #10
  br label %rxdesc_done

rxdesc_done:                                      ; preds = %if.end68, %if.then60, %do.end
  %69 = ptrtoint ptr %status27 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 0, ptr %status27, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %cleaned_count.026)
  %cmp71 = icmp sgt i32 %cleaned_count.026, 6
  br i1 %cmp71, label %if.then79, label %rxdesc_done.cleanup_crit_edge, !prof !168

rxdesc_done.cleanup_crit_edge:                    ; preds = %rxdesc_done
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then79:                                        ; preds = %rxdesc_done
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @ixgb_alloc_rx_buffers(ptr noundef %adapter, i32 noundef %inc27)
  br label %cleanup

cleanup:                                          ; preds = %if.then79, %rxdesc_done.cleanup_crit_edge
  %cleaned_count.2 = phi i32 [ 0, %if.then79 ], [ %inc27, %rxdesc_done.cleanup_crit_edge ]
  %status = getelementptr %struct.ixgb_rx_desc, ptr %25, i32 %spec.store.select, i32 3
  %70 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %status, align 4
  %72 = and i8 %71, 1
  %tobool.not = icmp eq i8 %72, 0
  br i1 %tobool.not, label %cleanup.while.end_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  %i.0.lcssa = phi i32 [ %3, %entry.while.end_crit_edge ], [ %i.025, %while.body.while.end_crit_edge ], [ %spec.store.select, %cleanup.while.end_crit_edge ]
  %73 = ptrtoint ptr %next_to_clean to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %i.0.lcssa, ptr %next_to_clean, align 4
  %next_to_use = getelementptr inbounds %struct.ixgb_adapter, ptr %adapter, i32 0, i32 19, i32 4
  %74 = ptrtoint ptr %next_to_use to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %next_to_use, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.lcssa, i32 %75)
  %cmp84 = icmp ugt i32 %i.0.lcssa, %75
  br i1 %cmp84, label %while.end.cond.end_crit_edge, label %cond.false

while.end.cond.end_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

cond.false:                                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  %count86 = getelementptr inbounds %struct.ixgb_adapter, ptr %adapter, i32 0, i32 19, i32 3
  %76 = ptrtoint ptr %count86 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %count86, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %while.end.cond.end_crit_edge
  %cond = phi i32 [ %77, %cond.false ], [ 0, %while.end.cond.end_crit_edge ]
  %78 = xor i32 %75, -1
  %add88 = add i32 %i.0.lcssa, %78
  %sub90 = add i32 %add88, %cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub90)
  %tobool91.not = icmp eq i32 %sub90, 0
  br i1 %tobool91.not, label %cond.end.if.end93_crit_edge, label %if.then92

cond.end.if.end93_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end93

if.then92:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @ixgb_alloc_rx_buffers(ptr noundef %adapter, i32 noundef %sub90)
  br label %if.end93

if.end93:                                         ; preds = %if.then92, %cond.end.if.end93_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_complete_done(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @eth_type_trans(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_receive_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__napi_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ixgb_check_for_link(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ixgb_check_for_bad_link(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_on(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ixgb_io_error_detected(ptr noundef %pdev, i32 noundef %state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  tail call void @netif_device_detach(ptr noundef %1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %state)
  %cmp = icmp eq i32 %state, 3
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %state.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.end.if.end4_crit_edge, label %if.then3

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @ixgb_down(ptr noundef %add.ptr.i, i1 noundef zeroext true)
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge
  tail call void @pci_disable_device(ptr noundef %pdev) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 3, %if.end4 ], [ 4, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ixgb_io_slot_reset(ptr noundef %pdev) #2 align 64 {
entry:
  %addr = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %addr) #10
  %2 = call ptr @memset(ptr %addr, i32 255, i32 6)
  %call2 = tail call i32 @pci_enable_device(ptr noundef %pdev) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end6, label %do.body

do.body:                                          ; preds = %entry
  %msg_enable = getelementptr i8, ptr %1, i32 3552
  %3 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %msg_enable, align 32
  %5 = and i16 %4, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool3.not = icmp eq i16 %5, 0
  br i1 %tobool3.not, label %do.body.cleanup_crit_edge, label %if.then4

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %netdev5 = getelementptr i8, ptr %1, i32 3288
  %6 = ptrtoint ptr %netdev5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %netdev5, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %7, ptr noundef nonnull @.str.34) #13
  br label %cleanup

if.end6:                                          ; preds = %entry
  %devfn = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 6
  %8 = ptrtoint ptr %devfn to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %devfn, align 4
  %and7 = and i32 %9, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %cmp.not = icmp eq i32 %and7, 0
  br i1 %cmp.not, label %if.end10, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  tail call void @pci_set_master(ptr noundef %pdev) #10
  tail call void @netif_carrier_off(ptr noundef %1) #10
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 103
  %10 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %11, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #10
  tail call void @ixgb_reset(ptr noundef %add.ptr.i)
  %hw = getelementptr i8, ptr %1, i32 3296
  %call11 = tail call zeroext i1 @ixgb_validate_eeprom_checksum(ptr noundef %hw) #10
  br i1 %call11, label %if.end23, label %do.body13

do.body13:                                        ; preds = %if.end10
  %msg_enable14 = getelementptr i8, ptr %1, i32 3552
  %12 = ptrtoint ptr %msg_enable14 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %msg_enable14, align 32
  %14 = and i16 %13, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %tobool17.not = icmp eq i16 %14, 0
  br i1 %tobool17.not, label %do.body13.cleanup_crit_edge, label %if.then18

do.body13.cleanup_crit_edge:                      ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then18:                                        ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #12
  %netdev19 = getelementptr i8, ptr %1, i32 3288
  %15 = ptrtoint ptr %netdev19 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %netdev19, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %16, ptr noundef nonnull @.str.35) #13
  br label %cleanup

if.end23:                                         ; preds = %if.end10
  call void @ixgb_get_ee_mac_addr(ptr noundef %hw, ptr noundef nonnull %addr) #10
  call void @dev_addr_mod(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %addr, i32 noundef 6) #10
  %perm_addr = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 54
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 86
  %17 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev_addr, align 64
  %addr_len = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 56
  %19 = ptrtoint ptr %addr_len to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %addr_len, align 1
  %conv27 = zext i8 %20 to i32
  %21 = call ptr @memcpy(ptr %perm_addr, ptr %18, i32 %conv27)
  %22 = ptrtoint ptr %perm_addr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %perm_addr, align 4
  %24 = and i32 %23, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.i.not.i = icmp eq i32 %24, 0
  br i1 %tobool.i.not.i, label %is_valid_ether_addr.exit, label %if.end23.do.body32_crit_edge

if.end23.do.body32_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body32

is_valid_ether_addr.exit:                         ; preds = %if.end23
  %add.ptr.i.i = getelementptr %struct.net_device, ptr %1, i32 0, i32 54, i32 4
  %25 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %add.ptr.i.i, align 2
  %conv.i.i = zext i16 %26 to i32
  %or.i.i = or i32 %23, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i.not = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i.not, label %is_valid_ether_addr.exit.do.body32_crit_edge, label %is_valid_ether_addr.exit.cleanup_crit_edge

is_valid_ether_addr.exit.cleanup_crit_edge:       ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

is_valid_ether_addr.exit.do.body32_crit_edge:     ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body32

do.body32:                                        ; preds = %is_valid_ether_addr.exit.do.body32_crit_edge, %if.end23.do.body32_crit_edge
  %msg_enable33 = getelementptr i8, ptr %1, i32 3552
  %27 = ptrtoint ptr %msg_enable33 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %msg_enable33, align 32
  %29 = and i16 %28, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %29)
  %tobool36.not = icmp eq i16 %29, 0
  br i1 %tobool36.not, label %do.body32.cleanup_crit_edge, label %if.then37

do.body32.cleanup_crit_edge:                      ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then37:                                        ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #12
  %netdev38 = getelementptr i8, ptr %1, i32 3288
  %30 = ptrtoint ptr %netdev38 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %netdev38, align 8
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %31, ptr noundef nonnull @.str.36) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then37, %do.body32.cleanup_crit_edge, %is_valid_ether_addr.exit.cleanup_crit_edge, %if.then18, %do.body13.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.then4, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ 4, %if.then4 ], [ 4, %do.body.cleanup_crit_edge ], [ 5, %if.end6.cleanup_crit_edge ], [ 4, %if.then18 ], [ 4, %do.body13.cleanup_crit_edge ], [ 4, %if.then37 ], [ 4, %do.body32.cleanup_crit_edge ], [ 5, %is_valid_ether_addr.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ixgb_io_resume(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  tail call void @pci_set_master(ptr noundef %pdev) #10
  %state.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.if.end6_crit_edge, label %if.then

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

if.then:                                          ; preds = %entry
  %call3 = tail call i32 @ixgb_up(ptr noundef %add.ptr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.then.if.end6_crit_edge, label %do.end

if.then.if.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37) #13
  br label %cleanup

if.end6:                                          ; preds = %if.then.if.end6_crit_edge, %entry.if.end6_crit_edge
  tail call void @netif_device_attach(ptr noundef %1) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %4 = load volatile i32, ptr @jiffies, align 128
  %call7 = tail call i32 @mod_timer(ptr noundef %add.ptr.i, i32 noundef %4) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_detach(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_attach(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ixgb_mc_addr_list_update(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_schedule_prep(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__napi_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 52)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 52)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !11, !13, !14, !16, !17, !19, !21, !23, !25, !27, !28, !30, !31, !33, !35, !36, !37, !38, !39, !41, !42, !44, !46, !48, !50, !52, !54, !56, !57, !58, !59, !61, !63, !65, !66, !68, !69, !71, !73, !75, !77, !78, !79, !80, !81, !82, !84, !85, !86, !88, !90, !91, !92, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !118, !119}
!llvm.module.flags = !{!120, !121, !122, !123, !124, !125, !126, !127}
!llvm.ident = !{!128}

!0 = !{ptr @ixgb_driver_name, !1, !"ixgb_driver_name", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/intel/ixgb/ixgb_main.c", i32 9, i32 6}
!2 = !{ptr @__param_copybreak, !3, !"__param_copybreak", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/intel/ixgb/ixgb_main.c", i32 16, i32 1}
!4 = !{ptr @__UNIQUE_ID_copybreaktype511, !3, !"__UNIQUE_ID_copybreaktype511", i1 false, i1 false}
!5 = !{ptr @__UNIQUE_ID_copybreak512, !6, !"__UNIQUE_ID_copybreak512", i1 false, i1 false}
!6 = !{!"../drivers/net/ethernet/intel/ixgb/ixgb_main.c", i32 17, i32 1}
!7 = !{ptr @__UNIQUE_ID_author513, !8, !"__UNIQUE_ID_author513", i1 false, i1 false}
!8 = !{!"../drivers/net/ethernet/intel/ixgb/ixgb_main.c", i32 100, i32 1}
!9 = !{ptr @__UNIQUE_ID_description514, !10, !"__UNIQUE_ID_description514", i1 false, i1 false}
!10 = !{!"../drivers/net/ethernet/intel/ixgb/ixgb_main.c", i32 101, i32 1}
!11 = !{ptr @__UNIQUE_ID_file515, !12, !"__UNIQUE_ID_file515", i1 false, i1 false}
!12 = !{!"../drivers/net/ethernet/intel/ixgb/ixgb_main.c", i32 102, i32 1}
!13 = !{ptr @__UNIQUE_ID_license516, !12, !"__UNIQUE_ID_license516", i1 false, i1 false}
!14 = !{ptr @__param_debug, !15, !"__param_debug", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/intel/ixgb/ixgb_main.c", i32 106, i32 1}
!16 = !{ptr @__UNIQUE_ID_debugtype517, !15, !"__UNIQUE_ID_debugtype517", i1 false, i1 false}
!17 = !{ptr @__UNIQUE_ID_debug518, !18, !"__UNIQUE_ID_debug518", i1 false, i1 false}
!18 = !{!"../drivers/net/ethernet/intel/ixgb/ixgb_main.c", i32 107, i32 1}
!19 = !{ptr @__initcall__kmod_ixgb__519_125_ixgb_init_module6, !20, !"__initcall__kmod_ixgb__519_125_ixgb_init_module6", i1 false, i1 false}
!20 = !{!"../drivers/net/ethernet/intel/ixgb/ixgb_main.c", i32 125, i32 1}
!21 = !{ptr @__exitcall_ixgb_exit_module, !22, !"__exitcall_ixgb_exit_module", i1 false, i1 false}
!22 = !{!"../drivers/net/ethernet/intel/ixgb/ixgb_main.c", i32 140, i32 1}
!23 = !{ptr @.str, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/net/ethernet/intel/ixgb/ixgb_main.c", i32 209, i32 3}
!25 = !{ptr @.str.1, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/ethernet/intel/ixgb/ixgb_main.c", i32 282, i32 3}
!27 = !{ptr @__param_str_copybreak, !3, !"__param_str_copybreak", i1 false, i1 false}
!28 = !{ptr @copybreak, !29, !"copybreak", i1 false, i1 false}
!29 = !{!"../drivers/net/ethernet/intel/ixgb/ixgb_main.c", i32 15, i32 21}
!30 = !{ptr @__param_str_debug, !15, !"__param_str_debug", i1 false, i1 false}
!31 = !{ptr @debug, !32, !"debug", i1 false, i1 false}
!32 = !{!"../drivers/net/ethernet/intel/ixgb/ixgb_main.c", i32 105, i32 12}
!33 = !{ptr @.str.2, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/net/ethernet/intel/ixgb/ixgb_main.c", i32 119, i32 2}
!35 = !{ptr @.str.3, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.4, !34, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @ixgb_init_module._entry, !34, !"_entry", i1 false, i1 false}
!38 = !{ptr @ixgb_init_module._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @ixgb_init_module._entry.5, !40, !"_entry", i1 false, i1 false}
!40 = !{!"../drivers/net/ethernet/intel/ixgb/ixgb_main.c", i32 120, i32 2}
!41 = !{ptr @ixgb_init_module._entry_ptr.6, !40, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.7, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/ethernet/intel/ixgb/ixgb_main.c", i32 122, i32 9}
!44 = !{ptr @ixgb_driver_string, !45, !"ixgb_driver_string", i1 false, i1 false}
!45 = !{!"../drivers/net/ethernet/intel/ixgb/ixgb_main.c", i32 10, i32 13}
!46 = !{ptr @ixgb_copyright, !47, !"ixgb_copyright", i1 false, i1 false}
!47 = !{!"../drivers/net/ethernet/intel/ixgb/ixgb_main.c", i32 12, i32 19}
!48 = !{ptr @ixgb_driver, !49, !"ixgb_driver", i1 false, i1 false}
!49 = !{!"../drivers/net/ethernet/intel/ixgb/ixgb_main.c", i32 92, i32 26}
!50 = !{ptr @ixgb_pci_tbl, !51, !"ixgb_pci_tbl", i1 false, i1 false}
!51 = !{!"../drivers/net/ethernet/intel/ixgb/ixgb_main.c", i32 28, i32 35}
!52 = !{ptr @ixgb_probe.cards_found, !53, !"cards_found", i1 false, i1 false}
!53 = !{!"../drivers/net/ethernet/intel/ixgb/ixgb_main.c", i32 363, i32 13}
!54 = !{ptr @.str.8, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/ethernet/intel/ixgb/ixgb_main.c", i32 380, i32 4}
!56 = !{ptr @.str.9, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @ixgb_probe._entry, !55, !"_entry", i1 false, i1 false}
!58 = !{ptr @ixgb_probe._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.10, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/net/ethernet/intel/ixgb/ixgb_main.c", i32 459, i32 3}
!61 = !{ptr @.str.11, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/net/ethernet/intel/ixgb/ixgb_main.c", i32 469, i32 3}
!63 = !{ptr @ixgb_probe.__key, !64, !"__key", i1 false, i1 false}
!64 = !{!"../drivers/net/ethernet/intel/ixgb/ixgb_main.c", i32 476, i32 2}
!65 = !{ptr @.str.12, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @ixgb_probe.__key.13, !67, !"__key", i1 false, i1 false}
!67 = !{!"../drivers/net/ethernet/intel/ixgb/ixgb_main.c", i32 478, i32 2}
!68 = !{ptr @.str.14, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @.str.15, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/net/ethernet/intel/ixgb/ixgb_main.c", i32 480, i32 23}
!71 = !{ptr @.str.16, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/net/ethernet/intel/ixgb/ixgb_main.c", i32 488, i32 2}
!73 = !{ptr @ixgb_netdev_ops, !74, !"ixgb_netdev_ops", i1 false, i1 false}
!74 = !{!"../drivers/net/ethernet/intel/ixgb/ixgb_main.c", i32 331, i32 36}
!75 = !{ptr @.str.17, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/net/ethernet/intel/ixgb/ixgb_main.c", i32 1371, i32 2}
!77 = !{ptr @.str.18, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @.str.19, !76, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @.str.20, !76, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @ixgb_tx_map._entry, !76, !"_entry", i1 false, i1 false}
!81 = !{ptr @ixgb_tx_map._entry_ptr, !76, !"_entry_ptr", i1 false, i1 false}
!82 = distinct !{null, !83, !"__already_done", i1 false, i1 false}
!83 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!84 = !{ptr @.str.21, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @.str.22, !83, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @.str.23, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/net/ethernet/intel/ixgb/ixgb_main.c", i32 1842, i32 4}
!88 = !{ptr @.str.24, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/net/ethernet/intel/ixgb/ixgb_main.c", i32 1995, i32 4}
!90 = !{ptr @.str.25, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @ixgb_clean_rx_irq.__UNIQUE_ID_ddebug524, !89, !"__UNIQUE_ID_ddebug524", i1 false, i1 false}
!92 = !{ptr @.str.26, !89, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @.str.27, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/net/ethernet/intel/ixgb/ixgb_main.c", i32 572, i32 3}
!95 = !{ptr @.str.28, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/net/ethernet/intel/ixgb/ixgb_main.c", i32 1134, i32 9}
!97 = !{ptr @.str.29, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/net/ethernet/intel/ixgb/ixgb_main.c", i32 1136, i32 9}
!99 = !{ptr @.str.30, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/net/ethernet/intel/ixgb/ixgb_main.c", i32 1138, i32 10}
!101 = !{ptr @.str.31, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/net/ethernet/intel/ixgb/ixgb_main.c", i32 1140, i32 9}
!103 = !{ptr @.str.32, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/net/ethernet/intel/ixgb/ixgb_main.c", i32 1140, i32 16}
!105 = !{ptr @.str.33, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/net/ethernet/intel/ixgb/ixgb_main.c", i32 1149, i32 24}
!107 = !{ptr @ixgb_err_handler, !108, !"ixgb_err_handler", i1 false, i1 false}
!108 = !{!"../drivers/net/ethernet/intel/ixgb/ixgb_main.c", i32 86, i32 40}
!109 = !{ptr @.str.34, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/net/ethernet/intel/ixgb/ixgb_main.c", i32 2235, i32 3}
!111 = !{ptr @.str.35, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/net/ethernet/intel/ixgb/ixgb_main.c", i32 2252, i32 3}
!113 = !{ptr @.str.36, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/net/ethernet/intel/ixgb/ixgb_main.c", i32 2261, i32 3}
!115 = !{ptr @.str.37, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/net/ethernet/intel/ixgb/ixgb_main.c", i32 2286, i32 4}
!117 = !{ptr @.str.38, !116, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @ixgb_io_resume._entry, !116, !"_entry", i1 false, i1 false}
!119 = !{ptr @ixgb_io_resume._entry_ptr, !116, !"_entry_ptr", i1 false, i1 false}
!120 = !{i32 1, !"wchar_size", i32 2}
!121 = !{i32 1, !"min_enum_size", i32 4}
!122 = !{i32 8, !"branch-target-enforcement", i32 0}
!123 = !{i32 8, !"sign-return-address", i32 0}
!124 = !{i32 8, !"sign-return-address-all", i32 0}
!125 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!126 = !{i32 7, !"uwtable", i32 1}
!127 = !{i32 7, !"frame-pointer", i32 2}
!128 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!129 = !{i64 6451565}
!130 = !{i64 2158283306}
!131 = !{i64 2158187544}
!132 = !{i64 6451147}
!133 = !{i64 2158188153}
!134 = !{i64 2158188694}
!135 = !{i64 2158189202}
!136 = !{i64 2158189698}
!137 = !{i64 2158190236}
!138 = !{i64 2158190833}
!139 = !{i8 0, i8 2}
!140 = !{i64 2158192127}
!141 = !{i64 2158192585}
!142 = !{i64 2158193379}
!143 = !{i64 2158193732}
!144 = !{i64 2158194324}
!145 = !{i64 2158194942}
!146 = !{i64 2158195551}
!147 = !{i64 2158196092}
!148 = !{i64 2158196600}
!149 = !{i64 2158197096}
!150 = !{i64 2158201659}
!151 = !{i64 2158202438}
!152 = !{i64 2158202769}
!153 = !{i64 2158203288}
!154 = !{i64 2158172536}
!155 = !{i64 2158173402}
!156 = !{i64 2158174498}
!157 = !{i64 2158174854}
!158 = !{i64 2158175707}
!159 = !{i64 2158176045}
!160 = !{i64 2158171097}
!161 = !{i64 2158171980}
!162 = !{i64 2158206601}
!163 = !{i64 2158207137}
!164 = !{i64 2158207822}
!165 = !{i64 2158281171}
!166 = !{i64 2158282362}
!167 = !{!"branch_weights", i32 2000, i32 1}
!168 = !{!"branch_weights", i32 1, i32 2000}
!169 = !{i64 2158279665}
!170 = !{i64 2158279989}
!171 = !{i64 2158267623}
!172 = !{i64 2158268078}
!173 = !{i64 2158169827}
!174 = !{i64 2158170707}
!175 = !{i64 2158177294}
!176 = !{i64 2158178147}
!177 = !{i64 2158178485}
!178 = !{i64 2158204065}
!179 = !{i64 2158204591}
!180 = !{i64 2158205287}
!181 = !{i64 2158205813}
!182 = !{i64 2158227077}
!183 = !{i64 2158227712}
!184 = !{i64 2158228347}
!185 = !{i64 2158228982}
!186 = !{i64 2158229617}
!187 = !{i64 2158230252}
!188 = !{i64 2158230887}
!189 = !{i64 2158231522}
!190 = !{i64 2158232155}
!191 = !{i64 2158232788}
!192 = !{i64 2158233423}
!193 = !{i64 2158234058}
!194 = !{i64 2158234693}
!195 = !{i64 2158235328}
!196 = !{i64 2158235963}
!197 = !{i64 2158236598}
!198 = !{i64 2158237233}
!199 = !{i64 2158237868}
!200 = !{i64 2158238503}
!201 = !{i64 2158239138}
!202 = !{i64 2158239771}
!203 = !{i64 2158240404}
!204 = !{i64 2158241037}
!205 = !{i64 2158241668}
!206 = !{i64 2158242299}
!207 = !{i64 2158242932}
!208 = !{i64 2158243571}
!209 = !{i64 2158244204}
!210 = !{i64 2158244837}
!211 = !{i64 2158245468}
!212 = !{i64 2158246101}
!213 = !{i64 2158246734}
!214 = !{i64 2158247369}
!215 = !{i64 2158248004}
!216 = !{i64 2158248639}
!217 = !{i64 2158249274}
!218 = !{i64 2158249909}
!219 = !{i64 2158250544}
!220 = !{i64 2158251179}
!221 = !{i64 2158251814}
!222 = !{i64 2158252449}
!223 = !{i64 2158253084}
!224 = !{i64 2158253719}
!225 = !{i64 2158254354}
!226 = !{i64 2158254989}
!227 = !{i64 2158255624}
!228 = !{i64 2158256257}
!229 = !{i64 2158256890}
!230 = !{i64 2158257519}
!231 = !{i64 2158258156}
!232 = !{i64 2158258791}
!233 = !{i64 2158259428}
!234 = !{i64 2158260061}
!235 = !{i64 2158260692}
!236 = !{i64 2158261323}
!237 = !{i64 2158261956}
!238 = !{i64 2158262589}
!239 = !{i64 2158263224}
!240 = !{i64 2158263859}
!241 = !{i64 2158264496}
!242 = !{i64 2158265133}
!243 = !{i64 2158265772}
!244 = !{i64 2158266411}
!245 = !{i64 2158267042}
!246 = !{i64 2158269677}
!247 = !{i64 2158271225}
!248 = !{i64 2158272341}
!249 = !{i64 2158274565}
!250 = !{i64 2158275196}
!251 = !{i64 2158213532}
!252 = !{i64 7797626, i64 7797667, i64 7797712}
!253 = !{i64 7796524}
!254 = !{!"branch_weights", i32 1, i32 4001}
!255 = !{i64 2158222118}
!256 = !{i64 2158222442}
!257 = !{i64 2158284149}
!258 = !{i64 2158222796}
!259 = !{i64 2158275420}
!260 = !{i64 551448}
!261 = !{i64 2149017757, i64 2149017762, i64 2149017775, i64 2149017819, i64 2149017853, i64 2149017874}
