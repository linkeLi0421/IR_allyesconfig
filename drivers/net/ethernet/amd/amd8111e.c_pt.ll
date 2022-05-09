; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/amd/amd8111e.c_pt.bc'
source_filename = "../drivers/net/ethernet/amd/amd8111e.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kparam_array = type { i32, i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.97 }
%union.anon.97 = type { ptr }
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
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.121, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.121 = type { ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.103, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.120, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.103 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.120 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.amd8111e_rx_dr = type { i32, i16, i16, i16, i16, i32 }
%struct.sk_buff = type { %union.anon.43, %union.anon.46, %union.anon.47, [48 x i8], %union.anon.48, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.50, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.43 = type { %struct.anon.44 }
%struct.anon.44 = type { ptr, ptr, %union.anon.45 }
%union.anon.45 = type { ptr }
%union.anon.46 = type { ptr }
%union.anon.47 = type { i64 }
%union.anon.48 = type { %struct.anon.49 }
%struct.anon.49 = type { i32, ptr }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.52, i32, i32, i32, i16, i16, %union.anon.54, i32, %union.anon.55, %union.anon.56, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.52 = type { i32 }
%union.anon.54 = type { i32 }
%union.anon.55 = type { i32 }
%union.anon.56 = type { i16 }
%struct.page = type { i32, %union.anon.2, %union.anon.96, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.96 = type { %struct.atomic_t }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.amd8111e_tx_dr = type { i16, i16, i16, i16, i32, i32 }
%struct.amd8111e_priv = type { ptr, ptr, i32, i32, ptr, ptr, ptr, [32 x ptr], [32 x ptr], [32 x i32], [32 x i32], ptr, %struct.napi_struct, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.amd8111e_link_config, i32, ptr, i32, %struct.mii_if_info, i8, i32, %struct.amd8111e_coalesce_conf, %struct.ipg_info }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.amd8111e_link_config = type { i32, i16, i8, i8, i8 }
%struct.mii_if_info = type { i32, i32, i32, i32, i8, ptr, ptr, ptr }
%struct.amd8111e_coalesce_conf = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ipg_info = type { i32, i32, i32, i32, i32, i32, i32, %struct.timer_list }
%struct.netdev_hw_addr = type { %struct.list_head, %struct.rb_node, [32 x i8], i8, i8, i32, i32, i32, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.ifreq = type { %union.anon.104, %union.anon.105 }
%union.anon.104 = type { [16 x i8] }
%union.anon.105 = type { %struct.ifmap }
%struct.ifmap = type { i32, i32, i16, i8, i8, i8 }
%struct.mii_ioctl_data = type { i16, i16, i16, i16 }
%struct.ethtool_drvinfo = type { i32, [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8], [12 x i8], i32, i32, i32, i32, i32 }
%struct.ethtool_regs = type { i32, i32, i32, [0 x i8] }
%struct.ethtool_wolinfo = type { i32, i32, i32, [6 x i8] }

@__UNIQUE_ID_author343 = internal constant [45 x i8] c"amd8111e.author=Advanced Micro Devices, Inc.\00", section ".modinfo", align 1
@__UNIQUE_ID_description344 = internal constant [63 x i8] c"amd8111e.description=AMD8111 based 10/100 Ethernet Controller.\00", section ".modinfo", align 1
@__UNIQUE_ID_file345 = internal constant [48 x i8] c"amd8111e.file=drivers/net/ethernet/amd/amd8111e\00", section ".modinfo", align 1
@__UNIQUE_ID_license346 = internal constant [21 x i8] c"amd8111e.license=GPL\00", section ".modinfo", align 1
@__param_str_speed_duplex = internal constant [22 x i8] c"amd8111e.speed_duplex\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_speed_duplex = internal constant %struct.kparam_array { i32 8, i32 4, ptr null, ptr @param_ops_int, ptr @speed_duplex }, align 4
@__param_speed_duplex = internal constant %struct.kernel_param { ptr @__param_str_speed_duplex, ptr null, ptr @param_array_ops, i16 0, i8 -1, i8 0, %union.anon.97 { ptr @__param_arr_speed_duplex } }, section "__param", align 4
@__UNIQUE_ID_speed_duplextype347 = internal constant [44 x i8] c"amd8111e.parmtype=speed_duplex:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_speed_duplex348 = internal constant [174 x i8] c"amd8111e.parm=speed_duplex:Set device speed and duplex modes, 0: Auto Negotiate, 1: 10Mbps Half Duplex, 2: 10Mbps Full Duplex, 3: 100Mbps Half Duplex, 4: 100Mbps Full Duplex\00", section ".modinfo", align 1
@__param_str_coalesce = internal constant [18 x i8] c"amd8111e.coalesce\00", align 1
@__param_arr_coalesce = internal constant %struct.kparam_array { i32 8, i32 1, ptr null, ptr @param_ops_bool, ptr @coalesce }, align 4
@__param_coalesce = internal constant %struct.kernel_param { ptr @__param_str_coalesce, ptr null, ptr @param_array_ops, i16 0, i8 -1, i8 0, %union.anon.97 { ptr @__param_arr_coalesce } }, section "__param", align 4
@__UNIQUE_ID_coalescetype349 = internal constant [41 x i8] c"amd8111e.parmtype=coalesce:array of bool\00", section ".modinfo", align 1
@__UNIQUE_ID_coalesce350 = internal constant [85 x i8] c"amd8111e.parm=coalesce:Enable or Disable interrupt coalescing, 1: Enable, 0: Disable\00", section ".modinfo", align 1
@__param_str_dynamic_ipg = internal constant [21 x i8] c"amd8111e.dynamic_ipg\00", align 1
@__param_arr_dynamic_ipg = internal constant %struct.kparam_array { i32 8, i32 1, ptr null, ptr @param_ops_bool, ptr @dynamic_ipg }, align 4
@__param_dynamic_ipg = internal constant %struct.kernel_param { ptr @__param_str_dynamic_ipg, ptr null, ptr @param_array_ops, i16 0, i8 -1, i8 0, %union.anon.97 { ptr @__param_arr_dynamic_ipg } }, section "__param", align 4
@__UNIQUE_ID_dynamic_ipgtype351 = internal constant [44 x i8] c"amd8111e.parmtype=dynamic_ipg:array of bool\00", section ".modinfo", align 1
@__UNIQUE_ID_dynamic_ipg352 = internal constant [79 x i8] c"amd8111e.parm=dynamic_ipg:Enable or Disable dynamic IPG, 1: Enable, 0: Disable\00", section ".modinfo", align 1
@__initcall__kmod_amd8111e__354_1923_amd8111e_driver_init6 = internal global ptr @amd8111e_driver_init, section ".initcall6.init", align 4
@amd8111e_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @amd8111e_pci_tbl, ptr @amd8111e_probe_one, ptr @amd8111e_remove_one, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @amd8111e_pm_ops, ptr null, ptr null }, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_amd8111e_driver_exit = internal global ptr @amd8111e_driver_exit, section ".exitcall.exit", align 4
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@speed_duplex = internal global { [8 x i32], [32 x i8] } zeroinitializer, align 32
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@coalesce = internal global { [8 x i8], [24 x i8] } { [8 x i8] c"\01\01\01\01\01\01\01\01", [24 x i8] zeroinitializer }, align 32
@dynamic_ipg = internal global { [8 x i8], [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"amd8111e\00", [23 x i8] zeroinitializer }, align 32
@amd8111e_pci_tbl = internal constant { [2 x %struct.pci_device_id], [32 x i8] } { [2 x %struct.pci_device_id] [%struct.pci_device_id { i32 4130, i32 29794, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@amd8111e_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @amd8111e_suspend, ptr @amd8111e_resume, ptr @amd8111e_suspend, ptr @amd8111e_resume, ptr @amd8111e_suspend, ptr @amd8111e_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@amd8111e_probe_one._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1750, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Cannot enable new PCI device\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"amd8111e_probe_one\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/net/ethernet/amd/amd8111e.c\00", [60 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@amd8111e_probe_one._entry_ptr = internal global ptr @amd8111e_probe_one._entry, section ".printk_index", align 4
@amd8111e_probe_one._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 1755, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Cannot find PCI base address\0A\00", [34 x i8] zeroinitializer }, align 32
@amd8111e_probe_one._entry_ptr.8 = internal global ptr @amd8111e_probe_one._entry.6, section ".printk_index", align 4
@amd8111e_probe_one._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 1762, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Cannot obtain PCI resources\0A\00", [35 x i8] zeroinitializer }, align 32
@amd8111e_probe_one._entry_ptr.11 = internal global ptr @amd8111e_probe_one._entry.9, section ".printk_index", align 4
@amd8111e_probe_one._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 1770, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"No Power Management capability\0A\00", [32 x i8] zeroinitializer }, align 32
@amd8111e_probe_one._entry_ptr.14 = internal global ptr @amd8111e_probe_one._entry.12, section ".printk_index", align 4
@amd8111e_probe_one._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.2, ptr @.str.3, i32 1777, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"DMA not supported\0A\00", [45 x i8] zeroinitializer }, align 32
@amd8111e_probe_one._entry_ptr.17 = internal global ptr @amd8111e_probe_one._entry.15, section ".printk_index", align 4
@amd8111e_probe_one.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.18 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&lp->lock\00", [22 x i8] zeroinitializer }, align 32
@amd8111e_probe_one._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.2, ptr @.str.3, i32 1806, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Cannot map device registers\0A\00", [35 x i8] zeroinitializer }, align 32
@amd8111e_probe_one._entry_ptr.21 = internal global ptr @amd8111e_probe_one._entry.19, section ".printk_index", align 4
@card_idx = internal global { i32, [28 x i8] } zeroinitializer, align 32
@amd8111e_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @amd8111e_open, ptr @amd8111e_close, ptr @amd8111e_start_xmit, ptr null, ptr null, ptr null, ptr @amd8111e_set_multicast_list, ptr @amd8111e_set_mac_address, ptr @eth_validate_addr, ptr null, ptr @amd8111e_ioctl, ptr null, ptr null, ptr null, ptr null, ptr @amd8111e_change_mtu, ptr null, ptr @amd8111e_tx_timeout, ptr null, ptr null, ptr null, ptr @amd8111e_get_stats, ptr null, ptr null, ptr @amd8111e_poll, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@ops = internal constant { %struct.ethtool_ops, [68 x i8] } { %struct.ethtool_ops { i8 0, i32 0, i32 0, ptr @amd8111e_get_drvinfo, ptr @amd8111e_get_regs_len, ptr @amd8111e_get_regs, ptr @amd8111e_get_wol, ptr @amd8111e_set_wol, ptr null, ptr null, ptr @amd8111e_nway_reset, ptr @amd8111e_get_link, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @amd8111e_get_link_ksettings, ptr @amd8111e_set_link_ksettings, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [68 x i8] zeroinitializer }, align 32
@amd8111e_probe_one._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.2, ptr @.str.3, i32 1851, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Cannot register net device\0A\00", [36 x i8] zeroinitializer }, align 32
@amd8111e_probe_one._entry_ptr.24 = internal global ptr @amd8111e_probe_one._entry.22, section ".printk_index", align 4
@amd8111e_probe_one.__key.25 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.26 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"(&lp->ipg_data.ipg_timer)\00", [38 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@chip_version = internal global { i32, [28 x i8] } zeroinitializer, align 32
@amd8111e_probe_one._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.2, ptr @.str.3, i32 1869, ptr @.str.29, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"[ Rev %x ] PCI 10/100BaseT Ethernet %pM\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@amd8111e_probe_one._entry_ptr.30 = internal global ptr @amd8111e_probe_one._entry.27, section ".printk_index", align 4
@amd8111e_probe_one._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.2, ptr @.str.3, i32 1872, ptr @.str.29, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Found MII PHY ID 0x%08x at address 0x%02x\0A\00", [53 x i8] zeroinitializer }, align 32
@amd8111e_probe_one._entry_ptr.33 = internal global ptr @amd8111e_probe_one._entry.31, section ".printk_index", align 4
@amd8111e_probe_one._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.2, ptr @.str.3, i32 1874, ptr @.str.29, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Couldn't detect MII PHY, assuming address 0x01\0A\00", [48 x i8] zeroinitializer }, align 32
@amd8111e_probe_one._entry_ptr.36 = internal global ptr @amd8111e_probe_one._entry.34, section ".printk_index", align 4
@.str.37 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Dynamic IPG Enabled\0A\00", [43 x i8] zeroinitializer }, align 32
@amd8111e_interrupt.__UNIQUE_ID_ddebug353 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.38, ptr @.str.3, ptr @.str.39, i8 1, i8 23, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"amd8111e_interrupt\00", [45 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"************Driver bug! interrupt while in poll\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Link is Up. Speed is %s Mbps %s Duplex\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"100\00", [28 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"10\00", [29 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Full\00", [27 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Half\00", [27 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Link is Down.\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Interrupt Coalescing Enabled.\0A\00", [33 x i8] zeroinitializer }, align 32
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.47 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.49 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"transmit timed out, resetting\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%u\00", [29 x i8] zeroinitializer }, align 32
@switch.table.amd8111e_restart = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 32, i32 64, i32 128, i32 256], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 35143, i64 35144, i64 35145]
@__sancov_gen_cov_switch_values.51 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@___asan_gen_.52 = private unnamed_addr constant [16 x i8] c"amd8111e_driver\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 1915, i32 26 }
@___asan_gen_.55 = private unnamed_addr constant [13 x i8] c"speed_duplex\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 796, i32 12 }
@___asan_gen_.58 = private unnamed_addr constant [9 x i8] c"coalesce\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 797, i32 13 }
@___asan_gen_.61 = private unnamed_addr constant [12 x i8] c"dynamic_ipg\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 798, i32 13 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 1923, i32 1 }
@___asan_gen_.67 = private unnamed_addr constant [17 x i8] c"amd8111e_pci_tbl\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 1902, i32 35 }
@___asan_gen_.70 = private unnamed_addr constant [16 x i8] c"amd8111e_pm_ops\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 1913, i32 8 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 1750, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 1755, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 1762, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 1770, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 1777, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 1802, i32 2 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 1806, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant [9 x i8] c"card_idx\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 795, i32 12 }
@___asan_gen_.130 = private unnamed_addr constant [20 x i8] c"amd8111e_netdev_ops\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 1723, i32 36 }
@___asan_gen_.133 = private unnamed_addr constant [4 x i8] c"ops\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 1444, i32 33 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 1851, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 1859, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant [13 x i8] c"chip_version\00", align 1
@___asan_gen_.149 = private unnamed_addr constant [39 x i8] c"../drivers/net/ethernet/amd/amd8111e.h\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 799, i32 21 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 1868, i32 2 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 1871, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 1874, i32 3 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 1216, i32 20 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 1117, i32 4 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 817, i32 20 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 819, i32 8 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 819, i32 16 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 821, i32 8 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 821, i32 17 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 828, i32 20 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 485, i32 20 }
@___asan_gen_.206 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 326, i32 6 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 1575, i32 18 }
@___asan_gen_.211 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.212 = private constant [39 x i8] c"../drivers/net/ethernet/amd/amd8111e.c\00", align 1
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 1369, i32 3 }
@___asan_gen_.214 = private unnamed_addr constant [30 x i8] c"switch.table.amd8111e_restart\00", align 1
@llvm.compiler.used = appending global [81 x ptr] [ptr @__UNIQUE_ID_author343, ptr @__UNIQUE_ID_coalesce350, ptr @__UNIQUE_ID_coalescetype349, ptr @__UNIQUE_ID_description344, ptr @__UNIQUE_ID_dynamic_ipg352, ptr @__UNIQUE_ID_dynamic_ipgtype351, ptr @__UNIQUE_ID_file345, ptr @__UNIQUE_ID_license346, ptr @__UNIQUE_ID_speed_duplex348, ptr @__UNIQUE_ID_speed_duplextype347, ptr @__exitcall_amd8111e_driver_exit, ptr @__initcall__kmod_amd8111e__354_1923_amd8111e_driver_init6, ptr @__param_coalesce, ptr @__param_dynamic_ipg, ptr @__param_speed_duplex, ptr @amd8111e_driver_exit, ptr @amd8111e_probe_one._entry, ptr @amd8111e_probe_one._entry.12, ptr @amd8111e_probe_one._entry.15, ptr @amd8111e_probe_one._entry.19, ptr @amd8111e_probe_one._entry.22, ptr @amd8111e_probe_one._entry.27, ptr @amd8111e_probe_one._entry.31, ptr @amd8111e_probe_one._entry.34, ptr @amd8111e_probe_one._entry.6, ptr @amd8111e_probe_one._entry.9, ptr @amd8111e_probe_one._entry_ptr, ptr @amd8111e_probe_one._entry_ptr.11, ptr @amd8111e_probe_one._entry_ptr.14, ptr @amd8111e_probe_one._entry_ptr.17, ptr @amd8111e_probe_one._entry_ptr.21, ptr @amd8111e_probe_one._entry_ptr.24, ptr @amd8111e_probe_one._entry_ptr.30, ptr @amd8111e_probe_one._entry_ptr.33, ptr @amd8111e_probe_one._entry_ptr.36, ptr @amd8111e_probe_one._entry_ptr.8, ptr @amd8111e_driver, ptr @speed_duplex, ptr @coalesce, ptr @dynamic_ipg, ptr @.str, ptr @amd8111e_pci_tbl, ptr @amd8111e_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @amd8111e_probe_one.__key, ptr @.str.18, ptr @.str.20, ptr @card_idx, ptr @amd8111e_netdev_ops, ptr @ops, ptr @.str.23, ptr @amd8111e_probe_one.__key.25, ptr @.str.26, ptr @chip_version, ptr @.str.28, ptr @.str.29, ptr @.str.32, ptr @.str.35, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @switch.table.amd8111e_restart], section "llvm.metadata"
@0 = internal global [55 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amd8111e_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @speed_duplex to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coalesce to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dynamic_ipg to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amd8111e_pci_tbl to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amd8111e_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amd8111e_probe_one._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amd8111e_probe_one._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amd8111e_probe_one._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amd8111e_probe_one._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amd8111e_probe_one._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amd8111e_probe_one.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amd8111e_probe_one._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @card_idx to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amd8111e_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ops to i32), i32 284, i32 352, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amd8111e_probe_one._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amd8111e_probe_one.__key.25 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chip_version to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amd8111e_probe_one._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amd8111e_probe_one._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amd8111e_probe_one._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.amd8111e_restart to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @amd8111e_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @amd8111e_driver, ptr noundef null, ptr noundef nonnull @.str) #12
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @amd8111e_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @pci_unregister_driver(ptr noundef nonnull @amd8111e_driver) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amd8111e_probe_one(ptr noundef %pdev, ptr nocapture noundef readnone %ent) #2 align 64 {
entry:
  %addr = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %addr) #12
  %0 = getelementptr inbounds [6 x i8], ptr %addr, i32 0, i32 1
  %1 = getelementptr inbounds [6 x i8], ptr %addr, i32 0, i32 2
  %2 = getelementptr inbounds [6 x i8], ptr %addr, i32 0, i32 3
  %3 = getelementptr inbounds [6 x i8], ptr %addr, i32 0, i32 4
  %4 = getelementptr inbounds [6 x i8], ptr %addr, i32 0, i32 5
  %5 = call ptr @memset(ptr %addr, i32 255, i32 6)
  %call = tail call i32 @pci_enable_device(ptr noundef %pdev) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %resource = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 47
  %flags = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 0, i32 3
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags, align 4
  %and = and i32 %7, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %do.end6, label %if.end8

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %dev7 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev7, ptr noundef nonnull @.str.7) #15
  br label %err_disable_pdev

if.end8:                                          ; preds = %if.end
  %call9 = tail call i32 @pci_request_regions(ptr noundef %pdev, ptr noundef nonnull @.str) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end16, label %do.end14

do.end14:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  %dev15 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev15, ptr noundef nonnull @.str.10) #15
  br label %err_disable_pdev

if.end16:                                         ; preds = %if.end8
  tail call void @pci_set_master(ptr noundef %pdev) #12
  %pm_cap = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 32
  %8 = ptrtoint ptr %pm_cap to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %pm_cap, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool17.not = icmp eq i8 %9, 0
  %dev22 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  br i1 %tobool17.not, label %do.end21, label %if.end23

do.end21:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev22, ptr noundef nonnull @.str.13) #15
  br label %err_free_reg

if.end23:                                         ; preds = %if.end16
  %call25 = tail call i32 @dma_set_mask(ptr noundef %dev22, i64 noundef 4294967295) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %cmp = icmp slt i32 %call25, 0
  br i1 %cmp, label %do.end29, label %if.end31

do.end29:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev22, ptr noundef nonnull @.str.16) #15
  br label %err_free_reg

if.end31:                                         ; preds = %if.end23
  %10 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %resource, align 8
  %end = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 0, i32 1
  %12 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %end, align 4
  %call43 = tail call ptr @alloc_etherdev_mqs(i32 noundef 1048, i32 noundef 1, i32 noundef 1) #12
  %tobool44.not = icmp eq ptr %call43, null
  br i1 %tobool44.not, label %if.end31.err_free_reg_crit_edge, label %if.end46

if.end31.err_free_reg_crit_edge:                  ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_free_reg

if.end46:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp36 = icmp eq i32 %13, 0
  %sub = sub i32 1, %11
  %add = add i32 %sub, %13
  %cond = select i1 %cmp36, i32 0, i32 %add
  %parent = getelementptr inbounds %struct.net_device, ptr %call43, i32 0, i32 133, i32 1
  %14 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %dev22, ptr %parent, align 8
  %features = getelementptr inbounds %struct.net_device, ptr %call43, i32 0, i32 23
  %15 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %features, align 16
  %or = or i64 %16, 384
  store i64 %or, ptr %features, align 16
  %pci_dev = getelementptr i8, ptr %call43, i32 2324
  %17 = ptrtoint ptr %pci_dev to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %pdev, ptr %pci_dev, align 4
  %amd8111e_net_dev = getelementptr i8, ptr %call43, i32 2328
  %18 = ptrtoint ptr %amd8111e_net_dev to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call43, ptr %amd8111e_net_dev, align 8
  %19 = ptrtoint ptr %pm_cap to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %pm_cap, align 1
  %conv = zext i8 %20 to i32
  %pm_cap51 = getelementptr i8, ptr %call43, i32 3168
  %21 = ptrtoint ptr %pm_cap51 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %conv, ptr %pm_cap51, align 8
  %lock = getelementptr i8, ptr %call43, i32 3072
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.18, ptr noundef nonnull @amd8111e_probe_one.__key, i16 noundef signext 3) #12
  %call57 = tail call ptr @devm_ioremap(ptr noundef %dev22, i32 noundef %11, i32 noundef %cond) #12
  %mmio = getelementptr i8, ptr %call43, i32 2844
  %22 = ptrtoint ptr %mmio to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call57, ptr %mmio, align 4
  %tobool59.not = icmp eq ptr %call57, null
  br i1 %tobool59.not, label %do.end63, label %for.body.preheader

for.body.preheader:                               ; preds = %if.end46
  %23 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %mmio, align 4
  %add.ptr = getelementptr i8, ptr %24, i32 352
  %25 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #12, !srcloc !140
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !141
  %26 = ptrtoint ptr %addr to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %25, ptr %addr, align 1
  %27 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %mmio, align 4
  %add.ptr69.1 = getelementptr i8, ptr %28, i32 353
  %29 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr69.1) #12, !srcloc !140
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !141
  %30 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %29, ptr %0, align 1
  %31 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %mmio, align 4
  %add.ptr69.2 = getelementptr i8, ptr %32, i32 354
  %33 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr69.2) #12, !srcloc !140
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !141
  %34 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %33, ptr %1, align 1
  %35 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %mmio, align 4
  %add.ptr69.3 = getelementptr i8, ptr %36, i32 355
  %37 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr69.3) #12, !srcloc !140
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !141
  %38 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %37, ptr %2, align 1
  %39 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %mmio, align 4
  %add.ptr69.4 = getelementptr i8, ptr %40, i32 356
  %41 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr69.4) #12, !srcloc !140
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !141
  %42 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %41, ptr %3, align 1
  %43 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %mmio, align 4
  %add.ptr69.5 = getelementptr i8, ptr %44, i32 357
  %45 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr69.5) #12, !srcloc !140
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !141
  %46 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %45, ptr %4, align 1
  call void @dev_addr_mod(ptr noundef nonnull %call43, i32 noundef 0, ptr noundef nonnull %addr, i32 noundef 6) #12
  %47 = load i32, ptr @card_idx, align 4
  %arrayidx73 = getelementptr [8 x i32], ptr @speed_duplex, i32 0, i32 %47
  %48 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx73, align 4
  %ext_phy_option = getelementptr i8, ptr %call43, i32 3144
  %50 = ptrtoint ptr %ext_phy_option to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %ext_phy_option, align 8
  %arrayidx74 = getelementptr [8 x i8], ptr @coalesce, i32 0, i32 %47
  %51 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx74, align 1, !range !142
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool75.not = icmp eq i8 %52, 0
  br i1 %tobool75.not, label %for.body.preheader.if.end78_crit_edge, label %if.then76

for.body.preheader.if.end78_crit_edge:            ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end78

do.end63:                                         ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev22, ptr noundef nonnull @.str.20) #15
  br label %err_free_dev

if.then76:                                        ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #14
  %options = getelementptr i8, ptr %call43, i32 3140
  %53 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %options, align 4
  %or77 = or i32 %54, 64
  store i32 %or77, ptr %options, align 4
  br label %if.end78

if.end78:                                         ; preds = %if.then76, %for.body.preheader.if.end78_crit_edge
  %inc79 = add i32 %47, 1
  store i32 %inc79, ptr @card_idx, align 4
  %arrayidx80 = getelementptr [8 x i8], ptr @dynamic_ipg, i32 0, i32 %47
  %55 = ptrtoint ptr %arrayidx80 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %arrayidx80, align 1, !range !142
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool81.not = icmp eq i8 %56, 0
  br i1 %tobool81.not, label %if.end78.if.end85_crit_edge, label %if.then82

if.end78.if.end85_crit_edge:                      ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end85

if.then82:                                        ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #14
  %options83 = getelementptr i8, ptr %call43, i32 3140
  %57 = ptrtoint ptr %options83 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %options83, align 4
  %or84 = or i32 %58, 128
  store i32 %or84, ptr %options83, align 4
  br label %if.end85

if.end85:                                         ; preds = %if.then82, %if.end78.if.end85_crit_edge
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %call43, i32 0, i32 16
  %59 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr @amd8111e_netdev_ops, ptr %netdev_ops, align 8
  %ethtool_ops = getelementptr inbounds %struct.net_device, ptr %call43, i32 0, i32 44
  %60 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr @ops, ptr %ethtool_ops, align 16
  %irq = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 46
  %61 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %irq, align 4
  %irq86 = getelementptr inbounds %struct.net_device, ptr %call43, i32 0, i32 64
  %63 = ptrtoint ptr %irq86 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %62, ptr %irq86, align 4
  %watchdog_timeo = getelementptr inbounds %struct.net_device, ptr %call43, i32 0, i32 115
  %64 = ptrtoint ptr %watchdog_timeo to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 300, ptr %watchdog_timeo, align 4
  %min_mtu = getelementptr inbounds %struct.net_device, ptr %call43, i32 0, i32 30
  %65 = ptrtoint ptr %min_mtu to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 60, ptr %min_mtu, align 8
  %max_mtu = getelementptr inbounds %struct.net_device, ptr %call43, i32 0, i32 31
  %66 = ptrtoint ptr %max_mtu to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 9000, ptr %max_mtu, align 4
  %napi = getelementptr i8, ptr %call43, i32 2848
  call void @netif_napi_add(ptr noundef nonnull %call43, ptr noundef %napi, ptr noundef nonnull @amd8111e_rx_poll, i32 noundef 32) #12
  %67 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %67)
  %68 = load i64, ptr %features, align 16
  %or88 = or i64 %68, 384
  store i64 %or88, ptr %features, align 16
  br label %for.body.i

for.body.i:                                       ; preds = %cleanup.i.for.body.i_crit_edge, %if.end85
  %i.048.i = phi i32 [ 30, %if.end85 ], [ %dec.i, %cleanup.i.for.body.i_crit_edge ]
  %69 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %mmio, align 4
  %add.ptr.i21.i = getelementptr i8, ptr %70, i32 208
  %71 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i21.i) #12, !srcloc !143
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !144
  %.mask.i.i = and i32 %71, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask.i.i)
  %tobool.not38.i.i = icmp eq i32 %.mask.i.i, 0
  br i1 %tobool.not38.i.i, label %for.body.i.do.body.i.i_crit_edge, label %for.body.i.while.body.i.i_crit_edge

for.body.i.while.body.i.i_crit_edge:              ; preds = %for.body.i
  br label %while.body.i.i

for.body.i.do.body.i.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %for.body.i.while.body.i.i_crit_edge
  %72 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i21.i) #12, !srcloc !143
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !145
  %.mask39.i.i = and i32 %72, 128
  %tobool.not.i.i = icmp eq i32 %.mask39.i.i, 0
  br i1 %tobool.not.i.i, label %while.body.i.i.do.body.i.i_crit_edge, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i.i

while.body.i.i.do.body.i.i_crit_edge:             ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %while.body.i.i.do.body.i.i_crit_edge, %for.body.i.do.body.i.i_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !146
  call void @arm_heavy_mb() #12
  %and9.i.i = shl i32 %i.048.i, 21
  %shl.i.i = and i32 %and9.i.i, 65011712
  %or12.i.i = or i32 %shl.i.i, 537001984
  %73 = call i32 @llvm.bswap.i32(i32 %or12.i.i) #12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i21.i, i32 %73) #12, !srcloc !147
  br label %do.body14.i.i

do.body14.i.i:                                    ; preds = %do.body14.i.i.do.body14.i.i_crit_edge, %do.body.i.i
  %repeat.0.i.i = phi i32 [ 10, %do.body.i.i ], [ %dec.i.i, %do.body14.i.i.do.body14.i.i_crit_edge ]
  %74 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i21.i) #12, !srcloc !143
  %75 = call i32 @llvm.bswap.i32(i32 %74) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !148
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %76 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %76(i32 noundef 6442440) #12
  %dec.i.i = add nsw i32 %repeat.0.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i)
  %tobool22.not.i.i = icmp eq i32 %dec.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %75)
  %tobool24.not.i.i = icmp sgt i32 %75, -1
  %or.cond.i.i = select i1 %tobool22.not.i.i, i1 true, i1 %tobool24.not.i.i
  br i1 %or.cond.i.i, label %amd8111e_read_phy.exit.i, label %do.body14.i.i.do.body14.i.i_crit_edge

do.body14.i.i.do.body14.i.i_crit_edge:            ; preds = %do.body14.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body14.i.i

amd8111e_read_phy.exit.i:                         ; preds = %do.body14.i.i
  %and26.i.i = and i32 %75, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26.i.i)
  %tobool27.not.i.i = icmp eq i32 %and26.i.i, 0
  br i1 %tobool27.not.i.i, label %if.end.i, label %amd8111e_read_phy.exit.i.cleanup.i_crit_edge

amd8111e_read_phy.exit.i.cleanup.i_crit_edge:     ; preds = %amd8111e_read_phy.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.i

if.end.i:                                         ; preds = %amd8111e_read_phy.exit.i
  %77 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %mmio, align 4
  %add.ptr.i23.i = getelementptr i8, ptr %78, i32 208
  %79 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i23.i) #12, !srcloc !143
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !144
  %.mask.i24.i = and i32 %79, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask.i24.i)
  %tobool.not38.i25.i = icmp eq i32 %.mask.i24.i, 0
  br i1 %tobool.not38.i25.i, label %if.end.i.do.body.i33.i_crit_edge, label %if.end.i.while.body.i28.i_crit_edge

if.end.i.while.body.i28.i_crit_edge:              ; preds = %if.end.i
  br label %while.body.i28.i

if.end.i.do.body.i33.i_crit_edge:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i33.i

while.body.i28.i:                                 ; preds = %while.body.i28.i.while.body.i28.i_crit_edge, %if.end.i.while.body.i28.i_crit_edge
  %80 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i23.i) #12, !srcloc !143
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !145
  %.mask39.i26.i = and i32 %80, 128
  %tobool.not.i27.i = icmp eq i32 %.mask39.i26.i, 0
  br i1 %tobool.not.i27.i, label %while.body.i28.i.do.body.i33.i_crit_edge, label %while.body.i28.i.while.body.i28.i_crit_edge

while.body.i28.i.while.body.i28.i_crit_edge:      ; preds = %while.body.i28.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i28.i

while.body.i28.i.do.body.i33.i_crit_edge:         ; preds = %while.body.i28.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i33.i

do.body.i33.i:                                    ; preds = %while.body.i28.i.do.body.i33.i_crit_edge, %if.end.i.do.body.i33.i_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !146
  call void @arm_heavy_mb() #12
  %or12.i32.i = or i32 %shl.i.i, 537067520
  %81 = call i32 @llvm.bswap.i32(i32 %or12.i32.i) #12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i23.i, i32 %81) #12, !srcloc !147
  br label %do.body14.i39.i

do.body14.i39.i:                                  ; preds = %do.body14.i39.i.do.body14.i39.i_crit_edge, %do.body.i33.i
  %repeat.0.i34.i = phi i32 [ 10, %do.body.i33.i ], [ %dec.i35.i, %do.body14.i39.i.do.body14.i39.i_crit_edge ]
  %82 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i23.i) #12, !srcloc !143
  %83 = call i32 @llvm.bswap.i32(i32 %82) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !148
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %84 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %84(i32 noundef 6442440) #12
  %dec.i35.i = add nsw i32 %repeat.0.i34.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i35.i)
  %tobool22.not.i36.i = icmp eq i32 %dec.i35.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %83)
  %tobool24.not.i37.i = icmp sgt i32 %83, -1
  %or.cond.i38.i = select i1 %tobool22.not.i36.i, i1 true, i1 %tobool24.not.i37.i
  br i1 %or.cond.i38.i, label %amd8111e_read_phy.exit45.i, label %do.body14.i39.i.do.body14.i39.i_crit_edge

do.body14.i39.i.do.body14.i39.i_crit_edge:        ; preds = %do.body14.i39.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body14.i39.i

amd8111e_read_phy.exit45.i:                       ; preds = %do.body14.i39.i
  %and26.i40.i = and i32 %83, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26.i40.i)
  %tobool27.not.i41.i = icmp eq i32 %and26.i40.i, 0
  br i1 %tobool27.not.i41.i, label %if.end5.i, label %amd8111e_read_phy.exit45.i.cleanup.i_crit_edge

amd8111e_read_phy.exit45.i.cleanup.i_crit_edge:   ; preds = %amd8111e_read_phy.exit45.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.i

if.end5.i:                                        ; preds = %amd8111e_read_phy.exit45.i
  call void @__sanitizer_cov_trace_pc() #14
  %and28.i42.i = and i32 %83, 65535
  %.op.i = shl i32 %75, 16
  %or.i = or i32 %and28.i42.i, %.op.i
  br label %amd8111e_probe_ext_phy.exit

cleanup.i:                                        ; preds = %amd8111e_read_phy.exit45.i.cleanup.i_crit_edge, %amd8111e_read_phy.exit.i.cleanup.i_crit_edge
  %dec.i = add nsw i32 %i.048.i, -1
  %cmp.i.not = icmp eq i32 %i.048.i, 0
  br i1 %cmp.i.not, label %cleanup.i.amd8111e_probe_ext_phy.exit_crit_edge, label %cleanup.i.for.body.i_crit_edge

cleanup.i.for.body.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

cleanup.i.amd8111e_probe_ext_phy.exit_crit_edge:  ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %amd8111e_probe_ext_phy.exit

amd8111e_probe_ext_phy.exit:                      ; preds = %cleanup.i.amd8111e_probe_ext_phy.exit_crit_edge, %if.end5.i
  %or.sink.i = phi i32 [ %or.i, %if.end5.i ], [ 0, %cleanup.i.amd8111e_probe_ext_phy.exit_crit_edge ]
  %i.048.lcssa.sink.i = phi i32 [ %i.048.i, %if.end5.i ], [ 1, %cleanup.i.amd8111e_probe_ext_phy.exit_crit_edge ]
  %ext_phy_id.i = getelementptr i8, ptr %call43, i32 3152
  %85 = ptrtoint ptr %ext_phy_id.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %or.sink.i, ptr %ext_phy_id.i, align 8
  %ext_phy_addr.i = getelementptr i8, ptr %call43, i32 3148
  %86 = ptrtoint ptr %ext_phy_addr.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %i.048.lcssa.sink.i, ptr %ext_phy_addr.i, align 4
  %mii_if = getelementptr i8, ptr %call43, i32 3180
  %dev89 = getelementptr i8, ptr %call43, i32 3200
  %87 = ptrtoint ptr %dev89 to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %call43, ptr %dev89, align 4
  %mdio_read = getelementptr i8, ptr %call43, i32 3204
  %88 = ptrtoint ptr %mdio_read to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr @amd8111e_mdio_read, ptr %mdio_read, align 4
  %mdio_write = getelementptr i8, ptr %call43, i32 3208
  %89 = ptrtoint ptr %mdio_write to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr @amd8111e_mdio_write, ptr %mdio_write, align 4
  %90 = ptrtoint ptr %mii_if to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %i.048.lcssa.sink.i, ptr %mii_if, align 4
  %mtu1.i = getelementptr inbounds %struct.net_device, ptr %call43, i32 0, i32 20
  %91 = ptrtoint ptr %mtu1.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %mtu1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1500, i32 %92)
  %cmp.i224 = icmp ugt i32 %92, 1500
  br i1 %cmp.i224, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %amd8111e_probe_ext_phy.exit
  call void @__sanitizer_cov_trace_pc() #14
  %add2.i = add i32 %92, 24
  %rx_buff_len.i = getelementptr i8, ptr %call43, i32 3136
  %93 = ptrtoint ptr %rx_buff_len.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %add2.i, ptr %rx_buff_len.i, align 8
  %options.i = getelementptr i8, ptr %call43, i32 3140
  %94 = ptrtoint ptr %options.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %options.i, align 4
  %or.i225 = or i32 %95, 2
  store i32 %or.i225, ptr %options.i, align 4
  br label %amd8111e_set_rx_buff_len.exit

if.else.i:                                        ; preds = %amd8111e_probe_ext_phy.exit
  call void @__sanitizer_cov_trace_pc() #14
  %rx_buff_len3.i = getelementptr i8, ptr %call43, i32 3136
  %96 = ptrtoint ptr %rx_buff_len3.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 1536, ptr %rx_buff_len3.i, align 8
  %options4.i = getelementptr i8, ptr %call43, i32 3140
  %97 = ptrtoint ptr %options4.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %options4.i, align 4
  %and.i = and i32 %98, -3
  store i32 %and.i, ptr %options4.i, align 4
  br label %amd8111e_set_rx_buff_len.exit

amd8111e_set_rx_buff_len.exit:                    ; preds = %if.else.i, %if.then.i
  %call93 = call i32 @register_netdev(ptr noundef nonnull %call43) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call93)
  %tobool94.not = icmp eq i32 %call93, 0
  br i1 %tobool94.not, label %if.end100, label %do.end98

do.end98:                                         ; preds = %amd8111e_set_rx_buff_len.exit
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev22, ptr noundef nonnull @.str.23) #15
  br label %err_free_dev

if.end100:                                        ; preds = %amd8111e_set_rx_buff_len.exit
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %99 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %call43, ptr %driver_data.i.i, align 4
  %options101 = getelementptr i8, ptr %call43, i32 3140
  %100 = ptrtoint ptr %options101 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %options101, align 4
  %and102 = and i32 %101, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and102)
  %tobool103.not = icmp eq i32 %and102, 0
  br i1 %tobool103.not, label %if.end100.if.end113_crit_edge, label %do.body105

if.end100.if.end113_crit_edge:                    ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end113

do.body105:                                       ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #14
  %ipg_data = getelementptr i8, ptr %call43, i32 3276
  %ipg_timer = getelementptr i8, ptr %call43, i32 3304
  call void @init_timer_key(ptr noundef %ipg_timer, ptr noundef nonnull @amd8111e_config_ipg, i32 noundef 0, ptr noundef nonnull @.str.26, ptr noundef nonnull @amd8111e_probe_one.__key.25) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %102 = load volatile i32, ptr @jiffies, align 128
  %add108 = add i32 %102, 50
  %expires = getelementptr i8, ptr %call43, i32 3312
  %103 = ptrtoint ptr %expires to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %add108, ptr %expires, align 4
  %ipg = getelementptr i8, ptr %call43, i32 3280
  %104 = ptrtoint ptr %ipg to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 96, ptr %ipg, align 4
  %105 = ptrtoint ptr %ipg_data to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 1, ptr %ipg_data, align 4
  br label %if.end113

if.end113:                                        ; preds = %do.body105, %if.end100.if.end113_crit_edge
  %106 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %mmio, align 4
  %add.ptr117 = getelementptr i8, ptr %107, i32 4
  %108 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr117) #12, !srcloc !143
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !149
  %109 = lshr i32 %108, 4
  %shr = and i32 %109, 15
  store i32 %shr, ptr @chip_version, align 4
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %call43, i32 0, i32 86
  %110 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %dev_addr, align 64
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev22, ptr noundef nonnull @.str.28, i32 noundef %shr, ptr noundef %111) #15
  %112 = ptrtoint ptr %ext_phy_id.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %ext_phy_id.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %113)
  %tobool126.not = icmp eq i32 %113, 0
  br i1 %tobool126.not, label %do.end136, label %do.end130

do.end130:                                        ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #14
  %114 = ptrtoint ptr %ext_phy_addr.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %ext_phy_addr.i, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev22, ptr noundef nonnull @.str.32, i32 noundef %113, i32 noundef %115) #15
  br label %cleanup

do.end136:                                        ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev22, ptr noundef nonnull @.str.35) #15
  br label %cleanup

err_free_dev:                                     ; preds = %do.end98, %do.end63
  %err.0 = phi i32 [ %call93, %do.end98 ], [ -12, %do.end63 ]
  call void @free_netdev(ptr noundef nonnull %call43) #12
  br label %err_free_reg

err_free_reg:                                     ; preds = %err_free_dev, %if.end31.err_free_reg_crit_edge, %do.end29, %do.end21
  %err.1 = phi i32 [ -19, %do.end29 ], [ %err.0, %err_free_dev ], [ -19, %do.end21 ], [ -12, %if.end31.err_free_reg_crit_edge ]
  call void @pci_release_regions(ptr noundef %pdev) #12
  br label %err_disable_pdev

err_disable_pdev:                                 ; preds = %err_free_reg, %do.end14, %do.end6
  %err.2 = phi i32 [ %call9, %do.end14 ], [ %err.1, %err_free_reg ], [ -19, %do.end6 ]
  call void @pci_disable_device(ptr noundef %pdev) #12
  br label %cleanup

cleanup:                                          ; preds = %err_disable_pdev, %do.end136, %do.end130, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %err.2, %err_disable_pdev ], [ 0, %do.end136 ], [ 0, %do.end130 ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @amd8111e_remove_one(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @unregister_netdev(ptr noundef nonnull %1) #12
  tail call void @free_netdev(ptr noundef nonnull %1) #12
  tail call void @pci_release_regions(ptr noundef %pdev) #12
  tail call void @pci_disable_device(ptr noundef %pdev) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_request_regions(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_etherdev_mqs(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_napi_add(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amd8111e_rx_poll(ptr noundef %napi, i32 noundef %budget) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %amd8111e_net_dev = getelementptr i8, ptr %napi, i32 -520
  %0 = ptrtoint ptr %amd8111e_net_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %amd8111e_net_dev, align 8
  %rx_idx = getelementptr i8, ptr %napi, i32 268
  %mmio1 = getelementptr i8, ptr %napi, i32 -4
  %2 = ptrtoint ptr %mmio1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmio1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %budget)
  %cmp203 = icmp sgt i32 %budget, 0
  br i1 %cmp203, label %while.body.lr.ph, label %entry.if.end130_crit_edge

entry.if.end130_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end130

while.body.lr.ph:                                 ; preds = %entry
  %4 = ptrtoint ptr %rx_idx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rx_idx, align 4
  %rx_ring = getelementptr i8, ptr %napi, i32 -540
  %rx_buff_len = getelementptr i8, ptr %napi, i32 288
  %rx_skbuff = getelementptr i8, ptr %napi, i32 -388
  %pci_dev = getelementptr i8, ptr %napi, i32 -524
  %rx_dma_addr = getelementptr i8, ptr %napi, i32 -132
  %rx_packets = getelementptr i8, ptr %napi, i32 380
  %rx_bytes = getelementptr i8, ptr %napi, i32 388
  %drv_rx_errors55 = getelementptr i8, ptr %napi, i32 368
  br label %while.body

while.body:                                       ; preds = %err_next_pkt.while.body_crit_edge, %while.body.lr.ph
  %rx_index.0205.in = phi i32 [ %5, %while.body.lr.ph ], [ %inc102, %err_next_pkt.while.body_crit_edge ]
  %num_rx_pkt.0204 = phi i32 [ 0, %while.body.lr.ph ], [ %num_rx_pkt.1, %err_next_pkt.while.body_crit_edge ]
  %rx_index.0205 = and i32 %rx_index.0205.in, 31
  %6 = ptrtoint ptr %rx_ring to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rx_ring, align 4
  %rx_flags = getelementptr %struct.amd8111e_rx_dr, ptr %7, i32 %rx_index.0205, i32 4
  %8 = ptrtoint ptr %rx_flags to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %rx_flags, align 2
  %10 = tail call i16 @llvm.bswap.i16(i16 %9)
  %conv = zext i16 %10 to i32
  %and2 = and i32 %conv, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool.not = icmp eq i32 %and2, 0
  br i1 %tobool.not, label %if.end, label %land.lhs.true106.critedge

if.end:                                           ; preds = %while.body
  %and3 = and i32 %conv, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %if.end12, label %if.then5

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %11 = ptrtoint ptr %rx_flags to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 0, ptr %rx_flags, align 2
  br label %err_next_pkt

if.end12:                                         ; preds = %if.end
  %12 = and i32 %conv, 768
  call void @__sanitizer_cov_trace_const_cmp4(i32 768, i32 %12)
  %.not = icmp eq i32 %12, 768
  br i1 %.not, label %if.end24, label %if.then17

if.then17:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  %13 = ptrtoint ptr %rx_flags to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 0, ptr %rx_flags, align 2
  br label %err_next_pkt

if.end24:                                         ; preds = %if.end12
  %msg_count = getelementptr %struct.amd8111e_rx_dr, ptr %7, i32 %rx_index.0205, i32 1
  %14 = ptrtoint ptr %msg_count to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %msg_count, align 4
  %16 = tail call i16 @llvm.bswap.i16(i16 %15)
  %sub = add i16 %16, -4
  %and29 = and i16 %10, 12
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and29)
  %cmp32.not = icmp eq i16 %and29, 0
  %. = select i1 %cmp32.not, i32 60, i32 56
  %conv36 = sext i16 %sub to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %., i32 %conv36)
  %cmp37 = icmp sgt i32 %., %conv36
  br i1 %cmp37, label %if.then39, label %if.end46

if.then39:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #14
  %17 = ptrtoint ptr %rx_flags to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 0, ptr %rx_flags, align 2
  %18 = ptrtoint ptr %drv_rx_errors55 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %drv_rx_errors55, align 8
  %inc = add i32 %19, 1
  store i32 %inc, ptr %drv_rx_errors55, align 8
  br label %err_next_pkt

if.end46:                                         ; preds = %if.end24
  %20 = ptrtoint ptr %rx_buff_len to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %rx_buff_len, align 8
  %call.i = tail call ptr @__netdev_alloc_skb(ptr noundef %1, i32 noundef %21, i32 noundef 2592) #12
  %tobool47.not = icmp eq ptr %call.i, null
  br i1 %tobool47.not, label %if.then48, label %if.end57

if.then48:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #14
  %22 = ptrtoint ptr %rx_ring to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %rx_ring, align 4
  %rx_flags51 = getelementptr %struct.amd8111e_rx_dr, ptr %23, i32 %rx_index.0205, i32 4
  %24 = ptrtoint ptr %rx_flags51 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 0, ptr %rx_flags51, align 2
  %25 = ptrtoint ptr %drv_rx_errors55 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %drv_rx_errors55, align 8
  %inc56 = add i32 %26, 1
  store i32 %inc56, ptr %drv_rx_errors55, align 8
  br label %err_next_pkt

if.end57:                                         ; preds = %if.end46
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %27 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %28, i32 2
  store ptr %add.ptr.i, ptr %data.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 16
  %29 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %tail.i, align 8
  %add.ptr1.i = getelementptr i8, ptr %30, i32 2
  store ptr %add.ptr1.i, ptr %tail.i, align 8
  %arrayidx58 = getelementptr [32 x ptr], ptr %rx_skbuff, i32 0, i32 %rx_index.0205
  %31 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx58, align 4
  %33 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pci_dev, align 4
  %dev59 = getelementptr inbounds %struct.pci_dev, ptr %34, i32 0, i32 44
  %arrayidx60 = getelementptr [32 x i32], ptr %rx_dma_addr, i32 0, i32 %rx_index.0205
  %35 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx60, align 4
  %37 = ptrtoint ptr %rx_buff_len to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %rx_buff_len, align 8
  %sub62 = add i32 %38, -2
  tail call void @dma_unmap_page_attrs(ptr noundef %dev59, i32 noundef %36, i32 noundef %sub62, i32 noundef 2, i32 noundef 0) #12
  %call64 = tail call ptr @skb_put(ptr noundef %32, i32 noundef %conv36) #12
  %39 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call.i, ptr %arrayidx58, align 4
  %40 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %pci_dev, align 4
  %dev68 = getelementptr inbounds %struct.pci_dev, ptr %41, i32 0, i32 44
  %42 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %data.i, align 4
  %44 = ptrtoint ptr %rx_buff_len to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %rx_buff_len, align 8
  %call.i198 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %43) #12
  br i1 %call.i198, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %if.end57
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit_crit_edge, label %if.then.i, !prof !150

land.rhs.i.dma_map_single_attrs.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dma_map_single_attrs.exit

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %dev68) #12
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %41, i32 0, i32 44, i32 3
  %46 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %47, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %48 = ptrtoint ptr %dev68 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev68, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %49, %if.end.i.i ], [ %47, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.47, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.48, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #12
  br label %dma_map_single_attrs.exit

if.end39.i:                                       ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #14
  %sub70 = add i32 %45, -2
  tail call void @debug_dma_map_single(ptr noundef %dev68, ptr noundef %43, i32 noundef %sub70) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %50 = load ptr, ptr @mem_map, align 4
  %51 = ptrtoint ptr %43 to i32
  %sub.i = add i32 %51, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i199 = getelementptr %struct.page, ptr %50, i32 %shr.i
  %and.i = and i32 %51, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev68, ptr noundef %add.ptr.i199, i32 noundef %and.i, i32 noundef %sub70, i32 noundef 2, i32 noundef 0) #12
  br label %dma_map_single_attrs.exit

dma_map_single_attrs.exit:                        ; preds = %if.end39.i, %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit_crit_edge
  %retval.0.i = phi i32 [ %call41.i, %if.end39.i ], [ -1, %dev_name.exit.i ], [ -1, %land.rhs.i.dma_map_single_attrs.exit_crit_edge ]
  %52 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %retval.0.i, ptr %arrayidx60, align 4
  %call74 = tail call zeroext i16 @eth_type_trans(ptr noundef %32, ptr noundef %1) #12
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %32, i32 0, i32 15, i32 0, i32 18
  %53 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 %call74, ptr %protocol, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 12, i16 %and29)
  %cmp76 = icmp eq i16 %and29, 12
  br i1 %cmp76, label %if.then78, label %dma_map_single_attrs.exit.if.end81_crit_edge

dma_map_single_attrs.exit.if.end81_crit_edge:     ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end81

if.then78:                                        ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #14
  %54 = ptrtoint ptr %rx_ring to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %rx_ring, align 4
  %tag_ctrl_info = getelementptr %struct.amd8111e_rx_dr, ptr %55, i32 %rx_index.0205, i32 2
  %56 = ptrtoint ptr %tag_ctrl_info to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %tag_ctrl_info, align 2
  %58 = tail call i16 @llvm.bswap.i16(i16 %57)
  %vlan_proto1.i = getelementptr inbounds %struct.sk_buff, ptr %32, i32 0, i32 15, i32 0, i32 9
  %59 = ptrtoint ptr %vlan_proto1.i to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 -32512, ptr %vlan_proto1.i, align 8
  %vlan_tci2.i = getelementptr inbounds %struct.sk_buff, ptr %32, i32 0, i32 15, i32 0, i32 10
  %60 = ptrtoint ptr %vlan_tci2.i to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 %58, ptr %vlan_tci2.i, align 2
  %vlan_present.i = getelementptr inbounds %struct.sk_buff, ptr %32, i32 0, i32 15, i32 0, i32 3
  %61 = ptrtoint ptr %vlan_present.i to i32
  call void @__asan_loadN_noabort(i32 %61, i32 4)
  %bf.load.i = load i32, ptr %vlan_present.i, align 2
  %bf.set.i = or i32 %bf.load.i, -2147483648
  store i32 %bf.set.i, ptr %vlan_present.i, align 2
  br label %if.end81

if.end81:                                         ; preds = %if.then78, %dma_map_single_attrs.exit.if.end81_crit_edge
  %call82 = tail call i32 @napi_gro_receive(ptr noundef %napi, ptr noundef %32) #12
  %62 = ptrtoint ptr %rx_packets to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %rx_packets, align 4
  %inc83 = add i32 %63, 1
  store i32 %inc83, ptr %rx_packets, align 4
  %64 = ptrtoint ptr %rx_bytes to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %rx_bytes, align 4
  %add = add i32 %65, %conv36
  store i32 %add, ptr %rx_bytes, align 4
  %inc86 = add nsw i32 %num_rx_pkt.0204, 1
  br label %err_next_pkt

err_next_pkt:                                     ; preds = %if.end81, %if.then48, %if.then39, %if.then17, %if.then5
  %num_rx_pkt.1 = phi i32 [ %num_rx_pkt.0204, %if.then5 ], [ %num_rx_pkt.0204, %if.then39 ], [ %inc86, %if.end81 ], [ %num_rx_pkt.0204, %if.then48 ], [ %num_rx_pkt.0204, %if.then17 ]
  %arrayidx88 = getelementptr [32 x i32], ptr %rx_dma_addr, i32 0, i32 %rx_index.0205
  %66 = ptrtoint ptr %arrayidx88 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %arrayidx88, align 4
  %68 = tail call i32 @llvm.bswap.i32(i32 %67)
  %69 = ptrtoint ptr %rx_ring to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %rx_ring, align 4
  %buff_phy_addr = getelementptr %struct.amd8111e_rx_dr, ptr %70, i32 %rx_index.0205, i32 5
  %71 = ptrtoint ptr %buff_phy_addr to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %68, ptr %buff_phy_addr, align 4
  %72 = ptrtoint ptr %rx_buff_len to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %rx_buff_len, align 8
  %74 = trunc i32 %73 to i16
  %conv93 = add i16 %74, -2
  %75 = tail call i16 @llvm.bswap.i16(i16 %conv93)
  %76 = ptrtoint ptr %rx_ring to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %rx_ring, align 4
  %buff_count = getelementptr %struct.amd8111e_rx_dr, ptr %77, i32 %rx_index.0205, i32 3
  %78 = ptrtoint ptr %buff_count to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 %75, ptr %buff_count, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !151
  tail call void @arm_heavy_mb() #12
  %79 = ptrtoint ptr %rx_ring to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %rx_ring, align 4
  %rx_flags98 = getelementptr %struct.amd8111e_rx_dr, ptr %80, i32 %rx_index.0205, i32 4
  %81 = ptrtoint ptr %rx_flags98 to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %rx_flags98, align 2
  %83 = or i16 %82, 128
  store i16 %83, ptr %rx_flags98, align 2
  %84 = ptrtoint ptr %rx_idx to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %rx_idx, align 4
  %inc102 = add i32 %85, 1
  store i32 %inc102, ptr %rx_idx, align 4
  %cmp = icmp slt i32 %num_rx_pkt.1, %budget
  br i1 %cmp, label %err_next_pkt.while.body_crit_edge, label %err_next_pkt.if.end130_crit_edge

err_next_pkt.if.end130_crit_edge:                 ; preds = %err_next_pkt
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end130

err_next_pkt.while.body_crit_edge:                ; preds = %err_next_pkt
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

land.lhs.true106.critedge:                        ; preds = %while.body
  %call107 = tail call zeroext i1 @napi_complete_done(ptr noundef %napi, i32 noundef %num_rx_pkt.0204) #12
  br i1 %call107, label %if.then109, label %land.lhs.true106.critedge.if.end130_crit_edge

land.lhs.true106.critedge.if.end130_crit_edge:    ; preds = %land.lhs.true106.critedge
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end130

if.then109:                                       ; preds = %land.lhs.true106.critedge
  call void @__sanitizer_cov_trace_pc() #14
  %lock = getelementptr i8, ptr %napi, i32 224
  %call116 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !152
  tail call void @arm_heavy_mb() #12
  %add.ptr124 = getelementptr i8, ptr %3, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr124, i32 -2130706432) #12, !srcloc !147
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !153
  tail call void @arm_heavy_mb() #12
  %add.ptr128 = getelementptr i8, ptr %3, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr128, i32 33024) #12, !srcloc !147
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call116) #12
  br label %if.end130

if.end130:                                        ; preds = %if.then109, %land.lhs.true106.critedge.if.end130_crit_edge, %err_next_pkt.if.end130_crit_edge, %entry.if.end130_crit_edge
  %num_rx_pkt.0201 = phi i32 [ %num_rx_pkt.0204, %if.then109 ], [ %num_rx_pkt.0204, %land.lhs.true106.critedge.if.end130_crit_edge ], [ 0, %entry.if.end130_crit_edge ], [ %num_rx_pkt.1, %err_next_pkt.if.end130_crit_edge ]
  ret i32 %num_rx_pkt.0201
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amd8111e_mdio_read(ptr nocapture noundef readonly %dev, i32 noundef %phy_id, i32 noundef %reg_num) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %mmio1.i = getelementptr i8, ptr %dev, i32 2844
  %0 = ptrtoint ptr %mmio1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmio1.i, align 4
  %add.ptr.i2 = getelementptr i8, ptr %1, i32 208
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i2) #12, !srcloc !143
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !144
  %.mask.i = and i32 %2, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask.i)
  %tobool.not38.i = icmp eq i32 %.mask.i, 0
  br i1 %tobool.not38.i, label %entry.do.body.i_crit_edge, label %entry.while.body.i_crit_edge

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

entry.do.body.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i2) #12, !srcloc !143
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !145
  %.mask39.i = and i32 %3, 128
  %tobool.not.i = icmp eq i32 %.mask39.i, 0
  br i1 %tobool.not.i, label %while.body.i.do.body.i_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i

while.body.i.do.body.i_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i

do.body.i:                                        ; preds = %while.body.i.do.body.i_crit_edge, %entry.do.body.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !146
  tail call void @arm_heavy_mb() #12
  %and9.i = shl i32 %phy_id, 21
  %shl.i = and i32 %and9.i, 65011712
  %and10.i = shl i32 %reg_num, 16
  %shl11.i = and i32 %and10.i, 2031616
  %or.i = or i32 %shl.i, %shl11.i
  %or12.i = or i32 %or.i, 536870912
  %4 = tail call i32 @llvm.bswap.i32(i32 %or12.i) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2, i32 %4) #12, !srcloc !147
  br label %do.body14.i

do.body14.i:                                      ; preds = %do.body14.i.do.body14.i_crit_edge, %do.body.i
  %repeat.0.i = phi i32 [ 10, %do.body.i ], [ %dec.i, %do.body14.i.do.body14.i_crit_edge ]
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i2) #12, !srcloc !143
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !148
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 6442440) #12
  %dec.i = add nsw i32 %repeat.0.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %tobool22.not.i = icmp eq i32 %dec.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %6)
  %tobool24.not.i = icmp sgt i32 %6, -1
  %or.cond.i = select i1 %tobool22.not.i, i1 true, i1 %tobool24.not.i
  br i1 %or.cond.i, label %amd8111e_read_phy.exit, label %do.body14.i.do.body14.i_crit_edge

do.body14.i.do.body14.i_crit_edge:                ; preds = %do.body14.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body14.i

amd8111e_read_phy.exit:                           ; preds = %do.body14.i
  call void @__sanitizer_cov_trace_pc() #14
  %and26.i = and i32 %6, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26.i)
  %tobool27.not.i = icmp eq i32 %and26.i, 0
  %and28.i = and i32 %6, 65535
  %storemerge.i = select i1 %tobool27.not.i, i32 %and28.i, i32 0
  ret i32 %storemerge.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @amd8111e_mdio_write(ptr nocapture noundef readonly %dev, i32 noundef %phy_id, i32 noundef %reg_num, i32 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %mmio1.i = getelementptr i8, ptr %dev, i32 2844
  %0 = ptrtoint ptr %mmio1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmio1.i, align 4
  %add.ptr.i2 = getelementptr i8, ptr %1, i32 208
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i2) #12, !srcloc !143
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !154
  %.mask.i = and i32 %2, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask.i)
  %tobool.not36.i = icmp eq i32 %.mask.i, 0
  br i1 %tobool.not36.i, label %entry.do.body.i_crit_edge, label %entry.while.body.i_crit_edge

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

entry.do.body.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i2) #12, !srcloc !143
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !155
  %.mask37.i = and i32 %3, 128
  %tobool.not.i = icmp eq i32 %.mask37.i, 0
  br i1 %tobool.not.i, label %while.body.i.do.body.i_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i

while.body.i.do.body.i_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i

do.body.i:                                        ; preds = %while.body.i.do.body.i_crit_edge, %entry.do.body.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !156
  tail call void @arm_heavy_mb() #12
  %and9.i = shl i32 %phy_id, 21
  %shl.i = and i32 %and9.i, 65011712
  %and10.i = shl i32 %reg_num, 16
  %shl11.i = and i32 %and10.i, 2031616
  %or.i = or i32 %shl.i, %val
  %or12.i = or i32 %or.i, %shl11.i
  %or13.i = or i32 %or12.i, 1073741824
  %4 = tail call i32 @llvm.bswap.i32(i32 %or13.i) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2, i32 %4) #12, !srcloc !147
  br label %do.body15.i

do.body15.i:                                      ; preds = %do.body15.i.do.body15.i_crit_edge, %do.body.i
  %repeat.0.i = phi i32 [ 10, %do.body.i ], [ %dec.i, %do.body15.i.do.body15.i_crit_edge ]
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i2) #12, !srcloc !143
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !157
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 6442440) #12
  %dec.i = add nsw i32 %repeat.0.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %tobool23.not.i = icmp eq i32 %dec.i, 0
  %.mask = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask)
  %tobool25.not.i = icmp eq i32 %.mask, 0
  %or.cond.i = select i1 %tobool23.not.i, i1 true, i1 %tobool25.not.i
  br i1 %or.cond.i, label %amd8111e_write_phy.exit, label %do.body15.i.do.body15.i_crit_edge

do.body15.i.do.body15.i_crit_edge:                ; preds = %do.body15.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body15.i

amd8111e_write_phy.exit:                          ; preds = %do.body15.i
  call void @__sanitizer_cov_trace_pc() #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @amd8111e_config_ipg(ptr noundef %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ipg_data1 = getelementptr i8, ptr %t, i32 -28
  %mmio2 = getelementptr i8, ptr %t, i32 -460
  %0 = ptrtoint ptr %mmio2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmio2, align 4
  %col_cnt = getelementptr i8, ptr %t, i32 -16
  %2 = ptrtoint ptr %col_cnt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %col_cnt, align 4
  %duplex = getelementptr i8, ptr %t, i32 -142
  %4 = ptrtoint ptr %duplex to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %duplex, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %5)
  %cmp = icmp eq i8 %5, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %ipg = getelementptr i8, ptr %t, i32 -24
  %6 = ptrtoint ptr %ipg to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 96, ptr %ipg, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %ipg_data1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ipg_data1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %8)
  %cmp4 = icmp eq i32 %8, 2
  br i1 %cmp4, label %if.then6, label %if.end.if.end15_crit_edge

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15

if.then6:                                         ; preds = %if.end
  %timer_tick = getelementptr i8, ptr %t, i32 -8
  %9 = ptrtoint ptr %timer_tick to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %timer_tick, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %10)
  %cmp7 = icmp eq i32 %10, 5
  br i1 %cmp7, label %if.end15.thread, label %if.else

if.end15.thread:                                  ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #14
  %11 = ptrtoint ptr %timer_tick to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %timer_tick, align 4
  %ipg11 = getelementptr i8, ptr %t, i32 -24
  %12 = ptrtoint ptr %ipg11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 80, ptr %ipg11, align 4
  %current_ipg = getelementptr i8, ptr %t, i32 -20
  %13 = ptrtoint ptr %current_ipg to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 96, ptr %current_ipg, align 4
  %diff_col_cnt = getelementptr i8, ptr %t, i32 -12
  %14 = ptrtoint ptr %diff_col_cnt to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %diff_col_cnt, align 4
  %15 = ptrtoint ptr %ipg_data1 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %ipg_data1, align 4
  br label %if.then19

if.else:                                          ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #14
  %inc = add i32 %10, 1
  %16 = ptrtoint ptr %timer_tick to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %inc, ptr %timer_tick, align 4
  %17 = ptrtoint ptr %ipg_data1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %.pr = load i32, ptr %ipg_data1, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.else, %if.end.if.end15_crit_edge
  %18 = phi i32 [ %.pr, %if.else ], [ %8, %if.end.if.end15_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %18)
  %cmp17 = icmp eq i32 %18, 1
  br i1 %cmp17, label %if.end15.if.then19_crit_edge, label %if.end15.if.end48_crit_edge

if.end15.if.end48_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end48

if.end15.if.then19_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then19

if.then19:                                        ; preds = %if.end15.if.then19_crit_edge, %if.end15.thread
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !158
  tail call void @arm_heavy_mb() #12
  %add.ptr.i = getelementptr i8, ptr %1, i32 20
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i, i16 9504) #12, !srcloc !159
  br label %do.body2.i

do.body2.i:                                       ; preds = %do.body2.i.do.body2.i_crit_edge, %if.then19
  %repeat.0.i = phi i32 [ 10, %if.then19 ], [ %dec.i, %do.body2.i.do.body2.i_crit_edge ]
  %19 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #12, !srcloc !160
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !161
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %20(i32 noundef 429496) #12
  %dec.i = add nsw i32 %repeat.0.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %tobool.not.i = icmp eq i32 %dec.i, 0
  %.mask.i = and i16 %19, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %.mask.i)
  %tobool7.not.i = icmp eq i16 %.mask.i, 0
  %or.cond.i = select i1 %tobool.not.i, i1 true, i1 %tobool7.not.i
  br i1 %or.cond.i, label %amd8111e_read_mib.exit, label %do.body2.i.do.body2.i_crit_edge

do.body2.i.do.body2.i_crit_edge:                  ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body2.i

amd8111e_read_mib.exit:                           ; preds = %do.body2.i
  %add.ptr11.i = getelementptr i8, ptr %1, i32 16
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11.i) #12, !srcloc !143
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !162
  %23 = ptrtoint ptr %col_cnt to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %col_cnt, align 4
  %sub = sub i32 %22, %3
  %diff_col_cnt21 = getelementptr i8, ptr %t, i32 -12
  %24 = ptrtoint ptr %diff_col_cnt21 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %diff_col_cnt21, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %25)
  %cmp22 = icmp ult i32 %sub, %25
  br i1 %cmp22, label %if.then24, label %amd8111e_read_mib.exit.if.end29_crit_edge

amd8111e_read_mib.exit.if.end29_crit_edge:        ; preds = %amd8111e_read_mib.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29

if.then24:                                        ; preds = %amd8111e_read_mib.exit
  call void @__sanitizer_cov_trace_pc() #14
  %26 = ptrtoint ptr %diff_col_cnt21 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %sub, ptr %diff_col_cnt21, align 4
  %current_ipg27 = getelementptr i8, ptr %t, i32 -20
  %27 = ptrtoint ptr %current_ipg27 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %current_ipg27, align 4
  %ipg28 = getelementptr i8, ptr %t, i32 -24
  %29 = ptrtoint ptr %ipg28 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %ipg28, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.then24, %amd8111e_read_mib.exit.if.end29_crit_edge
  %current_ipg30 = getelementptr i8, ptr %t, i32 -20
  %30 = ptrtoint ptr %current_ipg30 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %current_ipg30, align 4
  %add = add i32 %31, 16
  store i32 %add, ptr %current_ipg30, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %add)
  %cmp32 = icmp ult i32 %add, 256
  br i1 %cmp32, label %if.end29.do.body_crit_edge, label %if.else36

if.end29.do.body_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

if.else36:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #14
  %ipg37 = getelementptr i8, ptr %t, i32 -24
  %32 = ptrtoint ptr %ipg37 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %ipg37, align 4
  %34 = ptrtoint ptr %ipg_data1 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 2, ptr %ipg_data1, align 4
  br label %do.body

do.body:                                          ; preds = %if.else36, %if.end29.do.body_crit_edge
  %tmp_ipg.0 = phi i32 [ %33, %if.else36 ], [ %add, %if.end29.do.body_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !163
  tail call void @arm_heavy_mb() #12
  %conv40 = trunc i32 %tmp_ipg.0 to i16
  %35 = tail call i16 @llvm.bswap.i16(i16 %conv40)
  %add.ptr41 = getelementptr i8, ptr %1, i32 398
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr41, i16 %35) #12, !srcloc !159
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !164
  tail call void @arm_heavy_mb() #12
  %conv46 = add i16 %conv40, -36
  %36 = tail call i16 @llvm.bswap.i16(i16 %conv46)
  %add.ptr47 = getelementptr i8, ptr %1, i32 396
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr47, i16 %36) #12, !srcloc !159
  br label %if.end48

if.end48:                                         ; preds = %do.body, %if.end15.if.end48_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %37 = load volatile i32, ptr @jiffies, align 128
  %add50 = add i32 %37, 50
  %call51 = tail call i32 @mod_timer(ptr noundef %t, i32 noundef %add50) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end48, %if.then
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_release_regions(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amd8111e_open(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %irq = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 64
  %0 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %1, ptr noundef nonnull @amd8111e_interrupt, ptr noundef null, i32 noundef 128, ptr noundef %dev, ptr noundef %dev) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %napi = getelementptr i8, ptr %dev, i32 2848
  tail call void @napi_enable(ptr noundef %napi) #12
  %lock = getelementptr i8, ptr %dev, i32 3072
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #12
  %mmio1.i = getelementptr i8, ptr %dev, i32 2844
  %2 = ptrtoint ptr %mmio1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmio1.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !165
  tail call void @arm_heavy_mb() #12
  %add.ptr.i38 = getelementptr i8, ptr %3, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i38, i32 16777216) #12, !srcloc !147
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !166
  tail call void @arm_heavy_mb() #12
  %ext_phy_addr.i = getelementptr i8, ptr %dev, i32 3148
  %4 = ptrtoint ptr %ext_phy_addr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ext_phy_addr.i, align 4
  %6 = trunc i32 %5 to i16
  %conv.i = or i16 %6, -32512
  %7 = tail call i16 @llvm.bswap.i16(i16 %conv.i) #12
  %add.ptr5.i = getelementptr i8, ptr %3, i32 136
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr5.i, i16 %7) #12, !srcloc !159
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !167
  tail call void @arm_heavy_mb() #12
  %add.ptr9.i = getelementptr i8, ptr %3, i32 288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i, i32 0) #12, !srcloc !147
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !168
  tail call void @arm_heavy_mb() #12
  %add.ptr13.i = getelementptr i8, ptr %3, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i, i32 0) #12, !srcloc !147
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !169
  tail call void @arm_heavy_mb() #12
  %add.ptr17.i = getelementptr i8, ptr %3, i32 264
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17.i, i32 0) #12, !srcloc !147
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !170
  tail call void @arm_heavy_mb() #12
  %add.ptr21.i = getelementptr i8, ptr %3, i32 272
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21.i, i32 0) #12, !srcloc !147
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !171
  tail call void @arm_heavy_mb() #12
  %add.ptr25.i = getelementptr i8, ptr %3, i32 280
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25.i, i32 0) #12, !srcloc !147
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !172
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i38, i32 2131693312) #12, !srcloc !147
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !173
  tail call void @arm_heavy_mb() #12
  %add.ptr33.i = getelementptr i8, ptr %3, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr33.i, i32 2134867775) #12, !srcloc !147
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !174
  tail call void @arm_heavy_mb() #12
  %add.ptr37.i = getelementptr i8, ptr %3, i32 100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr37.i, i32 452984832) #12, !srcloc !147
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !175
  tail call void @arm_heavy_mb() #12
  %add.ptr41.i = getelementptr i8, ptr %3, i32 168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr41.i, i32 0) #12, !srcloc !147
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !176
  tail call void @arm_heavy_mb() #12
  %add.ptr45.i = getelementptr i8, ptr %3, i32 172
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr45.i, i32 0) #12, !srcloc !147
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !177
  tail call void @arm_heavy_mb() #12
  %add.ptr49.i = getelementptr i8, ptr %3, i32 200
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr49.i, i32 0) #12, !srcloc !147
  %add.ptr50.i = getelementptr i8, ptr %3, i32 56
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr50.i) #12, !srcloc !143
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !178
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !179
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr50.i, i32 %8) #12, !srcloc !147
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !180
  tail call void @arm_heavy_mb() #12
  %add.ptr59.i = getelementptr i8, ptr %3, i32 216
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr59.i, i32 0) #12, !srcloc !147
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !181
  tail call void @arm_heavy_mb() #12
  %add.ptr63.i = getelementptr i8, ptr %3, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr63.i, i32 528449311) #12, !srcloc !147
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !182
  tail call void @arm_heavy_mb() #12
  %add.ptr67.i = getelementptr i8, ptr %3, i32 360
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr67.i, i32 0) #12, !srcloc !147
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !183
  tail call void @arm_heavy_mb() #12
  %add.ptr71.i = getelementptr i8, ptr %3, i32 376
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr71.i, i32 268437504) #12, !srcloc !147
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !184
  tail call void @arm_heavy_mb() #12
  %add.ptr75.i = getelementptr i8, ptr %3, i32 336
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr75.i, i32 0) #12, !srcloc !147
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !185
  tail call void @arm_heavy_mb() #12
  %add.ptr79.i = getelementptr i8, ptr %3, i32 320
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr79.i, i32 0) #12, !srcloc !147
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !186
  tail call void @arm_heavy_mb() #12
  %add.ptr83.i = getelementptr i8, ptr %3, i32 324
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr83.i, i32 0) #12, !srcloc !147
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !187
  tail call void @arm_heavy_mb() #12
  %add.ptr87.i = getelementptr i8, ptr %3, i32 328
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr87.i, i32 0) #12, !srcloc !147
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !188
  tail call void @arm_heavy_mb() #12
  %add.ptr91.i = getelementptr i8, ptr %3, i32 332
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr91.i, i32 0) #12, !srcloc !147
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !189
  tail call void @arm_heavy_mb() #12
  %add.ptr95.i = getelementptr i8, ptr %3, i32 124
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr95.i, i32 0) #12, !srcloc !147
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !190
  tail call void @arm_heavy_mb() #12
  %add.ptr99.i = getelementptr i8, ptr %3, i32 20
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr99.i, i16 16) #12, !srcloc !159
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !191
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr67.i, i32 0) #12, !srcloc !147
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !192
  tail call void @arm_heavy_mb() #12
  %add.ptr110.i = getelementptr i8, ptr %3, i32 364
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr110.i, i32 0) #12, !srcloc !147
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr71.i) #12, !srcloc !143
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !193
  %options.i = getelementptr i8, ptr %dev, i32 3140
  %10 = ptrtoint ptr %options.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %options.i, align 4
  %and.i = and i32 %11, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.amd8111e_init_hw_default.exit_crit_edge, label %do.body117.i

if.end.amd8111e_init_hw_default.exit_crit_edge:   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %amd8111e_init_hw_default.exit

do.body117.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !194
  tail call void @arm_heavy_mb() #12
  %add.ptr120.i = getelementptr i8, ptr %3, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr120.i, i32 40960) #12, !srcloc !147
  br label %amd8111e_init_hw_default.exit

amd8111e_init_hw_default.exit:                    ; preds = %do.body117.i, %if.end.amd8111e_init_hw_default.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !195
  tail call void @arm_heavy_mb() #12
  %add.ptr124.i = getelementptr i8, ptr %3, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr124.i, i32 37888) #12, !srcloc !147
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !196
  tail call void @arm_heavy_mb() #12
  %add.ptr128.i = getelementptr i8, ptr %3, i32 108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr128.i, i32 285278464) #12, !srcloc !147
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr33.i) #12, !srcloc !143
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !197
  %call3 = tail call fastcc i32 @amd8111e_restart(ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end14, label %if.then5

if.then5:                                         ; preds = %amd8111e_init_hw_default.exit
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #12
  tail call void @napi_disable(ptr noundef %napi) #12
  %13 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool9.not = icmp eq i32 %14, 0
  br i1 %tobool9.not, label %if.then5.cleanup_crit_edge, label %if.then10

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then10:                                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #14
  %call12 = tail call ptr @free_irq(i32 noundef %14, ptr noundef %dev) #12
  br label %cleanup

if.end14:                                         ; preds = %amd8111e_init_hw_default.exit
  %15 = ptrtoint ptr %options.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %options.i, align 4
  %and = and i32 %16, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool15.not = icmp eq i32 %and, 0
  br i1 %tobool15.not, label %if.end14.if.end17_crit_edge, label %if.then16

if.end14.if.end17_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17

if.then16:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  %ipg_timer = getelementptr i8, ptr %dev, i32 3304
  tail call void @add_timer(ptr noundef %ipg_timer) #12
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %dev, ptr noundef nonnull @.str.37) #15
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %if.end14.if.end17_crit_edge
  %opened = getelementptr i8, ptr %dev, i32 3212
  %17 = ptrtoint ptr %opened to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %opened, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #12
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %18 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %19, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %if.then10, %if.then5.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end17 ], [ -11, %lor.lhs.false.cleanup_crit_edge ], [ -11, %entry.cleanup_crit_edge ], [ -12, %if.then10 ], [ -12, %if.then5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amd8111e_close(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %0 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %1, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #12
  %napi = getelementptr i8, ptr %dev, i32 2848
  tail call void @napi_disable(ptr noundef %napi) #12
  %lock = getelementptr i8, ptr %dev, i32 3072
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !198
  tail call void @arm_heavy_mb() #12
  %mmio.i = getelementptr i8, ptr %dev, i32 2844
  %2 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i21 = getelementptr i8, ptr %3, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i21, i32 33554432) #12, !srcloc !147
  %4 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mmio.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %5, i32 56
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #12, !srcloc !143
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !199
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !200
  tail call void @arm_heavy_mb() #12
  %7 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mmio.i, align 4
  %add.ptr8.i = getelementptr i8, ptr %8, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i, i32 %6) #12, !srcloc !147
  %9 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mmio.i, align 4
  %add.ptr12.i = getelementptr i8, ptr %10, i32 56
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12.i) #12, !srcloc !143
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !201
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !202
  tail call void @arm_heavy_mb() #12
  %12 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i23 = getelementptr i8, ptr %13, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i23, i32 16777216) #12, !srcloc !147
  %14 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mmio.i, align 4
  %add.ptr2.i24 = getelementptr i8, ptr %15, i32 72
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i24) #12, !srcloc !143
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !203
  %amd8111e_net_dev = getelementptr i8, ptr %dev, i32 2328
  %17 = ptrtoint ptr %amd8111e_net_dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %amd8111e_net_dev, align 8
  tail call fastcc void @amd8111e_free_skbs(ptr noundef %18)
  %19 = ptrtoint ptr %amd8111e_net_dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %amd8111e_net_dev, align 8
  tail call void @netif_carrier_off(ptr noundef %20) #12
  %options = getelementptr i8, ptr %dev, i32 3140
  %21 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %options, align 4
  %and = and i32 %22, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %ipg_timer = getelementptr i8, ptr %dev, i32 3304
  %call3 = tail call i32 @del_timer_sync(ptr noundef %ipg_timer) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #12
  %irq = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 64
  %23 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %irq, align 4
  %call5 = tail call ptr @free_irq(i32 noundef %24, ptr noundef %dev) #12
  %rx_ring.i = getelementptr i8, ptr %dev, i32 2308
  %25 = ptrtoint ptr %rx_ring.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %rx_ring.i, align 4
  %tobool.not.i = icmp eq ptr %26, null
  br i1 %tobool.not.i, label %if.end.if.end.i_crit_edge, label %if.then.i

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %pci_dev.i = getelementptr i8, ptr %dev, i32 2324
  %27 = ptrtoint ptr %pci_dev.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pci_dev.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %28, i32 0, i32 44
  %rx_ring_dma_addr.i = getelementptr i8, ptr %dev, i32 2316
  %29 = ptrtoint ptr %rx_ring_dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %rx_ring_dma_addr.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev.i, i32 noundef 512, ptr noundef nonnull %26, i32 noundef %30, i32 noundef 0) #12
  %31 = ptrtoint ptr %rx_ring.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %rx_ring.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end.if.end.i_crit_edge
  %32 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %add.ptr.i, align 8
  %tobool3.not.i = icmp eq ptr %33, null
  br i1 %tobool3.not.i, label %if.end.i.amd8111e_free_ring.exit_crit_edge, label %if.then4.i

if.end.i.amd8111e_free_ring.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %amd8111e_free_ring.exit

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %pci_dev5.i = getelementptr i8, ptr %dev, i32 2324
  %34 = ptrtoint ptr %pci_dev5.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pci_dev5.i, align 4
  %dev6.i = getelementptr inbounds %struct.pci_dev, ptr %35, i32 0, i32 44
  %tx_ring_dma_addr.i = getelementptr i8, ptr %dev, i32 2312
  %36 = ptrtoint ptr %tx_ring_dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %tx_ring_dma_addr.i, align 8
  tail call void @dma_free_attrs(ptr noundef %dev6.i, i32 noundef 512, ptr noundef nonnull %33, i32 noundef %37, i32 noundef 0) #12
  %38 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr null, ptr %add.ptr.i, align 8
  br label %amd8111e_free_ring.exit

amd8111e_free_ring.exit:                          ; preds = %if.then4.i, %if.end.i.amd8111e_free_ring.exit_crit_edge
  %call6 = tail call ptr @amd8111e_get_stats(ptr noundef %dev)
  %opened = getelementptr i8, ptr %dev, i32 3212
  %39 = ptrtoint ptr %opened to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 0, ptr %opened, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amd8111e_start_xmit(ptr noundef %skb, ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %lock = getelementptr i8, ptr %dev, i32 3072
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #12
  %tx_idx = getelementptr i8, ptr %dev, i32 3120
  %0 = ptrtoint ptr %tx_idx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tx_idx, align 8
  %and = and i32 %1, 31
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %2 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len, align 4
  %conv6 = trunc i32 %3 to i16
  %4 = tail call i16 @llvm.bswap.i16(i16 %conv6)
  %5 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %add.ptr.i, align 8
  %arrayidx = getelementptr %struct.amd8111e_tx_dr, ptr %6, i32 %and
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %4, ptr %arrayidx, align 4
  %arrayidx7 = getelementptr %struct.amd8111e_priv, ptr %add.ptr.i, i32 0, i32 7, i32 %and
  %8 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %skb, ptr %arrayidx7, align 4
  %9 = load ptr, ptr %add.ptr.i, align 8
  %tx_flags = getelementptr %struct.amd8111e_tx_dr, ptr %9, i32 %and, i32 1
  %10 = ptrtoint ptr %tx_flags to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 0, ptr %tx_flags, align 2
  %vlan_present = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %11 = ptrtoint ptr %vlan_present to i32
  call void @__asan_loadN_noabort(i32 %11, i32 4)
  %bf.load = load i32, ptr %vlan_present, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load)
  %tobool.not = icmp sgt i32 %bf.load, -1
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %12 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %add.ptr.i, align 8
  %tag_ctrl_cmd = getelementptr %struct.amd8111e_tx_dr, ptr %13, i32 %and, i32 3
  %14 = ptrtoint ptr %tag_ctrl_cmd to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %tag_ctrl_cmd, align 2
  %16 = or i16 %15, 512
  store i16 %16, ptr %tag_ctrl_cmd, align 2
  %vlan_tci = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 10
  %17 = ptrtoint ptr %vlan_tci to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %vlan_tci, align 2
  %19 = tail call i16 @llvm.bswap.i16(i16 %18)
  %20 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %add.ptr.i, align 8
  %tag_ctrl_info = getelementptr %struct.amd8111e_tx_dr, ptr %21, i32 %and, i32 2
  %22 = ptrtoint ptr %tag_ctrl_info to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %19, ptr %tag_ctrl_info, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %pci_dev = getelementptr i8, ptr %dev, i32 2324
  %23 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pci_dev, align 4
  %dev16 = getelementptr inbounds %struct.pci_dev, ptr %24, i32 0, i32 44
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %25 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %data, align 4
  %27 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %len, align 4
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %26) #12
  br i1 %call.i, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %if.end
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit_crit_edge, label %if.then.i, !prof !150

land.rhs.i.dma_map_single_attrs.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dma_map_single_attrs.exit

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %dev16) #12
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %24, i32 0, i32 44, i32 3
  %29 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %30, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %31 = ptrtoint ptr %dev16 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev16, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %32, %if.end.i.i ], [ %30, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.47, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.48, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #12
  br label %dma_map_single_attrs.exit

if.end39.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @debug_dma_map_single(ptr noundef %dev16, ptr noundef %26, i32 noundef %28) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %33 = load ptr, ptr @mem_map, align 4
  %34 = ptrtoint ptr %26 to i32
  %sub.i = add i32 %34, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i78 = getelementptr %struct.page, ptr %33, i32 %shr.i
  %and.i = and i32 %34, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev16, ptr noundef %add.ptr.i78, i32 noundef %and.i, i32 noundef %28, i32 noundef 1, i32 noundef 0) #12
  br label %dma_map_single_attrs.exit

dma_map_single_attrs.exit:                        ; preds = %if.end39.i, %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit_crit_edge
  %retval.0.i = phi i32 [ %call41.i, %if.end39.i ], [ -1, %dev_name.exit.i ], [ -1, %land.rhs.i.dma_map_single_attrs.exit_crit_edge ]
  %arrayidx19 = getelementptr %struct.amd8111e_priv, ptr %add.ptr.i, i32 0, i32 9, i32 %and
  %35 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %retval.0.i, ptr %arrayidx19, align 4
  %36 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i)
  %37 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %add.ptr.i, align 8
  %buff_phy_addr = getelementptr %struct.amd8111e_tx_dr, ptr %38, i32 %and, i32 4
  %39 = ptrtoint ptr %buff_phy_addr to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %36, ptr %buff_phy_addr, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !204
  tail call void @arm_heavy_mb() #12
  %40 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %add.ptr.i, align 8
  %tx_flags29 = getelementptr %struct.amd8111e_tx_dr, ptr %41, i32 %and, i32 1
  %42 = ptrtoint ptr %tx_flags29 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %tx_flags29, align 2
  %44 = or i16 %43, 179
  store i16 %44, ptr %tx_flags29, align 2
  %45 = ptrtoint ptr %tx_idx to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %tx_idx, align 8
  %inc = add i32 %46, 1
  store i32 %inc, ptr %tx_idx, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !205
  tail call void @arm_heavy_mb() #12
  %mmio = getelementptr i8, ptr %dev, i32 2844
  %47 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %mmio, align 4
  %add.ptr = getelementptr i8, ptr %48, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 8454144) #12, !srcloc !147
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !206
  tail call void @arm_heavy_mb() #12
  %49 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %mmio, align 4
  %add.ptr41 = getelementptr i8, ptr %50, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr41, i32 33024) #12, !srcloc !147
  %51 = ptrtoint ptr %tx_idx to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %tx_idx, align 8
  %and.i79 = and i32 %52, 31
  %arrayidx.i = getelementptr %struct.amd8111e_priv, ptr %add.ptr.i, i32 0, i32 7, i32 %and.i79
  %53 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i.not = icmp eq ptr %54, null
  br i1 %tobool.not.i.not, label %dma_map_single_attrs.exit.if.end46_crit_edge, label %if.then45

dma_map_single_attrs.exit.if.end46_crit_edge:     ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end46

if.then45:                                        ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #14
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %55 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %56, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #12
  br label %if.end46

if.end46:                                         ; preds = %if.then45, %dma_map_single_attrs.exit.if.end46_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @amd8111e_set_multicast_list(ptr noundef %dev) #2 align 64 {
entry:
  %mc_filter = alloca [2 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %mc_filter) #12
  %0 = getelementptr inbounds [2 x i32], ptr %mc_filter, i32 0, i32 1
  %flags = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 14
  %1 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags, align 8
  %and = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12
  tail call void @arm_heavy_mb() #12
  %mmio4 = getelementptr i8, ptr %dev, i32 2844
  %3 = ptrtoint ptr %mmio4 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mmio4, align 4
  %add.ptr5 = getelementptr i8, ptr %4, i32 80
  br i1 %tobool.not, label %do.body1, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 33024) #12, !srcloc !147
  br label %cleanup

do.body1:                                         ; preds = %entry
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 256) #12, !srcloc !147
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags, align 8
  %and7 = and i32 %6, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %lor.lhs.false, label %do.body1.if.then9_crit_edge

do.body1.if.then9_crit_edge:                      ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then9

lor.lhs.false:                                    ; preds = %do.body1
  %mc = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 66
  %count = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 66, i32 1
  %7 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %8)
  %cmp = icmp sgt i32 %8, 64
  br i1 %cmp, label %lor.lhs.false.if.then9_crit_edge, label %if.end24

lor.lhs.false.if.then9_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then9

if.then9:                                         ; preds = %lor.lhs.false.if.then9_crit_edge, %do.body1.if.then9_crit_edge
  %9 = ptrtoint ptr %mc_filter to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %mc_filter, align 4
  %10 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %0, align 4
  %options = getelementptr i8, ptr %dev, i32 3140
  %11 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %options, align 4
  %or = or i32 %12, 4
  store i32 %or, ptr %options, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !207
  tail call void @arm_heavy_mb() #12
  %13 = ptrtoint ptr %mmio4 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mmio4, align 4
  %add.ptr15 = getelementptr i8, ptr %14, i32 360
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15, i32 -1) #12, !srcloc !147
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !208
  tail call void @arm_heavy_mb() #12
  %15 = ptrtoint ptr %mmio4 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mmio4, align 4
  %add.ptr23 = getelementptr i8, ptr %16, i32 364
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr23, i32 -1) #12, !srcloc !147
  br label %cleanup

if.end24:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp27 = icmp eq i32 %8, 0
  br i1 %cmp27, label %if.then28, label %if.end52

if.then28:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #14
  %17 = ptrtoint ptr %mc_filter to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %mc_filter, align 4
  %options31 = getelementptr i8, ptr %dev, i32 3140
  %18 = ptrtoint ptr %options31 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %options31, align 4
  %and32 = and i32 %19, -5
  store i32 %and32, ptr %options31, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !209
  tail call void @arm_heavy_mb() #12
  %20 = ptrtoint ptr %mmio4 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mmio4, align 4
  %add.ptr38 = getelementptr i8, ptr %21, i32 360
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr38, i32 0) #12, !srcloc !147
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !210
  tail call void @arm_heavy_mb() #12
  %22 = ptrtoint ptr %mmio4 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mmio4, align 4
  %add.ptr46 = getelementptr i8, ptr %23, i32 364
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr46, i32 0) #12, !srcloc !147
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !211
  tail call void @arm_heavy_mb() #12
  %24 = ptrtoint ptr %mmio4 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mmio4, align 4
  %add.ptr51 = getelementptr i8, ptr %25, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr51, i32 256) #12, !srcloc !147
  br label %cleanup

if.end52:                                         ; preds = %if.end24
  %options53 = getelementptr i8, ptr %dev, i32 3140
  %26 = ptrtoint ptr %options53 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %options53, align 4
  %or54 = or i32 %27, 4
  store i32 %or54, ptr %options53, align 4
  %28 = ptrtoint ptr %mc_filter to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %mc_filter, align 4
  %29 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %0, align 4
  %30 = ptrtoint ptr %mc to i32
  call void @__asan_load4_noabort(i32 %30)
  %ha.0118 = load ptr, ptr %mc, align 4
  %cmp62.not119 = icmp eq ptr %ha.0118, %mc
  br i1 %cmp62.not119, label %if.end52.do.body75_crit_edge, label %if.end52.for.body_crit_edge

if.end52.for.body_crit_edge:                      ; preds = %if.end52
  br label %for.body

if.end52.do.body75_crit_edge:                     ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body75

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end52.for.body_crit_edge
  %ha.0120 = phi ptr [ %ha.0, %for.body.for.body_crit_edge ], [ %ha.0118, %if.end52.for.body_crit_edge ]
  %addr = getelementptr inbounds %struct.netdev_hw_addr, ptr %ha.0120, i32 0, i32 2
  %call64 = tail call i32 @crc32_le(i32 noundef -1, ptr noundef %addr, i32 noundef 6) #16
  %shr = lshr i32 %call64, 26
  %and66 = and i32 %shr, 31
  %shl = shl nuw i32 1, %and66
  %31 = lshr i32 %call64, 31
  %arrayidx68 = getelementptr [2 x i32], ptr %mc_filter, i32 0, i32 %31
  %32 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx68, align 4
  %or69 = or i32 %shl, %33
  store i32 %or69, ptr %arrayidx68, align 4
  %34 = ptrtoint ptr %ha.0120 to i32
  call void @__asan_load4_noabort(i32 %34)
  %ha.0 = load ptr, ptr %ha.0120, align 4
  %cmp62.not = icmp eq ptr %ha.0, %mc
  br i1 %cmp62.not, label %for.body.do.body75_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.body.do.body75_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body75

do.body75:                                        ; preds = %for.body.do.body75_crit_edge, %if.end52.do.body75_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !212
  tail call void @arm_heavy_mb() #12
  %35 = ptrtoint ptr %mc_filter to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %mc_filter, align 4
  %37 = tail call i32 @llvm.bswap.i32(i32 %36)
  %38 = ptrtoint ptr %mmio4 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %mmio4, align 4
  %add.ptr80 = getelementptr i8, ptr %39, i32 360
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr80, i32 %37) #12, !srcloc !147
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !213
  tail call void @arm_heavy_mb() #12
  %40 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %0, align 4
  %42 = tail call i32 @llvm.bswap.i32(i32 %41)
  %43 = ptrtoint ptr %mmio4 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %mmio4, align 4
  %add.ptr88 = getelementptr i8, ptr %44, i32 364
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr88, i32 %42) #12, !srcloc !147
  %45 = ptrtoint ptr %mmio4 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %mmio4, align 4
  %add.ptr90 = getelementptr i8, ptr %46, i32 80
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr90) #12, !srcloc !143
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !214
  br label %cleanup

cleanup:                                          ; preds = %do.body75, %if.then28, %if.then9, %do.body
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %mc_filter) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amd8111e_set_mac_address(ptr noundef %dev, ptr noundef %p) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %sa_data = getelementptr inbounds %struct.sockaddr, ptr %p, i32 0, i32 1
  tail call void @dev_addr_mod(ptr noundef %dev, i32 noundef 0, ptr noundef %sa_data, i32 noundef 6) #12
  %lock = getelementptr i8, ptr %dev, i32 3072
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #12
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 86
  %mmio = getelementptr i8, ptr %dev, i32 2844
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !215
  tail call void @arm_heavy_mb() #12
  %0 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_addr, align 64
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 1
  %4 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mmio, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 352
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 %3) #12, !srcloc !216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !215
  tail call void @arm_heavy_mb() #12
  %6 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev_addr, align 64
  %arrayidx.1 = getelementptr i8, ptr %7, i32 1
  %8 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx.1, align 1
  %10 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mmio, align 4
  %add.ptr1.1 = getelementptr i8, ptr %11, i32 353
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr1.1, i8 %9) #12, !srcloc !216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !215
  tail call void @arm_heavy_mb() #12
  %12 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev_addr, align 64
  %arrayidx.2 = getelementptr i8, ptr %13, i32 2
  %14 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx.2, align 1
  %16 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mmio, align 4
  %add.ptr1.2 = getelementptr i8, ptr %17, i32 354
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr1.2, i8 %15) #12, !srcloc !216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !215
  tail call void @arm_heavy_mb() #12
  %18 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev_addr, align 64
  %arrayidx.3 = getelementptr i8, ptr %19, i32 3
  %20 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx.3, align 1
  %22 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mmio, align 4
  %add.ptr1.3 = getelementptr i8, ptr %23, i32 355
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr1.3, i8 %21) #12, !srcloc !216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !215
  tail call void @arm_heavy_mb() #12
  %24 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev_addr, align 64
  %arrayidx.4 = getelementptr i8, ptr %25, i32 4
  %26 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx.4, align 1
  %28 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %mmio, align 4
  %add.ptr1.4 = getelementptr i8, ptr %29, i32 356
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr1.4, i8 %27) #12, !srcloc !216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !215
  tail call void @arm_heavy_mb() #12
  %30 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev_addr, align 64
  %arrayidx.5 = getelementptr i8, ptr %31, i32 5
  %32 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx.5, align 1
  %34 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %mmio, align 4
  %add.ptr1.5 = getelementptr i8, ptr %35, i32 357
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr1.5, i8 %33) #12, !srcloc !216
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #12
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_validate_addr(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amd8111e_ioctl(ptr noundef %dev, ptr nocapture noundef %ifr, i32 noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ifr_ifru.i = getelementptr inbounds %struct.ifreq, ptr %ifr, i32 0, i32 1
  %0 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cmd, label %entry.cleanup_crit_edge [
    i32 35143, label %sw.bb
    i32 35144, label %entry.sw.bb2_crit_edge
    i32 35145, label %sw.bb9
  ]

entry.sw.bb2_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb2

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %ext_phy_addr = getelementptr i8, ptr %dev, i32 3148
  %1 = ptrtoint ptr %ext_phy_addr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %ext_phy_addr, align 4
  %conv = trunc i32 %2 to i16
  %3 = ptrtoint ptr %ifr_ifru.i to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %conv, ptr %ifr_ifru.i, align 2
  br label %sw.bb2

sw.bb2:                                           ; preds = %sw.bb, %entry.sw.bb2_crit_edge
  %lock = getelementptr i8, ptr %dev, i32 3072
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #12
  %4 = ptrtoint ptr %ifr_ifru.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %ifr_ifru.i, align 2
  %conv4 = zext i16 %5 to i32
  %reg_num = getelementptr inbounds %struct.mii_ioctl_data, ptr %ifr_ifru.i, i32 0, i32 1
  %6 = ptrtoint ptr %reg_num to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %reg_num, align 2
  %8 = and i16 %7, 31
  %and = zext i16 %8 to i32
  %mmio1.i = getelementptr i8, ptr %dev, i32 2844
  %9 = ptrtoint ptr %mmio1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mmio1.i, align 4
  %add.ptr.i35 = getelementptr i8, ptr %10, i32 208
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i35) #12, !srcloc !143
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !144
  %.mask.i = and i32 %11, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask.i)
  %tobool.not38.i = icmp eq i32 %.mask.i, 0
  br i1 %tobool.not38.i, label %sw.bb2.do.body.i_crit_edge, label %sw.bb2.while.body.i_crit_edge

sw.bb2.while.body.i_crit_edge:                    ; preds = %sw.bb2
  br label %while.body.i

sw.bb2.do.body.i_crit_edge:                       ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %sw.bb2.while.body.i_crit_edge
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i35) #12, !srcloc !143
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !145
  %.mask39.i = and i32 %12, 128
  %tobool.not.i = icmp eq i32 %.mask39.i, 0
  br i1 %tobool.not.i, label %while.body.i.do.body.i_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i

while.body.i.do.body.i_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i

do.body.i:                                        ; preds = %while.body.i.do.body.i_crit_edge, %sw.bb2.do.body.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !146
  tail call void @arm_heavy_mb() #12
  %and9.i = shl i32 %conv4, 21
  %shl.i = and i32 %and9.i, 65011712
  %and10.i = shl nuw nsw i32 %and, 16
  %or.i = or i32 %and10.i, %shl.i
  %or12.i = or i32 %or.i, 536870912
  %13 = tail call i32 @llvm.bswap.i32(i32 %or12.i) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i35, i32 %13) #12, !srcloc !147
  br label %do.body14.i

do.body14.i:                                      ; preds = %do.body14.i.do.body14.i_crit_edge, %do.body.i
  %repeat.0.i = phi i32 [ 10, %do.body.i ], [ %dec.i, %do.body14.i.do.body14.i_crit_edge ]
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i35) #12, !srcloc !143
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !148
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 6442440) #12
  %dec.i = add nsw i32 %repeat.0.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %tobool22.not.i = icmp eq i32 %dec.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %15)
  %tobool24.not.i = icmp sgt i32 %15, -1
  %or.cond.i = select i1 %tobool22.not.i, i1 true, i1 %tobool24.not.i
  br i1 %or.cond.i, label %amd8111e_read_phy.exit, label %do.body14.i.do.body14.i_crit_edge

do.body14.i.do.body14.i_crit_edge:                ; preds = %do.body14.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body14.i

amd8111e_read_phy.exit:                           ; preds = %do.body14.i
  call void @__sanitizer_cov_trace_pc() #14
  %and26.i = and i32 %15, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26.i)
  %tobool27.not.i = icmp eq i32 %and26.i, 0
  %retval.0.i = select i1 %tobool27.not.i, i32 0, i32 -22
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #12
  %17 = trunc i32 %15 to i16
  %conv8 = select i1 %tobool27.not.i, i16 %17, i16 0
  %val_out = getelementptr inbounds %struct.mii_ioctl_data, ptr %ifr_ifru.i, i32 0, i32 3
  %18 = ptrtoint ptr %val_out to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %conv8, ptr %val_out, align 2
  br label %cleanup

sw.bb9:                                           ; preds = %entry
  %lock10 = getelementptr i8, ptr %dev, i32 3072
  tail call void @_raw_spin_lock_irq(ptr noundef %lock10) #12
  %19 = ptrtoint ptr %ifr_ifru.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %ifr_ifru.i, align 2
  %conv12 = zext i16 %20 to i32
  %reg_num13 = getelementptr inbounds %struct.mii_ioctl_data, ptr %ifr_ifru.i, i32 0, i32 1
  %21 = ptrtoint ptr %reg_num13 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %reg_num13, align 2
  %23 = and i16 %22, 31
  %and15 = zext i16 %23 to i32
  %val_in = getelementptr inbounds %struct.ifreq, ptr %ifr, i32 0, i32 1, i32 0, i32 1
  %24 = ptrtoint ptr %val_in to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %val_in, align 2
  %conv16 = zext i16 %25 to i32
  %mmio1.i36 = getelementptr i8, ptr %dev, i32 2844
  %26 = ptrtoint ptr %mmio1.i36 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mmio1.i36, align 4
  %add.ptr.i37 = getelementptr i8, ptr %27, i32 208
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i37) #12, !srcloc !143
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !154
  %.mask.i38 = and i32 %28, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask.i38)
  %tobool.not36.i = icmp eq i32 %.mask.i38, 0
  br i1 %tobool.not36.i, label %sw.bb9.do.body.i47_crit_edge, label %sw.bb9.while.body.i40_crit_edge

sw.bb9.while.body.i40_crit_edge:                  ; preds = %sw.bb9
  br label %while.body.i40

sw.bb9.do.body.i47_crit_edge:                     ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i47

while.body.i40:                                   ; preds = %while.body.i40.while.body.i40_crit_edge, %sw.bb9.while.body.i40_crit_edge
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i37) #12, !srcloc !143
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !155
  %.mask37.i = and i32 %29, 128
  %tobool.not.i39 = icmp eq i32 %.mask37.i, 0
  br i1 %tobool.not.i39, label %while.body.i40.do.body.i47_crit_edge, label %while.body.i40.while.body.i40_crit_edge

while.body.i40.while.body.i40_crit_edge:          ; preds = %while.body.i40
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i40

while.body.i40.do.body.i47_crit_edge:             ; preds = %while.body.i40
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i47

do.body.i47:                                      ; preds = %while.body.i40.do.body.i47_crit_edge, %sw.bb9.do.body.i47_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !156
  tail call void @arm_heavy_mb() #12
  %and9.i41 = shl i32 %conv12, 21
  %shl.i42 = and i32 %and9.i41, 65011712
  %and10.i43 = shl nuw nsw i32 %and15, 16
  %or.i45 = or i32 %shl.i42, %conv16
  %or12.i46 = or i32 %or.i45, %and10.i43
  %or13.i = or i32 %or12.i46, 1073741824
  %30 = tail call i32 @llvm.bswap.i32(i32 %or13.i) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i37, i32 %30) #12, !srcloc !147
  br label %do.body15.i

do.body15.i:                                      ; preds = %do.body15.i.do.body15.i_crit_edge, %do.body.i47
  %repeat.0.i48 = phi i32 [ 10, %do.body.i47 ], [ %dec.i49, %do.body15.i.do.body15.i_crit_edge ]
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i37) #12, !srcloc !143
  %32 = tail call i32 @llvm.bswap.i32(i32 %31) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !157
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %33 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %33(i32 noundef 6442440) #12
  %dec.i49 = add nsw i32 %repeat.0.i48, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i49)
  %tobool23.not.i = icmp eq i32 %dec.i49, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %32)
  %tobool25.not.i = icmp sgt i32 %32, -1
  %or.cond.i50 = select i1 %tobool23.not.i, i1 true, i1 %tobool25.not.i
  br i1 %or.cond.i50, label %amd8111e_write_phy.exit, label %do.body15.i.do.body15.i_crit_edge

do.body15.i.do.body15.i_crit_edge:                ; preds = %do.body15.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body15.i

amd8111e_write_phy.exit:                          ; preds = %do.body15.i
  call void @__sanitizer_cov_trace_pc() #14
  %and27.i = and i32 %32, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27.i)
  %tobool28.not.i = icmp eq i32 %and27.i, 0
  %..i = select i1 %tobool28.not.i, i32 0, i32 -22
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock10) #12
  br label %cleanup

cleanup:                                          ; preds = %amd8111e_write_phy.exit, %amd8111e_read_phy.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %..i, %amd8111e_write_phy.exit ], [ %retval.0.i, %amd8111e_read_phy.exit ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amd8111e_change_mtu(ptr noundef %dev, i32 noundef %new_mtu) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %state.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 6
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %mtu = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 20
  %2 = ptrtoint ptr %mtu to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %new_mtu, ptr %mtu, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr i8, ptr %dev, i32 3072
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !217
  tail call void @arm_heavy_mb() #12
  %mmio = getelementptr i8, ptr %dev, i32 2844
  %3 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mmio, align 4
  %add.ptr = getelementptr i8, ptr %4, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 16777216) #12, !srcloc !147
  %mtu2 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 20
  %5 = ptrtoint ptr %mtu2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %new_mtu, ptr %mtu2, align 4
  %call3 = tail call fastcc i32 @amd8111e_restart(ptr noundef %dev)
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.then5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %6 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %7, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then5, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then5 ], [ %call3, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @amd8111e_tx_timeout(ptr noundef %dev, i32 noundef %txqueue) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.49) #15
  %lock = getelementptr i8, ptr %dev, i32 3072
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #12
  %call1 = tail call fastcc i32 @amd8111e_restart(ptr noundef %dev)
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %0 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %_tx.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %1) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @amd8111e_get_stats(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %stats = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36
  %opened = getelementptr i8, ptr %dev, i32 3212
  %0 = ptrtoint ptr %opened to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %opened, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body2

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body2:                                         ; preds = %entry
  %mmio1 = getelementptr i8, ptr %dev, i32 2844
  %2 = ptrtoint ptr %mmio1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmio1, align 4
  %lock = getelementptr i8, ptr %dev, i32 3072
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !158
  tail call void @arm_heavy_mb() #12
  %add.ptr.i100 = getelementptr i8, ptr %3, i32 20
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i100, i16 544) #12, !srcloc !159
  br label %do.body2.i

do.body2.i:                                       ; preds = %do.body2.i.do.body2.i_crit_edge, %do.body2
  %repeat.0.i = phi i32 [ 10, %do.body2 ], [ %dec.i, %do.body2.i.do.body2.i_crit_edge ]
  %4 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i100) #12, !srcloc !160
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !161
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 429496) #12
  %dec.i = add nsw i32 %repeat.0.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %tobool.not.i = icmp eq i32 %dec.i, 0
  %.mask.i = and i16 %4, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %.mask.i)
  %tobool7.not.i = icmp eq i16 %.mask.i, 0
  %or.cond.i = select i1 %tobool.not.i, i1 true, i1 %tobool7.not.i
  br i1 %or.cond.i, label %amd8111e_read_mib.exit, label %do.body2.i.do.body2.i_crit_edge

do.body2.i.do.body2.i_crit_edge:                  ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body2.i

amd8111e_read_mib.exit:                           ; preds = %do.body2.i
  %add.ptr11.i = getelementptr i8, ptr %3, i32 16
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11.i) #12, !srcloc !143
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !162
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !158
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i100, i16 800) #12, !srcloc !159
  br label %do.body2.i108

do.body2.i108:                                    ; preds = %do.body2.i108.do.body2.i108_crit_edge, %amd8111e_read_mib.exit
  %repeat.0.i102 = phi i32 [ 10, %amd8111e_read_mib.exit ], [ %dec.i103, %do.body2.i108.do.body2.i108_crit_edge ]
  %7 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i100) #12, !srcloc !160
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !161
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 429496) #12
  %dec.i103 = add nsw i32 %repeat.0.i102, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i103)
  %tobool.not.i104 = icmp eq i32 %dec.i103, 0
  %.mask.i105 = and i16 %7, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %.mask.i105)
  %tobool7.not.i106 = icmp eq i16 %.mask.i105, 0
  %or.cond.i107 = select i1 %tobool.not.i104, i1 true, i1 %tobool7.not.i106
  br i1 %or.cond.i107, label %amd8111e_read_mib.exit110, label %do.body2.i108.do.body2.i108_crit_edge

do.body2.i108.do.body2.i108_crit_edge:            ; preds = %do.body2.i108
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body2.i108

amd8111e_read_mib.exit110:                        ; preds = %do.body2.i108
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11.i) #12, !srcloc !143
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !162
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !158
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i100, i16 2080) #12, !srcloc !159
  br label %do.body2.i118

do.body2.i118:                                    ; preds = %do.body2.i118.do.body2.i118_crit_edge, %amd8111e_read_mib.exit110
  %repeat.0.i112 = phi i32 [ 10, %amd8111e_read_mib.exit110 ], [ %dec.i113, %do.body2.i118.do.body2.i118_crit_edge ]
  %10 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i100) #12, !srcloc !160
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !161
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 429496) #12
  %dec.i113 = add nsw i32 %repeat.0.i112, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i113)
  %tobool.not.i114 = icmp eq i32 %dec.i113, 0
  %.mask.i115 = and i16 %10, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %.mask.i115)
  %tobool7.not.i116 = icmp eq i16 %.mask.i115, 0
  %or.cond.i117 = select i1 %tobool.not.i114, i1 true, i1 %tobool7.not.i116
  br i1 %or.cond.i117, label %amd8111e_read_mib.exit120, label %do.body2.i118.do.body2.i118_crit_edge

do.body2.i118.do.body2.i118_crit_edge:            ; preds = %do.body2.i118
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body2.i118

amd8111e_read_mib.exit120:                        ; preds = %do.body2.i118
  %12 = tail call i32 @llvm.bswap.i32(i32 %6) #12
  %13 = tail call i32 @llvm.bswap.i32(i32 %9) #12
  %add = add i32 %13, %12
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11.i) #12, !srcloc !143
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !162
  %add10 = add i32 %add, %15
  %16 = ptrtoint ptr %stats to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %add10, ptr %stats, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !158
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i100, i16 8736) #12, !srcloc !159
  br label %do.body2.i128

do.body2.i128:                                    ; preds = %do.body2.i128.do.body2.i128_crit_edge, %amd8111e_read_mib.exit120
  %repeat.0.i122 = phi i32 [ 10, %amd8111e_read_mib.exit120 ], [ %dec.i123, %do.body2.i128.do.body2.i128_crit_edge ]
  %17 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i100) #12, !srcloc !160
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !161
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 429496) #12
  %dec.i123 = add nsw i32 %repeat.0.i122, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i123)
  %tobool.not.i124 = icmp eq i32 %dec.i123, 0
  %.mask.i125 = and i16 %17, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %.mask.i125)
  %tobool7.not.i126 = icmp eq i16 %.mask.i125, 0
  %or.cond.i127 = select i1 %tobool.not.i124, i1 true, i1 %tobool7.not.i126
  br i1 %or.cond.i127, label %amd8111e_read_mib.exit130, label %do.body2.i128.do.body2.i128_crit_edge

do.body2.i128.do.body2.i128_crit_edge:            ; preds = %do.body2.i128
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body2.i128

amd8111e_read_mib.exit130:                        ; preds = %do.body2.i128
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11.i) #12, !srcloc !143
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !162
  %tx_packets = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 1
  %21 = ptrtoint ptr %tx_packets to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %tx_packets, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !158
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i100, i16 288) #12, !srcloc !159
  br label %do.body2.i138

do.body2.i138:                                    ; preds = %do.body2.i138.do.body2.i138_crit_edge, %amd8111e_read_mib.exit130
  %repeat.0.i132 = phi i32 [ 10, %amd8111e_read_mib.exit130 ], [ %dec.i133, %do.body2.i138.do.body2.i138_crit_edge ]
  %22 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i100) #12, !srcloc !160
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !161
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %23(i32 noundef 429496) #12
  %dec.i133 = add nsw i32 %repeat.0.i132, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i133)
  %tobool.not.i134 = icmp eq i32 %dec.i133, 0
  %.mask.i135 = and i16 %22, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %.mask.i135)
  %tobool7.not.i136 = icmp eq i16 %.mask.i135, 0
  %or.cond.i137 = select i1 %tobool.not.i134, i1 true, i1 %tobool7.not.i136
  br i1 %or.cond.i137, label %amd8111e_read_mib.exit140, label %do.body2.i138.do.body2.i138_crit_edge

do.body2.i138.do.body2.i138_crit_edge:            ; preds = %do.body2.i138
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body2.i138

amd8111e_read_mib.exit140:                        ; preds = %do.body2.i138
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11.i) #12, !srcloc !143
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !162
  %rx_bytes = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 2
  %26 = ptrtoint ptr %rx_bytes to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %rx_bytes, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !158
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i100, i16 8480) #12, !srcloc !159
  br label %do.body2.i148

do.body2.i148:                                    ; preds = %do.body2.i148.do.body2.i148_crit_edge, %amd8111e_read_mib.exit140
  %repeat.0.i142 = phi i32 [ 10, %amd8111e_read_mib.exit140 ], [ %dec.i143, %do.body2.i148.do.body2.i148_crit_edge ]
  %27 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i100) #12, !srcloc !160
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !161
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %28 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %28(i32 noundef 429496) #12
  %dec.i143 = add nsw i32 %repeat.0.i142, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i143)
  %tobool.not.i144 = icmp eq i32 %dec.i143, 0
  %.mask.i145 = and i16 %27, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %.mask.i145)
  %tobool7.not.i146 = icmp eq i16 %.mask.i145, 0
  %or.cond.i147 = select i1 %tobool.not.i144, i1 true, i1 %tobool7.not.i146
  br i1 %or.cond.i147, label %amd8111e_read_mib.exit150, label %do.body2.i148.do.body2.i148_crit_edge

do.body2.i148.do.body2.i148_crit_edge:            ; preds = %do.body2.i148
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body2.i148

amd8111e_read_mib.exit150:                        ; preds = %do.body2.i148
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11.i) #12, !srcloc !143
  %30 = tail call i32 @llvm.bswap.i32(i32 %29) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !162
  %tx_bytes = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 3
  %31 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %tx_bytes, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !158
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i100, i16 1056) #12, !srcloc !159
  br label %do.body2.i158

do.body2.i158:                                    ; preds = %do.body2.i158.do.body2.i158_crit_edge, %amd8111e_read_mib.exit150
  %repeat.0.i152 = phi i32 [ 10, %amd8111e_read_mib.exit150 ], [ %dec.i153, %do.body2.i158.do.body2.i158_crit_edge ]
  %32 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i100) #12, !srcloc !160
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !161
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %33 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %33(i32 noundef 429496) #12
  %dec.i153 = add nsw i32 %repeat.0.i152, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i153)
  %tobool.not.i154 = icmp eq i32 %dec.i153, 0
  %.mask.i155 = and i16 %32, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %.mask.i155)
  %tobool7.not.i156 = icmp eq i16 %.mask.i155, 0
  %or.cond.i157 = select i1 %tobool.not.i154, i1 true, i1 %tobool7.not.i156
  br i1 %or.cond.i157, label %amd8111e_read_mib.exit160, label %do.body2.i158.do.body2.i158_crit_edge

do.body2.i158.do.body2.i158_crit_edge:            ; preds = %do.body2.i158
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body2.i158

amd8111e_read_mib.exit160:                        ; preds = %do.body2.i158
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11.i) #12, !srcloc !143
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !162
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !158
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i100, i16 1568) #12, !srcloc !159
  br label %do.body2.i168

do.body2.i168:                                    ; preds = %do.body2.i168.do.body2.i168_crit_edge, %amd8111e_read_mib.exit160
  %repeat.0.i162 = phi i32 [ 10, %amd8111e_read_mib.exit160 ], [ %dec.i163, %do.body2.i168.do.body2.i168_crit_edge ]
  %35 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i100) #12, !srcloc !160
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !161
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %36 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %36(i32 noundef 429496) #12
  %dec.i163 = add nsw i32 %repeat.0.i162, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i163)
  %tobool.not.i164 = icmp eq i32 %dec.i163, 0
  %.mask.i165 = and i16 %35, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %.mask.i165)
  %tobool7.not.i166 = icmp eq i16 %.mask.i165, 0
  %or.cond.i167 = select i1 %tobool.not.i164, i1 true, i1 %tobool7.not.i166
  br i1 %or.cond.i167, label %amd8111e_read_mib.exit170, label %do.body2.i168.do.body2.i168_crit_edge

do.body2.i168.do.body2.i168_crit_edge:            ; preds = %do.body2.i168
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body2.i168

amd8111e_read_mib.exit170:                        ; preds = %do.body2.i168
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11.i) #12, !srcloc !143
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !162
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !158
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i100, i16 1824) #12, !srcloc !159
  br label %do.body2.i178

do.body2.i178:                                    ; preds = %do.body2.i178.do.body2.i178_crit_edge, %amd8111e_read_mib.exit170
  %repeat.0.i172 = phi i32 [ 10, %amd8111e_read_mib.exit170 ], [ %dec.i173, %do.body2.i178.do.body2.i178_crit_edge ]
  %38 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i100) #12, !srcloc !160
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !161
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %39 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %39(i32 noundef 429496) #12
  %dec.i173 = add nsw i32 %repeat.0.i172, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i173)
  %tobool.not.i174 = icmp eq i32 %dec.i173, 0
  %.mask.i175 = and i16 %38, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %.mask.i175)
  %tobool7.not.i176 = icmp eq i16 %.mask.i175, 0
  %or.cond.i177 = select i1 %tobool.not.i174, i1 true, i1 %tobool7.not.i176
  br i1 %or.cond.i177, label %amd8111e_read_mib.exit180, label %do.body2.i178.do.body2.i178_crit_edge

do.body2.i178.do.body2.i178_crit_edge:            ; preds = %do.body2.i178
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body2.i178

amd8111e_read_mib.exit180:                        ; preds = %do.body2.i178
  %40 = tail call i32 @llvm.bswap.i32(i32 %37) #12
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11.i) #12, !srcloc !143
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !162
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !158
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i100, i16 2336) #12, !srcloc !159
  br label %do.body2.i188

do.body2.i188:                                    ; preds = %do.body2.i188.do.body2.i188_crit_edge, %amd8111e_read_mib.exit180
  %repeat.0.i182 = phi i32 [ 10, %amd8111e_read_mib.exit180 ], [ %dec.i183, %do.body2.i188.do.body2.i188_crit_edge ]
  %42 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i100) #12, !srcloc !160
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !161
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %43 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %43(i32 noundef 429496) #12
  %dec.i183 = add nsw i32 %repeat.0.i182, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i183)
  %tobool.not.i184 = icmp eq i32 %dec.i183, 0
  %.mask.i185 = and i16 %42, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %.mask.i185)
  %tobool7.not.i186 = icmp eq i16 %.mask.i185, 0
  %or.cond.i187 = select i1 %tobool.not.i184, i1 true, i1 %tobool7.not.i186
  br i1 %or.cond.i187, label %amd8111e_read_mib.exit190, label %do.body2.i188.do.body2.i188_crit_edge

do.body2.i188.do.body2.i188_crit_edge:            ; preds = %do.body2.i188
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body2.i188

amd8111e_read_mib.exit190:                        ; preds = %do.body2.i188
  %44 = tail call i32 @llvm.bswap.i32(i32 %34) #12
  %45 = tail call i32 @llvm.bswap.i32(i32 %41) #12
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11.i) #12, !srcloc !143
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !162
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !158
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i100, i16 2592) #12, !srcloc !159
  br label %do.body2.i198

do.body2.i198:                                    ; preds = %do.body2.i198.do.body2.i198_crit_edge, %amd8111e_read_mib.exit190
  %repeat.0.i192 = phi i32 [ 10, %amd8111e_read_mib.exit190 ], [ %dec.i193, %do.body2.i198.do.body2.i198_crit_edge ]
  %47 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i100) #12, !srcloc !160
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !161
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %48 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %48(i32 noundef 429496) #12
  %dec.i193 = add nsw i32 %repeat.0.i192, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i193)
  %tobool.not.i194 = icmp eq i32 %dec.i193, 0
  %.mask.i195 = and i16 %47, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %.mask.i195)
  %tobool7.not.i196 = icmp eq i16 %.mask.i195, 0
  %or.cond.i197 = select i1 %tobool.not.i194, i1 true, i1 %tobool7.not.i196
  br i1 %or.cond.i197, label %amd8111e_read_mib.exit200, label %do.body2.i198.do.body2.i198_crit_edge

do.body2.i198.do.body2.i198_crit_edge:            ; preds = %do.body2.i198
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body2.i198

amd8111e_read_mib.exit200:                        ; preds = %do.body2.i198
  %add16 = add i32 %40, %44
  %49 = tail call i32 @llvm.bswap.i32(i32 %46) #12
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11.i) #12, !srcloc !143
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !162
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !158
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i100, i16 32) #12, !srcloc !159
  br label %do.body2.i208

do.body2.i208:                                    ; preds = %do.body2.i208.do.body2.i208_crit_edge, %amd8111e_read_mib.exit200
  %repeat.0.i202 = phi i32 [ 10, %amd8111e_read_mib.exit200 ], [ %dec.i203, %do.body2.i208.do.body2.i208_crit_edge ]
  %51 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i100) #12, !srcloc !160
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !161
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %52 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %52(i32 noundef 429496) #12
  %dec.i203 = add nsw i32 %repeat.0.i202, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i203)
  %tobool.not.i204 = icmp eq i32 %dec.i203, 0
  %.mask.i205 = and i16 %51, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %.mask.i205)
  %tobool7.not.i206 = icmp eq i16 %.mask.i205, 0
  %or.cond.i207 = select i1 %tobool.not.i204, i1 true, i1 %tobool7.not.i206
  br i1 %or.cond.i207, label %amd8111e_read_mib.exit210, label %do.body2.i208.do.body2.i208_crit_edge

do.body2.i208.do.body2.i208_crit_edge:            ; preds = %do.body2.i208
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body2.i208

amd8111e_read_mib.exit210:                        ; preds = %do.body2.i208
  %add18 = add i32 %add16, %45
  %add20 = add i32 %add18, %49
  %53 = tail call i32 @llvm.bswap.i32(i32 %50) #12
  %add22 = add i32 %add20, %53
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11.i) #12, !srcloc !143
  %55 = tail call i32 @llvm.bswap.i32(i32 %54) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !162
  %add24 = add i32 %add22, %55
  %drv_rx_errors = getelementptr i8, ptr %dev, i32 3216
  %56 = ptrtoint ptr %drv_rx_errors to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %drv_rx_errors, align 8
  %add25 = add i32 %add24, %57
  %rx_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 4
  %58 = ptrtoint ptr %rx_errors to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %add25, ptr %rx_errors, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !158
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i100, i16 8224) #12, !srcloc !159
  br label %do.body2.i218

do.body2.i218:                                    ; preds = %do.body2.i218.do.body2.i218_crit_edge, %amd8111e_read_mib.exit210
  %repeat.0.i212 = phi i32 [ 10, %amd8111e_read_mib.exit210 ], [ %dec.i213, %do.body2.i218.do.body2.i218_crit_edge ]
  %59 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i100) #12, !srcloc !160
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !161
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %60 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %60(i32 noundef 429496) #12
  %dec.i213 = add nsw i32 %repeat.0.i212, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i213)
  %tobool.not.i214 = icmp eq i32 %dec.i213, 0
  %.mask.i215 = and i16 %59, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %.mask.i215)
  %tobool7.not.i216 = icmp eq i16 %.mask.i215, 0
  %or.cond.i217 = select i1 %tobool.not.i214, i1 true, i1 %tobool7.not.i216
  br i1 %or.cond.i217, label %amd8111e_read_mib.exit220, label %do.body2.i218.do.body2.i218_crit_edge

do.body2.i218.do.body2.i218_crit_edge:            ; preds = %do.body2.i218
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body2.i218

amd8111e_read_mib.exit220:                        ; preds = %do.body2.i218
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11.i) #12, !srcloc !143
  %62 = tail call i32 @llvm.bswap.i32(i32 %61) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !162
  %tx_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 5
  %63 = ptrtoint ptr %tx_errors to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %62, ptr %tx_errors, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !158
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i100, i16 32) #12, !srcloc !159
  br label %do.body2.i228

do.body2.i228:                                    ; preds = %do.body2.i228.do.body2.i228_crit_edge, %amd8111e_read_mib.exit220
  %repeat.0.i222 = phi i32 [ 10, %amd8111e_read_mib.exit220 ], [ %dec.i223, %do.body2.i228.do.body2.i228_crit_edge ]
  %64 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i100) #12, !srcloc !160
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !161
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %65 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %65(i32 noundef 429496) #12
  %dec.i223 = add nsw i32 %repeat.0.i222, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i223)
  %tobool.not.i224 = icmp eq i32 %dec.i223, 0
  %.mask.i225 = and i16 %64, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %.mask.i225)
  %tobool7.not.i226 = icmp eq i16 %.mask.i225, 0
  %or.cond.i227 = select i1 %tobool.not.i224, i1 true, i1 %tobool7.not.i226
  br i1 %or.cond.i227, label %amd8111e_read_mib.exit230, label %do.body2.i228.do.body2.i228_crit_edge

do.body2.i228.do.body2.i228_crit_edge:            ; preds = %do.body2.i228
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body2.i228

amd8111e_read_mib.exit230:                        ; preds = %do.body2.i228
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11.i) #12, !srcloc !143
  %67 = tail call i32 @llvm.bswap.i32(i32 %66) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !162
  %rx_dropped = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 6
  %68 = ptrtoint ptr %rx_dropped to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %67, ptr %rx_dropped, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !158
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i100, i16 8224) #12, !srcloc !159
  br label %do.body2.i238

do.body2.i238:                                    ; preds = %do.body2.i238.do.body2.i238_crit_edge, %amd8111e_read_mib.exit230
  %repeat.0.i232 = phi i32 [ 10, %amd8111e_read_mib.exit230 ], [ %dec.i233, %do.body2.i238.do.body2.i238_crit_edge ]
  %69 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i100) #12, !srcloc !160
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !161
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %70 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %70(i32 noundef 429496) #12
  %dec.i233 = add nsw i32 %repeat.0.i232, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i233)
  %tobool.not.i234 = icmp eq i32 %dec.i233, 0
  %.mask.i235 = and i16 %69, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %.mask.i235)
  %tobool7.not.i236 = icmp eq i16 %.mask.i235, 0
  %or.cond.i237 = select i1 %tobool.not.i234, i1 true, i1 %tobool7.not.i236
  br i1 %or.cond.i237, label %amd8111e_read_mib.exit240, label %do.body2.i238.do.body2.i238_crit_edge

do.body2.i238.do.body2.i238_crit_edge:            ; preds = %do.body2.i238
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body2.i238

amd8111e_read_mib.exit240:                        ; preds = %do.body2.i238
  %71 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11.i) #12, !srcloc !143
  %72 = tail call i32 @llvm.bswap.i32(i32 %71) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !162
  %tx_dropped = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 7
  %73 = ptrtoint ptr %tx_dropped to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %72, ptr %tx_dropped, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !158
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i100, i16 800) #12, !srcloc !159
  br label %do.body2.i248

do.body2.i248:                                    ; preds = %do.body2.i248.do.body2.i248_crit_edge, %amd8111e_read_mib.exit240
  %repeat.0.i242 = phi i32 [ 10, %amd8111e_read_mib.exit240 ], [ %dec.i243, %do.body2.i248.do.body2.i248_crit_edge ]
  %74 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i100) #12, !srcloc !160
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !161
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %75 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %75(i32 noundef 429496) #12
  %dec.i243 = add nsw i32 %repeat.0.i242, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i243)
  %tobool.not.i244 = icmp eq i32 %dec.i243, 0
  %.mask.i245 = and i16 %74, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %.mask.i245)
  %tobool7.not.i246 = icmp eq i16 %.mask.i245, 0
  %or.cond.i247 = select i1 %tobool.not.i244, i1 true, i1 %tobool7.not.i246
  br i1 %or.cond.i247, label %amd8111e_read_mib.exit250, label %do.body2.i248.do.body2.i248_crit_edge

do.body2.i248.do.body2.i248_crit_edge:            ; preds = %do.body2.i248
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body2.i248

amd8111e_read_mib.exit250:                        ; preds = %do.body2.i248
  %76 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11.i) #12, !srcloc !143
  %77 = tail call i32 @llvm.bswap.i32(i32 %76) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !162
  %multicast = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 8
  %78 = ptrtoint ptr %multicast to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %77, ptr %multicast, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !158
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i100, i16 9504) #12, !srcloc !159
  br label %do.body2.i258

do.body2.i258:                                    ; preds = %do.body2.i258.do.body2.i258_crit_edge, %amd8111e_read_mib.exit250
  %repeat.0.i252 = phi i32 [ 10, %amd8111e_read_mib.exit250 ], [ %dec.i253, %do.body2.i258.do.body2.i258_crit_edge ]
  %79 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i100) #12, !srcloc !160
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !161
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %80 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %80(i32 noundef 429496) #12
  %dec.i253 = add nsw i32 %repeat.0.i252, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i253)
  %tobool.not.i254 = icmp eq i32 %dec.i253, 0
  %.mask.i255 = and i16 %79, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %.mask.i255)
  %tobool7.not.i256 = icmp eq i16 %.mask.i255, 0
  %or.cond.i257 = select i1 %tobool.not.i254, i1 true, i1 %tobool7.not.i256
  br i1 %or.cond.i257, label %amd8111e_read_mib.exit260, label %do.body2.i258.do.body2.i258_crit_edge

do.body2.i258.do.body2.i258_crit_edge:            ; preds = %do.body2.i258
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body2.i258

amd8111e_read_mib.exit260:                        ; preds = %do.body2.i258
  %81 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11.i) #12, !srcloc !143
  %82 = tail call i32 @llvm.bswap.i32(i32 %81) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !162
  %collisions = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 9
  %83 = ptrtoint ptr %collisions to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %82, ptr %collisions, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !158
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i100, i16 1056) #12, !srcloc !159
  br label %do.body2.i268

do.body2.i268:                                    ; preds = %do.body2.i268.do.body2.i268_crit_edge, %amd8111e_read_mib.exit260
  %repeat.0.i262 = phi i32 [ 10, %amd8111e_read_mib.exit260 ], [ %dec.i263, %do.body2.i268.do.body2.i268_crit_edge ]
  %84 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i100) #12, !srcloc !160
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !161
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %85 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %85(i32 noundef 429496) #12
  %dec.i263 = add nsw i32 %repeat.0.i262, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i263)
  %tobool.not.i264 = icmp eq i32 %dec.i263, 0
  %.mask.i265 = and i16 %84, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %.mask.i265)
  %tobool7.not.i266 = icmp eq i16 %.mask.i265, 0
  %or.cond.i267 = select i1 %tobool.not.i264, i1 true, i1 %tobool7.not.i266
  br i1 %or.cond.i267, label %amd8111e_read_mib.exit270, label %do.body2.i268.do.body2.i268_crit_edge

do.body2.i268.do.body2.i268_crit_edge:            ; preds = %do.body2.i268
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body2.i268

amd8111e_read_mib.exit270:                        ; preds = %do.body2.i268
  %86 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11.i) #12, !srcloc !143
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !162
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !158
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i100, i16 1312) #12, !srcloc !159
  br label %do.body2.i278

do.body2.i278:                                    ; preds = %do.body2.i278.do.body2.i278_crit_edge, %amd8111e_read_mib.exit270
  %repeat.0.i272 = phi i32 [ 10, %amd8111e_read_mib.exit270 ], [ %dec.i273, %do.body2.i278.do.body2.i278_crit_edge ]
  %87 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i100) #12, !srcloc !160
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !161
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %88 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %88(i32 noundef 429496) #12
  %dec.i273 = add nsw i32 %repeat.0.i272, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i273)
  %tobool.not.i274 = icmp eq i32 %dec.i273, 0
  %.mask.i275 = and i16 %87, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %.mask.i275)
  %tobool7.not.i276 = icmp eq i16 %.mask.i275, 0
  %or.cond.i277 = select i1 %tobool.not.i274, i1 true, i1 %tobool7.not.i276
  br i1 %or.cond.i277, label %amd8111e_read_mib.exit280, label %do.body2.i278.do.body2.i278_crit_edge

do.body2.i278.do.body2.i278_crit_edge:            ; preds = %do.body2.i278
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body2.i278

amd8111e_read_mib.exit280:                        ; preds = %do.body2.i278
  %89 = tail call i32 @llvm.bswap.i32(i32 %86) #12
  %90 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11.i) #12, !srcloc !143
  %91 = tail call i32 @llvm.bswap.i32(i32 %90) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !162
  %add33 = add i32 %91, %89
  %rx_length_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 10
  %92 = ptrtoint ptr %rx_length_errors to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %add33, ptr %rx_length_errors, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !158
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i100, i16 32) #12, !srcloc !159
  br label %do.body2.i288

do.body2.i288:                                    ; preds = %do.body2.i288.do.body2.i288_crit_edge, %amd8111e_read_mib.exit280
  %repeat.0.i282 = phi i32 [ 10, %amd8111e_read_mib.exit280 ], [ %dec.i283, %do.body2.i288.do.body2.i288_crit_edge ]
  %93 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i100) #12, !srcloc !160
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !161
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %94 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %94(i32 noundef 429496) #12
  %dec.i283 = add nsw i32 %repeat.0.i282, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i283)
  %tobool.not.i284 = icmp eq i32 %dec.i283, 0
  %.mask.i285 = and i16 %93, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %.mask.i285)
  %tobool7.not.i286 = icmp eq i16 %.mask.i285, 0
  %or.cond.i287 = select i1 %tobool.not.i284, i1 true, i1 %tobool7.not.i286
  br i1 %or.cond.i287, label %amd8111e_read_mib.exit290, label %do.body2.i288.do.body2.i288_crit_edge

do.body2.i288.do.body2.i288_crit_edge:            ; preds = %do.body2.i288
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body2.i288

amd8111e_read_mib.exit290:                        ; preds = %do.body2.i288
  %95 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11.i) #12, !srcloc !143
  %96 = tail call i32 @llvm.bswap.i32(i32 %95) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !162
  %rx_over_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 11
  %97 = ptrtoint ptr %rx_over_errors to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %96, ptr %rx_over_errors, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !158
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i100, i16 2592) #12, !srcloc !159
  br label %do.body2.i298

do.body2.i298:                                    ; preds = %do.body2.i298.do.body2.i298_crit_edge, %amd8111e_read_mib.exit290
  %repeat.0.i292 = phi i32 [ 10, %amd8111e_read_mib.exit290 ], [ %dec.i293, %do.body2.i298.do.body2.i298_crit_edge ]
  %98 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i100) #12, !srcloc !160
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !161
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %99 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %99(i32 noundef 429496) #12
  %dec.i293 = add nsw i32 %repeat.0.i292, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i293)
  %tobool.not.i294 = icmp eq i32 %dec.i293, 0
  %.mask.i295 = and i16 %98, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %.mask.i295)
  %tobool7.not.i296 = icmp eq i16 %.mask.i295, 0
  %or.cond.i297 = select i1 %tobool.not.i294, i1 true, i1 %tobool7.not.i296
  br i1 %or.cond.i297, label %amd8111e_read_mib.exit300, label %do.body2.i298.do.body2.i298_crit_edge

do.body2.i298.do.body2.i298_crit_edge:            ; preds = %do.body2.i298
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body2.i298

amd8111e_read_mib.exit300:                        ; preds = %do.body2.i298
  %100 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11.i) #12, !srcloc !143
  %101 = tail call i32 @llvm.bswap.i32(i32 %100) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !162
  %rx_crc_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 12
  %102 = ptrtoint ptr %rx_crc_errors to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %101, ptr %rx_crc_errors, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !158
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i100, i16 2336) #12, !srcloc !159
  br label %do.body2.i308

do.body2.i308:                                    ; preds = %do.body2.i308.do.body2.i308_crit_edge, %amd8111e_read_mib.exit300
  %repeat.0.i302 = phi i32 [ 10, %amd8111e_read_mib.exit300 ], [ %dec.i303, %do.body2.i308.do.body2.i308_crit_edge ]
  %103 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i100) #12, !srcloc !160
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !161
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %104 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %104(i32 noundef 429496) #12
  %dec.i303 = add nsw i32 %repeat.0.i302, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i303)
  %tobool.not.i304 = icmp eq i32 %dec.i303, 0
  %.mask.i305 = and i16 %103, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %.mask.i305)
  %tobool7.not.i306 = icmp eq i16 %.mask.i305, 0
  %or.cond.i307 = select i1 %tobool.not.i304, i1 true, i1 %tobool7.not.i306
  br i1 %or.cond.i307, label %amd8111e_read_mib.exit310, label %do.body2.i308.do.body2.i308_crit_edge

do.body2.i308.do.body2.i308_crit_edge:            ; preds = %do.body2.i308
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body2.i308

amd8111e_read_mib.exit310:                        ; preds = %do.body2.i308
  %105 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11.i) #12, !srcloc !143
  %106 = tail call i32 @llvm.bswap.i32(i32 %105) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !162
  %rx_frame_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 13
  %107 = ptrtoint ptr %rx_frame_errors to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %106, ptr %rx_frame_errors, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !158
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i100, i16 32) #12, !srcloc !159
  br label %do.body2.i318

do.body2.i318:                                    ; preds = %do.body2.i318.do.body2.i318_crit_edge, %amd8111e_read_mib.exit310
  %repeat.0.i312 = phi i32 [ 10, %amd8111e_read_mib.exit310 ], [ %dec.i313, %do.body2.i318.do.body2.i318_crit_edge ]
  %108 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i100) #12, !srcloc !160
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !161
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %109 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %109(i32 noundef 429496) #12
  %dec.i313 = add nsw i32 %repeat.0.i312, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i313)
  %tobool.not.i314 = icmp eq i32 %dec.i313, 0
  %.mask.i315 = and i16 %108, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %.mask.i315)
  %tobool7.not.i316 = icmp eq i16 %.mask.i315, 0
  %or.cond.i317 = select i1 %tobool.not.i314, i1 true, i1 %tobool7.not.i316
  br i1 %or.cond.i317, label %amd8111e_read_mib.exit320, label %do.body2.i318.do.body2.i318_crit_edge

do.body2.i318.do.body2.i318_crit_edge:            ; preds = %do.body2.i318
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body2.i318

amd8111e_read_mib.exit320:                        ; preds = %do.body2.i318
  %110 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11.i) #12, !srcloc !143
  %111 = tail call i32 @llvm.bswap.i32(i32 %110) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !162
  %rx_fifo_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 14
  %112 = ptrtoint ptr %rx_fifo_errors to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %111, ptr %rx_fifo_errors, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !158
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i100, i16 32) #12, !srcloc !159
  br label %do.body2.i328

do.body2.i328:                                    ; preds = %do.body2.i328.do.body2.i328_crit_edge, %amd8111e_read_mib.exit320
  %repeat.0.i322 = phi i32 [ 10, %amd8111e_read_mib.exit320 ], [ %dec.i323, %do.body2.i328.do.body2.i328_crit_edge ]
  %113 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i100) #12, !srcloc !160
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !161
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %114 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %114(i32 noundef 429496) #12
  %dec.i323 = add nsw i32 %repeat.0.i322, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i323)
  %tobool.not.i324 = icmp eq i32 %dec.i323, 0
  %.mask.i325 = and i16 %113, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %.mask.i325)
  %tobool7.not.i326 = icmp eq i16 %.mask.i325, 0
  %or.cond.i327 = select i1 %tobool.not.i324, i1 true, i1 %tobool7.not.i326
  br i1 %or.cond.i327, label %amd8111e_read_mib.exit330, label %do.body2.i328.do.body2.i328_crit_edge

do.body2.i328.do.body2.i328_crit_edge:            ; preds = %do.body2.i328
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body2.i328

amd8111e_read_mib.exit330:                        ; preds = %do.body2.i328
  %115 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11.i) #12, !srcloc !143
  %116 = tail call i32 @llvm.bswap.i32(i32 %115) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !162
  %rx_missed_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 15
  %117 = ptrtoint ptr %rx_missed_errors to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %116, ptr %rx_missed_errors, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !158
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i100, i16 11552) #12, !srcloc !159
  br label %do.body2.i338

do.body2.i338:                                    ; preds = %do.body2.i338.do.body2.i338_crit_edge, %amd8111e_read_mib.exit330
  %repeat.0.i332 = phi i32 [ 10, %amd8111e_read_mib.exit330 ], [ %dec.i333, %do.body2.i338.do.body2.i338_crit_edge ]
  %118 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i100) #12, !srcloc !160
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !161
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %119 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %119(i32 noundef 429496) #12
  %dec.i333 = add nsw i32 %repeat.0.i332, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i333)
  %tobool.not.i334 = icmp eq i32 %dec.i333, 0
  %.mask.i335 = and i16 %118, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %.mask.i335)
  %tobool7.not.i336 = icmp eq i16 %.mask.i335, 0
  %or.cond.i337 = select i1 %tobool.not.i334, i1 true, i1 %tobool7.not.i336
  br i1 %or.cond.i337, label %amd8111e_read_mib.exit340, label %do.body2.i338.do.body2.i338_crit_edge

do.body2.i338.do.body2.i338_crit_edge:            ; preds = %do.body2.i338
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body2.i338

amd8111e_read_mib.exit340:                        ; preds = %do.body2.i338
  %120 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11.i) #12, !srcloc !143
  %121 = tail call i32 @llvm.bswap.i32(i32 %120) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !162
  %tx_aborted_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 16
  %122 = ptrtoint ptr %tx_aborted_errors to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %121, ptr %tx_aborted_errors, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !158
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i100, i16 11296) #12, !srcloc !159
  br label %do.body2.i348

do.body2.i348:                                    ; preds = %do.body2.i348.do.body2.i348_crit_edge, %amd8111e_read_mib.exit340
  %repeat.0.i342 = phi i32 [ 10, %amd8111e_read_mib.exit340 ], [ %dec.i343, %do.body2.i348.do.body2.i348_crit_edge ]
  %123 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i100) #12, !srcloc !160
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !161
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %124 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %124(i32 noundef 429496) #12
  %dec.i343 = add nsw i32 %repeat.0.i342, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i343)
  %tobool.not.i344 = icmp eq i32 %dec.i343, 0
  %.mask.i345 = and i16 %123, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %.mask.i345)
  %tobool7.not.i346 = icmp eq i16 %.mask.i345, 0
  %or.cond.i347 = select i1 %tobool.not.i344, i1 true, i1 %tobool7.not.i346
  br i1 %or.cond.i347, label %amd8111e_read_mib.exit350, label %do.body2.i348.do.body2.i348_crit_edge

do.body2.i348.do.body2.i348_crit_edge:            ; preds = %do.body2.i348
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body2.i348

amd8111e_read_mib.exit350:                        ; preds = %do.body2.i348
  %125 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11.i) #12, !srcloc !143
  %126 = tail call i32 @llvm.bswap.i32(i32 %125) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !162
  %tx_carrier_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 17
  %127 = ptrtoint ptr %tx_carrier_errors to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 %126, ptr %tx_carrier_errors, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !158
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i100, i16 8224) #12, !srcloc !159
  br label %do.body2.i358

do.body2.i358:                                    ; preds = %do.body2.i358.do.body2.i358_crit_edge, %amd8111e_read_mib.exit350
  %repeat.0.i352 = phi i32 [ 10, %amd8111e_read_mib.exit350 ], [ %dec.i353, %do.body2.i358.do.body2.i358_crit_edge ]
  %128 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i100) #12, !srcloc !160
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !161
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %129 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %129(i32 noundef 429496) #12
  %dec.i353 = add nsw i32 %repeat.0.i352, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i353)
  %tobool.not.i354 = icmp eq i32 %dec.i353, 0
  %.mask.i355 = and i16 %128, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %.mask.i355)
  %tobool7.not.i356 = icmp eq i16 %.mask.i355, 0
  %or.cond.i357 = select i1 %tobool.not.i354, i1 true, i1 %tobool7.not.i356
  br i1 %or.cond.i357, label %amd8111e_read_mib.exit360, label %do.body2.i358.do.body2.i358_crit_edge

do.body2.i358.do.body2.i358_crit_edge:            ; preds = %do.body2.i358
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body2.i358

amd8111e_read_mib.exit360:                        ; preds = %do.body2.i358
  %130 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11.i) #12, !srcloc !143
  %131 = tail call i32 @llvm.bswap.i32(i32 %130) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !162
  %tx_fifo_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 18
  %132 = ptrtoint ptr %tx_fifo_errors to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 %131, ptr %tx_fifo_errors, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !158
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i100, i16 10784) #12, !srcloc !159
  br label %do.body2.i368

do.body2.i368:                                    ; preds = %do.body2.i368.do.body2.i368_crit_edge, %amd8111e_read_mib.exit360
  %repeat.0.i362 = phi i32 [ 10, %amd8111e_read_mib.exit360 ], [ %dec.i363, %do.body2.i368.do.body2.i368_crit_edge ]
  %133 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i100) #12, !srcloc !160
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !161
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %134 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %134(i32 noundef 429496) #12
  %dec.i363 = add nsw i32 %repeat.0.i362, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i363)
  %tobool.not.i364 = icmp eq i32 %dec.i363, 0
  %.mask.i365 = and i16 %133, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %.mask.i365)
  %tobool7.not.i366 = icmp eq i16 %.mask.i365, 0
  %or.cond.i367 = select i1 %tobool.not.i364, i1 true, i1 %tobool7.not.i366
  br i1 %or.cond.i367, label %amd8111e_read_mib.exit370, label %do.body2.i368.do.body2.i368_crit_edge

do.body2.i368.do.body2.i368_crit_edge:            ; preds = %do.body2.i368
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body2.i368

amd8111e_read_mib.exit370:                        ; preds = %do.body2.i368
  call void @__sanitizer_cov_trace_pc() #14
  %135 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11.i) #12, !srcloc !143
  %136 = tail call i32 @llvm.bswap.i32(i32 %135) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !162
  %tx_window_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 20
  %137 = ptrtoint ptr %tx_window_errors to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 %136, ptr %tx_window_errors, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #12
  br label %cleanup

cleanup:                                          ; preds = %amd8111e_read_mib.exit370, %entry.cleanup_crit_edge
  ret ptr %stats
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @amd8111e_poll(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !218
  %and.i = and i32 %0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %if.then22, label %do.end11

do.end11:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call12 = tail call i32 @amd8111e_interrupt(i32 noundef 0, ptr noundef %dev)
  br label %do.body24

if.then22:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @trace_hardirqs_off() #12
  %call1247 = tail call i32 @amd8111e_interrupt(i32 noundef 0, ptr noundef %dev)
  tail call void @trace_hardirqs_on() #12
  br label %do.body24

do.body24:                                        ; preds = %if.then22, %do.end11
  %1 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !219
  %and.i.i = and i32 %1, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool32.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool32.not, label %if.then36, label %do.body24.do.end39_crit_edge, !prof !220

do.body24.do.end39_crit_edge:                     ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end39

if.then36:                                        ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @warn_bogus_irq_restore() #12
  br label %do.end39

do.end39:                                         ; preds = %if.then36, %do.body24.do.end39_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #12, !srcloc !221
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amd8111e_interrupt(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev_id, i32 2304
  %cmp = icmp eq ptr %dev_id, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end, !prof !220

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %mmio1 = getelementptr i8, ptr %dev_id, i32 2844
  %0 = ptrtoint ptr %mmio1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmio1, align 4
  %lock = getelementptr i8, ptr %dev_id, i32 3072
  tail call void @_raw_spin_lock(ptr noundef %lock) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !222
  tail call void @arm_heavy_mb() #12
  %add.ptr = getelementptr i8, ptr %1, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 33554432) #12, !srcloc !147
  %add.ptr3 = getelementptr i8, ptr %1, i32 56
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3) #12, !srcloc !143
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !223
  %add.ptr8 = getelementptr i8, ptr %1, i32 64
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8) #12, !srcloc !143
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !224
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %tobool12.not = icmp sgt i32 %3, -1
  br i1 %tobool12.not, label %if.end.do.body71_crit_edge, label %do.body15

if.end.do.body71_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body71

do.body15:                                        ; preds = %if.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !225
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %2) #12, !srcloc !147
  %and19 = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %do.body15.if.end55_crit_edge, label %if.then21

do.body15.if.end55_crit_edge:                     ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end55

if.then21:                                        ; preds = %do.body15
  %napi = getelementptr i8, ptr %dev_id, i32 2848
  %call22 = tail call zeroext i1 @napi_schedule_prep(ptr noundef %napi) #12
  br i1 %call22, label %do.body24, label %if.else

do.body24:                                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !226
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 16777216) #12, !srcloc !147
  tail call void @__napi_schedule(ptr noundef %napi) #12
  br label %if.end55

if.else:                                          ; preds = %if.then21
  %5 = and i32 %4, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool30.not = icmp eq i32 %5, 0
  br i1 %tobool30.not, label %if.else.if.end55_crit_edge, label %do.body33

if.else.if.end55_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end55

do.body33:                                        ; preds = %if.else
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @amd8111e_interrupt.__UNIQUE_ID_ddebug353, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@amd8111e_interrupt, %if.then43)) #12
          to label %do.body49 [label %if.then43], !srcloc !227

if.then43:                                        ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @amd8111e_interrupt.__UNIQUE_ID_ddebug353, ptr noundef nonnull %dev_id, ptr noundef nonnull @.str.39) #12
  br label %do.body49

do.body49:                                        ; preds = %if.then43, %do.body33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !228
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 16777216) #12, !srcloc !147
  br label %if.end55

if.end55:                                         ; preds = %do.body49, %if.else.if.end55_crit_edge, %do.body24, %do.body15.if.end55_crit_edge
  %and56 = and i32 %3, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56)
  %tobool57.not = icmp eq i32 %and56, 0
  br i1 %tobool57.not, label %if.end55.if.end60_crit_edge, label %if.then58

if.end55.if.end60_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end60

if.then58:                                        ; preds = %if.end55
  %tx_complete_idx.i = getelementptr i8, ptr %dev_id, i32 3124
  %tx_idx.i = getelementptr i8, ptr %dev_id, i32 3120
  %6 = ptrtoint ptr %tx_complete_idx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tx_complete_idx.i, align 4
  %8 = ptrtoint ptr %tx_idx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tx_idx.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp.not2.i = icmp eq i32 %7, %9
  br i1 %cmp.not2.i, label %if.then58.if.end60_crit_edge, label %while.body.lr.ph.i

if.then58.if.end60_crit_edge:                     ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end60

while.body.lr.ph.i:                               ; preds = %if.then58
  %pci_dev.i = getelementptr i8, ptr %dev_id, i32 2324
  %tx_packets.i = getelementptr i8, ptr %dev_id, i32 3256
  %tx_bytes.i = getelementptr i8, ptr %dev_id, i32 3264
  %_tx.i.i.i = getelementptr inbounds %struct.net_device, ptr %dev_id, i32 0, i32 103
  br label %while.body.i

while.body.i:                                     ; preds = %if.end33.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %10 = phi i32 [ %7, %while.body.lr.ph.i ], [ %46, %if.end33.i.while.body.i_crit_edge ]
  %and.i = and i32 %10, 31
  %11 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %add.ptr.i, align 8
  %tx_flags.i = getelementptr %struct.amd8111e_tx_dr, ptr %12, i32 %and.i, i32 1
  %13 = ptrtoint ptr %tx_flags.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %tx_flags.i, align 2
  %.mask.i = and i16 %14, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %.mask.i)
  %tobool.not.i = icmp eq i16 %.mask.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %while.body.i.if.end60_crit_edge

while.body.i.if.end60_crit_edge:                  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end60

if.end.i:                                         ; preds = %while.body.i
  %buff_phy_addr.i = getelementptr %struct.amd8111e_tx_dr, ptr %12, i32 %and.i, i32 4
  %15 = ptrtoint ptr %buff_phy_addr.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %buff_phy_addr.i, align 4
  %arrayidx5.i = getelementptr %struct.amd8111e_priv, ptr %add.ptr.i, i32 0, i32 7, i32 %and.i
  %16 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx5.i, align 4
  %tobool6.not.i = icmp eq ptr %17, null
  br i1 %tobool6.not.i, label %if.end.i.if.end18.i_crit_edge, label %if.then7.i

if.end.i.if.end18.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18.i

if.then7.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %18 = ptrtoint ptr %pci_dev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pci_dev.i, align 4
  %dev8.i = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 44
  %arrayidx9.i = getelementptr %struct.amd8111e_priv, ptr %add.ptr.i, i32 0, i32 9, i32 %and.i
  %20 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx9.i, align 4
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %17, i32 0, i32 6
  %22 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %len.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev8.i, i32 noundef %21, i32 noundef %23, i32 noundef 1, i32 noundef 0) #12
  %24 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx5.i, align 4
  tail call void @__dev_kfree_skb_irq(ptr noundef %25, i32 noundef 0) #12
  %26 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %arrayidx5.i, align 4
  %27 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %arrayidx9.i, align 4
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.then7.i, %if.end.i.if.end18.i_crit_edge
  %28 = ptrtoint ptr %tx_complete_idx.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %tx_complete_idx.i, align 4
  %inc.i = add i32 %29, 1
  store i32 %inc.i, ptr %tx_complete_idx.i, align 4
  %30 = ptrtoint ptr %tx_packets.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %tx_packets.i, align 4
  %inc20.i = add i32 %31, 1
  store i32 %inc20.i, ptr %tx_packets.i, align 4
  %32 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %add.ptr.i, align 8
  %arrayidx22.i = getelementptr %struct.amd8111e_tx_dr, ptr %33, i32 %and.i
  %34 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %arrayidx22.i, align 4
  %36 = tail call i16 @llvm.bswap.i16(i16 %35) #12
  %conv23.i = zext i16 %36 to i32
  %37 = ptrtoint ptr %tx_bytes.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %tx_bytes.i, align 4
  %add.i = add i32 %38, %conv23.i
  store i32 %add.i, ptr %tx_bytes.i, align 4
  %39 = ptrtoint ptr %_tx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %_tx.i.i.i, align 128
  %state.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %40, i32 0, i32 13
  %41 = ptrtoint ptr %state.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %state.i.i.i, align 4
  %and1.i.i.i.i = and i32 %42, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i)
  %tobool.i.i.not.i = icmp eq i32 %and1.i.i.i.i, 0
  br i1 %tobool.i.i.not.i, label %if.end18.i.if.end33.i_crit_edge, label %land.lhs.true.i

if.end18.i.if.end33.i_crit_edge:                  ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end33.i

land.lhs.true.i:                                  ; preds = %if.end18.i
  %43 = ptrtoint ptr %tx_idx.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %tx_idx.i, align 8
  %add29.i = add i32 %44, -30
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %add29.i)
  %cmp30.i = icmp ugt i32 %inc.i, %add29.i
  br i1 %cmp30.i, label %if.then32.i, label %land.lhs.true.i.if.end33.i_crit_edge

land.lhs.true.i.if.end33.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end33.i

if.then32.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @netif_tx_wake_queue(ptr noundef %40) #12
  br label %if.end33.i

if.end33.i:                                       ; preds = %if.then32.i, %land.lhs.true.i.if.end33.i_crit_edge, %if.end18.i.if.end33.i_crit_edge
  %45 = ptrtoint ptr %tx_complete_idx.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %tx_complete_idx.i, align 4
  %47 = ptrtoint ptr %tx_idx.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %tx_idx.i, align 8
  %cmp.not.i = icmp eq i32 %46, %48
  br i1 %cmp.not.i, label %if.end33.i.if.end60_crit_edge, label %if.end33.i.while.body.i_crit_edge

if.end33.i.while.body.i_crit_edge:                ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i

if.end33.i.if.end60_crit_edge:                    ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end60

if.end60:                                         ; preds = %if.end33.i.if.end60_crit_edge, %while.body.i.if.end60_crit_edge, %if.then58.if.end60_crit_edge, %if.end55.if.end60_crit_edge
  %and61 = and i32 %3, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61)
  %tobool62.not = icmp eq i32 %and61, 0
  br i1 %tobool62.not, label %if.end60.if.end65_crit_edge, label %if.then63

if.end60.if.end65_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end65

if.then63:                                        ; preds = %if.end60
  %49 = ptrtoint ptr %mmio1 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %mmio1, align 4
  %add.ptr.i102 = getelementptr i8, ptr %50, i32 48
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i102) #12, !srcloc !143
  %52 = tail call i32 @llvm.bswap.i32(i32 %51) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !229
  %and.i103 = and i32 %52, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i103)
  %tobool.not.i104 = icmp eq i32 %and.i103, 0
  br i1 %tobool.not.i104, label %if.else37.i, label %if.then.i

if.then.i:                                        ; preds = %if.then63
  %53 = trunc i32 %52 to i8
  %54 = lshr i8 %53, 4
  %55 = and i8 %54, 1
  %56 = getelementptr i8, ptr %dev_id, i32 3163
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %55, ptr %56, align 1
  %58 = lshr i8 %53, 6
  %59 = and i8 %58, 1
  %60 = getelementptr i8, ptr %dev_id, i32 3162
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %59, ptr %60, align 2
  %and16.i = lshr i32 %52, 7
  %62 = and i32 %and16.i, 7
  %63 = zext i32 %62 to i64
  call void @__sanitizer_cov_trace_switch(i64 %63, ptr @__sancov_gen_cov_switch_values.51)
  switch i32 %62, label %if.then.i.if.end26.i_crit_edge [
    i32 2, label %if.then.i.if.end26.sink.split.i_crit_edge
    i32 3, label %if.then22.i
  ]

if.then.i.if.end26.sink.split.i_crit_edge:        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end26.sink.split.i

if.then.i.if.end26.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end26.i

if.then22.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end26.sink.split.i

if.end26.sink.split.i:                            ; preds = %if.then22.i, %if.then.i.if.end26.sink.split.i_crit_edge
  %.sink.i = phi i16 [ 100, %if.then22.i ], [ 10, %if.then.i.if.end26.sink.split.i_crit_edge ]
  %speed24.i = getelementptr i8, ptr %dev_id, i32 3160
  %64 = ptrtoint ptr %speed24.i to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 %.sink.i, ptr %speed24.i, align 4
  br label %if.end26.i

if.end26.i:                                       ; preds = %if.end26.sink.split.i, %if.then.i.if.end26.i_crit_edge
  %speed28.i = getelementptr i8, ptr %dev_id, i32 3160
  %65 = ptrtoint ptr %speed28.i to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %speed28.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 100, i16 %66)
  %cmp29.i = icmp eq i16 %66, 100
  %cond.i = select i1 %cmp29.i, ptr @.str.41, ptr @.str.42
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %cmp34.i.not = icmp eq i8 %59, 0
  %cond36.i = select i1 %cmp34.i.not, ptr @.str.44, ptr @.str.43
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %dev_id, ptr noundef nonnull @.str.40, ptr noundef nonnull %cond.i, ptr noundef nonnull %cond36.i) #15
  tail call void @netif_carrier_on(ptr noundef %dev_id) #12
  br label %if.end65

if.else37.i:                                      ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #14
  %speed39.i = getelementptr i8, ptr %dev_id, i32 3160
  %67 = ptrtoint ptr %speed39.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 -1, ptr %speed39.i, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %dev_id, ptr noundef nonnull @.str.45) #15
  tail call void @netif_carrier_off(ptr noundef %dev_id) #12
  br label %if.end65

if.end65:                                         ; preds = %if.else37.i, %if.end26.i, %if.end60.if.end65_crit_edge
  %and66 = and i32 %3, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and66)
  %tobool67.not = icmp eq i32 %and66, 0
  br i1 %tobool67.not, label %if.end65.do.body71_crit_edge, label %if.then68

if.end65.do.body71_crit_edge:                     ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body71

if.then68:                                        ; preds = %if.end65
  %coal_conf1.i = getelementptr i8, ptr %dev_id, i32 3220
  %tx_packets.i105 = getelementptr i8, ptr %dev_id, i32 3256
  %68 = ptrtoint ptr %tx_packets.i105 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %tx_packets.i105, align 4
  %tx_prev_packets.i = getelementptr i8, ptr %dev_id, i32 3260
  %70 = ptrtoint ptr %tx_prev_packets.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %tx_prev_packets.i, align 4
  %sub.i = sub i32 %69, %71
  store i32 %69, ptr %tx_prev_packets.i, align 4
  %tx_bytes.i106 = getelementptr i8, ptr %dev_id, i32 3264
  %72 = ptrtoint ptr %tx_bytes.i106 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %tx_bytes.i106, align 4
  %tx_prev_bytes.i = getelementptr i8, ptr %dev_id, i32 3268
  %74 = ptrtoint ptr %tx_prev_bytes.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %tx_prev_bytes.i, align 4
  %sub4.i = sub i32 %73, %75
  store i32 %73, ptr %tx_prev_bytes.i, align 4
  %rx_packets.i = getelementptr i8, ptr %dev_id, i32 3228
  %76 = ptrtoint ptr %rx_packets.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %rx_packets.i, align 4
  %rx_prev_packets.i = getelementptr i8, ptr %dev_id, i32 3232
  %78 = ptrtoint ptr %rx_prev_packets.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %rx_prev_packets.i, align 4
  %sub7.i = sub i32 %77, %79
  store i32 %77, ptr %rx_prev_packets.i, align 4
  %rx_bytes.i = getelementptr i8, ptr %dev_id, i32 3236
  %80 = ptrtoint ptr %rx_bytes.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %rx_bytes.i, align 4
  %rx_prev_bytes.i = getelementptr i8, ptr %dev_id, i32 3240
  %82 = ptrtoint ptr %rx_prev_bytes.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %rx_prev_bytes.i, align 4
  store i32 %81, ptr %rx_prev_bytes.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 800, i32 %sub7.i)
  %cmp.i = icmp slt i32 %sub7.i, 800
  br i1 %cmp.i, label %if.then.i107, label %if.else.i

if.then.i107:                                     ; preds = %if.then68
  %rx_coal_type.i = getelementptr i8, ptr %dev_id, i32 3244
  %84 = ptrtoint ptr %rx_coal_type.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %rx_coal_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %cmp13.not.i = icmp eq i32 %85, 0
  br i1 %cmp13.not.i, label %if.then.i107.if.end67.i_crit_edge, label %if.then14.i

if.then.i107.if.end67.i_crit_edge:                ; preds = %if.then.i107
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end67.i

if.then14.i:                                      ; preds = %if.then.i107
  call void @__sanitizer_cov_trace_pc() #14
  %86 = ptrtoint ptr %coal_conf1.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 0, ptr %coal_conf1.i, align 4
  %rx_event_count.i = getelementptr i8, ptr %dev_id, i32 3224
  %87 = ptrtoint ptr %rx_event_count.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 0, ptr %rx_event_count.i, align 4
  %88 = ptrtoint ptr %mmio1 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %mmio1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !230
  tail call void @arm_heavy_mb() #12
  %add.ptr.i1.i = getelementptr i8, ptr %89, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1.i, i32 -1879048192) #12, !srcloc !147
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !231
  tail call void @arm_heavy_mb() #12
  %add.ptr8.i.i = getelementptr i8, ptr %89, i32 168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i.i, i32 16) #12, !srcloc !147
  %90 = ptrtoint ptr %rx_coal_type.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 0, ptr %rx_coal_type.i, align 4
  br label %if.end67.i

if.else.i:                                        ; preds = %if.then68
  %sub10.i = sub i32 %81, %83
  %div.i = sdiv i32 %sub10.i, %sub7.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %div.i)
  %cmp17.i = icmp slt i32 %div.i, 128
  br i1 %cmp17.i, label %if.then18.i, label %land.lhs.true.i109

if.then18.i:                                      ; preds = %if.else.i
  %rx_coal_type19.i = getelementptr i8, ptr %dev_id, i32 3244
  %91 = ptrtoint ptr %rx_coal_type19.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %rx_coal_type19.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %92)
  %cmp20.not.i = icmp eq i32 %92, 0
  br i1 %cmp20.not.i, label %if.then18.i.if.end67.i_crit_edge, label %if.then21.i

if.then18.i.if.end67.i_crit_edge:                 ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end67.i

if.then21.i:                                      ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #14
  %93 = ptrtoint ptr %coal_conf1.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 0, ptr %coal_conf1.i, align 4
  %rx_event_count23.i = getelementptr i8, ptr %dev_id, i32 3224
  %94 = ptrtoint ptr %rx_event_count23.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 0, ptr %rx_event_count23.i, align 4
  %95 = ptrtoint ptr %mmio1 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %mmio1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !230
  tail call void @arm_heavy_mb() #12
  %add.ptr.i9.i = getelementptr i8, ptr %96, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9.i, i32 -1879048192) #12, !srcloc !147
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !231
  tail call void @arm_heavy_mb() #12
  %add.ptr8.i13.i = getelementptr i8, ptr %96, i32 168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i13.i, i32 16) #12, !srcloc !147
  %97 = ptrtoint ptr %rx_coal_type19.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 0, ptr %rx_coal_type19.i, align 4
  br label %if.end67.i

land.lhs.true.i109:                               ; preds = %if.else.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %div.i)
  %cmp29.i108 = icmp ult i32 %div.i, 512
  br i1 %cmp29.i108, label %if.then30.i, label %land.lhs.true41.i

if.then30.i:                                      ; preds = %land.lhs.true.i109
  %rx_coal_type31.i = getelementptr i8, ptr %dev_id, i32 3244
  %98 = ptrtoint ptr %rx_coal_type31.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %rx_coal_type31.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %99)
  %cmp32.not.i = icmp eq i32 %99, 1
  br i1 %cmp32.not.i, label %if.then30.i.if.end67.i_crit_edge, label %if.then33.i

if.then30.i.if.end67.i_crit_edge:                 ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end67.i

if.then33.i:                                      ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #14
  %100 = ptrtoint ptr %coal_conf1.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 1, ptr %coal_conf1.i, align 4
  %rx_event_count35.i = getelementptr i8, ptr %dev_id, i32 3224
  %101 = ptrtoint ptr %rx_event_count35.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 4, ptr %rx_event_count35.i, align 4
  %102 = ptrtoint ptr %mmio1 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %mmio1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !230
  tail call void @arm_heavy_mb() #12
  %add.ptr.i23.i = getelementptr i8, ptr %103, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i23.i, i32 -1879048192) #12, !srcloc !147
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !231
  tail call void @arm_heavy_mb() #12
  %add.ptr8.i27.i = getelementptr i8, ptr %103, i32 168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i27.i, i32 838861840) #12, !srcloc !147
  %104 = ptrtoint ptr %rx_coal_type31.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 1, ptr %rx_coal_type31.i, align 4
  br label %if.end67.i

land.lhs.true41.i:                                ; preds = %land.lhs.true.i109
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %div.i)
  %cmp42.i = icmp ult i32 %div.i, 1024
  %rx_coal_type44.i = getelementptr i8, ptr %dev_id, i32 3244
  %105 = ptrtoint ptr %rx_coal_type44.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %rx_coal_type44.i, align 4
  br i1 %cmp42.i, label %if.then43.i, label %if.then54.i

if.then43.i:                                      ; preds = %land.lhs.true41.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %106)
  %cmp45.not.i = icmp eq i32 %106, 2
  br i1 %cmp45.not.i, label %if.then43.i.if.end67.i_crit_edge, label %if.then46.i

if.then43.i.if.end67.i_crit_edge:                 ; preds = %if.then43.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end67.i

if.then46.i:                                      ; preds = %if.then43.i
  call void @__sanitizer_cov_trace_pc() #14
  %107 = ptrtoint ptr %coal_conf1.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 1, ptr %coal_conf1.i, align 4
  %rx_event_count48.i = getelementptr i8, ptr %dev_id, i32 3224
  %108 = ptrtoint ptr %rx_event_count48.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 4, ptr %rx_event_count48.i, align 4
  %109 = ptrtoint ptr %mmio1 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %mmio1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !230
  tail call void @arm_heavy_mb() #12
  %add.ptr.i37.i = getelementptr i8, ptr %110, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i37.i, i32 -1879048192) #12, !srcloc !147
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !231
  tail call void @arm_heavy_mb() #12
  %add.ptr8.i41.i = getelementptr i8, ptr %110, i32 168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i41.i, i32 838861840) #12, !srcloc !147
  %111 = ptrtoint ptr %rx_coal_type44.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 2, ptr %rx_coal_type44.i, align 4
  br label %if.end67.i

if.then54.i:                                      ; preds = %land.lhs.true41.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %106)
  %cmp56.not.i = icmp eq i32 %106, 3
  br i1 %cmp56.not.i, label %if.then54.i.if.end67.i_crit_edge, label %if.then57.i

if.then54.i.if.end67.i_crit_edge:                 ; preds = %if.then54.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end67.i

if.then57.i:                                      ; preds = %if.then54.i
  call void @__sanitizer_cov_trace_pc() #14
  %112 = ptrtoint ptr %coal_conf1.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 2, ptr %coal_conf1.i, align 4
  %rx_event_count59.i = getelementptr i8, ptr %dev_id, i32 3224
  %113 = ptrtoint ptr %rx_event_count59.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 3, ptr %rx_event_count59.i, align 4
  %114 = ptrtoint ptr %mmio1 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %mmio1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !230
  tail call void @arm_heavy_mb() #12
  %add.ptr.i51.i = getelementptr i8, ptr %115, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i51.i, i32 -1879048192) #12, !srcloc !147
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !231
  tail call void @arm_heavy_mb() #12
  %add.ptr8.i55.i = getelementptr i8, ptr %115, i32 168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i55.i, i32 1677722384) #12, !srcloc !147
  %116 = ptrtoint ptr %rx_coal_type44.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 3, ptr %rx_coal_type44.i, align 4
  br label %if.end67.i

if.end67.i:                                       ; preds = %if.then57.i, %if.then54.i.if.end67.i_crit_edge, %if.then46.i, %if.then43.i.if.end67.i_crit_edge, %if.then33.i, %if.then30.i.if.end67.i_crit_edge, %if.then21.i, %if.then18.i.if.end67.i_crit_edge, %if.then14.i, %if.then.i107.if.end67.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 800, i32 %sub.i)
  %cmp68.i = icmp slt i32 %sub.i, 800
  br i1 %cmp68.i, label %if.then69.i, label %if.else75.i

if.then69.i:                                      ; preds = %if.end67.i
  %tx_coal_type.i = getelementptr i8, ptr %dev_id, i32 3272
  %117 = ptrtoint ptr %tx_coal_type.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %tx_coal_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %118)
  %cmp70.not.i = icmp eq i32 %118, 0
  br i1 %cmp70.not.i, label %if.then69.i.do.body71_crit_edge, label %if.then71.i

if.then69.i.do.body71_crit_edge:                  ; preds = %if.then69.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body71

if.then71.i:                                      ; preds = %if.then69.i
  call void @__sanitizer_cov_trace_pc() #14
  %tx_timeout.i = getelementptr i8, ptr %dev_id, i32 3248
  %119 = ptrtoint ptr %tx_timeout.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 0, ptr %tx_timeout.i, align 4
  %tx_event_count.i = getelementptr i8, ptr %dev_id, i32 3252
  %120 = ptrtoint ptr %tx_event_count.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 0, ptr %tx_event_count.i, align 4
  %121 = ptrtoint ptr %mmio1 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %mmio1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !232
  tail call void @arm_heavy_mb() #12
  %add.ptr19.i.i = getelementptr i8, ptr %122, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr19.i.i, i32 -1879048192) #12, !srcloc !147
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !233
  tail call void @arm_heavy_mb() #12
  %add.ptr26.i.i = getelementptr i8, ptr %122, i32 172
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr26.i.i, i32 1) #12, !srcloc !147
  %123 = ptrtoint ptr %tx_coal_type.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 0, ptr %tx_coal_type.i, align 4
  br label %do.body71

if.else75.i:                                      ; preds = %if.end67.i
  %div76.i = sdiv i32 %sub4.i, %sub.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %div76.i)
  %cmp77.i = icmp slt i32 %div76.i, 128
  br i1 %cmp77.i, label %if.then78.i, label %land.lhs.true89.i

if.then78.i:                                      ; preds = %if.else75.i
  %tx_coal_type79.i = getelementptr i8, ptr %dev_id, i32 3272
  %124 = ptrtoint ptr %tx_coal_type79.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %tx_coal_type79.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %125)
  %cmp80.not.i = icmp eq i32 %125, 0
  br i1 %cmp80.not.i, label %if.then78.i.do.body71_crit_edge, label %if.then81.i

if.then78.i.do.body71_crit_edge:                  ; preds = %if.then78.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body71

if.then81.i:                                      ; preds = %if.then78.i
  call void @__sanitizer_cov_trace_pc() #14
  %tx_timeout82.i = getelementptr i8, ptr %dev_id, i32 3248
  %126 = ptrtoint ptr %tx_timeout82.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 0, ptr %tx_timeout82.i, align 4
  %tx_event_count83.i = getelementptr i8, ptr %dev_id, i32 3252
  %127 = ptrtoint ptr %tx_event_count83.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 0, ptr %tx_event_count83.i, align 4
  %128 = ptrtoint ptr %mmio1 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %mmio1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !232
  tail call void @arm_heavy_mb() #12
  %add.ptr19.i67.i = getelementptr i8, ptr %129, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr19.i67.i, i32 -1879048192) #12, !srcloc !147
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !233
  tail call void @arm_heavy_mb() #12
  %add.ptr26.i71.i = getelementptr i8, ptr %129, i32 172
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr26.i71.i, i32 1) #12, !srcloc !147
  %130 = ptrtoint ptr %tx_coal_type79.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 0, ptr %tx_coal_type79.i, align 4
  br label %do.body71

land.lhs.true89.i:                                ; preds = %if.else75.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %div76.i)
  %cmp90.i = icmp ult i32 %div76.i, 512
  br i1 %cmp90.i, label %if.then91.i, label %land.lhs.true102.i

if.then91.i:                                      ; preds = %land.lhs.true89.i
  %tx_coal_type92.i = getelementptr i8, ptr %dev_id, i32 3272
  %131 = ptrtoint ptr %tx_coal_type92.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %tx_coal_type92.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %132)
  %cmp93.not.i = icmp eq i32 %132, 1
  br i1 %cmp93.not.i, label %if.then91.i.do.body71_crit_edge, label %if.then94.i

if.then91.i.do.body71_crit_edge:                  ; preds = %if.then91.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body71

if.then94.i:                                      ; preds = %if.then91.i
  call void @__sanitizer_cov_trace_pc() #14
  %tx_timeout95.i = getelementptr i8, ptr %dev_id, i32 3248
  %133 = ptrtoint ptr %tx_timeout95.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 1, ptr %tx_timeout95.i, align 4
  %tx_event_count96.i = getelementptr i8, ptr %dev_id, i32 3252
  %134 = ptrtoint ptr %tx_event_count96.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 2, ptr %tx_event_count96.i, align 4
  %135 = ptrtoint ptr %mmio1 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %mmio1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !232
  tail call void @arm_heavy_mb() #12
  %add.ptr19.i81.i = getelementptr i8, ptr %136, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr19.i81.i, i32 -1879048192) #12, !srcloc !147
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !233
  tail call void @arm_heavy_mb() #12
  %add.ptr26.i85.i = getelementptr i8, ptr %136, i32 172
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr26.i85.i, i32 838861313) #12, !srcloc !147
  %137 = ptrtoint ptr %tx_coal_type92.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 1, ptr %tx_coal_type92.i, align 4
  br label %do.body71

land.lhs.true102.i:                               ; preds = %land.lhs.true89.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %div76.i)
  %cmp103.i = icmp ult i32 %div76.i, 1024
  %tx_coal_type105.i = getelementptr i8, ptr %dev_id, i32 3272
  %138 = ptrtoint ptr %tx_coal_type105.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %tx_coal_type105.i, align 4
  br i1 %cmp103.i, label %if.then104.i, label %if.then115.i

if.then104.i:                                     ; preds = %land.lhs.true102.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %139)
  %cmp106.not.i = icmp eq i32 %139, 2
  br i1 %cmp106.not.i, label %if.then104.i.do.body71_crit_edge, label %if.then107.i

if.then104.i.do.body71_crit_edge:                 ; preds = %if.then104.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body71

if.then107.i:                                     ; preds = %if.then104.i
  call void @__sanitizer_cov_trace_pc() #14
  %tx_timeout108.i = getelementptr i8, ptr %dev_id, i32 3248
  %140 = ptrtoint ptr %tx_timeout108.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 2, ptr %tx_timeout108.i, align 4
  %tx_event_count109.i = getelementptr i8, ptr %dev_id, i32 3252
  %141 = ptrtoint ptr %tx_event_count109.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 5, ptr %tx_event_count109.i, align 4
  %142 = ptrtoint ptr %mmio1 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %mmio1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !232
  tail call void @arm_heavy_mb() #12
  %add.ptr19.i95.i = getelementptr i8, ptr %143, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr19.i95.i, i32 -1879048192) #12, !srcloc !147
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !233
  tail call void @arm_heavy_mb() #12
  %add.ptr26.i99.i = getelementptr i8, ptr %143, i32 172
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr26.i99.i, i32 1677722881) #12, !srcloc !147
  %144 = ptrtoint ptr %tx_coal_type105.i to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 2, ptr %tx_coal_type105.i, align 4
  br label %do.body71

if.then115.i:                                     ; preds = %land.lhs.true102.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %139)
  %cmp117.not.i = icmp eq i32 %139, 3
  br i1 %cmp117.not.i, label %if.then115.i.do.body71_crit_edge, label %if.then118.i

if.then115.i.do.body71_crit_edge:                 ; preds = %if.then115.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body71

if.then118.i:                                     ; preds = %if.then115.i
  call void @__sanitizer_cov_trace_pc() #14
  %tx_timeout119.i = getelementptr i8, ptr %dev_id, i32 3248
  %145 = ptrtoint ptr %tx_timeout119.i to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 4, ptr %tx_timeout119.i, align 4
  %tx_event_count120.i = getelementptr i8, ptr %dev_id, i32 3252
  %146 = ptrtoint ptr %tx_event_count120.i to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 8, ptr %tx_event_count120.i, align 4
  %147 = ptrtoint ptr %mmio1 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %mmio1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !232
  tail call void @arm_heavy_mb() #12
  %add.ptr19.i109.i = getelementptr i8, ptr %148, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr19.i109.i, i32 -1879048192) #12, !srcloc !147
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !233
  tail call void @arm_heavy_mb() #12
  %add.ptr26.i113.i = getelementptr i8, ptr %148, i32 172
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr26.i113.i, i32 -939522047) #12, !srcloc !147
  %149 = ptrtoint ptr %tx_coal_type105.i to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 3, ptr %tx_coal_type105.i, align 4
  br label %do.body71

do.body71:                                        ; preds = %if.then118.i, %if.then115.i.do.body71_crit_edge, %if.then107.i, %if.then104.i.do.body71_crit_edge, %if.then94.i, %if.then91.i.do.body71_crit_edge, %if.then81.i, %if.then78.i.do.body71_crit_edge, %if.then71.i, %if.then69.i.do.body71_crit_edge, %if.end65.do.body71_crit_edge, %if.end.do.body71_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !234
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 -2113929216) #12, !srcloc !147
  tail call void @_raw_spin_unlock(ptr noundef %lock) #12
  %not.tobool12.not = xor i1 %tobool12.not, true
  %cond = zext i1 %not.tobool12.not to i32
  br label %cleanup

cleanup:                                          ; preds = %do.body71, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %cond, %do.body71 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @amd8111e_restart(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %mmio1 = getelementptr i8, ptr %dev, i32 2844
  %0 = ptrtoint ptr %mmio1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmio1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !235
  tail call void @arm_heavy_mb() #12
  %add.ptr = getelementptr i8, ptr %1, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 16777216) #12, !srcloc !147
  %tx_idx.i = getelementptr i8, ptr %dev, i32 3120
  %2 = ptrtoint ptr %tx_idx.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %tx_idx.i, align 8
  %rx_idx.i = getelementptr i8, ptr %dev, i32 3116
  %3 = ptrtoint ptr %rx_idx.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %rx_idx.i, align 4
  %tx_complete_idx.i = getelementptr i8, ptr %dev, i32 3124
  %4 = ptrtoint ptr %tx_complete_idx.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %tx_complete_idx.i, align 4
  %tx_ring_idx.i = getelementptr i8, ptr %dev, i32 3132
  %5 = ptrtoint ptr %tx_ring_idx.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %tx_ring_idx.i, align 4
  %opened.i = getelementptr i8, ptr %dev, i32 3212
  %6 = ptrtoint ptr %opened.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %opened.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @amd8111e_free_skbs(ptr noundef %dev) #12
  br label %if.end14.i

if.else.i:                                        ; preds = %entry
  %pci_dev.i = getelementptr i8, ptr %dev, i32 2324
  %8 = ptrtoint ptr %pci_dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pci_dev.i, align 4
  %dev2.i = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  %tx_ring_dma_addr.i = getelementptr i8, ptr %dev, i32 2312
  %call.i.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev2.i, i32 noundef 512, ptr noundef %tx_ring_dma_addr.i, i32 noundef 2592, i32 noundef 0) #12
  %10 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call.i.i, ptr %add.ptr.i, align 8
  %tobool5.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool5.not.i, label %if.else.i.cleanup_crit_edge, label %if.end.i

if.else.i.cleanup_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i:                                         ; preds = %if.else.i
  %11 = ptrtoint ptr %pci_dev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pci_dev.i, align 4
  %dev8.i = getelementptr inbounds %struct.pci_dev, ptr %12, i32 0, i32 44
  %rx_ring_dma_addr.i = getelementptr i8, ptr %dev, i32 2316
  %call.i137.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev8.i, i32 noundef 512, ptr noundef %rx_ring_dma_addr.i, i32 noundef 2592, i32 noundef 0) #12
  %rx_ring.i = getelementptr i8, ptr %dev, i32 2308
  %13 = ptrtoint ptr %rx_ring.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call.i137.i, ptr %rx_ring.i, align 4
  %tobool11.not.i = icmp eq ptr %call.i137.i, null
  br i1 %tobool11.not.i, label %if.end.i.err_free_tx_ring.i_crit_edge, label %if.end.i.if.end14.i_crit_edge

if.end.i.if.end14.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14.i

if.end.i.err_free_tx_ring.i_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_free_tx_ring.i

if.end14.i:                                       ; preds = %if.end.i.if.end14.i_crit_edge, %if.then.i
  %mtu1.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 20
  %14 = ptrtoint ptr %mtu1.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mtu1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1500, i32 %15)
  %cmp.i.i = icmp ugt i32 %15, 1500
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #14
  %add2.i.i = add i32 %15, 24
  %rx_buff_len.i.i = getelementptr i8, ptr %dev, i32 3136
  %16 = ptrtoint ptr %rx_buff_len.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %add2.i.i, ptr %rx_buff_len.i.i, align 8
  %options.i.i = getelementptr i8, ptr %dev, i32 3140
  %17 = ptrtoint ptr %options.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %options.i.i, align 4
  %or.i.i = or i32 %18, 2
  store i32 %or.i.i, ptr %options.i.i, align 4
  br label %amd8111e_set_rx_buff_len.exit.i

if.else.i.i:                                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #14
  %rx_buff_len3.i.i = getelementptr i8, ptr %dev, i32 3136
  %19 = ptrtoint ptr %rx_buff_len3.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1536, ptr %rx_buff_len3.i.i, align 8
  %options4.i.i = getelementptr i8, ptr %dev, i32 3140
  %20 = ptrtoint ptr %options4.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %options4.i.i, align 4
  %and.i.i = and i32 %21, -3
  store i32 %and.i.i, ptr %options4.i.i, align 4
  br label %amd8111e_set_rx_buff_len.exit.i

amd8111e_set_rx_buff_len.exit.i:                  ; preds = %if.else.i.i, %if.then.i.i
  %rx_buff_len.i = getelementptr i8, ptr %dev, i32 3136
  br label %for.body.i

for.cond31.preheader.i:                           ; preds = %if.end26.i
  %pci_dev34.i = getelementptr i8, ptr %dev, i32 2324
  %rx_ring43.i = getelementptr i8, ptr %dev, i32 2308
  br label %for.body33.i

for.body.i:                                       ; preds = %if.end26.i.for.body.i_crit_edge, %amd8111e_set_rx_buff_len.exit.i
  %i.0145.i = phi i32 [ 0, %amd8111e_set_rx_buff_len.exit.i ], [ %inc.i, %if.end26.i.for.body.i_crit_edge ]
  %22 = ptrtoint ptr %rx_buff_len.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %rx_buff_len.i, align 8
  %call.i138.i = tail call ptr @__netdev_alloc_skb(ptr noundef %dev, i32 noundef %23, i32 noundef 2592) #12
  %arrayidx.i = getelementptr %struct.amd8111e_priv, ptr %add.ptr.i, i32 0, i32 8, i32 %i.0145.i
  %24 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call.i138.i, ptr %arrayidx.i, align 4
  %tobool18.not.i = icmp eq ptr %call.i138.i, null
  br i1 %tobool18.not.i, label %for.cond20.preheader.i, label %if.end26.i

for.cond20.preheader.i:                           ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0145.i)
  %cmp21149.not.i = icmp eq i32 %i.0145.i, 0
  br i1 %cmp21149.not.i, label %for.cond20.preheader.i.err_free_rx_ring.i_crit_edge, label %for.cond20.preheader.i.for.body22.i_crit_edge

for.cond20.preheader.i.for.body22.i_crit_edge:    ; preds = %for.cond20.preheader.i
  br label %for.body22.i

for.cond20.preheader.i.err_free_rx_ring.i_crit_edge: ; preds = %for.cond20.preheader.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_free_rx_ring.i

for.body22.i:                                     ; preds = %for.body22.i.for.body22.i_crit_edge, %for.cond20.preheader.i.for.body22.i_crit_edge
  %i.1150.in.i = phi i32 [ %i.1150.i, %for.body22.i.for.body22.i_crit_edge ], [ %i.0145.i, %for.cond20.preheader.i.for.body22.i_crit_edge ]
  %i.1150.i = add nsw i32 %i.1150.in.i, -1
  %arrayidx24.i = getelementptr %struct.amd8111e_priv, ptr %add.ptr.i, i32 0, i32 8, i32 %i.1150.i
  %25 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx24.i, align 4
  tail call void @consume_skb(ptr noundef %26) #12
  %cmp21.i = icmp sgt i32 %i.1150.in.i, 1
  br i1 %cmp21.i, label %for.body22.i.for.body22.i_crit_edge, label %for.body22.i.err_free_rx_ring.i_crit_edge

for.body22.i.err_free_rx_ring.i_crit_edge:        ; preds = %for.body22.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_free_rx_ring.i

for.body22.i.for.body22.i_crit_edge:              ; preds = %for.body22.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body22.i

if.end26.i:                                       ; preds = %for.body.i
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i138.i, i32 0, i32 19
  %27 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i139.i = getelementptr i8, ptr %28, i32 2
  store ptr %add.ptr.i139.i, ptr %data.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i138.i, i32 0, i32 16
  %29 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %tail.i.i, align 8
  %add.ptr1.i.i = getelementptr i8, ptr %30, i32 2
  store ptr %add.ptr1.i.i, ptr %tail.i.i, align 8
  %inc.i = add nuw nsw i32 %i.0145.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 32
  br i1 %exitcond.not.i, label %for.cond31.preheader.i, label %if.end26.i.for.body.i_crit_edge

if.end26.i.for.body.i_crit_edge:                  ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.body33.i:                                     ; preds = %dma_map_single_attrs.exit.i.for.body33.i_crit_edge, %for.cond31.preheader.i
  %i.2146.i = phi i32 [ 0, %for.cond31.preheader.i ], [ %inc52.i, %dma_map_single_attrs.exit.i.for.body33.i_crit_edge ]
  %31 = ptrtoint ptr %pci_dev34.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pci_dev34.i, align 4
  %dev35.i = getelementptr inbounds %struct.pci_dev, ptr %32, i32 0, i32 44
  %arrayidx37.i = getelementptr %struct.amd8111e_priv, ptr %add.ptr.i, i32 0, i32 8, i32 %i.2146.i
  %33 = ptrtoint ptr %arrayidx37.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx37.i, align 4
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %34, i32 0, i32 19
  %35 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %data.i, align 4
  %37 = ptrtoint ptr %rx_buff_len.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %rx_buff_len.i, align 8
  %call.i140.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %36) #12
  br i1 %call.i140.i, label %land.rhs.i.i, label %if.end39.i.i

land.rhs.i.i:                                     ; preds = %for.body33.i
  %.b1.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs.i.i.dma_map_single_attrs.exit.i_crit_edge, label %if.then.i141.i, !prof !150

land.rhs.i.i.dma_map_single_attrs.exit.i_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dma_map_single_attrs.exit.i

if.then.i141.i:                                   ; preds = %land.rhs.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i = tail call ptr @dev_driver_string(ptr noundef %dev35.i) #12
  %init_name.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %32, i32 0, i32 44, i32 3
  %39 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %40, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.i141.i.dev_name.exit.i.i_crit_edge

if.then.i141.i.dev_name.exit.i.i_crit_edge:       ; preds = %if.then.i141.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_name.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then.i141.i
  call void @__sanitizer_cov_trace_pc() #14
  %41 = ptrtoint ptr %dev35.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev35.i, align 4
  br label %dev_name.exit.i.i

dev_name.exit.i.i:                                ; preds = %if.end.i.i.i, %if.then.i141.i.dev_name.exit.i.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %42, %if.end.i.i.i ], [ %40, %if.then.i141.i.dev_name.exit.i.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.47, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.48, ptr noundef %call16.i.i, ptr noundef %retval.0.i.i.i) #12
  br label %dma_map_single_attrs.exit.i

if.end39.i.i:                                     ; preds = %for.body33.i
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i = add i32 %38, -2
  tail call void @debug_dma_map_single(ptr noundef %dev35.i, ptr noundef %36, i32 noundef %sub.i) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %43 = load ptr, ptr @mem_map, align 4
  %44 = ptrtoint ptr %36 to i32
  %sub.i.i = add i32 %44, 1073741824
  %shr.i.i = lshr i32 %sub.i.i, 12
  %add.ptr.i142.i = getelementptr %struct.page, ptr %43, i32 %shr.i.i
  %and.i143.i = and i32 %44, 4095
  %call41.i.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev35.i, ptr noundef %add.ptr.i142.i, i32 noundef %and.i143.i, i32 noundef %sub.i, i32 noundef 2, i32 noundef 0) #12
  br label %dma_map_single_attrs.exit.i

dma_map_single_attrs.exit.i:                      ; preds = %if.end39.i.i, %dev_name.exit.i.i, %land.rhs.i.i.dma_map_single_attrs.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %call41.i.i, %if.end39.i.i ], [ -1, %dev_name.exit.i.i ], [ -1, %land.rhs.i.i.dma_map_single_attrs.exit.i_crit_edge ]
  %arrayidx40.i = getelementptr %struct.amd8111e_priv, ptr %add.ptr.i, i32 0, i32 10, i32 %i.2146.i
  %45 = ptrtoint ptr %arrayidx40.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %retval.0.i.i, ptr %arrayidx40.i, align 4
  %46 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i.i) #12
  %47 = ptrtoint ptr %rx_ring43.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %rx_ring43.i, align 4
  %buff_phy_addr.i = getelementptr %struct.amd8111e_rx_dr, ptr %48, i32 %i.2146.i, i32 5
  %49 = ptrtoint ptr %buff_phy_addr.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %46, ptr %buff_phy_addr.i, align 4
  %50 = ptrtoint ptr %rx_buff_len.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %rx_buff_len.i, align 8
  %52 = trunc i32 %51 to i16
  %conv.i = add i16 %52, -2
  %53 = tail call i16 @llvm.bswap.i16(i16 %conv.i) #12
  %54 = ptrtoint ptr %rx_ring43.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %rx_ring43.i, align 4
  %buff_count.i = getelementptr %struct.amd8111e_rx_dr, ptr %55, i32 %i.2146.i, i32 3
  %56 = ptrtoint ptr %buff_count.i to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 %53, ptr %buff_count.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !236
  tail call void @arm_heavy_mb() #12
  %57 = ptrtoint ptr %rx_ring43.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %rx_ring43.i, align 4
  %rx_flags.i = getelementptr %struct.amd8111e_rx_dr, ptr %58, i32 %i.2146.i, i32 4
  %59 = ptrtoint ptr %rx_flags.i to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 128, ptr %rx_flags.i, align 2
  %inc52.i = add nuw nsw i32 %i.2146.i, 1
  %exitcond152.not.i = icmp eq i32 %inc52.i, 32
  br i1 %exitcond152.not.i, label %dma_map_single_attrs.exit.i.for.body57.i_crit_edge, label %dma_map_single_attrs.exit.i.for.body33.i_crit_edge

dma_map_single_attrs.exit.i.for.body33.i_crit_edge: ; preds = %dma_map_single_attrs.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body33.i

dma_map_single_attrs.exit.i.for.body57.i_crit_edge: ; preds = %dma_map_single_attrs.exit.i
  br label %for.body57.i

for.body57.i:                                     ; preds = %for.body57.i.for.body57.i_crit_edge, %dma_map_single_attrs.exit.i.for.body57.i_crit_edge
  %i.3147.i = phi i32 [ %inc67.i, %for.body57.i.for.body57.i_crit_edge ], [ 0, %dma_map_single_attrs.exit.i.for.body57.i_crit_edge ]
  %60 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %add.ptr.i, align 8
  %buff_phy_addr60.i = getelementptr %struct.amd8111e_tx_dr, ptr %61, i32 %i.3147.i, i32 4
  %62 = ptrtoint ptr %buff_phy_addr60.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 0, ptr %buff_phy_addr60.i, align 4
  %63 = load ptr, ptr %add.ptr.i, align 8
  %tx_flags.i = getelementptr %struct.amd8111e_tx_dr, ptr %63, i32 %i.3147.i, i32 1
  %64 = ptrtoint ptr %tx_flags.i to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 0, ptr %tx_flags.i, align 2
  %65 = load ptr, ptr %add.ptr.i, align 8
  %arrayidx64.i = getelementptr %struct.amd8111e_tx_dr, ptr %65, i32 %i.3147.i
  %66 = ptrtoint ptr %arrayidx64.i to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 0, ptr %arrayidx64.i, align 4
  %inc67.i = add nuw nsw i32 %i.3147.i, 1
  %exitcond153.not.i = icmp eq i32 %inc67.i, 32
  br i1 %exitcond153.not.i, label %do.body3, label %for.body57.i.for.body57.i_crit_edge

for.body57.i.for.body57.i_crit_edge:              ; preds = %for.body57.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body57.i

err_free_rx_ring.i:                               ; preds = %for.body22.i.err_free_rx_ring.i_crit_edge, %for.cond20.preheader.i.err_free_rx_ring.i_crit_edge
  %pci_dev69.i = getelementptr i8, ptr %dev, i32 2324
  %67 = ptrtoint ptr %pci_dev69.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %pci_dev69.i, align 4
  %dev70.i = getelementptr inbounds %struct.pci_dev, ptr %68, i32 0, i32 44
  %rx_ring71.i = getelementptr i8, ptr %dev, i32 2308
  %69 = ptrtoint ptr %rx_ring71.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %rx_ring71.i, align 4
  %rx_ring_dma_addr72.i = getelementptr i8, ptr %dev, i32 2316
  %71 = ptrtoint ptr %rx_ring_dma_addr72.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %rx_ring_dma_addr72.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev70.i, i32 noundef 512, ptr noundef %70, i32 noundef %72, i32 noundef 0) #12
  br label %err_free_tx_ring.i

err_free_tx_ring.i:                               ; preds = %err_free_rx_ring.i, %if.end.i.err_free_tx_ring.i_crit_edge
  %pci_dev73.i = getelementptr i8, ptr %dev, i32 2324
  %73 = ptrtoint ptr %pci_dev73.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %pci_dev73.i, align 4
  %dev74.i = getelementptr inbounds %struct.pci_dev, ptr %74, i32 0, i32 44
  %75 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %add.ptr.i, align 8
  %tx_ring_dma_addr76.i = getelementptr i8, ptr %dev, i32 2312
  %77 = ptrtoint ptr %tx_ring_dma_addr76.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %tx_ring_dma_addr76.i, align 8
  tail call void @dma_free_attrs(ptr noundef %dev74.i, i32 noundef 512, ptr noundef %76, i32 noundef %78, i32 noundef 0) #12
  br label %cleanup

do.body3:                                         ; preds = %for.body57.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !237
  tail call void @arm_heavy_mb() #12
  %add.ptr6 = getelementptr i8, ptr %1, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 12582912) #12, !srcloc !147
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !238
  tail call void @arm_heavy_mb() #12
  %add.ptr10 = getelementptr i8, ptr %1, i32 112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10, i32 -1073741824) #12, !srcloc !147
  %ext_phy_addr.i = getelementptr i8, ptr %dev, i32 3148
  %79 = ptrtoint ptr %ext_phy_addr.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %ext_phy_addr.i, align 4
  %81 = ptrtoint ptr %mmio1 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %mmio1, align 4
  %add.ptr.i2.i.i = getelementptr i8, ptr %82, i32 208
  %83 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i2.i.i) #12, !srcloc !143
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !144
  %.mask.i.i.i = and i32 %83, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask.i.i.i)
  %tobool.not38.i.i.i = icmp eq i32 %.mask.i.i.i, 0
  br i1 %tobool.not38.i.i.i, label %do.body3.do.body.i.i.i_crit_edge, label %do.body3.while.body.i.i.i_crit_edge

do.body3.while.body.i.i.i_crit_edge:              ; preds = %do.body3
  br label %while.body.i.i.i

do.body3.do.body.i.i.i_crit_edge:                 ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i.i.i

while.body.i.i.i:                                 ; preds = %while.body.i.i.i.while.body.i.i.i_crit_edge, %do.body3.while.body.i.i.i_crit_edge
  %84 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i2.i.i) #12, !srcloc !143
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !145
  %.mask39.i.i.i = and i32 %84, 128
  %tobool.not.i.i.i147 = icmp eq i32 %.mask39.i.i.i, 0
  br i1 %tobool.not.i.i.i147, label %while.body.i.i.i.do.body.i.i.i_crit_edge, label %while.body.i.i.i.while.body.i.i.i_crit_edge

while.body.i.i.i.while.body.i.i.i_crit_edge:      ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i.i.i

while.body.i.i.i.do.body.i.i.i_crit_edge:         ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %while.body.i.i.i.do.body.i.i.i_crit_edge, %do.body3.do.body.i.i.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !146
  tail call void @arm_heavy_mb() #12
  %and9.i.i.i = shl i32 %80, 21
  %shl.i.i.i = and i32 %and9.i.i.i, 65011712
  %or12.i.i.i = or i32 %shl.i.i.i, 537133056
  %85 = tail call i32 @llvm.bswap.i32(i32 %or12.i.i.i) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i.i, i32 %85) #12, !srcloc !147
  br label %do.body14.i.i.i

do.body14.i.i.i:                                  ; preds = %do.body14.i.i.i.do.body14.i.i.i_crit_edge, %do.body.i.i.i
  %repeat.0.i.i.i = phi i32 [ 10, %do.body.i.i.i ], [ %dec.i.i.i, %do.body14.i.i.i.do.body14.i.i.i_crit_edge ]
  %86 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i2.i.i) #12, !srcloc !143
  %87 = tail call i32 @llvm.bswap.i32(i32 %86) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !148
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %88 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %88(i32 noundef 6442440) #12
  %dec.i.i.i = add nsw i32 %repeat.0.i.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i.i)
  %tobool22.not.i.i.i = icmp eq i32 %dec.i.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %87)
  %tobool24.not.i.i.i = icmp sgt i32 %87, -1
  %or.cond.i.i.i = select i1 %tobool22.not.i.i.i, i1 true, i1 %tobool24.not.i.i.i
  br i1 %or.cond.i.i.i, label %amd8111e_mdio_read.exit.i, label %do.body14.i.i.i.do.body14.i.i.i_crit_edge

do.body14.i.i.i.do.body14.i.i.i_crit_edge:        ; preds = %do.body14.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body14.i.i.i

amd8111e_mdio_read.exit.i:                        ; preds = %do.body14.i.i.i
  %and26.i.i.i = and i32 %87, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26.i.i.i)
  %tobool27.not.i.i.i = icmp eq i32 %and26.i.i.i, 0
  %and28.i.i.i = and i32 %87, 65535
  %storemerge.i.i.i = select i1 %tobool27.not.i.i.i, i32 %and28.i.i.i, i32 0
  %and.i = and i32 %storemerge.i.i.i, 64543
  %ext_phy_option.i = getelementptr i8, ptr %dev, i32 3144
  %89 = ptrtoint ptr %ext_phy_option.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %ext_phy_option.i, align 8
  %switch.tableidx = add i32 %90, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %switch.tableidx)
  %91 = icmp ult i32 %switch.tableidx, 4
  br i1 %91, label %switch.lookup, label %amd8111e_mdio_read.exit.i.sw.epilog.i_crit_edge

amd8111e_mdio_read.exit.i.sw.epilog.i_crit_edge:  ; preds = %amd8111e_mdio_read.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i

switch.lookup:                                    ; preds = %amd8111e_mdio_read.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.amd8111e_restart, i32 0, i32 %switch.tableidx
  %92 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %92)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %switch.lookup, %amd8111e_mdio_read.exit.i.sw.epilog.i_crit_edge
  %.sink.i = phi i32 [ 480, %amd8111e_mdio_read.exit.i.sw.epilog.i_crit_edge ], [ %switch.load, %switch.lookup ]
  %or9.i = or i32 %.sink.i, %and.i
  call void @__sanitizer_cov_trace_cmp4(i32 %storemerge.i.i.i, i32 %or9.i)
  %cmp.not.i = icmp eq i32 %storemerge.i.i.i, %or9.i
  br i1 %cmp.not.i, label %sw.epilog.i.if.end.i149_crit_edge, label %if.then.i148

sw.epilog.i.if.end.i149_crit_edge:                ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i149

if.then.i148:                                     ; preds = %sw.epilog.i
  %93 = ptrtoint ptr %ext_phy_addr.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %ext_phy_addr.i, align 4
  %95 = ptrtoint ptr %mmio1 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %mmio1, align 4
  %add.ptr.i2.i32.i = getelementptr i8, ptr %96, i32 208
  %97 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i2.i32.i) #12, !srcloc !143
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !154
  %.mask.i.i33.i = and i32 %97, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask.i.i33.i)
  %tobool.not36.i.i.i = icmp eq i32 %.mask.i.i33.i, 0
  br i1 %tobool.not36.i.i.i, label %if.then.i148.do.body.i.i40.i_crit_edge, label %if.then.i148.while.body.i.i35.i_crit_edge

if.then.i148.while.body.i.i35.i_crit_edge:        ; preds = %if.then.i148
  br label %while.body.i.i35.i

if.then.i148.do.body.i.i40.i_crit_edge:           ; preds = %if.then.i148
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i.i40.i

while.body.i.i35.i:                               ; preds = %while.body.i.i35.i.while.body.i.i35.i_crit_edge, %if.then.i148.while.body.i.i35.i_crit_edge
  %98 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i2.i32.i) #12, !srcloc !143
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !155
  %.mask37.i.i.i = and i32 %98, 128
  %tobool.not.i.i34.i = icmp eq i32 %.mask37.i.i.i, 0
  br i1 %tobool.not.i.i34.i, label %while.body.i.i35.i.do.body.i.i40.i_crit_edge, label %while.body.i.i35.i.while.body.i.i35.i_crit_edge

while.body.i.i35.i.while.body.i.i35.i_crit_edge:  ; preds = %while.body.i.i35.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i.i35.i

while.body.i.i35.i.do.body.i.i40.i_crit_edge:     ; preds = %while.body.i.i35.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i.i40.i

do.body.i.i40.i:                                  ; preds = %while.body.i.i35.i.do.body.i.i40.i_crit_edge, %if.then.i148.do.body.i.i40.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !156
  tail call void @arm_heavy_mb() #12
  %and9.i.i36.i = shl i32 %94, 21
  %shl.i.i37.i = and i32 %and9.i.i36.i, 65011712
  %or.i.i38.i = or i32 %or9.i, %shl.i.i37.i
  %or13.i.i.i = or i32 %or.i.i38.i, 1074003968
  %99 = tail call i32 @llvm.bswap.i32(i32 %or13.i.i.i) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i32.i, i32 %99) #12, !srcloc !147
  br label %do.body15.i.i.i

do.body15.i.i.i:                                  ; preds = %do.body15.i.i.i.do.body15.i.i.i_crit_edge, %do.body.i.i40.i
  %repeat.0.i.i41.i = phi i32 [ 10, %do.body.i.i40.i ], [ %dec.i.i42.i, %do.body15.i.i.i.do.body15.i.i.i_crit_edge ]
  %100 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i2.i32.i) #12, !srcloc !143
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !157
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %101 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %101(i32 noundef 6442440) #12
  %dec.i.i42.i = add nsw i32 %repeat.0.i.i41.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i42.i)
  %tobool23.not.i.i.i = icmp eq i32 %dec.i.i42.i, 0
  %.mask.i.i = and i32 %100, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask.i.i)
  %tobool25.not.i.i.i = icmp eq i32 %.mask.i.i, 0
  %or.cond.i.i43.i = select i1 %tobool23.not.i.i.i, i1 true, i1 %tobool25.not.i.i.i
  br i1 %or.cond.i.i43.i, label %do.body15.i.i.i.if.end.i149_crit_edge, label %do.body15.i.i.i.do.body15.i.i.i_crit_edge

do.body15.i.i.i.do.body15.i.i.i_crit_edge:        ; preds = %do.body15.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body15.i.i.i

do.body15.i.i.i.if.end.i149_crit_edge:            ; preds = %do.body15.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i149

if.end.i149:                                      ; preds = %do.body15.i.i.i.if.end.i149_crit_edge, %sw.epilog.i.if.end.i149_crit_edge
  %102 = ptrtoint ptr %ext_phy_addr.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %ext_phy_addr.i, align 4
  %104 = ptrtoint ptr %mmio1 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %mmio1, align 4
  %add.ptr.i2.i45.i = getelementptr i8, ptr %105, i32 208
  %106 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i2.i45.i) #12, !srcloc !143
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !144
  %.mask.i.i46.i = and i32 %106, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask.i.i46.i)
  %tobool.not38.i.i47.i = icmp eq i32 %.mask.i.i46.i, 0
  br i1 %tobool.not38.i.i47.i, label %if.end.i149.do.body.i.i54.i_crit_edge, label %if.end.i149.while.body.i.i50.i_crit_edge

if.end.i149.while.body.i.i50.i_crit_edge:         ; preds = %if.end.i149
  br label %while.body.i.i50.i

if.end.i149.do.body.i.i54.i_crit_edge:            ; preds = %if.end.i149
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i.i54.i

while.body.i.i50.i:                               ; preds = %while.body.i.i50.i.while.body.i.i50.i_crit_edge, %if.end.i149.while.body.i.i50.i_crit_edge
  %107 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i2.i45.i) #12, !srcloc !143
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !145
  %.mask39.i.i48.i = and i32 %107, 128
  %tobool.not.i.i49.i = icmp eq i32 %.mask39.i.i48.i, 0
  br i1 %tobool.not.i.i49.i, label %while.body.i.i50.i.do.body.i.i54.i_crit_edge, label %while.body.i.i50.i.while.body.i.i50.i_crit_edge

while.body.i.i50.i.while.body.i.i50.i_crit_edge:  ; preds = %while.body.i.i50.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i.i50.i

while.body.i.i50.i.do.body.i.i54.i_crit_edge:     ; preds = %while.body.i.i50.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i.i54.i

do.body.i.i54.i:                                  ; preds = %while.body.i.i50.i.do.body.i.i54.i_crit_edge, %if.end.i149.do.body.i.i54.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !146
  tail call void @arm_heavy_mb() #12
  %and9.i.i51.i = shl i32 %103, 21
  %shl.i.i52.i = and i32 %and9.i.i51.i, 65011712
  %or12.i.i53.i = or i32 %shl.i.i52.i, 536870912
  %108 = tail call i32 @llvm.bswap.i32(i32 %or12.i.i53.i) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i45.i, i32 %108) #12, !srcloc !147
  br label %do.body14.i.i60.i

do.body14.i.i60.i:                                ; preds = %do.body14.i.i60.i.do.body14.i.i60.i_crit_edge, %do.body.i.i54.i
  %repeat.0.i.i55.i = phi i32 [ 10, %do.body.i.i54.i ], [ %dec.i.i56.i, %do.body14.i.i60.i.do.body14.i.i60.i_crit_edge ]
  %109 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i2.i45.i) #12, !srcloc !143
  %110 = tail call i32 @llvm.bswap.i32(i32 %109) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !148
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %111 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %111(i32 noundef 6442440) #12
  %dec.i.i56.i = add nsw i32 %repeat.0.i.i55.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i56.i)
  %tobool22.not.i.i57.i = icmp eq i32 %dec.i.i56.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %110)
  %tobool24.not.i.i58.i = icmp sgt i32 %110, -1
  %or.cond.i.i59.i = select i1 %tobool22.not.i.i57.i, i1 true, i1 %tobool24.not.i.i58.i
  br i1 %or.cond.i.i59.i, label %amd8111e_mdio_read.exit65.i, label %do.body14.i.i60.i.do.body14.i.i60.i_crit_edge

do.body14.i.i60.i.do.body14.i.i60.i_crit_edge:    ; preds = %do.body14.i.i60.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body14.i.i60.i

amd8111e_mdio_read.exit65.i:                      ; preds = %do.body14.i.i60.i
  %and26.i.i61.i = and i32 %110, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26.i.i61.i)
  %tobool27.not.i.i62.i = icmp eq i32 %and26.i.i61.i, 0
  %and28.i.i63.i = and i32 %110, 60927
  %112 = ptrtoint ptr %ext_phy_addr.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %ext_phy_addr.i, align 4
  %114 = ptrtoint ptr %mmio1 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %mmio1, align 4
  %add.ptr.i2.i67.i = getelementptr i8, ptr %115, i32 208
  %116 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i2.i67.i) #12, !srcloc !143
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !154
  %.mask.i.i68.i = and i32 %116, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask.i.i68.i)
  %tobool.not36.i.i69.i = icmp eq i32 %.mask.i.i68.i, 0
  br i1 %tobool.not36.i.i69.i, label %amd8111e_mdio_read.exit65.i.do.body.i.i77.i_crit_edge, label %amd8111e_mdio_read.exit65.i.while.body.i.i72.i_crit_edge

amd8111e_mdio_read.exit65.i.while.body.i.i72.i_crit_edge: ; preds = %amd8111e_mdio_read.exit65.i
  br label %while.body.i.i72.i

amd8111e_mdio_read.exit65.i.do.body.i.i77.i_crit_edge: ; preds = %amd8111e_mdio_read.exit65.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i.i77.i

while.body.i.i72.i:                               ; preds = %while.body.i.i72.i.while.body.i.i72.i_crit_edge, %amd8111e_mdio_read.exit65.i.while.body.i.i72.i_crit_edge
  %117 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i2.i67.i) #12, !srcloc !143
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !155
  %.mask37.i.i70.i = and i32 %117, 128
  %tobool.not.i.i71.i = icmp eq i32 %.mask37.i.i70.i, 0
  br i1 %tobool.not.i.i71.i, label %while.body.i.i72.i.do.body.i.i77.i_crit_edge, label %while.body.i.i72.i.while.body.i.i72.i_crit_edge

while.body.i.i72.i.while.body.i.i72.i_crit_edge:  ; preds = %while.body.i.i72.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i.i72.i

while.body.i.i72.i.do.body.i.i77.i_crit_edge:     ; preds = %while.body.i.i72.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i.i77.i

do.body.i.i77.i:                                  ; preds = %while.body.i.i72.i.do.body.i.i77.i_crit_edge, %amd8111e_mdio_read.exit65.i.do.body.i.i77.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !156
  tail call void @arm_heavy_mb() #12
  %and9.i.i73.i = shl i32 %113, 21
  %shl.i.i74.i = and i32 %and9.i.i73.i, 65011712
  %and28.i.i63.op.op.i = or i32 %and28.i.i63.i, 1073746432
  %or.i.i75.i = select i1 %tobool27.not.i.i62.i, i32 %and28.i.i63.op.op.i, i32 1073746432
  %or13.i.i76.i = or i32 %shl.i.i74.i, %or.i.i75.i
  %118 = tail call i32 @llvm.bswap.i32(i32 %or13.i.i76.i) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i67.i, i32 %118) #12, !srcloc !147
  br label %do.body15.i.i84.i

do.body15.i.i84.i:                                ; preds = %do.body15.i.i84.i.do.body15.i.i84.i_crit_edge, %do.body.i.i77.i
  %repeat.0.i.i78.i = phi i32 [ 10, %do.body.i.i77.i ], [ %dec.i.i79.i, %do.body15.i.i84.i.do.body15.i.i84.i_crit_edge ]
  %119 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i2.i67.i) #12, !srcloc !143
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !157
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %120 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %120(i32 noundef 6442440) #12
  %dec.i.i79.i = add nsw i32 %repeat.0.i.i78.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i79.i)
  %tobool23.not.i.i80.i = icmp eq i32 %dec.i.i79.i, 0
  %.mask.i81.i = and i32 %119, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask.i81.i)
  %tobool25.not.i.i82.i = icmp eq i32 %.mask.i81.i, 0
  %or.cond.i.i83.i = select i1 %tobool23.not.i.i80.i, i1 true, i1 %tobool25.not.i.i82.i
  br i1 %or.cond.i.i83.i, label %amd8111e_set_ext_phy.exit, label %do.body15.i.i84.i.do.body15.i.i84.i_crit_edge

do.body15.i.i84.i.do.body15.i.i84.i_crit_edge:    ; preds = %do.body15.i.i84.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body15.i.i84.i

amd8111e_set_ext_phy.exit:                        ; preds = %do.body15.i.i84.i
  %add.ptr11 = getelementptr i8, ptr %1, i32 108
  %121 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11) #12, !srcloc !143
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !239
  %122 = and i32 %121, -268632065
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !240
  tail call void @arm_heavy_mb() #12
  %123 = or i32 %122, 268566528
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11, i32 %123) #12, !srcloc !147
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !241
  tail call void @arm_heavy_mb() #12
  %add.ptr22 = getelementptr i8, ptr %1, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22, i32 275808007) #12, !srcloc !147
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !242
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22, i32 -2122252152) #12, !srcloc !147
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !243
  tail call void @arm_heavy_mb() #12
  %tx_ring_dma_addr = getelementptr i8, ptr %dev, i32 2312
  %124 = ptrtoint ptr %tx_ring_dma_addr to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %tx_ring_dma_addr, align 8
  %126 = tail call i32 @llvm.bswap.i32(i32 %125)
  %add.ptr30 = getelementptr i8, ptr %1, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr30, i32 %126) #12, !srcloc !147
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !244
  tail call void @arm_heavy_mb() #12
  %rx_ring_dma_addr = getelementptr i8, ptr %dev, i32 2316
  %127 = ptrtoint ptr %rx_ring_dma_addr to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %rx_ring_dma_addr, align 4
  %129 = tail call i32 @llvm.bswap.i32(i32 %128)
  %add.ptr34 = getelementptr i8, ptr %1, i32 288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr34, i32 %129) #12, !srcloc !147
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !245
  tail call void @arm_heavy_mb() #12
  %add.ptr38 = getelementptr i8, ptr %1, i32 320
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr38, i16 8192) #12, !srcloc !159
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !246
  tail call void @arm_heavy_mb() #12
  %add.ptr42 = getelementptr i8, ptr %1, i32 336
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr42, i16 8192) #12, !srcloc !159
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !247
  tail call void @arm_heavy_mb() #12
  %add.ptr46 = getelementptr i8, ptr %1, i32 398
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr46, i16 24576) #12, !srcloc !159
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !248
  tail call void @arm_heavy_mb() #12
  %add.ptr50 = getelementptr i8, ptr %1, i32 396
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr50, i16 15360) #12, !srcloc !159
  %options = getelementptr i8, ptr %dev, i32 3140
  %130 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %options, align 4
  %and51 = and i32 %131, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51)
  %tobool52.not = icmp eq i32 %and51, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12
  tail call void @arm_heavy_mb() #12
  br i1 %tobool52.not, label %do.body66, label %do.body54

do.body54:                                        ; preds = %amd8111e_set_ext_phy.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 40960) #12, !srcloc !147
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !249
  tail call void @arm_heavy_mb() #12
  %add.ptr61 = getelementptr i8, ptr %1, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr61, i32 33554432) #12, !srcloc !147
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !250
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr61, i32 -1006632960) #12, !srcloc !147
  br label %do.body75

do.body66:                                        ; preds = %amd8111e_set_ext_phy.exit
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr69 = getelementptr i8, ptr %1, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr69, i32 -973078528) #12, !srcloc !147
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !251
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 8192) #12, !srcloc !147
  br label %do.body75

do.body75:                                        ; preds = %do.body66, %do.body54
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !252
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 37888) #12, !srcloc !147
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !253
  tail call void @arm_heavy_mb() #12
  %add.ptr82 = getelementptr i8, ptr %1, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82, i32 -1006632960) #12, !srcloc !147
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 86
  %add.ptr86 = getelementptr i8, ptr %1, i32 352
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !254
  tail call void @arm_heavy_mb() #12
  %132 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %dev_addr, align 64
  %134 = ptrtoint ptr %133 to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %133, align 1
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr86, i8 %135) #12, !srcloc !216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !254
  tail call void @arm_heavy_mb() #12
  %136 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %dev_addr, align 64
  %arrayidx.1 = getelementptr i8, ptr %137, i32 1
  %138 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %arrayidx.1, align 1
  %add.ptr87.1 = getelementptr i8, ptr %1, i32 353
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr87.1, i8 %139) #12, !srcloc !216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !254
  tail call void @arm_heavy_mb() #12
  %140 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %dev_addr, align 64
  %arrayidx.2 = getelementptr i8, ptr %141, i32 2
  %142 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %arrayidx.2, align 1
  %add.ptr87.2 = getelementptr i8, ptr %1, i32 354
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr87.2, i8 %143) #12, !srcloc !216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !254
  tail call void @arm_heavy_mb() #12
  %144 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %dev_addr, align 64
  %arrayidx.3 = getelementptr i8, ptr %145, i32 3
  %146 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %arrayidx.3, align 1
  %add.ptr87.3 = getelementptr i8, ptr %1, i32 355
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr87.3, i8 %147) #12, !srcloc !216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !254
  tail call void @arm_heavy_mb() #12
  %148 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %dev_addr, align 64
  %arrayidx.4 = getelementptr i8, ptr %149, i32 4
  %150 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load1_noabort(i32 %150)
  %151 = load i8, ptr %arrayidx.4, align 1
  %add.ptr87.4 = getelementptr i8, ptr %1, i32 356
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr87.4, i8 %151) #12, !srcloc !216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !254
  tail call void @arm_heavy_mb() #12
  %152 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %dev_addr, align 64
  %arrayidx.5 = getelementptr i8, ptr %153, i32 5
  %154 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load1_noabort(i32 %154)
  %155 = load i8, ptr %arrayidx.5, align 1
  %add.ptr87.5 = getelementptr i8, ptr %1, i32 357
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr87.5, i8 %155) #12, !srcloc !216
  %156 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %options, align 4
  %and89 = and i32 %157, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and89)
  %tobool90.not = icmp eq i32 %and89, 0
  br i1 %tobool90.not, label %do.body75.do.body94_crit_edge, label %if.then91

do.body75.do.body94_crit_edge:                    ; preds = %do.body75
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body94

if.then91:                                        ; preds = %do.body75
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %dev, ptr noundef nonnull @.str.46) #15
  %158 = ptrtoint ptr %mmio1 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %mmio1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !255
  tail call void @arm_heavy_mb() #12
  %add.ptr48.i = getelementptr i8, ptr %159, i32 216
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr48.i, i32 -1128398848) #12, !srcloc !147
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !256
  tail call void @arm_heavy_mb() #12
  %add.ptr52.i = getelementptr i8, ptr %159, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr52.i, i32 -1879048192) #12, !srcloc !147
  br label %do.body94

do.body94:                                        ; preds = %if.then91, %do.body75.do.body94_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !257
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 33024) #12, !srcloc !147
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !258
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 -2097152000) #12, !srcloc !147
  %160 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #12, !srcloc !143
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !259
  br label %cleanup

cleanup:                                          ; preds = %do.body94, %err_free_tx_ring.i, %if.else.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body94 ], [ -12, %if.else.i.cleanup_crit_edge ], [ -12, %err_free_tx_ring.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_timer(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_schedule_prep(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__napi_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_on(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @amd8111e_free_skbs(ptr nocapture noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %pci_dev = getelementptr i8, ptr %dev, i32 2324
  br label %for.body

for.cond11.preheader:                             ; preds = %for.inc
  %rx_buff_len = getelementptr i8, ptr %dev, i32 3136
  br label %for.body13

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.01 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.amd8111e_priv, ptr %add.ptr.i, i32 0, i32 7, i32 %i.01
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %2 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pci_dev, align 4
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %arrayidx2 = getelementptr %struct.amd8111e_priv, ptr %add.ptr.i, i32 0, i32 9, i32 %i.01
  %4 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx2, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev1, i32 noundef %5, i32 noundef %7, i32 noundef 1, i32 noundef 0) #12
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  tail call void @consume_skb(ptr noundef %9) #12
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %arrayidx, align 4
  %11 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %arrayidx2, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.01, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.cond11.preheader, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.body13:                                       ; preds = %for.inc28.for.body13_crit_edge, %for.cond11.preheader
  %i.13 = phi i32 [ 0, %for.cond11.preheader ], [ %inc29, %for.inc28.for.body13_crit_edge ]
  %arrayidx15 = getelementptr %struct.amd8111e_priv, ptr %add.ptr.i, i32 0, i32 8, i32 %i.13
  %12 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx15, align 4
  %cmp16.not = icmp eq ptr %13, null
  br i1 %cmp16.not, label %for.body13.for.inc28_crit_edge, label %if.then17

for.body13.for.inc28_crit_edge:                   ; preds = %for.body13
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc28

if.then17:                                        ; preds = %for.body13
  call void @__sanitizer_cov_trace_pc() #14
  %14 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pci_dev, align 4
  %dev19 = getelementptr inbounds %struct.pci_dev, ptr %15, i32 0, i32 44
  %arrayidx20 = getelementptr %struct.amd8111e_priv, ptr %add.ptr.i, i32 0, i32 10, i32 %i.13
  %16 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx20, align 4
  %18 = ptrtoint ptr %rx_buff_len to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %rx_buff_len, align 8
  %sub = add i32 %19, -2
  tail call void @dma_unmap_page_attrs(ptr noundef %dev19, i32 noundef %17, i32 noundef %sub, i32 noundef 2, i32 noundef 0) #12
  %20 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx15, align 4
  tail call void @consume_skb(ptr noundef %21) #12
  %22 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %arrayidx15, align 4
  %23 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %arrayidx20, align 4
  br label %for.inc28

for.inc28:                                        ; preds = %if.then17, %for.body13.for.inc28_crit_edge
  %inc29 = add nuw nsw i32 %i.13, 1
  %exitcond5.not = icmp eq i32 %inc29, 32
  br i1 %exitcond5.not, label %for.end30, label %for.inc28.for.body13_crit_edge

for.inc28.for.body13_crit_edge:                   ; preds = %for.inc28
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body13

for.end30:                                        ; preds = %for.inc28
  call void @__sanitizer_cov_trace_pc() #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_map_single(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_le(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @amd8111e_get_drvinfo(ptr nocapture noundef readonly %dev, ptr noundef %info) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %pci_dev1 = getelementptr i8, ptr %dev, i32 2324
  %0 = ptrtoint ptr %pci_dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pci_dev1, align 4
  %driver = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 1
  %call2 = tail call i32 @strlcpy(ptr noundef %driver, ptr noundef nonnull @.str, i32 noundef 32) #12
  %fw_version = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 3
  %2 = load i32, ptr @chip_version, align 4
  %call4 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %fw_version, i32 noundef 32, ptr noundef nonnull @.str.50, i32 noundef %2)
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44, i32 3
  %3 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %4, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %entry.pci_name.exit_crit_edge

entry.pci_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %5 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev.i, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %entry.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %6, %if.end.i.i ], [ %4, %entry.pci_name.exit_crit_edge ]
  %bus_info = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 4
  %call7 = tail call i32 @strlcpy(ptr noundef %bus_info, ptr noundef %retval.0.i.i, i32 noundef 32) #12
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @amd8111e_get_regs_len(ptr nocapture noundef readnone %dev) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 52
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @amd8111e_get_regs(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %regs, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %version = getelementptr inbounds %struct.ethtool_regs, ptr %regs, i32 0, i32 1
  %0 = ptrtoint ptr %version to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %version, align 4
  %mmio1.i = getelementptr i8, ptr %dev, i32 2844
  %1 = ptrtoint ptr %mmio1.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %mmio1.i, align 4
  %add.ptr.i1 = getelementptr i8, ptr %2, i32 256
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1) #12, !srcloc !143
  %4 = tail call i32 @llvm.bswap.i32(i32 %3) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !260
  %5 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %buf, align 4
  %add.ptr5.i = getelementptr i8, ptr %2, i32 320
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i) #12, !srcloc !143
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !261
  %arrayidx9.i = getelementptr i32, ptr %buf, i32 1
  %8 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %arrayidx9.i, align 4
  %add.ptr12.i = getelementptr i8, ptr %2, i32 288
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12.i) #12, !srcloc !143
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !262
  %arrayidx16.i = getelementptr i32, ptr %buf, i32 2
  %11 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %arrayidx16.i, align 4
  %add.ptr19.i = getelementptr i8, ptr %2, i32 336
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr19.i) #12, !srcloc !143
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !263
  %arrayidx23.i = getelementptr i32, ptr %buf, i32 3
  %14 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %arrayidx23.i, align 4
  %add.ptr26.i = getelementptr i8, ptr %2, i32 72
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr26.i) #12, !srcloc !143
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !264
  %arrayidx30.i = getelementptr i32, ptr %buf, i32 4
  %17 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %arrayidx30.i, align 4
  %add.ptr33.i = getelementptr i8, ptr %2, i32 80
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr33.i) #12, !srcloc !143
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !265
  %arrayidx37.i = getelementptr i32, ptr %buf, i32 5
  %20 = ptrtoint ptr %arrayidx37.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx37.i, align 4
  %add.ptr40.i = getelementptr i8, ptr %2, i32 84
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr40.i) #12, !srcloc !143
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !266
  %arrayidx44.i = getelementptr i32, ptr %buf, i32 6
  %23 = ptrtoint ptr %arrayidx44.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx44.i, align 4
  %add.ptr47.i = getelementptr i8, ptr %2, i32 100
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr47.i) #12, !srcloc !143
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !267
  %arrayidx51.i = getelementptr i32, ptr %buf, i32 7
  %26 = ptrtoint ptr %arrayidx51.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %arrayidx51.i, align 4
  %add.ptr54.i = getelementptr i8, ptr %2, i32 56
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr54.i) #12, !srcloc !143
  %28 = tail call i32 @llvm.bswap.i32(i32 %27) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !268
  %arrayidx58.i = getelementptr i32, ptr %buf, i32 8
  %29 = ptrtoint ptr %arrayidx58.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %arrayidx58.i, align 4
  %add.ptr61.i = getelementptr i8, ptr %2, i32 64
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr61.i) #12, !srcloc !143
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !269
  %arrayidx65.i = getelementptr i32, ptr %buf, i32 9
  %32 = ptrtoint ptr %arrayidx65.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %arrayidx65.i, align 4
  %add.ptr68.i = getelementptr i8, ptr %2, i32 360
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr68.i) #12, !srcloc !143
  %34 = tail call i32 @llvm.bswap.i32(i32 %33) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !270
  %arrayidx72.i = getelementptr i32, ptr %buf, i32 10
  %35 = ptrtoint ptr %arrayidx72.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %arrayidx72.i, align 4
  %add.ptr76.i = getelementptr i8, ptr %2, i32 364
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr76.i) #12, !srcloc !143
  %37 = tail call i32 @llvm.bswap.i32(i32 %36) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !271
  %arrayidx80.i = getelementptr i32, ptr %buf, i32 11
  %38 = ptrtoint ptr %arrayidx80.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %arrayidx80.i, align 4
  %add.ptr83.i = getelementptr i8, ptr %2, i32 48
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr83.i) #12, !srcloc !143
  %40 = tail call i32 @llvm.bswap.i32(i32 %39) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !272
  %arrayidx87.i = getelementptr i32, ptr %buf, i32 12
  %41 = ptrtoint ptr %arrayidx87.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %arrayidx87.i, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @amd8111e_get_wol(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %wol_info) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %supported = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wol_info, i32 0, i32 1
  %0 = ptrtoint ptr %supported to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 33, ptr %supported, align 4
  %options = getelementptr i8, ptr %dev, i32 3140
  %1 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %options, align 4
  %and = and i32 %2, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %wolopts = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wol_info, i32 0, i32 2
  %3 = ptrtoint ptr %wolopts to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 32, ptr %wolopts, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amd8111e_set_wol(ptr noundef %dev, ptr nocapture noundef readonly %wol_info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %wolopts = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wol_info, i32 0, i32 2
  %0 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %wolopts, align 4
  %and = and i32 %1, -34
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr i8, ptr %dev, i32 3072
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #12
  %2 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %wolopts, align 4
  %and2 = and i32 %3, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %options = getelementptr i8, ptr %dev, i32 3140
  %4 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %options, align 4
  %or = or i32 %5, 24
  store i32 %or, ptr %options, align 4
  br label %if.end15

if.else:                                          ; preds = %if.end
  %and6 = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  %options12 = getelementptr i8, ptr %dev, i32 3140
  %6 = ptrtoint ptr %options12 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %options12, align 4
  br i1 %tobool7.not, label %if.else11, label %if.then8

if.then8:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %or10 = or i32 %7, 40
  %8 = ptrtoint ptr %options12 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %or10, ptr %options12, align 4
  br label %if.end15

if.else11:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %and13 = and i32 %7, -9
  %9 = ptrtoint ptr %options12 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %and13, ptr %options12, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.else11, %if.then8, %if.then4
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end15 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amd8111e_nway_reset(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %mii_if = getelementptr i8, ptr %dev, i32 3180
  %call1 = tail call i32 @mii_nway_restart(ptr noundef %mii_if) #12
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amd8111e_get_link(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %mii_if = getelementptr i8, ptr %dev, i32 3180
  %call1 = tail call i32 @mii_link_ok(ptr noundef %mii_if) #12
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amd8111e_get_link_ksettings(ptr noundef %dev, ptr noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr i8, ptr %dev, i32 3072
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #12
  %mii_if = getelementptr i8, ptr %dev, i32 3180
  tail call void @mii_ethtool_get_link_ksettings(ptr noundef %mii_if, ptr noundef %cmd) #12
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amd8111e_set_link_ksettings(ptr noundef %dev, ptr noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr i8, ptr %dev, i32 3072
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #12
  %mii_if = getelementptr i8, ptr %dev, i32 3180
  %call1 = tail call i32 @mii_ethtool_set_link_ksettings(ptr noundef %mii_if, ptr noundef %cmd) #12
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #12
  ret i32 %call1
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mii_nway_restart(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mii_link_ok(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mii_ethtool_get_link_ksettings(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mii_ethtool_set_link_ksettings(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @eth_type_trans(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @napi_gro_receive(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_complete_done(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amd8111e_suspend(ptr noundef %dev_d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev_d, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %state.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr i8, ptr %1, i32 3072
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !198
  tail call void @arm_heavy_mb() #12
  %mmio.i = getelementptr i8, ptr %1, i32 2844
  %4 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i45 = getelementptr i8, ptr %5, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i45, i32 33554432) #12, !srcloc !147
  %6 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mmio.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %7, i32 56
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #12, !srcloc !143
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !199
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !200
  tail call void @arm_heavy_mb() #12
  %9 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mmio.i, align 4
  %add.ptr8.i = getelementptr i8, ptr %10, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i, i32 %8) #12, !srcloc !147
  %11 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mmio.i, align 4
  %add.ptr12.i = getelementptr i8, ptr %12, i32 56
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12.i) #12, !srcloc !143
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !201
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #12
  tail call void @netif_device_detach(ptr noundef %1) #12
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #12
  %options = getelementptr i8, ptr %1, i32 3140
  %14 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %options, align 4
  %and = and i32 %15, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.if.end7_crit_edge, label %if.then5

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %ipg_timer = getelementptr i8, ptr %1, i32 3304
  %call6 = tail call i32 @del_timer_sync(ptr noundef %ipg_timer) #12
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.end.if.end7_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !202
  tail call void @arm_heavy_mb() #12
  %16 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i47 = getelementptr i8, ptr %17, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i47, i32 16777216) #12, !srcloc !147
  %18 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mmio.i, align 4
  %add.ptr2.i48 = getelementptr i8, ptr %19, i32 72
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i48) #12, !srcloc !143
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !203
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #12
  %21 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %options, align 4
  %and10 = and i32 %22, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.end7.cleanup.sink.split_crit_edge, label %if.then12

if.end7.cleanup.sink.split_crit_edge:             ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

if.then12:                                        ; preds = %if.end7
  %and14 = and i32 %22, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %if.then12.if.end18_crit_edge, label %if.then16

if.then12.if.end18_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18

if.then16:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !273
  tail call void @arm_heavy_mb() #12
  %23 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i50 = getelementptr i8, ptr %24, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i50, i32 8519680) #12, !srcloc !147
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !274
  tail call void @arm_heavy_mb() #12
  %25 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %mmio.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %26, i32 100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 -2113929216) #12, !srcloc !147
  %27 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %mmio.i, align 4
  %add.ptr6.i = getelementptr i8, ptr %28, i32 100
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i) #12, !srcloc !143
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !275
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %if.then12.if.end18_crit_edge
  %30 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %options, align 4
  %and20 = and i32 %31, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %if.end18.cleanup.sink.split_crit_edge, label %if.then22

if.end18.cleanup.sink.split_crit_edge:            ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

if.then22:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !276
  tail call void @arm_heavy_mb() #12
  %32 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i52 = getelementptr i8, ptr %33, i32 100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i52, i32 -2130706432) #12, !srcloc !147
  %34 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %mmio.i, align 4
  %add.ptr2.i53 = getelementptr i8, ptr %35, i32 100
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i53) #12, !srcloc !143
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !277
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then22, %if.end18.cleanup.sink.split_crit_edge, %if.end7.cleanup.sink.split_crit_edge
  %37 = xor i1 %tobool11.not, true
  %call25 = tail call i32 @device_set_wakeup_enable(ptr noundef %dev_d, i1 noundef zeroext %37) #12
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amd8111e_resume(ptr nocapture noundef readonly %dev_d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev_d, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %state.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @netif_device_attach(ptr noundef %1) #12
  %lock = getelementptr i8, ptr %1, i32 3072
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #12
  %call3 = tail call fastcc i32 @amd8111e_restart(ptr noundef %1)
  %options = getelementptr i8, ptr %1, i32 3140
  %4 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %options, align 4
  %and = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.if.end6_crit_edge, label %if.then4

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %ipg_timer = getelementptr i8, ptr %1, i32 3304
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %6 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %6, 50
  %call5 = tail call i32 @mod_timer(ptr noundef %ipg_timer, i32 noundef %add) #12
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end.if.end6_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_detach(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_set_wakeup_enable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_attach(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 55)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 55)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !12, !14, !15, !17, !19, !20, !22, !24, !25, !26, !27, !29, !30, !31, !33, !34, !35, !37, !38, !40, !42, !44, !45, !46, !47, !48, !49, !50, !52, !53, !54, !56, !57, !58, !60, !61, !62, !64, !65, !66, !68, !69, !71, !72, !73, !75, !76, !77, !79, !80, !82, !83, !84, !85, !87, !88, !89, !91, !92, !93, !95, !97, !99, !101, !102, !103, !105, !107, !109, !111, !113, !115, !117, !119, !120, !121, !123, !125, !127, !129}
!llvm.module.flags = !{!131, !132, !133, !134, !135, !136, !137, !138}
!llvm.ident = !{!139}

!0 = !{ptr @__UNIQUE_ID_author343, !1, !"__UNIQUE_ID_author343", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/amd/amd8111e.c", i32 87, i32 1}
!2 = !{ptr @__UNIQUE_ID_description344, !3, !"__UNIQUE_ID_description344", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/amd/amd8111e.c", i32 88, i32 1}
!4 = !{ptr @__UNIQUE_ID_file345, !5, !"__UNIQUE_ID_file345", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/amd/amd8111e.c", i32 89, i32 1}
!6 = !{ptr @__UNIQUE_ID_license346, !5, !"__UNIQUE_ID_license346", i1 false, i1 false}
!7 = !{ptr @__param_speed_duplex, !8, !"__param_speed_duplex", i1 false, i1 false}
!8 = !{!"../drivers/net/ethernet/amd/amd8111e.c", i32 90, i32 1}
!9 = !{ptr @__UNIQUE_ID_speed_duplextype347, !8, !"__UNIQUE_ID_speed_duplextype347", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_speed_duplex348, !11, !"__UNIQUE_ID_speed_duplex348", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/amd/amd8111e.c", i32 91, i32 1}
!12 = !{ptr @__param_coalesce, !13, !"__param_coalesce", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/amd/amd8111e.c", i32 92, i32 1}
!14 = !{ptr @__UNIQUE_ID_coalescetype349, !13, !"__UNIQUE_ID_coalescetype349", i1 false, i1 false}
!15 = !{ptr @__UNIQUE_ID_coalesce350, !16, !"__UNIQUE_ID_coalesce350", i1 false, i1 false}
!16 = !{!"../drivers/net/ethernet/amd/amd8111e.c", i32 93, i32 1}
!17 = !{ptr @__param_dynamic_ipg, !18, !"__param_dynamic_ipg", i1 false, i1 false}
!18 = !{!"../drivers/net/ethernet/amd/amd8111e.c", i32 94, i32 1}
!19 = !{ptr @__UNIQUE_ID_dynamic_ipgtype351, !18, !"__UNIQUE_ID_dynamic_ipgtype351", i1 false, i1 false}
!20 = !{ptr @__UNIQUE_ID_dynamic_ipg352, !21, !"__UNIQUE_ID_dynamic_ipg352", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/amd/amd8111e.c", i32 95, i32 1}
!22 = !{ptr @__initcall__kmod_amd8111e__354_1923_amd8111e_driver_init6, !23, !"__initcall__kmod_amd8111e__354_1923_amd8111e_driver_init6", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/amd/amd8111e.c", i32 1923, i32 1}
!24 = !{ptr @__exitcall_amd8111e_driver_exit, !23, !"__exitcall_amd8111e_driver_exit", i1 false, i1 false}
!25 = !{ptr @__param_str_speed_duplex, !8, !"__param_str_speed_duplex", i1 false, i1 false}
!26 = !{ptr @__param_arr_speed_duplex, !8, !"__param_arr_speed_duplex", i1 false, i1 false}
!27 = !{ptr @speed_duplex, !28, !"speed_duplex", i1 false, i1 false}
!28 = !{!"../drivers/net/ethernet/amd/amd8111e.h", i32 796, i32 12}
!29 = !{ptr @__param_str_coalesce, !13, !"__param_str_coalesce", i1 false, i1 false}
!30 = !{ptr @__param_arr_coalesce, !13, !"__param_arr_coalesce", i1 false, i1 false}
!31 = !{ptr @coalesce, !32, !"coalesce", i1 false, i1 false}
!32 = !{!"../drivers/net/ethernet/amd/amd8111e.h", i32 797, i32 13}
!33 = !{ptr @__param_str_dynamic_ipg, !18, !"__param_str_dynamic_ipg", i1 false, i1 false}
!34 = !{ptr @__param_arr_dynamic_ipg, !18, !"__param_arr_dynamic_ipg", i1 false, i1 false}
!35 = !{ptr @dynamic_ipg, !36, !"dynamic_ipg", i1 false, i1 false}
!36 = !{!"../drivers/net/ethernet/amd/amd8111e.h", i32 798, i32 13}
!37 = !{ptr @.str, !23, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @amd8111e_driver, !39, !"amd8111e_driver", i1 false, i1 false}
!39 = !{!"../drivers/net/ethernet/amd/amd8111e.c", i32 1915, i32 26}
!40 = !{ptr @amd8111e_pci_tbl, !41, !"amd8111e_pci_tbl", i1 false, i1 false}
!41 = !{!"../drivers/net/ethernet/amd/amd8111e.c", i32 1902, i32 35}
!42 = !{ptr @.str.1, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/ethernet/amd/amd8111e.c", i32 1750, i32 3}
!44 = !{ptr @.str.2, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.3, !43, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.4, !43, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.5, !43, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @amd8111e_probe_one._entry, !43, !"_entry", i1 false, i1 false}
!49 = !{ptr @amd8111e_probe_one._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.7, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/ethernet/amd/amd8111e.c", i32 1755, i32 3}
!52 = !{ptr @amd8111e_probe_one._entry.6, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @amd8111e_probe_one._entry_ptr.8, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.10, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/ethernet/amd/amd8111e.c", i32 1762, i32 3}
!56 = !{ptr @amd8111e_probe_one._entry.9, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @amd8111e_probe_one._entry_ptr.11, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.13, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/ethernet/amd/amd8111e.c", i32 1770, i32 3}
!60 = !{ptr @amd8111e_probe_one._entry.12, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @amd8111e_probe_one._entry_ptr.14, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.16, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/ethernet/amd/amd8111e.c", i32 1777, i32 3}
!64 = !{ptr @amd8111e_probe_one._entry.15, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @amd8111e_probe_one._entry_ptr.17, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @amd8111e_probe_one.__key, !67, !"__key", i1 false, i1 false}
!67 = !{!"../drivers/net/ethernet/amd/amd8111e.c", i32 1802, i32 2}
!68 = !{ptr @.str.18, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @.str.20, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/net/ethernet/amd/amd8111e.c", i32 1806, i32 3}
!71 = !{ptr @amd8111e_probe_one._entry.19, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @amd8111e_probe_one._entry_ptr.21, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.23, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/net/ethernet/amd/amd8111e.c", i32 1851, i32 3}
!75 = !{ptr @amd8111e_probe_one._entry.22, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @amd8111e_probe_one._entry_ptr.24, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @amd8111e_probe_one.__key.25, !78, !"__key", i1 false, i1 false}
!78 = !{!"../drivers/net/ethernet/amd/amd8111e.c", i32 1859, i32 3}
!79 = !{ptr @.str.26, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @.str.28, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/net/ethernet/amd/amd8111e.c", i32 1868, i32 2}
!82 = !{ptr @.str.29, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @amd8111e_probe_one._entry.27, !81, !"_entry", i1 false, i1 false}
!84 = !{ptr @amd8111e_probe_one._entry_ptr.30, !81, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.32, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/net/ethernet/amd/amd8111e.c", i32 1871, i32 3}
!87 = !{ptr @amd8111e_probe_one._entry.31, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @amd8111e_probe_one._entry_ptr.33, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.35, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/net/ethernet/amd/amd8111e.c", i32 1874, i32 3}
!91 = !{ptr @amd8111e_probe_one._entry.34, !90, !"_entry", i1 false, i1 false}
!92 = !{ptr @amd8111e_probe_one._entry_ptr.36, !90, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @card_idx, !94, !"card_idx", i1 false, i1 false}
!94 = !{!"../drivers/net/ethernet/amd/amd8111e.h", i32 795, i32 12}
!95 = !{ptr @amd8111e_netdev_ops, !96, !"amd8111e_netdev_ops", i1 false, i1 false}
!96 = !{!"../drivers/net/ethernet/amd/amd8111e.c", i32 1723, i32 36}
!97 = !{ptr @.str.37, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/net/ethernet/amd/amd8111e.c", i32 1216, i32 20}
!99 = !{ptr @.str.38, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/net/ethernet/amd/amd8111e.c", i32 1117, i32 4}
!101 = !{ptr @.str.39, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @amd8111e_interrupt.__UNIQUE_ID_ddebug353, !100, !"__UNIQUE_ID_ddebug353", i1 false, i1 false}
!103 = !{ptr @.str.40, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/net/ethernet/amd/amd8111e.c", i32 817, i32 20}
!105 = !{ptr @.str.41, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/net/ethernet/amd/amd8111e.c", i32 819, i32 8}
!107 = !{ptr @.str.42, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/net/ethernet/amd/amd8111e.c", i32 819, i32 16}
!109 = !{ptr @.str.43, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/net/ethernet/amd/amd8111e.c", i32 821, i32 8}
!111 = !{ptr @.str.44, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/net/ethernet/amd/amd8111e.c", i32 821, i32 17}
!113 = !{ptr @.str.45, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/net/ethernet/amd/amd8111e.c", i32 828, i32 20}
!115 = !{ptr @.str.46, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/net/ethernet/amd/amd8111e.c", i32 485, i32 20}
!117 = distinct !{null, !118, !"__already_done", i1 false, i1 false}
!118 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!119 = !{ptr @.str.47, !118, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @.str.48, !118, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @.str.49, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/net/ethernet/amd/amd8111e.c", i32 1575, i32 18}
!123 = !{ptr @ops, !124, !"ops", i1 false, i1 false}
!124 = !{!"../drivers/net/ethernet/amd/amd8111e.c", i32 1444, i32 33}
!125 = !{ptr @.str.50, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/net/ethernet/amd/amd8111e.c", i32 1369, i32 3}
!127 = !{ptr @chip_version, !128, !"chip_version", i1 false, i1 false}
!128 = !{!"../drivers/net/ethernet/amd/amd8111e.h", i32 799, i32 21}
!129 = !{ptr @amd8111e_pm_ops, !130, !"amd8111e_pm_ops", i1 false, i1 false}
!130 = !{!"../drivers/net/ethernet/amd/amd8111e.c", i32 1913, i32 8}
!131 = !{i32 1, !"wchar_size", i32 2}
!132 = !{i32 1, !"min_enum_size", i32 4}
!133 = !{i32 8, !"branch-target-enforcement", i32 0}
!134 = !{i32 8, !"sign-return-address", i32 0}
!135 = !{i32 8, !"sign-return-address-all", i32 0}
!136 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!137 = !{i32 7, !"uwtable", i32 1}
!138 = !{i32 7, !"frame-pointer", i32 2}
!139 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!140 = !{i64 4672780}
!141 = !{i64 2156741806}
!142 = !{i8 0, i8 2}
!143 = !{i64 4673000}
!144 = !{i64 2156651046}
!145 = !{i64 2156651513}
!146 = !{i64 2156651788}
!147 = !{i64 4672582}
!148 = !{i64 2156652610}
!149 = !{i64 2156744652}
!150 = !{!"branch_weights", i32 2000, i32 1}
!151 = !{i64 2156696626}
!152 = !{i64 2156697304}
!153 = !{i64 2156697722}
!154 = !{i64 2156653625}
!155 = !{i64 2156654092}
!156 = !{i64 2156654371}
!157 = !{i64 2156655205}
!158 = !{i64 2156698699}
!159 = !{i64 4671962}
!160 = !{i64 4672162}
!161 = !{i64 2156699398}
!162 = !{i64 2156700401}
!163 = !{i64 2156729862}
!164 = !{i64 2156730294}
!165 = !{i64 2156673386}
!166 = !{i64 2156673790}
!167 = !{i64 2156674238}
!168 = !{i64 2156674615}
!169 = !{i64 2156674992}
!170 = !{i64 2156675369}
!171 = !{i64 2156675746}
!172 = !{i64 2156676130}
!173 = !{i64 2156676540}
!174 = !{i64 2156676950}
!175 = !{i64 2156677353}
!176 = !{i64 2156677735}
!177 = !{i64 2156678117}
!178 = !{i64 2156678753}
!179 = !{i64 2156678970}
!180 = !{i64 2156679364}
!181 = !{i64 2156679755}
!182 = !{i64 2156680166}
!183 = !{i64 2156680555}
!184 = !{i64 2156680952}
!185 = !{i64 2156681337}
!186 = !{i64 2156681722}
!187 = !{i64 2156682107}
!188 = !{i64 2156682492}
!189 = !{i64 2156682875}
!190 = !{i64 2156683263}
!191 = !{i64 2156683848}
!192 = !{i64 2156684355}
!193 = !{i64 2156685114}
!194 = !{i64 2156685343}
!195 = !{i64 2156685776}
!196 = !{i64 2156686234}
!197 = !{i64 2156686900}
!198 = !{i64 2156687120}
!199 = !{i64 2156687785}
!200 = !{i64 2156688004}
!201 = !{i64 2156688666}
!202 = !{i64 2156688883}
!203 = !{i64 2156689539}
!204 = !{i64 2156708930}
!205 = !{i64 2156709343}
!206 = !{i64 2156709769}
!207 = !{i64 2156717402}
!208 = !{i64 2156717905}
!209 = !{i64 2156718712}
!210 = !{i64 2156719215}
!211 = !{i64 2156719715}
!212 = !{i64 2156723765}
!213 = !{i64 2156724268}
!214 = !{i64 2156725033}
!215 = !{i64 2156725472}
!216 = !{i64 4672385}
!217 = !{i64 2156725758}
!218 = !{i64 792652, i64 792713}
!219 = !{i64 795384}
!220 = !{!"branch_weights", i32 1, i32 2000}
!221 = !{i64 795669}
!222 = !{i64 2156701165}
!223 = !{i64 2156701810}
!224 = !{i64 2156702277}
!225 = !{i64 2156702492}
!226 = !{i64 2156702884}
!227 = !{i64 2149002329, i64 2149002334, i64 2149002347, i64 2149002391, i64 2149002425, i64 2149002446}
!228 = !{i64 2156705721}
!229 = !{i64 2156698401}
!230 = !{i64 2156657718}
!231 = !{i64 2156658176}
!232 = !{i64 2156658731}
!233 = !{i64 2156659196}
!234 = !{i64 2156706125}
!235 = !{i64 2156662099}
!236 = !{i64 2156657370}
!237 = !{i64 2156662500}
!238 = !{i64 2156662949}
!239 = !{i64 2156663642}
!240 = !{i64 2156663885}
!241 = !{i64 2156664510}
!242 = !{i64 2156665396}
!243 = !{i64 2156665937}
!244 = !{i64 2156666410}
!245 = !{i64 2156666869}
!246 = !{i64 2156667277}
!247 = !{i64 2156667689}
!248 = !{i64 2156668118}
!249 = !{i64 2156668988}
!250 = !{i64 2156669408}
!251 = !{i64 2156670384}
!252 = !{i64 2156670816}
!253 = !{i64 2156671302}
!254 = !{i64 2156671774}
!255 = !{i64 2156661264}
!256 = !{i64 2156661684}
!257 = !{i64 2156672068}
!258 = !{i64 2156672493}
!259 = !{i64 2156673173}
!260 = !{i64 2156710441}
!261 = !{i64 2156710913}
!262 = !{i64 2156711385}
!263 = !{i64 2156711857}
!264 = !{i64 2156712324}
!265 = !{i64 2156712791}
!266 = !{i64 2156713258}
!267 = !{i64 2156713725}
!268 = !{i64 2156714192}
!269 = !{i64 2156714659}
!270 = !{i64 2156715131}
!271 = !{i64 2156715615}
!272 = !{i64 2156716082}
!273 = !{i64 2156726158}
!274 = !{i64 2156726589}
!275 = !{i64 2156727278}
!276 = !{i64 2156727508}
!277 = !{i64 2156728203}
