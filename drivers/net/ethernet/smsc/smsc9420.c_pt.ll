; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/smsc/smsc9420.c_pt.bc'
source_filename = "../drivers/net/ethernet/smsc/smsc9420.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
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
%struct.atomic_t = type { i32 }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.smsc9420_dma_desc = type { i32, i32, i32, i32 }
%struct.smsc9420_pdata = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, %struct.spinlock, %struct.spinlock, %struct.napi_struct, i8, i8, i32, ptr, i32, i32 }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.smsc9420_ring_info = type { ptr, i32 }
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
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.page = type { i32, %union.anon.2, %union.anon.96, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.96 = type { %struct.atomic_t }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.netdev_hw_addr = type { %struct.list_head, %struct.rb_node, [32 x i8], i8, i8, i32, i32, i32, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.mii_bus = type { ptr, ptr, [61 x i8], ptr, ptr, ptr, ptr, [32 x %struct.mdio_bus_stats], %struct.mutex, ptr, i32, %struct.device, [32 x ptr], i32, i32, [32 x i32], i32, i32, ptr, i32, %struct.mutex, [32 x ptr] }
%struct.mdio_bus_stats = type { %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_sync }
%struct.u64_stats_t = type { i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.pci_bus = type { %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, [4 x ptr], %struct.list_head, %struct.resource, ptr, ptr, ptr, i8, i8, i8, i8, i32, [48 x i8], i16, i16, ptr, %struct.device, ptr, ptr, i8 }
%struct.phy_device = type { %struct.mdio_device, ptr, i32, %struct.phy_c45_device_ids, i16, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, [3 x i32], [3 x i32], [3 x i32], [3 x i32], i32, ptr, i32, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, %struct.delayed_work, %struct.mutex, i8, ptr, ptr, ptr, ptr, i8, i8, ptr, ptr, ptr }
%struct.mdio_device = type { %struct.device, ptr, [32 x i8], ptr, ptr, ptr, i32, i32, ptr, ptr, i32, i32 }
%struct.phy_c45_device_ids = type { i32, i32, [32 x i32] }
%struct.ethtool_drvinfo = type { i32, [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8], [12 x i8], i32, i32, i32, i32, i32 }
%struct.ethtool_regs = type { i32, i32, i32, [0 x i8] }
%struct.ethtool_eeprom = type { i32, i32, i32, i32, [0 x i8] }

@__UNIQUE_ID_file353 = internal constant [49 x i8] c"smsc9420.file=drivers/net/ethernet/smsc/smsc9420\00", section ".modinfo", align 1
@__UNIQUE_ID_license354 = internal constant [21 x i8] c"smsc9420.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_version355 = internal constant [22 x i8] c"smsc9420.version=1.01\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"smsc9420\00", [23 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"1.01\00", [27 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@__param_str_debug = internal constant [15 x i8] c"smsc9420.debug\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_uint, i16 0, i8 -1, i8 0, %union.anon.97 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype356 = internal constant [29 x i8] c"smsc9420.parmtype=debug:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_debug357 = internal constant [32 x i8] c"smsc9420.parm=debug:debug level\00", section ".modinfo", align 1
@smsc9420_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str.1, ptr @smsc9420_id_table, ptr @smsc9420_probe, ptr @smsc9420_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @smsc9420_pm_ops, ptr null, ptr null }, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__initcall__kmod_smsc9420__380_1673_smsc9420_init_module6 = internal global ptr @smsc9420_init_module, section ".initcall6.init", align 4
@__exitcall_smsc9420_exit_module = internal global ptr @smsc9420_exit_module, section ".exitcall.exit", align 4
@smsc9420_id_table = internal constant { [2 x %struct.pci_device_id], [32 x i8] } { [2 x %struct.pci_device_id] [%struct.pci_device_id { i32 4181, i32 58400, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@smsc9420_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @smsc9420_suspend, ptr @smsc9420_resume, ptr @smsc9420_suspend, ptr @smsc9420_resume, ptr @smsc9420_suspend, ptr @smsc9420_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@smsc9420_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 1504, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\016smsc9420: %s version %s\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"smsc9420_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/net/ethernet/smsc/smsc9420.c\00", [59 x i8] zeroinitializer }, align 32
@smsc9420_probe._entry_ptr = internal global ptr @smsc9420_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"SMSC LAN9420 driver\00", [44 x i8] zeroinitializer }, align 32
@smsc9420_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.4, ptr @.str.5, i32 1509, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013smsc9420: Cannot enable smsc9420\0A\00", [60 x i8] zeroinitializer }, align 32
@smsc9420_probe._entry_ptr.9 = internal global ptr @smsc9420_probe._entry.7, section ".printk_index", align 4
@.str.10 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Cannot find PCI device base address\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Cannot obtain PCI resources, aborting\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"No usable DMA configuration, aborting\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Cannot map device registers, aborting\0A\00", [57 x i8] zeroinitializer }, align 32
@smsc_debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@smsc9420_probe.__UNIQUE_ID_ddebug379 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.4, ptr @.str.5, ptr @.str.14, i8 1, i8 -121, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"lan_base=0x%08lx\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"LAN9420 identified, ID_REV=0x%08X\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"LAN9420 NOT identified\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ID_REV=0x%08X\0A\00", [17 x i8] zeroinitializer }, align 32
@smsc9420_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @smsc9420_open, ptr @smsc9420_stop, ptr @smsc9420_hard_start_xmit, ptr null, ptr null, ptr null, ptr @smsc9420_set_multicast_list, ptr @eth_mac_addr, ptr @eth_validate_addr, ptr null, ptr @phy_do_ioctl_running, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @smsc9420_get_stats, ptr null, ptr null, ptr @smsc9420_poll_controller, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@smsc9420_ethtool_ops = internal constant { %struct.ethtool_ops, [68 x i8] } { %struct.ethtool_ops { i8 0, i32 0, i32 0, ptr @smsc9420_ethtool_get_drvinfo, ptr @smsc9420_ethtool_getregslen, ptr @smsc9420_ethtool_getregs, ptr null, ptr null, ptr @smsc9420_ethtool_get_msglevel, ptr @smsc9420_ethtool_set_msglevel, ptr @phy_ethtool_nway_reset, ptr @ethtool_op_get_link, ptr null, ptr @smsc9420_ethtool_get_eeprom_len, ptr @smsc9420_ethtool_get_eeprom, ptr @smsc9420_ethtool_set_eeprom, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ethtool_op_get_ts_info, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @phy_ethtool_get_link_ksettings, ptr @phy_ethtool_set_link_ksettings, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [68 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"error %i registering device\0A\00", [35 x i8] zeroinitializer }, align 32
@smsc9420_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.19 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&pd->int_lock\00", [18 x i8] zeroinitializer }, align 32
@smsc9420_probe.__key.20 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.21 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&pd->phy_lock\00", [18 x i8] zeroinitializer }, align 32
@smsc9420_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.4, ptr @.str.5, i32 1602, ptr @.str.24, ptr @.str.25 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"MAC Address: %pM\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@smsc9420_probe._entry_ptr.26 = internal global ptr @smsc9420_probe._entry.22, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.27 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Software reset not cleared\0A\00", [36 x i8] zeroinitializer }, align 32
@smsc9420_eeprom_reload.__UNIQUE_ID_ddebug358 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.28, ptr @.str.5, ptr @.str.29, i8 0, i8 49, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"smsc9420_eeprom_reload\00", [41 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s: Eeprom busy\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s: Eeprom timed out\0A\00", [42 x i8] zeroinitializer }, align 32
@smsc9420_check_mac_address.__UNIQUE_ID_ddebug364 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.31, ptr @.str.5, ptr @.str.32, i8 0, i8 106, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"smsc9420_check_mac_address\00", [37 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"MAC Address is specified by configuration\0A\00", [53 x i8] zeroinitializer }, align 32
@smsc9420_check_mac_address.__UNIQUE_ID_ddebug365 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.31, ptr @.str.5, ptr @.str.33, i8 0, i8 110, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Mac Address is read from EEPROM\0A\00", [63 x i8] zeroinitializer }, align 32
@smsc9420_check_mac_address.__UNIQUE_ID_ddebug366 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.31, ptr @.str.5, ptr @.str.34, i8 0, i8 112, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"MAC Address is set to random\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"dev_addr is not a valid MAC address\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Unable to use IRQ = %d\0A\00", [40 x i8] zeroinitializer }, align 32
@smsc9420_open.__UNIQUE_ID_ddebug377 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.37, ptr @.str.5, ptr @.str.38, i8 1, i8 76, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"smsc9420_open\00", [18 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Testing ISR using IRQ %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ISR failed signaling test\0A\00", [37 x i8] zeroinitializer }, align 32
@smsc9420_open.__UNIQUE_ID_ddebug378 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.37, ptr @.str.5, ptr @.str.40, i8 1, i8 85, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"ISR passed test using IRQ %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to Initialize tx dma ring\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to Initialize rx dma ring\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to initialize Phy\0A\00", [38 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.44 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to allocate rx skb %d\0A\00", [34 x i8] zeroinitializer }, align 32
@smsc9420_alloc_rx_ring.__UNIQUE_ID_ddebug375 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.45, ptr @.str.5, ptr @.str.46, i8 1, i8 55, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"smsc9420_alloc_rx_ring\00", [41 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"VLAN1 = 0x%08x\0A\00", [16 x i8] zeroinitializer }, align 32
@smsc9420_alloc_rx_ring.__UNIQUE_ID_ddebug376 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.45, ptr @.str.5, ptr @.str.47, i8 1, i8 56, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"COE_CR = 0x%08x\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"dma_map_single failed!\0A\00", [40 x i8] zeroinitializer }, align 32
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.49 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@.str.51 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"smsc9420-mdio\00", [18 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%x\00", [29 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Error registering mii bus\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Error probing mii bus\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"MII is busy???\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"MII busy timeout!\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"no PHY found at address 1\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Could not attach to PHY\0A\00", [39 x i8] zeroinitializer }, align 32
@smsc9420_phy_adjust_link.__UNIQUE_ID_ddebug371 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.59, ptr @.str.5, ptr @.str.60, i8 1, i8 13, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.59 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"smsc9420_phy_adjust_link\00", [39 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"full duplex mode\0A\00", [46 x i8] zeroinitializer }, align 32
@smsc9420_phy_adjust_link.__UNIQUE_ID_ddebug372 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.59, ptr @.str.5, ptr @.str.61, i8 1, i8 14, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.61 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"half duplex mode\0A\00", [46 x i8] zeroinitializer }, align 32
@smsc9420_phy_adjust_link.__UNIQUE_ID_ddebug373 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.59, ptr @.str.5, ptr @.str.62, i8 1, i8 17, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.62 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"carrier OK\0A\00", [20 x i8] zeroinitializer }, align 32
@smsc9420_phy_adjust_link.__UNIQUE_ID_ddebug374 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.59, ptr @.str.5, ptr @.str.63, i8 1, i8 18, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.63 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"no carrier\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"rx pause %s, tx pause %s\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"enabled\00", [24 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"disabled\00", [23 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"half duplex\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"TX DMAC failed to stop\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"RX DMAC did not stop! timeout\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"dma_map_single failed, dropping packet\0A\00", [56 x i8] zeroinitializer }, align 32
@smsc9420_set_multicast_list.__UNIQUE_ID_ddebug367 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.71, ptr @.str.5, ptr @.str.72, i8 0, i8 -7, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.71 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"smsc9420_set_multicast_list\00", [36 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Promiscuous Mode Enabled\0A\00", [38 x i8] zeroinitializer }, align 32
@smsc9420_set_multicast_list.__UNIQUE_ID_ddebug368 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.71, ptr @.str.5, ptr @.str.73, i8 0, i8 -6, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.73 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Receive all Multicast Enabled\0A\00", [33 x i8] zeroinitializer }, align 32
@smsc9420_set_multicast_list.__UNIQUE_ID_ddebug369 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.71, ptr @.str.5, ptr @.str.74, i8 0, i8 -4, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.74 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Multicast filter enabled\0A\00", [38 x i8] zeroinitializer }, align 32
@smsc9420_set_multicast_list.__UNIQUE_ID_ddebug370 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.71, ptr @.str.5, ptr @.str.75, i8 1, i8 1, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.75 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Receive own packets only\0A\00", [38 x i8] zeroinitializer }, align 32
@byte_rev_table = external dso_local local_unnamed_addr constant [256 x i8], align 1
@smsc9420_eeprom_read_location.__UNIQUE_ID_ddebug360 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.76, ptr @.str.5, ptr @.str.77, i8 0, i8 77, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.76 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"smsc9420_eeprom_read_location\00", [34 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"address 0x%x\0A\00", [18 x i8] zeroinitializer }, align 32
@smsc9420_eeprom_send_cmd.__UNIQUE_ID_ddebug359 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.78, ptr @.str.5, ptr @.str.79, i8 0, i8 69, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.78 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"smsc9420_eeprom_send_cmd\00", [39 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"op 0x%08x\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Busy at start\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"TIMED OUT\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Error occurred during eeprom operation\0A\00", [56 x i8] zeroinitializer }, align 32
@smsc9420_eeprom_write_location.__UNIQUE_ID_ddebug361 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.83, ptr @.str.5, ptr @.str.84, i8 0, i8 81, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.83 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"smsc9420_eeprom_write_location\00", [33 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"address 0x%x, data 0x%x\0A\00", [39 x i8] zeroinitializer }, align 32
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 30, i32 1 }
@___asan_gen_.94 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 82, i32 13 }
@___asan_gen_.97 = private unnamed_addr constant [16 x i8] c"smsc9420_driver\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 1653, i32 26 }
@___asan_gen_.100 = private unnamed_addr constant [18 x i8] c"smsc9420_id_table\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 72, i32 35 }
@___asan_gen_.103 = private unnamed_addr constant [16 x i8] c"smsc9420_pm_ops\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 1651, i32 8 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 1504, i32 2 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 1509, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 1522, i32 19 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 1527, i32 19 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 1532, i32 19 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 1539, i32 19 }
@___asan_gen_.139 = private unnamed_addr constant [11 x i8] c"smsc_debug\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 81, i32 13 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 1567, i32 2 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 1572, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 1576, i32 3 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 1577, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant [20 x i8] c"smsc9420_netdev_ops\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 1481, i32 36 }
@___asan_gen_.157 = private unnamed_addr constant [21 x i8] c"smsc9420_ethtool_ops\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 387, i32 33 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 1592, i32 3 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 1599, i32 2 }
@___asan_gen_.169 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 1600, i32 2 }
@___asan_gen_.175 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 1602, i32 2 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 675, i32 3 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 196, i32 3 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 209, i32 2 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 424, i32 3 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 441, i32 4 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 447, i32 4 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 1274, i32 3 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 1294, i32 3 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 1329, i32 2 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 1359, i32 3 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 1364, i32 2 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 1368, i32 3 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 1376, i32 3 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 1384, i32 3 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 1234, i32 4 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 1244, i32 2 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 1251, i32 3 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 793, i32 3 }
@___asan_gen_.257 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 326, i32 6 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 1146, i32 22 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 1147, i32 45 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 1157, i32 3 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 1162, i32 3 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 114, i32 3 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 133, i32 2 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 1111, i32 19 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 1119, i32 19 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 1079, i32 4 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 1082, i32 4 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 1094, i32 4 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 1096, i32 4 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 1057, i32 3 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 1061, i32 3 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 471, i32 3 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 584, i32 3 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 944, i32 3 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 997, i32 3 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 1002, i32 3 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 1010, i32 3 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 1028, i32 3 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 311, i32 2 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 277, i32 2 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 279, i32 3 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 292, i32 3 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 297, i32 3 }
@___asan_gen_.358 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.359 = private constant [40 x i8] c"../drivers/net/ethernet/smsc/smsc9420.c\00", align 1
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 326, i32 2 }
@llvm.compiler.used = appending global [105 x ptr] [ptr @__UNIQUE_ID_debug357, ptr @__UNIQUE_ID_debugtype356, ptr @__UNIQUE_ID_file353, ptr @__UNIQUE_ID_license354, ptr @__UNIQUE_ID_version355, ptr @__exitcall_smsc9420_exit_module, ptr @__initcall__kmod_smsc9420__380_1673_smsc9420_init_module6, ptr @__modver_attr, ptr @__param_debug, ptr @smsc9420_exit_module, ptr @smsc9420_probe._entry, ptr @smsc9420_probe._entry.22, ptr @smsc9420_probe._entry.7, ptr @smsc9420_probe._entry_ptr, ptr @smsc9420_probe._entry_ptr.26, ptr @smsc9420_probe._entry_ptr.9, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @debug, ptr @smsc9420_driver, ptr @smsc9420_id_table, ptr @smsc9420_pm_ops, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @smsc_debug, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @smsc9420_netdev_ops, ptr @smsc9420_ethtool_ops, ptr @.str.18, ptr @smsc9420_probe.__key, ptr @.str.19, ptr @smsc9420_probe.__key.20, ptr @.str.21, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84], section "llvm.metadata"
@0 = internal global [92 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smsc9420_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smsc9420_id_table to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smsc9420_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smsc9420_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smsc9420_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smsc_debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smsc9420_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smsc9420_ethtool_ops to i32), i32 284, i32 352, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smsc9420_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smsc9420_probe.__key.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smsc9420_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @smsc9420_exit_module() #1 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @pci_unregister_driver(ptr noundef nonnull @smsc9420_driver) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #0

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @smsc9420_init_module() #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %0)
  %cmp1.i = icmp ugt i32 %0, 31
  br i1 %cmp1.i, label %entry.netif_msg_init.exit_crit_edge, label %if.end.i

entry.netif_msg_init.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %netif_msg_init.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp2.i = icmp eq i32 %0, 0
  br i1 %cmp2.i, label %if.end.i.netif_msg_init.exit_crit_edge, label %if.end4.i

if.end.i.netif_msg_init.exit_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %netif_msg_init.exit

if.end4.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  %notmask.i = shl nsw i32 -1, %0
  %sub.i = xor i32 %notmask.i, -1
  br label %netif_msg_init.exit

netif_msg_init.exit:                              ; preds = %if.end4.i, %if.end.i.netif_msg_init.exit_crit_edge, %entry.netif_msg_init.exit_crit_edge
  %retval.0.i = phi i32 [ %sub.i, %if.end4.i ], [ 7, %entry.netif_msg_init.exit_crit_edge ], [ 0, %if.end.i.netif_msg_init.exit_crit_edge ]
  store i32 %retval.0.i, ptr @smsc_debug, align 4
  %call1 = tail call i32 @__pci_register_driver(ptr noundef nonnull @smsc9420_driver, ptr noundef null, ptr noundef nonnull @.str.1) #16
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smsc9420_probe(ptr noundef %pdev, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.2) #19
  %call1 = tail call i32 @pci_enable_device(ptr noundef %pdev) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %do.end6, !prof !209

do.end6:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #19
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @pci_set_master(ptr noundef %pdev) #16
  %call9 = tail call ptr @alloc_etherdev_mqs(i32 noundef 392, i32 noundef 1, i32 noundef 1) #16
  %tobool10.not = icmp eq ptr %call9, null
  br i1 %tobool10.not, label %if.end.out_disable_pci_device_1_crit_edge, label %if.end12

if.end.out_disable_pci_device_1_crit_edge:        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_disable_pci_device_1

if.end12:                                         ; preds = %if.end
  %dev13 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %dev14 = getelementptr inbounds %struct.net_device, ptr %call9, i32 0, i32 133
  %parent = getelementptr inbounds %struct.net_device, ptr %call9, i32 0, i32 133, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev13, ptr %parent, align 8
  %arrayidx = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 3
  %flags = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 3, i32 3
  %1 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags, align 4
  %and = and i32 %2, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool15.not = icmp eq i32 %and, 0
  br i1 %tobool15.not, label %if.then16, label %if.end17

if.then16:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef nonnull %call9, ptr noundef nonnull @.str.10) #19
  br label %out_free_netdev_2

if.end17:                                         ; preds = %if.end12
  %call18 = tail call i32 @pci_request_regions(ptr noundef %pdev, ptr noundef nonnull @.str.1) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end21, label %if.then20

if.then20:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef nonnull %call9, ptr noundef nonnull @.str.11) #19
  br label %out_free_netdev_2

if.end21:                                         ; preds = %if.end17
  %call23 = tail call i32 @dma_set_mask(ptr noundef %dev13, i64 noundef 4294967295) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end26, label %if.then25

if.then25:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef nonnull %call9, ptr noundef nonnull @.str.12) #19
  br label %out_free_regions_3

if.end26:                                         ; preds = %if.end21
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx, align 8
  %end = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 3, i32 1
  %5 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp = icmp eq i32 %6, 0
  %sub = sub i32 1, %4
  %add = add i32 %sub, %6
  %cond = select i1 %cmp, i32 0, i32 %add
  %call37 = tail call ptr @ioremap(i32 noundef %4, i32 noundef %cond) #16
  %tobool38.not = icmp eq ptr %call37, null
  br i1 %tobool38.not, label %if.then39, label %if.end40

if.then39:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef nonnull %call9, ptr noundef nonnull @.str.13) #19
  br label %out_free_regions_3

if.end40:                                         ; preds = %if.end26
  %add.ptr = getelementptr i8, ptr %call37, i32 512
  %add.ptr.i = getelementptr i8, ptr %call9, i32 2304
  %rx_dma_addr = getelementptr i8, ptr %call9, i32 2332
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev13, i32 noundef 2560, ptr noundef %rx_dma_addr, i32 noundef 3264, i32 noundef 0) #16
  %rx_ring = getelementptr i8, ptr %call9, i32 2316
  %7 = ptrtoint ptr %rx_ring to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call.i, ptr %rx_ring, align 4
  %tobool45.not = icmp eq ptr %call.i, null
  br i1 %tobool45.not, label %if.end40.out_free_io_4_crit_edge, label %if.end47

if.end40.out_free_io_4_crit_edge:                 ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_free_io_4

if.end47:                                         ; preds = %if.end40
  %add.ptr49 = getelementptr %struct.smsc9420_dma_desc, ptr %call.i, i32 128
  %tx_ring = getelementptr i8, ptr %call9, i32 2320
  %8 = ptrtoint ptr %tx_ring to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %add.ptr49, ptr %tx_ring, align 8
  %9 = ptrtoint ptr %rx_dma_addr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %rx_dma_addr, align 4
  %add51 = add i32 %10, 2048
  %tx_dma_addr = getelementptr i8, ptr %call9, i32 2336
  %11 = ptrtoint ptr %tx_dma_addr to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %add51, ptr %tx_dma_addr, align 8
  %pdev52 = getelementptr i8, ptr %call9, i32 2308
  %12 = ptrtoint ptr %pdev52 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %pdev, ptr %pdev52, align 4
  %dev53 = getelementptr i8, ptr %call9, i32 2312
  %13 = ptrtoint ptr %dev53 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call9, ptr %dev53, align 8
  %14 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %add.ptr, ptr %add.ptr.i, align 8
  %15 = load i32, ptr @smsc_debug, align 4
  %msg_enable = getelementptr i8, ptr %call9, i32 2676
  %16 = ptrtoint ptr %msg_enable to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %msg_enable, align 4
  %rx_csum = getelementptr i8, ptr %call9, i32 2673
  %17 = ptrtoint ptr %rx_csum to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %rx_csum, align 1
  %and56 = and i32 %15, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56)
  %tobool57.not = icmp eq i32 %and56, 0
  br i1 %tobool57.not, label %if.end47.do.end76_crit_edge, label %do.body59

if.end47.do.end76_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end76

do.body59:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smsc9420_probe.__UNIQUE_ID_ddebug379, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smsc9420_probe, %if.then69)) #16
          to label %do.end76 [label %if.then69], !srcloc !210

if.then69:                                        ; preds = %do.body59
  call void @__sanitizer_cov_trace_pc() #18
  %18 = ptrtoint ptr %dev53 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev53, align 8
  %20 = ptrtoint ptr %add.ptr to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @smsc9420_probe.__UNIQUE_ID_ddebug379, ptr noundef %19, ptr noundef nonnull @.str.14, i32 noundef %20) #16
  br label %do.end76

do.end76:                                         ; preds = %if.then69, %do.body59, %if.end47.do.end76_crit_edge
  %21 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i209 = getelementptr i8, ptr %22, i32 192
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i209) #16, !srcloc !211
  %24 = tail call i32 @llvm.bswap.i32(i32 %23) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !212
  %and78 = and i32 %24, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1809842176, i32 %and78)
  %cond140 = icmp eq i32 %and78, -1809842176
  %25 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %msg_enable, align 4
  %and81 = and i32 %26, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and81)
  %tobool82.not = icmp eq i32 %and81, 0
  br i1 %cond140, label %do.body79, label %do.body88

do.body79:                                        ; preds = %do.end76
  br i1 %tobool82.not, label %do.body79.sw.epilog_crit_edge, label %if.then83

do.body79.sw.epilog_crit_edge:                    ; preds = %do.body79
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

if.then83:                                        ; preds = %do.body79
  call void @__sanitizer_cov_trace_pc() #18
  %27 = ptrtoint ptr %dev53 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev53, align 8
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %28, ptr noundef nonnull @.str.15, i32 noundef %24) #19
  br label %sw.epilog

do.body88:                                        ; preds = %do.end76
  br i1 %tobool82.not, label %do.body88.do.body97_crit_edge, label %if.then92

do.body88.do.body97_crit_edge:                    ; preds = %do.body88
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body97

if.then92:                                        ; preds = %do.body88
  call void @__sanitizer_cov_trace_pc() #18
  %29 = ptrtoint ptr %dev53 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev53, align 8
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %30, ptr noundef nonnull @.str.16) #19
  br label %do.body97

do.body97:                                        ; preds = %if.then92, %do.body88.do.body97_crit_edge
  %31 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %msg_enable, align 4
  %and99 = and i32 %32, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and99)
  %tobool100.not = icmp eq i32 %and99, 0
  br i1 %tobool100.not, label %do.body97.out_free_dmadesc_5_crit_edge, label %if.then101

do.body97.out_free_dmadesc_5_crit_edge:           ; preds = %do.body97
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_free_dmadesc_5

if.then101:                                       ; preds = %do.body97
  call void @__sanitizer_cov_trace_pc() #18
  %33 = ptrtoint ptr %dev53 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev53, align 8
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %34, ptr noundef nonnull @.str.17, i32 noundef %24) #19
  br label %out_free_dmadesc_5

sw.epilog:                                        ; preds = %if.then83, %do.body79.sw.epilog_crit_edge
  %35 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %add.ptr.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !213
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 16777216) #16, !srcloc !214
  %37 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %add.ptr.i, align 8
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %38) #16, !srcloc !211
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !212
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %40 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %40(i32 noundef 429496) #16
  %41 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %add.ptr.i, align 8
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %42) #16, !srcloc !211
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !212
  %44 = and i32 %43, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool.not.i = icmp eq i32 %44, 0
  br i1 %tobool.not.i, label %sw.epilog.smsc9420_dmac_soft_reset.exit_crit_edge, label %do.body.i

sw.epilog.smsc9420_dmac_soft_reset.exit_crit_edge: ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #18
  br label %smsc9420_dmac_soft_reset.exit

do.body.i:                                        ; preds = %sw.epilog
  %45 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %msg_enable, align 4
  %and2.i = and i32 %46, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp eq i32 %and2.i, 0
  br i1 %tobool3.not.i, label %do.body.i.smsc9420_dmac_soft_reset.exit_crit_edge, label %if.then4.i

do.body.i.smsc9420_dmac_soft_reset.exit_crit_edge: ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %smsc9420_dmac_soft_reset.exit

if.then4.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #18
  %47 = ptrtoint ptr %dev53 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev53, align 8
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %48, ptr noundef nonnull @.str.27) #19
  br label %smsc9420_dmac_soft_reset.exit

smsc9420_dmac_soft_reset.exit:                    ; preds = %if.then4.i, %do.body.i.smsc9420_dmac_soft_reset.exit_crit_edge, %sw.epilog.smsc9420_dmac_soft_reset.exit_crit_edge
  tail call fastcc void @smsc9420_eeprom_reload(ptr noundef %add.ptr.i)
  tail call fastcc void @smsc9420_check_mac_address(ptr noundef nonnull %call9)
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %call9, i32 0, i32 16
  %49 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr @smsc9420_netdev_ops, ptr %netdev_ops, align 8
  %ethtool_ops = getelementptr inbounds %struct.net_device, ptr %call9, i32 0, i32 44
  %50 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @smsc9420_ethtool_ops, ptr %ethtool_ops, align 16
  %napi = getelementptr i8, ptr %call9, i32 2448
  tail call void @netif_napi_add(ptr noundef nonnull %call9, ptr noundef %napi, ptr noundef nonnull @smsc9420_rx_poll, i32 noundef 64) #16
  %call107 = tail call i32 @register_netdev(ptr noundef nonnull %call9) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call107)
  %tobool108.not = icmp eq i32 %call107, 0
  br i1 %tobool108.not, label %if.end119, label %do.body110

do.body110:                                       ; preds = %smsc9420_dmac_soft_reset.exit
  %51 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %msg_enable, align 4
  %and112 = and i32 %52, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and112)
  %tobool113.not = icmp eq i32 %and112, 0
  br i1 %tobool113.not, label %do.body110.out_free_dmadesc_5_crit_edge, label %if.then114

do.body110.out_free_dmadesc_5_crit_edge:          ; preds = %do.body110
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_free_dmadesc_5

if.then114:                                       ; preds = %do.body110
  call void @__sanitizer_cov_trace_pc() #18
  %53 = ptrtoint ptr %dev53 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dev53, align 8
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %54, ptr noundef nonnull @.str.18, i32 noundef %call107) #19
  br label %out_free_dmadesc_5

if.end119:                                        ; preds = %smsc9420_dmac_soft_reset.exit
  call void @__sanitizer_cov_trace_pc() #18
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %55 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %call9, ptr %driver_data.i.i, align 4
  %int_lock = getelementptr i8, ptr %call9, i32 2356
  tail call void @__raw_spin_lock_init(ptr noundef %int_lock, ptr noundef nonnull @.str.19, ptr noundef nonnull @smsc9420_probe.__key, i16 noundef signext 3) #16
  %phy_lock = getelementptr i8, ptr %call9, i32 2400
  tail call void @__raw_spin_lock_init(ptr noundef %phy_lock, ptr noundef nonnull @.str.21, ptr noundef nonnull @smsc9420_probe.__key.20, i16 noundef signext 3) #16
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %call9, i32 0, i32 86
  %56 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev_addr, align 64
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev14, ptr noundef nonnull @.str.23, ptr noundef %57) #19
  br label %cleanup

out_free_dmadesc_5:                               ; preds = %if.then114, %do.body110.out_free_dmadesc_5_crit_edge, %if.then101, %do.body97.out_free_dmadesc_5_crit_edge
  %58 = ptrtoint ptr %rx_ring to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %rx_ring, align 4
  %60 = ptrtoint ptr %rx_dma_addr to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %rx_dma_addr, align 4
  tail call void @dma_free_attrs(ptr noundef %dev13, i32 noundef 2560, ptr noundef %59, i32 noundef %61, i32 noundef 0) #16
  br label %out_free_io_4

out_free_io_4:                                    ; preds = %out_free_dmadesc_5, %if.end40.out_free_io_4_crit_edge
  tail call void @iounmap(ptr noundef nonnull %call37) #16
  br label %out_free_regions_3

out_free_regions_3:                               ; preds = %out_free_io_4, %if.then39, %if.then25
  tail call void @pci_release_regions(ptr noundef %pdev) #16
  br label %out_free_netdev_2

out_free_netdev_2:                                ; preds = %out_free_regions_3, %if.then20, %if.then16
  tail call void @free_netdev(ptr noundef nonnull %call9) #16
  br label %out_disable_pci_device_1

out_disable_pci_device_1:                         ; preds = %out_free_netdev_2, %if.end.out_disable_pci_device_1_crit_edge
  tail call void @pci_disable_device(ptr noundef %pdev) #16
  br label %cleanup

cleanup:                                          ; preds = %out_disable_pci_device_1, %if.end119, %do.end6
  %retval.0 = phi i32 [ 0, %if.end119 ], [ -19, %out_disable_pci_device_1 ], [ -19, %do.end6 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @smsc9420_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  tail call void @unregister_netdev(ptr noundef nonnull %1) #16
  %tx_buffers = getelementptr i8, ptr %1, i32 2324
  %2 = ptrtoint ptr %tx_buffers to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tx_buffers, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %do.body13, label %do.body6, !prof !209

do.body6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smsc9420.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1635, 0\0A.popsection", ""() #16, !srcloc !215
  unreachable

do.body13:                                        ; preds = %if.end
  %rx_buffers = getelementptr i8, ptr %1, i32 2328
  %4 = ptrtoint ptr %rx_buffers to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rx_buffers, align 8
  %tobool14.not = icmp eq ptr %5, null
  br i1 %tobool14.not, label %do.body31, label %do.body22, !prof !209

do.body22:                                        ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smsc9420.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1636, 0\0A.popsection", ""() #16, !srcloc !216
  unreachable

do.body31:                                        ; preds = %do.body13
  %tx_ring = getelementptr i8, ptr %1, i32 2320
  %6 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tx_ring, align 8
  %tobool32.not = icmp eq ptr %7, null
  br i1 %tobool32.not, label %do.body42, label %do.body51, !prof !217

do.body42:                                        ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smsc9420.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1638, 0\0A.popsection", ""() #16, !srcloc !218
  unreachable

do.body51:                                        ; preds = %do.body31
  %rx_ring = getelementptr i8, ptr %1, i32 2316
  %8 = ptrtoint ptr %rx_ring to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rx_ring, align 4
  %tobool52.not = icmp eq ptr %9, null
  br i1 %tobool52.not, label %do.body62, label %do.end70, !prof !217

do.body62:                                        ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smsc9420.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1639, 0\0A.popsection", ""() #16, !srcloc !219
  unreachable

do.end70:                                         ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #18
  %dev71 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %rx_dma_addr = getelementptr i8, ptr %1, i32 2332
  %10 = ptrtoint ptr %rx_dma_addr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rx_dma_addr, align 4
  tail call void @dma_free_attrs(ptr noundef %dev71, i32 noundef 2560, ptr noundef nonnull %9, i32 noundef %11, i32 noundef 0) #16
  %12 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr = getelementptr i8, ptr %13, i32 -512
  tail call void @iounmap(ptr noundef %add.ptr) #16
  tail call void @pci_release_regions(ptr noundef %pdev) #16
  tail call void @free_netdev(ptr noundef nonnull %1) #16
  tail call void @pci_disable_device(ptr noundef %pdev) #16
  br label %cleanup

cleanup:                                          ; preds = %do.end70, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_etherdev_mqs(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_request_regions(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @smsc9420_eeprom_reload(ptr noundef readonly %pd) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %pd, null
  br i1 %tobool.not, label %do.body4, label %do.end9, !prof !217

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smsc9420.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 193, 0\0A.popsection", ""() #16, !srcloc !220
  unreachable

do.end9:                                          ; preds = %entry
  %0 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pd, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 248
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #16, !srcloc !211
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !212
  %.mask = and i32 %2, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask)
  %tobool10.not = icmp eq i32 %.mask, 0
  br i1 %tobool10.not, label %if.end32, label %do.body12

do.body12:                                        ; preds = %do.end9
  %msg_enable = getelementptr inbounds %struct.smsc9420_pdata, ptr %pd, i32 0, i32 18
  %3 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %msg_enable, align 4
  %and13 = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %do.body12.cleanup_crit_edge, label %do.body16

do.body12.cleanup_crit_edge:                      ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

do.body16:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smsc9420_eeprom_reload.__UNIQUE_ID_ddebug358, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smsc9420_eeprom_reload, %if.then25)) #16
          to label %cleanup [label %if.then25], !srcloc !210

if.then25:                                        ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #18
  %dev = getelementptr inbounds %struct.smsc9420_pdata, ptr %pd, i32 0, i32 2
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @smsc9420_eeprom_reload.__UNIQUE_ID_ddebug358, ptr noundef %6, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.28) #16
  br label %cleanup

if.end32:                                         ; preds = %do.end9
  %7 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pd, align 8
  %add.ptr.i1 = getelementptr i8, ptr %8, i32 248
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !213
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1, i32 240) #16, !srcloc !214
  br label %do.body33

do.body33:                                        ; preds = %do.cond39.do.body33_crit_edge, %if.end32
  %timeout.0 = phi i32 [ 100000, %if.end32 ], [ %dec, %do.cond39.do.body33_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 2147480) #16
  %10 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pd, align 8
  %add.ptr.i2 = getelementptr i8, ptr %11, i32 248
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i2) #16, !srcloc !211
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !212
  %.mask4 = and i32 %12, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask4)
  %tobool36.not = icmp eq i32 %.mask4, 0
  br i1 %tobool36.not, label %do.body33.cleanup_crit_edge, label %do.cond39

do.body33.cleanup_crit_edge:                      ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

do.cond39:                                        ; preds = %do.body33
  %dec = add nsw i32 %timeout.0, -1
  %tobool40.not = icmp eq i32 %timeout.0, 0
  br i1 %tobool40.not, label %do.body42, label %do.cond39.do.body33_crit_edge

do.cond39.do.body33_crit_edge:                    ; preds = %do.cond39
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body33

do.body42:                                        ; preds = %do.cond39
  %msg_enable43 = getelementptr inbounds %struct.smsc9420_pdata, ptr %pd, i32 0, i32 18
  %13 = ptrtoint ptr %msg_enable43 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %msg_enable43, align 4
  %and44 = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44)
  %tobool45.not = icmp eq i32 %and44, 0
  br i1 %tobool45.not, label %do.body42.cleanup_crit_edge, label %if.then46

do.body42.cleanup_crit_edge:                      ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then46:                                        ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #18
  %dev47 = getelementptr inbounds %struct.smsc9420_pdata, ptr %pd, i32 0, i32 2
  %15 = ptrtoint ptr %dev47 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev47, align 8
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %16, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.28) #19
  br label %cleanup

cleanup:                                          ; preds = %if.then46, %do.body42.cleanup_crit_edge, %do.body33.cleanup_crit_edge, %if.then25, %do.body16, %do.body12.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @smsc9420_check_mac_address(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  %addr.i = alloca [6 x i8], align 1
  %addr = alloca [6 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %addr) #16
  %0 = getelementptr inbounds [6 x i8], ptr %addr, i32 0, i32 1
  %1 = getelementptr inbounds [6 x i8], ptr %addr, i32 0, i32 2
  %2 = getelementptr inbounds [6 x i8], ptr %addr, i32 0, i32 3
  %3 = getelementptr inbounds [6 x i8], ptr %addr, i32 0, i32 4
  %4 = getelementptr inbounds [6 x i8], ptr %addr, i32 0, i32 5
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 86
  %5 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev_addr, align 64
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 4
  %9 = and i32 %8, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.i.not.i = icmp eq i32 %9, 0
  br i1 %tobool.i.not.i, label %is_valid_ether_addr.exit, label %entry.if.else_crit_edge

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else

is_valid_ether_addr.exit:                         ; preds = %entry
  %add.ptr.i.i = getelementptr i8, ptr %6, i32 4
  %10 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %add.ptr.i.i, align 2
  %conv.i.i = zext i16 %11 to i32
  %or.i.i = or i32 %8, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i.not = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i.not, label %is_valid_ether_addr.exit.if.else_crit_edge, label %if.then

is_valid_ether_addr.exit.if.else_crit_edge:       ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else

if.then:                                          ; preds = %is_valid_ether_addr.exit
  %arrayidx.i = getelementptr i8, ptr %6, i32 5
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %13 to i32
  %shl.i = shl nuw nsw i32 %conv.i, 8
  %14 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %add.ptr.i.i, align 1
  %conv3.i = zext i8 %15 to i32
  %or.i = or i32 %shl.i, %conv3.i
  %arrayidx4.i = getelementptr i8, ptr %6, i32 3
  %16 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx4.i, align 1
  %conv5.i = zext i8 %17 to i32
  %shl6.i = shl nuw i32 %conv5.i, 24
  %arrayidx7.i = getelementptr i8, ptr %6, i32 2
  %18 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx7.i, align 1
  %conv8.i = zext i8 %19 to i32
  %shl9.i = shl nuw nsw i32 %conv8.i, 16
  %or10.i = or i32 %shl9.i, %shl6.i
  %arrayidx11.i = getelementptr i8, ptr %6, i32 1
  %20 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx11.i, align 1
  %conv12.i = zext i8 %21 to i32
  %shl13.i = shl nuw nsw i32 %conv12.i, 8
  %or14.i = or i32 %or10.i, %shl13.i
  %22 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %6, align 1
  %conv16.i = zext i8 %23 to i32
  %or17.i = or i32 %or14.i, %conv16.i
  %24 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i25.i = getelementptr i8, ptr %25, i32 132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !213
  tail call void @arm_heavy_mb() #16
  %26 = tail call i32 @llvm.bswap.i32(i32 %or.i) #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25.i, i32 %26) #16, !srcloc !214
  %27 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i26.i = getelementptr i8, ptr %28, i32 136
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !213
  tail call void @arm_heavy_mb() #16
  %29 = tail call i32 @llvm.bswap.i32(i32 %or17.i) #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i26.i, i32 %29) #16, !srcloc !214
  %msg_enable = getelementptr i8, ptr %dev, i32 2676
  %30 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %msg_enable, align 4
  %and = and i32 %31, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then.if.end83_crit_edge, label %do.body3

if.then.if.end83_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end83

do.body3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smsc9420_check_mac_address.__UNIQUE_ID_ddebug364, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smsc9420_check_mac_address, %if.then8)) #16
          to label %if.end83 [label %if.then8], !srcloc !210

if.then8:                                         ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #18
  %dev9 = getelementptr i8, ptr %dev, i32 2312
  %32 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev9, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @smsc9420_check_mac_address.__UNIQUE_ID_ddebug364, ptr noundef %33, ptr noundef nonnull @.str.32) #16
  br label %if.end83

if.else:                                          ; preds = %is_valid_ether_addr.exit.if.else_crit_edge, %entry.if.else_crit_edge
  %34 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i107 = getelementptr i8, ptr %35, i32 132
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i107) #16, !srcloc !211
  %37 = tail call i32 @llvm.bswap.i32(i32 %36) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !212
  %38 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i108 = getelementptr i8, ptr %39, i32 136
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i108) #16, !srcloc !211
  %41 = tail call i32 @llvm.bswap.i32(i32 %40) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !212
  %conv = trunc i32 %41 to i8
  %42 = ptrtoint ptr %addr to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %conv, ptr %addr, align 4
  %shr = lshr i32 %41, 8
  %conv15 = trunc i32 %shr to i8
  %43 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %conv15, ptr %0, align 1
  %shr17 = lshr i32 %41, 16
  %conv18 = trunc i32 %shr17 to i8
  %44 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %conv18, ptr %1, align 2
  %shr20 = lshr i32 %41, 24
  %conv21 = trunc i32 %shr20 to i8
  %45 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %conv21, ptr %2, align 1
  %conv23 = trunc i32 %37 to i8
  %46 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %conv23, ptr %3, align 4
  %shr25 = lshr i32 %37, 8
  %conv26 = trunc i32 %shr25 to i8
  %47 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %conv26, ptr %4, align 1
  %48 = load i32, ptr %addr, align 4
  %49 = and i32 %48, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool.i.not.i109 = icmp eq i32 %49, 0
  br i1 %tobool.i.not.i109, label %is_valid_ether_addr.exit115, label %if.else.if.else56_crit_edge

if.else.if.else56_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else56

is_valid_ether_addr.exit115:                      ; preds = %if.else
  %50 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %3, align 4
  %conv.i.i111 = zext i16 %51 to i32
  %or.i.i112 = or i32 %48, %conv.i.i111
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i112)
  %cmp.i.i113.not = icmp eq i32 %or.i.i112, 0
  br i1 %cmp.i.i113.not, label %is_valid_ether_addr.exit115.if.else56_crit_edge, label %if.then29

is_valid_ether_addr.exit115.if.else56_crit_edge:  ; preds = %is_valid_ether_addr.exit115
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else56

if.then29:                                        ; preds = %is_valid_ether_addr.exit115
  call void @dev_addr_mod(ptr noundef %dev, i32 noundef 0, ptr noundef nonnull %addr, i32 noundef 6) #16
  %msg_enable32 = getelementptr i8, ptr %dev, i32 2676
  %52 = ptrtoint ptr %msg_enable32 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %msg_enable32, align 4
  %and33 = and i32 %53, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  br i1 %tobool34.not, label %if.then29.if.end83_crit_edge, label %do.body36

if.then29.if.end83_crit_edge:                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end83

do.body36:                                        ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smsc9420_check_mac_address.__UNIQUE_ID_ddebug365, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smsc9420_check_mac_address, %if.then48)) #16
          to label %if.end83 [label %if.then48], !srcloc !210

if.then48:                                        ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #18
  %dev49 = getelementptr i8, ptr %dev, i32 2312
  %54 = ptrtoint ptr %dev49 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev49, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @smsc9420_check_mac_address.__UNIQUE_ID_ddebug365, ptr noundef %55, ptr noundef nonnull @.str.33) #16
  br label %if.end83

if.else56:                                        ; preds = %is_valid_ether_addr.exit115.if.else56_crit_edge, %if.else.if.else56_crit_edge
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %addr.i) #16
  %56 = call ptr @memset(ptr %addr.i, i32 255, i32 6)
  call void @get_random_bytes(ptr noundef nonnull %addr.i, i32 noundef 6) #16
  %57 = ptrtoint ptr %addr.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %addr.i, align 1
  %59 = and i8 %58, -4
  %60 = or i8 %59, 2
  store i8 %60, ptr %addr.i, align 1
  call void @dev_addr_mod(ptr noundef %dev, i32 noundef 0, ptr noundef nonnull %addr.i, i32 noundef 6) #16
  %addr_assign_type.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 55
  %61 = ptrtoint ptr %addr_assign_type.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 1, ptr %addr_assign_type.i, align 4
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr.i) #16
  %62 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dev_addr, align 64
  %arrayidx.i118 = getelementptr i8, ptr %63, i32 5
  %64 = ptrtoint ptr %arrayidx.i118 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %arrayidx.i118, align 1
  %conv.i119 = zext i8 %65 to i32
  %shl.i120 = shl nuw nsw i32 %conv.i119, 8
  %arrayidx2.i121 = getelementptr i8, ptr %63, i32 4
  %66 = ptrtoint ptr %arrayidx2.i121 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %arrayidx2.i121, align 1
  %conv3.i122 = zext i8 %67 to i32
  %or.i123 = or i32 %shl.i120, %conv3.i122
  %arrayidx4.i124 = getelementptr i8, ptr %63, i32 3
  %68 = ptrtoint ptr %arrayidx4.i124 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %arrayidx4.i124, align 1
  %conv5.i125 = zext i8 %69 to i32
  %shl6.i126 = shl nuw i32 %conv5.i125, 24
  %arrayidx7.i127 = getelementptr i8, ptr %63, i32 2
  %70 = ptrtoint ptr %arrayidx7.i127 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %arrayidx7.i127, align 1
  %conv8.i128 = zext i8 %71 to i32
  %shl9.i129 = shl nuw nsw i32 %conv8.i128, 16
  %or10.i130 = or i32 %shl9.i129, %shl6.i126
  %arrayidx11.i131 = getelementptr i8, ptr %63, i32 1
  %72 = ptrtoint ptr %arrayidx11.i131 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %arrayidx11.i131, align 1
  %conv12.i132 = zext i8 %73 to i32
  %shl13.i133 = shl nuw nsw i32 %conv12.i132, 8
  %or14.i134 = or i32 %or10.i130, %shl13.i133
  %74 = ptrtoint ptr %63 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %63, align 1
  %conv16.i135 = zext i8 %75 to i32
  %or17.i136 = or i32 %or14.i134, %conv16.i135
  %76 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i25.i137 = getelementptr i8, ptr %77, i32 132
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !213
  call void @arm_heavy_mb() #16
  %78 = call i32 @llvm.bswap.i32(i32 %or.i123) #16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25.i137, i32 %78) #16, !srcloc !214
  %79 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i26.i138 = getelementptr i8, ptr %80, i32 136
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !213
  call void @arm_heavy_mb() #16
  %81 = call i32 @llvm.bswap.i32(i32 %or17.i136) #16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i26.i138, i32 %81) #16, !srcloc !214
  %msg_enable58 = getelementptr i8, ptr %dev, i32 2676
  %82 = ptrtoint ptr %msg_enable58 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %msg_enable58, align 4
  %and59 = and i32 %83, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and59)
  %tobool60.not = icmp eq i32 %and59, 0
  br i1 %tobool60.not, label %if.else56.if.end83_crit_edge, label %do.body62

if.else56.if.end83_crit_edge:                     ; preds = %if.else56
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end83

do.body62:                                        ; preds = %if.else56
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smsc9420_check_mac_address.__UNIQUE_ID_ddebug366, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smsc9420_check_mac_address, %if.then74)) #16
          to label %if.end83 [label %if.then74], !srcloc !210

if.then74:                                        ; preds = %do.body62
  call void @__sanitizer_cov_trace_pc() #18
  %dev75 = getelementptr i8, ptr %dev, i32 2312
  %84 = ptrtoint ptr %dev75 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %dev75, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @smsc9420_check_mac_address.__UNIQUE_ID_ddebug366, ptr noundef %85, ptr noundef nonnull @.str.34) #16
  br label %if.end83

if.end83:                                         ; preds = %if.then74, %do.body62, %if.else56.if.end83_crit_edge, %if.then48, %do.body36, %if.then29.if.end83_crit_edge, %if.then8, %do.body3, %if.then.if.end83_crit_edge
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_napi_add(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smsc9420_rx_poll(ptr noundef %napi, i32 noundef %budget) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %napi, i32 -144
  %dev1 = getelementptr i8, ptr %napi, i32 -136
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %budget)
  %cmp51 = icmp sgt i32 %budget, 0
  br i1 %cmp51, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %rx_ring = getelementptr i8, ptr %napi, i32 -132
  %rx_ring_head = getelementptr i8, ptr %napi, i32 -100
  %rx_errors.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 4
  %rx_over_errors.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 11
  %rx_frame_errors.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 13
  %rx_crc_errors.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 12
  %rx_length_errors.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 10
  %multicast.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 8
  %rx_csum.i = getelementptr i8, ptr %napi, i32 225
  %pdev.i = getelementptr i8, ptr %napi, i32 -140
  %rx_buffers.i = getelementptr i8, ptr %napi, i32 -120
  %rx_ring_tail.i = getelementptr i8, ptr %napi, i32 -96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !221
  %2 = ptrtoint ptr %rx_ring to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rx_ring, align 4
  %4 = ptrtoint ptr %rx_ring_head to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rx_ring_head, align 4
  %arrayidx57 = getelementptr %struct.smsc9420_dma_desc, ptr %3, i32 %5
  %6 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx57, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7)
  %tobool.not58 = icmp sgt i32 %7, -1
  br i1 %tobool.not58, label %for.body.lr.ph.if.end_crit_edge, label %for.body.lr.ph.for.end_crit_edge

for.body.lr.ph.for.end_crit_edge:                 ; preds = %for.body.lr.ph
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.body.lr.ph.if.end_crit_edge:                  ; preds = %for.body.lr.ph
  br label %if.end

for.body:                                         ; preds = %smsc9420_alloc_new_rx_buffers.exit
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !221
  %8 = ptrtoint ptr %rx_ring to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rx_ring, align 4
  %10 = ptrtoint ptr %rx_ring_head to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rx_ring_head, align 4
  %arrayidx = getelementptr %struct.smsc9420_dma_desc, ptr %9, i32 %11
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx, align 4
  %tobool.not = icmp sgt i32 %13, -1
  br i1 %tobool.not, label %for.body.if.end_crit_edge, label %for.body.for.end.loopexit_crit_edge

for.body.for.end.loopexit_crit_edge:              ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end.loopexit

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.end:                                           ; preds = %for.body.if.end_crit_edge, %for.body.lr.ph.if.end_crit_edge
  %14 = phi i32 [ %13, %for.body.if.end_crit_edge ], [ %7, %for.body.lr.ph.if.end_crit_edge ]
  %work_done.05259 = phi i32 [ %inc, %for.body.if.end_crit_edge ], [ 0, %for.body.lr.ph.if.end_crit_edge ]
  %and.i = and i32 %14, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.if.end21.i_crit_edge, label %if.then.i, !prof !209

if.end.if.end21.i_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end21.i

if.then.i:                                        ; preds = %if.end
  %15 = ptrtoint ptr %rx_errors.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %rx_errors.i, align 8
  %inc.i = add i32 %16, 1
  store i32 %inc.i, ptr %rx_errors.i, align 8
  %and3.i = and i32 %14, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool4.not.i = icmp eq i32 %and3.i, 0
  br i1 %tobool4.not.i, label %if.else.i, label %if.then5.i

if.then5.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  %17 = ptrtoint ptr %rx_over_errors.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %rx_over_errors.i, align 4
  %inc7.i = add i32 %18, 1
  store i32 %inc7.i, ptr %rx_over_errors.i, align 4
  br label %if.end21.i

if.else.i:                                        ; preds = %if.then.i
  %and8.i = and i32 %14, 2240
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i)
  %tobool9.not.i = icmp eq i32 %and8.i, 0
  br i1 %tobool9.not.i, label %if.else13.i, label %if.then10.i

if.then10.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #18
  %19 = ptrtoint ptr %rx_frame_errors.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %rx_frame_errors.i, align 4
  %inc12.i = add i32 %20, 1
  store i32 %inc12.i, ptr %rx_frame_errors.i, align 4
  br label %if.end21.i

if.else13.i:                                      ; preds = %if.else.i
  %and14.i = and i32 %14, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i)
  %tobool15.not.i = icmp eq i32 %and14.i, 0
  br i1 %tobool15.not.i, label %if.else13.i.if.end21.i_crit_edge, label %if.then16.i

if.else13.i.if.end21.i_crit_edge:                 ; preds = %if.else13.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end21.i

if.then16.i:                                      ; preds = %if.else13.i
  call void @__sanitizer_cov_trace_pc() #18
  %21 = ptrtoint ptr %rx_crc_errors.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %rx_crc_errors.i, align 8
  %inc18.i = add i32 %22, 1
  store i32 %inc18.i, ptr %rx_crc_errors.i, align 8
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.then16.i, %if.else13.i.if.end21.i_crit_edge, %if.then10.i, %if.then5.i, %if.end.if.end21.i_crit_edge
  %and22.i = and i32 %14, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22.i)
  %tobool23.not.i = icmp eq i32 %and22.i, 0
  br i1 %tobool23.not.i, label %if.end21.i.if.end33.i_crit_edge, label %if.then30.i, !prof !209

if.end21.i.if.end33.i_crit_edge:                  ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end33.i

if.then30.i:                                      ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #18
  %23 = ptrtoint ptr %rx_length_errors.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %rx_length_errors.i, align 8
  %inc32.i = add i32 %24, 1
  store i32 %inc32.i, ptr %rx_length_errors.i, align 8
  br label %if.end33.i

if.end33.i:                                       ; preds = %if.then30.i, %if.end21.i.if.end33.i_crit_edge
  %25 = and i32 %14, 768
  call void @__sanitizer_cov_trace_const_cmp4(i32 768, i32 %25)
  %.not.i = icmp eq i32 %25, 768
  br i1 %.not.i, label %if.end33.i.if.end50.i_crit_edge, label %if.then46.i, !prof !209

if.end33.i.if.end50.i_crit_edge:                  ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end50.i

if.then46.i:                                      ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #18
  %26 = ptrtoint ptr %rx_length_errors.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %rx_length_errors.i, align 8
  %inc49.i = add i32 %27, 1
  store i32 %inc49.i, ptr %rx_length_errors.i, align 8
  br label %if.end50.i

if.end50.i:                                       ; preds = %if.then46.i, %if.end33.i.if.end50.i_crit_edge
  %and51.i = and i32 %14, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51.i)
  %tobool52.not.i = icmp eq i32 %and51.i, 0
  br i1 %tobool52.not.i, label %if.end50.i.smsc9420_rx_count_stats.exit_crit_edge, label %if.then53.i

if.end50.i.smsc9420_rx_count_stats.exit_crit_edge: ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %smsc9420_rx_count_stats.exit

if.then53.i:                                      ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #18
  %28 = ptrtoint ptr %multicast.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %multicast.i, align 8
  %inc55.i = add i32 %29, 1
  store i32 %inc55.i, ptr %multicast.i, align 8
  br label %smsc9420_rx_count_stats.exit

smsc9420_rx_count_stats.exit:                     ; preds = %if.then53.i, %if.end50.i.smsc9420_rx_count_stats.exit_crit_edge
  %30 = ptrtoint ptr %rx_ring_head to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %rx_ring_head, align 4
  %32 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev1, align 8
  %and.i40 = lshr i32 %14, 16
  %34 = and i32 %and.i40, 2047
  %35 = ptrtoint ptr %rx_csum.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %rx_csum.i, align 1, !range !222
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool.not.i41 = icmp eq i8 %36, 0
  %spec.select.v.i = select i1 %tobool.not.i41, i32 65532, i32 65530
  %spec.select.i = add nuw nsw i32 %spec.select.v.i, %34
  %stats.i = getelementptr inbounds %struct.net_device, ptr %33, i32 0, i32 36
  %37 = ptrtoint ptr %stats.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %stats.i, align 8
  %inc.i42 = add i32 %38, 1
  store i32 %inc.i42, ptr %stats.i, align 8
  %conv7.i = and i32 %spec.select.i, 65535
  %rx_bytes.i = getelementptr inbounds %struct.net_device, ptr %33, i32 0, i32 36, i32 2
  %39 = ptrtoint ptr %rx_bytes.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %rx_bytes.i, align 8
  %add.i = add i32 %conv7.i, %40
  store i32 %add.i, ptr %rx_bytes.i, align 8
  %41 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %pdev.i, align 4
  %dev9.i = getelementptr inbounds %struct.pci_dev, ptr %42, i32 0, i32 44
  %43 = ptrtoint ptr %rx_buffers.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %rx_buffers.i, align 8
  %mapping.i = getelementptr %struct.smsc9420_ring_info, ptr %44, i32 %31, i32 1
  %45 = ptrtoint ptr %mapping.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %mapping.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev9.i, i32 noundef %46, i32 noundef 1524, i32 noundef 2, i32 noundef 0) #16
  %47 = ptrtoint ptr %rx_buffers.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %rx_buffers.i, align 8
  %mapping12.i = getelementptr %struct.smsc9420_ring_info, ptr %48, i32 %31, i32 1
  %49 = ptrtoint ptr %mapping12.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %mapping12.i, align 4
  %50 = load ptr, ptr %rx_buffers.i, align 8
  %arrayidx14.i = getelementptr %struct.smsc9420_ring_info, ptr %50, i32 %31
  %51 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %arrayidx14.i, align 4
  store ptr null, ptr %arrayidx14.i, align 4
  %53 = ptrtoint ptr %rx_csum.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %rx_csum.i, align 1, !range !222
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool20.not.i = icmp eq i8 %54, 0
  br i1 %tobool20.not.i, label %smsc9420_rx_count_stats.exit.smsc9420_rx_handoff.exit_crit_edge, label %if.then21.i

smsc9420_rx_count_stats.exit.smsc9420_rx_handoff.exit_crit_edge: ; preds = %smsc9420_rx_count_stats.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %smsc9420_rx_handoff.exit

if.then21.i:                                      ; preds = %smsc9420_rx_count_stats.exit
  call void @__sanitizer_cov_trace_pc() #18
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %52, i32 0, i32 16
  %55 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %tail.i.i, align 8
  %add.ptr23.i = getelementptr i8, ptr %56, i32 6
  %add.ptr24.i = getelementptr i8, ptr %add.ptr23.i, i32 %conv7.i
  %57 = ptrtoint ptr %add.ptr24.i to i32
  call void @__asan_loadN_noabort(i32 %57, i32 2)
  %58 = load i16, ptr %add.ptr24.i, align 1
  %59 = getelementptr inbounds %struct.sk_buff, ptr %52, i32 0, i32 15, i32 0, i32 5
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_storeN_noabort(i32 %60, i32 2)
  store i16 %58, ptr %59, align 1
  %ip_summed.i = getelementptr inbounds %struct.sk_buff, ptr %52, i32 0, i32 15
  %61 = ptrtoint ptr %ip_summed.i to i32
  call void @__asan_load2_noabort(i32 %61)
  %bf.load.i = load i16, ptr %ip_summed.i, align 8
  %bf.clear.i = and i16 %bf.load.i, -1537
  %bf.set.i = or i16 %bf.clear.i, 1024
  store i16 %bf.set.i, ptr %ip_summed.i, align 8
  br label %smsc9420_rx_handoff.exit

smsc9420_rx_handoff.exit:                         ; preds = %if.then21.i, %smsc9420_rx_count_stats.exit.smsc9420_rx_handoff.exit_crit_edge
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %52, i32 0, i32 19
  %62 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %63, i32 2
  store ptr %add.ptr.i.i, ptr %data.i.i, align 4
  %tail.i54.i = getelementptr inbounds %struct.sk_buff, ptr %52, i32 0, i32 16
  %64 = ptrtoint ptr %tail.i54.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %tail.i54.i, align 8
  %add.ptr1.i.i = getelementptr i8, ptr %65, i32 2
  store ptr %add.ptr1.i.i, ptr %tail.i54.i, align 8
  %call28.i = tail call ptr @skb_put(ptr noundef %52, i32 noundef %conv7.i) #16
  %call29.i = tail call zeroext i16 @eth_type_trans(ptr noundef %52, ptr noundef %33) #16
  %protocol.i = getelementptr inbounds %struct.sk_buff, ptr %52, i32 0, i32 15, i32 0, i32 18
  %66 = ptrtoint ptr %protocol.i to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 %call29.i, ptr %protocol.i, align 8
  %call30.i = tail call i32 @netif_receive_skb(ptr noundef %52) #16
  %67 = ptrtoint ptr %rx_ring_head to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %rx_ring_head, align 4
  %add = add i32 %68, 1
  %rem = srem i32 %add, 128
  store i32 %rem, ptr %rx_ring_head, align 4
  %69 = ptrtoint ptr %rx_ring_tail.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %rx_ring_tail.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %70, i32 %rem)
  %cmp.not9.i = icmp eq i32 %70, %rem
  br i1 %cmp.not9.i, label %smsc9420_rx_handoff.exit.smsc9420_alloc_new_rx_buffers.exit_crit_edge, label %smsc9420_rx_handoff.exit.while.body.i_crit_edge

smsc9420_rx_handoff.exit.while.body.i_crit_edge:  ; preds = %smsc9420_rx_handoff.exit
  br label %while.body.i

smsc9420_rx_handoff.exit.smsc9420_alloc_new_rx_buffers.exit_crit_edge: ; preds = %smsc9420_rx_handoff.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %smsc9420_alloc_new_rx_buffers.exit

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %smsc9420_rx_handoff.exit.while.body.i_crit_edge
  %71 = phi i32 [ %rem.i, %if.end.i.while.body.i_crit_edge ], [ %70, %smsc9420_rx_handoff.exit.while.body.i_crit_edge ]
  %call.i = tail call fastcc i32 @smsc9420_alloc_rx_buffer(ptr noundef %add.ptr, i32 noundef %71) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i43 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i43, label %if.end.i, label %while.body.i.smsc9420_alloc_new_rx_buffers.exit_crit_edge

while.body.i.smsc9420_alloc_new_rx_buffers.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %smsc9420_alloc_new_rx_buffers.exit

if.end.i:                                         ; preds = %while.body.i
  %72 = ptrtoint ptr %rx_ring_tail.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %rx_ring_tail.i, align 8
  %add.i44 = add i32 %73, 1
  %rem.i = srem i32 %add.i44, 128
  store i32 %rem.i, ptr %rx_ring_tail.i, align 8
  %74 = ptrtoint ptr %rx_ring_head to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %rx_ring_head, align 4
  %cmp.not.i = icmp eq i32 %rem.i, %75
  br i1 %cmp.not.i, label %if.end.i.smsc9420_alloc_new_rx_buffers.exit_crit_edge, label %if.end.i.while.body.i_crit_edge

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body.i

if.end.i.smsc9420_alloc_new_rx_buffers.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %smsc9420_alloc_new_rx_buffers.exit

smsc9420_alloc_new_rx_buffers.exit:               ; preds = %if.end.i.smsc9420_alloc_new_rx_buffers.exit_crit_edge, %while.body.i.smsc9420_alloc_new_rx_buffers.exit_crit_edge, %smsc9420_rx_handoff.exit.smsc9420_alloc_new_rx_buffers.exit_crit_edge
  %inc = add nuw nsw i32 %work_done.05259, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %budget)
  %exitcond.not = icmp eq i32 %inc, %budget
  br i1 %exitcond.not, label %smsc9420_alloc_new_rx_buffers.exit.for.end.loopexit_crit_edge, label %for.body

smsc9420_alloc_new_rx_buffers.exit.for.end.loopexit_crit_edge: ; preds = %smsc9420_alloc_new_rx_buffers.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end.loopexit

for.end.loopexit:                                 ; preds = %smsc9420_alloc_new_rx_buffers.exit.for.end.loopexit_crit_edge, %for.body.for.end.loopexit_crit_edge
  %work_done.0.lcssa.ph = phi i32 [ %budget, %smsc9420_alloc_new_rx_buffers.exit.for.end.loopexit_crit_edge ], [ %inc, %for.body.for.end.loopexit_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %budget)
  %cmp.le = icmp slt i32 %inc, %budget
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %for.body.lr.ph.for.end_crit_edge, %entry.for.end_crit_edge
  %work_done.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ 0, %for.body.lr.ph.for.end_crit_edge ], [ %work_done.0.lcssa.ph, %for.end.loopexit ]
  %cmp.lcssa = phi i1 [ false, %entry.for.end_crit_edge ], [ true, %for.body.lr.ph.for.end_crit_edge ], [ %cmp.le, %for.end.loopexit ]
  %76 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %add.ptr, align 8
  %add.ptr.i45 = getelementptr i8, ptr %77, i32 32
  %78 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i45) #16, !srcloc !211
  %79 = tail call i32 @llvm.bswap.i32(i32 %78) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !212
  %and6 = and i32 %79, 65535
  %shr = lshr i32 %79, 17
  %and7 = and i32 %shr, 1023
  %rx_dropped = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 6
  %80 = ptrtoint ptr %rx_dropped to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %rx_dropped, align 8
  %add8 = add i32 %81, %and6
  %add9 = add i32 %add8, %and7
  store i32 %add9, ptr %rx_dropped, align 8
  %82 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %add.ptr, align 8
  %add.ptr.i46 = getelementptr i8, ptr %83, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !213
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i46, i32 16777216) #16, !srcloc !214
  %84 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %add.ptr, align 8
  %add.ptr.i.i47 = getelementptr i8, ptr %85, i32 192
  %86 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i47) #16, !srcloc !211
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !212
  br i1 %cmp.lcssa, label %if.then11, label %for.end.if.end15_crit_edge

for.end.if.end15_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15

if.then11:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #18
  %call13 = tail call zeroext i1 @napi_complete_done(ptr noundef %napi, i32 noundef %work_done.0.lcssa) #16
  %87 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %add.ptr, align 8
  %add.ptr.i48 = getelementptr i8, ptr %88, i32 28
  %89 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i48) #16, !srcloc !211
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !212
  %90 = or i32 %89, 1073742080
  %91 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %add.ptr, align 8
  %add.ptr.i49 = getelementptr i8, ptr %92, i32 28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !213
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i49, i32 %90) #16, !srcloc !214
  %93 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %add.ptr, align 8
  %add.ptr.i.i50 = getelementptr i8, ptr %94, i32 192
  %95 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i50) #16, !srcloc !211
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !212
  br label %if.end15

if.end15:                                         ; preds = %if.then11, %for.end.if.end15_crit_edge
  ret i32 %work_done.0.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #0

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_release_regions(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smsc9420_open(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %pdev = getelementptr i8, ptr %dev, i32 2308
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 4
  %irq1 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 46
  %2 = ptrtoint ptr %irq1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq1, align 4
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 86
  %4 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_addr, align 64
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  %8 = and i32 %7, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not.i = icmp eq i32 %8, 0
  br i1 %tobool.i.not.i, label %is_valid_ether_addr.exit, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body

is_valid_ether_addr.exit:                         ; preds = %entry
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 4
  %9 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %add.ptr.i.i, align 2
  %conv.i.i = zext i16 %10 to i32
  %or.i.i = or i32 %7, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i.not = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i.not, label %is_valid_ether_addr.exit.do.body_crit_edge, label %if.end5

is_valid_ether_addr.exit.do.body_crit_edge:       ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body

do.body:                                          ; preds = %is_valid_ether_addr.exit.do.body_crit_edge, %entry.do.body_crit_edge
  %msg_enable = getelementptr i8, ptr %dev, i32 2676
  %11 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %msg_enable, align 4
  %and = and i32 %12, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.cleanup_crit_edge, label %if.then3

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then3:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  %dev4 = getelementptr i8, ptr %dev, i32 2312
  %13 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev4, align 8
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %14, ptr noundef nonnull @.str.35) #19
  br label %cleanup

if.end5:                                          ; preds = %is_valid_ether_addr.exit
  tail call void @netif_carrier_off(ptr noundef %dev) #16
  %int_lock = getelementptr i8, ptr %dev, i32 2356
  %call9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %int_lock) #16
  %15 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i298 = getelementptr i8, ptr %16, i32 204
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i298) #16, !srcloc !211
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !212
  %18 = and i32 %17, -1025
  %19 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i299 = getelementptr i8, ptr %20, i32 204
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !213
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i299, i32 %18) #16, !srcloc !214
  %21 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i300 = getelementptr i8, ptr %22, i32 196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !213
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i300, i32 0) #16, !srcloc !214
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %int_lock, i32 noundef %call9) #16
  %23 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i301 = getelementptr i8, ptr %24, i32 28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !213
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i301, i32 0) #16, !srcloc !214
  %25 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i302 = getelementptr i8, ptr %26, i32 200
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !213
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i302, i32 -1) #16, !srcloc !214
  %27 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i.i303 = getelementptr i8, ptr %28, i32 192
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i303) #16, !srcloc !211
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !212
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %3, ptr noundef nonnull @smsc9420_isr, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str.1, ptr noundef %add.ptr.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool18.not = icmp eq i32 %call.i, 0
  br i1 %tobool18.not, label %if.end29, label %do.body20

do.body20:                                        ; preds = %if.end5
  %msg_enable21 = getelementptr i8, ptr %dev, i32 2676
  %30 = ptrtoint ptr %msg_enable21 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %msg_enable21, align 4
  %and22 = and i32 %31, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %do.body20.cleanup_crit_edge, label %if.then24

do.body20.cleanup_crit_edge:                      ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then24:                                        ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #18
  %dev25 = getelementptr i8, ptr %dev, i32 2312
  %32 = ptrtoint ptr %dev25 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev25, align 8
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %33, ptr noundef nonnull @.str.36, i32 noundef %3) #19
  br label %cleanup

if.end29:                                         ; preds = %if.end5
  %34 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %add.ptr.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !213
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %35, i32 16777216) #16, !srcloc !214
  %36 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %add.ptr.i, align 8
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %37) #16, !srcloc !211
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !212
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %39 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %39(i32 noundef 429496) #16
  %40 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %add.ptr.i, align 8
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %41) #16, !srcloc !211
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !212
  %43 = and i32 %42, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool.not.i = icmp eq i32 %43, 0
  br i1 %tobool.not.i, label %if.end29.smsc9420_dmac_soft_reset.exit_crit_edge, label %do.body.i

if.end29.smsc9420_dmac_soft_reset.exit_crit_edge: ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #18
  br label %smsc9420_dmac_soft_reset.exit

do.body.i:                                        ; preds = %if.end29
  %msg_enable.i = getelementptr i8, ptr %dev, i32 2676
  %44 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %msg_enable.i, align 4
  %and2.i = and i32 %45, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp eq i32 %and2.i, 0
  br i1 %tobool3.not.i, label %do.body.i.smsc9420_dmac_soft_reset.exit_crit_edge, label %if.then4.i

do.body.i.smsc9420_dmac_soft_reset.exit_crit_edge: ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %smsc9420_dmac_soft_reset.exit

if.then4.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #18
  %dev.i = getelementptr i8, ptr %dev, i32 2312
  %46 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %47, ptr noundef nonnull @.str.27) #19
  br label %smsc9420_dmac_soft_reset.exit

smsc9420_dmac_soft_reset.exit:                    ; preds = %if.then4.i, %do.body.i.smsc9420_dmac_soft_reset.exit_crit_edge, %if.end29.smsc9420_dmac_soft_reset.exit_crit_edge
  %48 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i304 = getelementptr i8, ptr %49, i32 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !213
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i304, i32 0) #16, !srcloc !214
  %50 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev_addr, align 64
  %arrayidx.i = getelementptr i8, ptr %51, i32 5
  %52 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %53 to i32
  %shl.i = shl nuw nsw i32 %conv.i, 8
  %arrayidx2.i = getelementptr i8, ptr %51, i32 4
  %54 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx2.i, align 1
  %conv3.i = zext i8 %55 to i32
  %or.i = or i32 %shl.i, %conv3.i
  %arrayidx4.i = getelementptr i8, ptr %51, i32 3
  %56 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx4.i, align 1
  %conv5.i = zext i8 %57 to i32
  %shl6.i = shl nuw i32 %conv5.i, 24
  %arrayidx7.i = getelementptr i8, ptr %51, i32 2
  %58 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %arrayidx7.i, align 1
  %conv8.i = zext i8 %59 to i32
  %shl9.i = shl nuw nsw i32 %conv8.i, 16
  %or10.i = or i32 %shl9.i, %shl6.i
  %arrayidx11.i = getelementptr i8, ptr %51, i32 1
  %60 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %arrayidx11.i, align 1
  %conv12.i = zext i8 %61 to i32
  %shl13.i = shl nuw nsw i32 %conv12.i, 8
  %or14.i = or i32 %or10.i, %shl13.i
  %62 = ptrtoint ptr %51 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %51, align 1
  %conv16.i = zext i8 %63 to i32
  %or17.i = or i32 %or14.i, %conv16.i
  %64 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i25.i = getelementptr i8, ptr %65, i32 132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !213
  tail call void @arm_heavy_mb() #16
  %66 = tail call i32 @llvm.bswap.i32(i32 %or.i) #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25.i, i32 %66) #16, !srcloc !214
  %67 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i26.i = getelementptr i8, ptr %68, i32 136
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !213
  tail call void @arm_heavy_mb() #16
  %69 = tail call i32 @llvm.bswap.i32(i32 %or17.i) #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i26.i, i32 %69) #16, !srcloc !214
  %70 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i306 = getelementptr i8, ptr %71, i32 208
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !213
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i306, i32 112) #16, !srcloc !214
  %72 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %add.ptr.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !213
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %73, i32 1052672) #16, !srcloc !214
  %74 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i.i307 = getelementptr i8, ptr %75, i32 192
  %76 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i307) #16, !srcloc !211
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !212
  %77 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i308 = getelementptr i8, ptr %78, i32 220
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !213
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i308, i32 6) #16, !srcloc !214
  %79 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i309 = getelementptr i8, ptr %80, i32 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !213
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i309, i32 67117056) #16, !srcloc !214
  %81 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i.i310 = getelementptr i8, ptr %82, i32 192
  %83 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i310) #16, !srcloc !211
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !212
  %msg_enable31 = getelementptr i8, ptr %dev, i32 2676
  %84 = ptrtoint ptr %msg_enable31 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %msg_enable31, align 4
  %and32 = and i32 %85, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %tobool33.not, label %smsc9420_dmac_soft_reset.exit.do.end48_crit_edge, label %do.body35

smsc9420_dmac_soft_reset.exit.do.end48_crit_edge: ; preds = %smsc9420_dmac_soft_reset.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end48

do.body35:                                        ; preds = %smsc9420_dmac_soft_reset.exit
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smsc9420_open.__UNIQUE_ID_ddebug377, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smsc9420_open, %if.then41)) #16
          to label %do.end48 [label %if.then41], !srcloc !210

if.then41:                                        ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #18
  %dev42 = getelementptr i8, ptr %dev, i32 2312
  %86 = ptrtoint ptr %dev42 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %dev42, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @smsc9420_open.__UNIQUE_ID_ddebug377, ptr noundef %87, ptr noundef nonnull @.str.38, i32 noundef %3) #16
  br label %do.end48

do.end48:                                         ; preds = %if.then41, %do.body35, %smsc9420_dmac_soft_reset.exit.do.end48_crit_edge
  %software_irq_signal = getelementptr i8, ptr %dev, i32 2672
  %88 = ptrtoint ptr %software_irq_signal to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 0, ptr %software_irq_signal, align 8
  %call58 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %int_lock) #16
  %89 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i311 = getelementptr i8, ptr %90, i32 204
  %91 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i311) #16, !srcloc !211
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !212
  %92 = and i32 %91, 16776191
  %93 = or i32 %92, 838861824
  %94 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i312 = getelementptr i8, ptr %95, i32 204
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !213
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i312, i32 %93) #16, !srcloc !214
  %96 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i313 = getelementptr i8, ptr %97, i32 196
  %98 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i313) #16, !srcloc !211
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !212
  %99 = or i32 %98, 8388608
  %100 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i314 = getelementptr i8, ptr %101, i32 196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !213
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i314, i32 %99) #16, !srcloc !214
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %int_lock, i32 noundef %call58) #16
  %102 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i.i315 = getelementptr i8, ptr %103, i32 192
  %104 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i315) #16, !srcloc !211
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !212
  br label %while.body

while.body:                                       ; preds = %if.end74.while.body_crit_edge, %do.end48
  %dec337 = phi i32 [ 999, %do.end48 ], [ %dec, %if.end74.while.body_crit_edge ]
  %105 = ptrtoint ptr %software_irq_signal to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %software_irq_signal, align 8, !range !222
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %106)
  %tobool72.not = icmp eq i8 %106, 0
  br i1 %tobool72.not, label %if.end74, label %while.body.do.body76_crit_edge

while.body.do.body76_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body76

if.end74:                                         ; preds = %while.body
  tail call void @msleep(i32 noundef 1) #16
  %dec = add nsw i32 %dec337, -1
  %tobool70.not = icmp eq i32 %dec337, 0
  br i1 %tobool70.not, label %if.end74.do.body76_crit_edge, label %if.end74.while.body_crit_edge

if.end74.while.body_crit_edge:                    ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body

if.end74.do.body76_crit_edge:                     ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body76

do.body76:                                        ; preds = %if.end74.do.body76_crit_edge, %while.body.do.body76_crit_edge
  %call84 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %int_lock) #16
  %107 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i316 = getelementptr i8, ptr %108, i32 204
  %109 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i316) #16, !srcloc !211
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !212
  %110 = and i32 %109, -1025
  %111 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i317 = getelementptr i8, ptr %112, i32 204
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !213
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i317, i32 %110) #16, !srcloc !214
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %int_lock, i32 noundef %call84) #16
  %113 = ptrtoint ptr %software_irq_signal to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %software_irq_signal, align 8, !range !222
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %114)
  %tobool93.not = icmp eq i8 %114, 0
  %115 = ptrtoint ptr %msg_enable31 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %msg_enable31, align 4
  %and97 = and i32 %116, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and97)
  %tobool98.not = icmp eq i32 %and97, 0
  br i1 %tobool93.not, label %do.body95, label %do.body105

do.body95:                                        ; preds = %do.body76
  br i1 %tobool98.not, label %do.body95.out_free_irq_1_crit_edge, label %if.then99

do.body95.out_free_irq_1_crit_edge:               ; preds = %do.body95
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_free_irq_1

if.then99:                                        ; preds = %do.body95
  call void @__sanitizer_cov_trace_pc() #18
  %dev100 = getelementptr i8, ptr %dev, i32 2312
  %117 = ptrtoint ptr %dev100 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %dev100, align 8
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %118, ptr noundef nonnull @.str.39) #19
  br label %out_free_irq_1

do.body105:                                       ; preds = %do.body76
  br i1 %tobool98.not, label %do.body105.do.end129_crit_edge, label %do.body110

do.body105.do.end129_crit_edge:                   ; preds = %do.body105
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end129

do.body110:                                       ; preds = %do.body105
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smsc9420_open.__UNIQUE_ID_ddebug378, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smsc9420_open, %if.then122)) #16
          to label %do.end129 [label %if.then122], !srcloc !210

if.then122:                                       ; preds = %do.body110
  call void @__sanitizer_cov_trace_pc() #18
  %dev123 = getelementptr i8, ptr %dev, i32 2312
  %119 = ptrtoint ptr %dev123 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %dev123, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @smsc9420_open.__UNIQUE_ID_ddebug378, ptr noundef %120, ptr noundef nonnull @.str.40, i32 noundef %3) #16
  br label %do.end129

do.end129:                                        ; preds = %if.then122, %do.body110, %do.body105.do.end129_crit_edge
  %tx_ring.i = getelementptr i8, ptr %dev, i32 2320
  %121 = ptrtoint ptr %tx_ring.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %tx_ring.i, align 8
  %tobool.not.i318 = icmp eq ptr %122, null
  br i1 %tobool.not.i318, label %do.body4.i, label %do.end9.i, !prof !217

do.body4.i:                                       ; preds = %do.end129
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smsc9420.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1180, 0\0A.popsection", ""() #16, !srcloc !223
  unreachable

do.end9.i:                                        ; preds = %do.end129
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %123 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %123, i32 noundef 3264, i32 noundef 256) #20
  %tx_buffers.i = getelementptr i8, ptr %dev, i32 2324
  %124 = ptrtoint ptr %tx_buffers.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr %call7.i.i.i, ptr %tx_buffers.i, align 4
  %tobool11.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool11.not.i, label %do.body133, label %do.end9.i.for.body.i_crit_edge

do.end9.i.for.body.i_crit_edge:                   ; preds = %do.end9.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %do.end9.i.for.body.i_crit_edge
  %i.052.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %do.end9.i.for.body.i_crit_edge ]
  %125 = ptrtoint ptr %tx_buffers.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %tx_buffers.i, align 4
  %arrayidx.i319 = getelementptr %struct.smsc9420_ring_info, ptr %126, i32 %i.052.i
  %127 = ptrtoint ptr %arrayidx.i319 to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr null, ptr %arrayidx.i319, align 4
  %128 = load ptr, ptr %tx_buffers.i, align 4
  %mapping.i = getelementptr %struct.smsc9420_ring_info, ptr %128, i32 %i.052.i, i32 1
  %129 = ptrtoint ptr %mapping.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 0, ptr %mapping.i, align 4
  %130 = ptrtoint ptr %tx_ring.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %tx_ring.i, align 8
  %arrayidx18.i = getelementptr %struct.smsc9420_dma_desc, ptr %131, i32 %i.052.i
  %132 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 0, ptr %arrayidx18.i, align 4
  %133 = load ptr, ptr %tx_ring.i, align 8
  %length.i = getelementptr %struct.smsc9420_dma_desc, ptr %133, i32 %i.052.i, i32 1
  %134 = ptrtoint ptr %length.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 0, ptr %length.i, align 4
  %135 = load ptr, ptr %tx_ring.i, align 8
  %buffer1.i = getelementptr %struct.smsc9420_dma_desc, ptr %135, i32 %i.052.i, i32 2
  %136 = ptrtoint ptr %buffer1.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 0, ptr %buffer1.i, align 4
  %137 = load ptr, ptr %tx_ring.i, align 8
  %buffer2.i = getelementptr %struct.smsc9420_dma_desc, ptr %137, i32 %i.052.i, i32 3
  %138 = ptrtoint ptr %buffer2.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 0, ptr %buffer2.i, align 4
  %inc.i = add nuw nsw i32 %i.052.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 32
  br i1 %exitcond.not.i, label %if.end142, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

do.body133:                                       ; preds = %do.end9.i
  %139 = ptrtoint ptr %msg_enable31 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %msg_enable31, align 4
  %and135 = and i32 %140, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and135)
  %tobool136.not = icmp eq i32 %and135, 0
  br i1 %tobool136.not, label %do.body133.out_free_irq_1_crit_edge, label %if.then137

do.body133.out_free_irq_1_crit_edge:              ; preds = %do.body133
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_free_irq_1

if.then137:                                       ; preds = %do.body133
  call void @__sanitizer_cov_trace_pc() #18
  %dev138 = getelementptr i8, ptr %dev, i32 2312
  %141 = ptrtoint ptr %dev138 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %dev138, align 8
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %142, ptr noundef nonnull @.str.41) #19
  br label %out_free_irq_1

if.end142:                                        ; preds = %for.body.i
  %143 = ptrtoint ptr %tx_ring.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %tx_ring.i, align 8
  %length27.i = getelementptr %struct.smsc9420_dma_desc, ptr %144, i32 31, i32 1
  %145 = ptrtoint ptr %length27.i to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 33554432, ptr %length27.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !224
  tail call void @arm_heavy_mb() #16
  %tx_ring_head.i = getelementptr i8, ptr %dev, i32 2340
  %146 = ptrtoint ptr %tx_ring_head.i to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 0, ptr %tx_ring_head.i, align 4
  %tx_ring_tail.i = getelementptr i8, ptr %dev, i32 2344
  %147 = ptrtoint ptr %tx_ring_tail.i to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 0, ptr %tx_ring_tail.i, align 8
  %tx_dma_addr.i = getelementptr i8, ptr %dev, i32 2336
  %148 = ptrtoint ptr %tx_dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %tx_dma_addr.i, align 8
  %150 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i.i320 = getelementptr i8, ptr %151, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !213
  tail call void @arm_heavy_mb() #16
  %152 = tail call i32 @llvm.bswap.i32(i32 %149) #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i320, i32 %152) #16, !srcloc !214
  %153 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %154, i32 192
  %155 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #16, !srcloc !211
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !212
  %call143 = tail call fastcc i32 @smsc9420_alloc_rx_ring(ptr noundef %add.ptr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call143)
  %tobool144.not = icmp eq i32 %call143, 0
  br i1 %tobool144.not, label %if.end155, label %do.body146

do.body146:                                       ; preds = %if.end142
  %156 = ptrtoint ptr %msg_enable31 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %msg_enable31, align 4
  %and148 = and i32 %157, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and148)
  %tobool149.not = icmp eq i32 %and148, 0
  br i1 %tobool149.not, label %do.body146.out_free_tx_ring_2_crit_edge, label %if.then150

do.body146.out_free_tx_ring_2_crit_edge:          ; preds = %do.body146
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_free_tx_ring_2

if.then150:                                       ; preds = %do.body146
  call void @__sanitizer_cov_trace_pc() #18
  %dev151 = getelementptr i8, ptr %dev, i32 2312
  %158 = ptrtoint ptr %dev151 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %dev151, align 8
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %159, ptr noundef nonnull @.str.42) #19
  br label %out_free_tx_ring_2

if.end155:                                        ; preds = %if.end142
  %call156 = tail call fastcc i32 @smsc9420_mii_init(ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call156)
  %tobool157.not = icmp eq i32 %call156, 0
  br i1 %tobool157.not, label %if.end168, label %do.body159

do.body159:                                       ; preds = %if.end155
  %160 = ptrtoint ptr %msg_enable31 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %msg_enable31, align 4
  %and161 = and i32 %161, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and161)
  %tobool162.not = icmp eq i32 %and161, 0
  br i1 %tobool162.not, label %do.body159.do.end167_crit_edge, label %if.then163

do.body159.do.end167_crit_edge:                   ; preds = %do.body159
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end167

if.then163:                                       ; preds = %do.body159
  call void @__sanitizer_cov_trace_pc() #18
  %dev164 = getelementptr i8, ptr %dev, i32 2312
  %162 = ptrtoint ptr %dev164 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %dev164, align 8
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %163, ptr noundef nonnull @.str.43) #19
  br label %do.end167

do.end167:                                        ; preds = %if.then163, %do.body159.do.end167_crit_edge
  tail call fastcc void @smsc9420_free_rx_ring(ptr noundef %add.ptr.i)
  br label %out_free_tx_ring_2

if.end168:                                        ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #18
  %phydev = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 145
  %164 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %phydev, align 16
  tail call void @phy_start(ptr noundef %165) #16
  %napi = getelementptr i8, ptr %dev, i32 2448
  tail call void @napi_enable(ptr noundef %napi) #16
  %166 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i322 = getelementptr i8, ptr %167, i32 128
  %168 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i322) #16, !srcloc !211
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !212
  %169 = or i32 %168, 201326592
  %170 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i323 = getelementptr i8, ptr %171, i32 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !213
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i323, i32 %169) #16, !srcloc !214
  %172 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i324 = getelementptr i8, ptr %173, i32 24
  %174 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i324) #16, !srcloc !211
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !212
  %175 = or i32 %174, 35651584
  %176 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i325 = getelementptr i8, ptr %177, i32 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !213
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i325, i32 %175) #16, !srcloc !214
  %178 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i.i326 = getelementptr i8, ptr %179, i32 192
  %180 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i326) #16, !srcloc !211
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !212
  %181 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i327 = getelementptr i8, ptr %182, i32 28
  %183 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i327) #16, !srcloc !211
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !212
  %184 = or i32 %183, 1090519296
  %185 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i328 = getelementptr i8, ptr %186, i32 28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !213
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i328, i32 %184) #16, !srcloc !214
  %187 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i.i329 = getelementptr i8, ptr %188, i32 192
  %189 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i329) #16, !srcloc !211
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !212
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %190 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %_tx.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %191) #16
  %192 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i330 = getelementptr i8, ptr %193, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !213
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i330, i32 16777216) #16, !srcloc !214
  %call185 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %int_lock) #16
  %194 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i331 = getelementptr i8, ptr %195, i32 204
  %196 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i331) #16, !srcloc !211
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !212
  %197 = or i32 %196, 1024
  %198 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i332 = getelementptr i8, ptr %199, i32 204
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !213
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i332, i32 %197) #16, !srcloc !214
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %int_lock, i32 noundef %call185) #16
  br label %cleanup

out_free_tx_ring_2:                               ; preds = %do.end167, %if.then150, %do.body146.out_free_tx_ring_2_crit_edge
  %result.0 = phi i32 [ -19, %do.end167 ], [ -12, %if.then150 ], [ -12, %do.body146.out_free_tx_ring_2_crit_edge ]
  tail call fastcc void @smsc9420_free_tx_ring(ptr noundef %add.ptr.i)
  br label %out_free_irq_1

out_free_irq_1:                                   ; preds = %out_free_tx_ring_2, %if.then137, %do.body133.out_free_irq_1_crit_edge, %if.then99, %do.body95.out_free_irq_1_crit_edge
  %result.1 = phi i32 [ %result.0, %out_free_tx_ring_2 ], [ -19, %if.then99 ], [ -19, %do.body95.out_free_irq_1_crit_edge ], [ -12, %if.then137 ], [ -12, %do.body133.out_free_irq_1_crit_edge ]
  %call193 = tail call ptr @free_irq(i32 noundef %3, ptr noundef %add.ptr.i) #16
  br label %cleanup

cleanup:                                          ; preds = %out_free_irq_1, %if.end168, %if.then24, %do.body20.cleanup_crit_edge, %if.then3, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end168 ], [ %result.1, %out_free_irq_1 ], [ -99, %if.then3 ], [ -99, %do.body.cleanup_crit_edge ], [ -19, %if.then24 ], [ -19, %do.body20.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smsc9420_stop(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %tobool.not = icmp eq ptr %add.ptr.i, null
  br i1 %tobool.not, label %do.body4, label %do.body10, !prof !217

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smsc9420.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 684, 0\0A.popsection", ""() #16, !srcloc !225
  unreachable

do.body10:                                        ; preds = %entry
  %phydev = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 145
  %0 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phydev, align 16
  %tobool11.not = icmp eq ptr %1, null
  br i1 %tobool11.not, label %do.body21, label %do.body31, !prof !217

do.body21:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smsc9420.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 685, 0\0A.popsection", ""() #16, !srcloc !226
  unreachable

do.body31:                                        ; preds = %do.body10
  %int_lock = getelementptr i8, ptr %dev, i32 2356
  %call33 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %int_lock) #16
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i62 = getelementptr i8, ptr %3, i32 204
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i62) #16, !srcloc !211
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !212
  %5 = and i32 %4, -1025
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i63 = getelementptr i8, ptr %7, i32 204
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !213
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i63, i32 %5) #16, !srcloc !214
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %int_lock, i32 noundef %call33) #16
  tail call fastcc void @local_bh_disable() #16
  %8 = tail call i32 @llvm.read_register.i32(metadata !199) #16
  %and.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i to ptr
  %cpu1.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %cpu1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cpu1.i, align 4
  %tx_global_lock.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 108
  tail call void @_raw_spin_lock(ptr noundef %tx_global_lock.i) #16
  %num_tx_queues.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 104
  %12 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_tx_queues.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp13.not.i = icmp eq i32 %13, 0
  br i1 %cmp13.not.i, label %do.body31.netif_tx_disable.exit_crit_edge, label %for.body.lr.ph.i

do.body31.netif_tx_disable.exit_crit_edge:        ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #18
  br label %netif_tx_disable.exit

for.body.lr.ph.i:                                 ; preds = %do.body31
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.014.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %14 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %_tx.i.i, align 128
  %_xmit_lock.i.i = getelementptr %struct.netdev_queue, ptr %15, i32 %i.014.i, i32 10
  tail call void @_raw_spin_lock(ptr noundef %_xmit_lock.i.i) #16
  %xmit_lock_owner.i.i = getelementptr %struct.netdev_queue, ptr %15, i32 %i.014.i, i32 11
  %16 = ptrtoint ptr %xmit_lock_owner.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile i32 %11, ptr %xmit_lock_owner.i.i, align 4
  %state.i.i = getelementptr %struct.netdev_queue, ptr %15, i32 %i.014.i, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #16
  %17 = ptrtoint ptr %xmit_lock_owner.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile i32 -1, ptr %xmit_lock_owner.i.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %_xmit_lock.i.i) #16
  %inc.i = add nuw i32 %i.014.i, 1
  %18 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %num_tx_queues.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %19
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.netif_tx_disable.exit_crit_edge

for.body.i.netif_tx_disable.exit_crit_edge:       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %netif_tx_disable.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

netif_tx_disable.exit:                            ; preds = %for.body.i.netif_tx_disable.exit_crit_edge, %do.body31.netif_tx_disable.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %tx_global_lock.i) #16
  tail call fastcc void @local_bh_enable() #16
  %napi = getelementptr i8, ptr %dev, i32 2448
  tail call void @napi_disable(ptr noundef %napi) #16
  tail call fastcc void @smsc9420_stop_tx(ptr noundef nonnull %add.ptr.i)
  tail call fastcc void @smsc9420_free_tx_ring(ptr noundef nonnull %add.ptr.i)
  tail call fastcc void @smsc9420_stop_rx(ptr noundef nonnull %add.ptr.i)
  tail call fastcc void @smsc9420_free_rx_ring(ptr noundef nonnull %add.ptr.i)
  %pdev = getelementptr i8, ptr %dev, i32 2308
  %20 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pdev, align 4
  %irq = getelementptr inbounds %struct.pci_dev, ptr %21, i32 0, i32 46
  %22 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %irq, align 4
  %call40 = tail call ptr @free_irq(i32 noundef %23, ptr noundef nonnull %add.ptr.i) #16
  %24 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %add.ptr.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !213
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 16777216) #16, !srcloc !214
  %26 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %add.ptr.i, align 8
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %27) #16, !srcloc !211
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !212
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %29(i32 noundef 429496) #16
  %30 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %add.ptr.i, align 8
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %31) #16, !srcloc !211
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !212
  %33 = and i32 %32, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool.not.i = icmp eq i32 %33, 0
  br i1 %tobool.not.i, label %netif_tx_disable.exit.smsc9420_dmac_soft_reset.exit_crit_edge, label %do.body.i

netif_tx_disable.exit.smsc9420_dmac_soft_reset.exit_crit_edge: ; preds = %netif_tx_disable.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %smsc9420_dmac_soft_reset.exit

do.body.i:                                        ; preds = %netif_tx_disable.exit
  %msg_enable.i = getelementptr i8, ptr %dev, i32 2676
  %34 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %msg_enable.i, align 4
  %and2.i = and i32 %35, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp eq i32 %and2.i, 0
  br i1 %tobool3.not.i, label %do.body.i.smsc9420_dmac_soft_reset.exit_crit_edge, label %if.then4.i

do.body.i.smsc9420_dmac_soft_reset.exit_crit_edge: ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %smsc9420_dmac_soft_reset.exit

if.then4.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #18
  %dev.i = getelementptr i8, ptr %dev, i32 2312
  %36 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %37, ptr noundef nonnull @.str.27) #19
  br label %smsc9420_dmac_soft_reset.exit

smsc9420_dmac_soft_reset.exit:                    ; preds = %if.then4.i, %do.body.i.smsc9420_dmac_soft_reset.exit_crit_edge, %netif_tx_disable.exit.smsc9420_dmac_soft_reset.exit_crit_edge
  %38 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %phydev, align 16
  tail call void @phy_stop(ptr noundef %39) #16
  %40 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %phydev, align 16
  tail call void @phy_disconnect(ptr noundef %41) #16
  %mii_bus = getelementptr i8, ptr %dev, i32 2680
  %42 = ptrtoint ptr %mii_bus to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %mii_bus, align 8
  tail call void @mdiobus_unregister(ptr noundef %43) #16
  %44 = ptrtoint ptr %mii_bus to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %mii_bus, align 8
  tail call void @mdiobus_free(ptr noundef %45) #16
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smsc9420_hard_start_xmit(ptr noundef %skb, ptr nocapture noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %tx_ring_head = getelementptr i8, ptr %dev, i32 2340
  %0 = ptrtoint ptr %tx_ring_head to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tx_ring_head, align 4
  %add = add i32 %1, 2
  %rem = srem i32 %add, 32
  %tx_ring_tail = getelementptr i8, ptr %dev, i32 2344
  %2 = ptrtoint ptr %tx_ring_tail to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tx_ring_tail, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %rem, i32 %3)
  %cmp = icmp eq i32 %rem, %3
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %1)
  %cmp.not101.i = icmp eq i32 %3, %1
  br i1 %cmp.not101.i, label %entry.smsc9420_complete_tx.exit_crit_edge, label %while.body.lr.ph.i

entry.smsc9420_complete_tx.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %smsc9420_complete_tx.exit

while.body.lr.ph.i:                               ; preds = %entry
  %tx_ring.i = getelementptr i8, ptr %dev, i32 2320
  %tx_errors.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 5
  %tx_aborted_errors.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 16
  %tx_carrier_errors.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 17
  %tx_packets.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 1
  %tx_bytes.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 3
  %collisions33.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 9
  %tx_heartbeat_errors.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 19
  %tx_buffers.i = getelementptr i8, ptr %dev, i32 2324
  %pdev.i = getelementptr i8, ptr %dev, i32 2308
  br label %while.body.i

while.body.i:                                     ; preds = %cleanup.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %4 = phi i32 [ %3, %while.body.lr.ph.i ], [ %rem.i, %cleanup.i.while.body.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !227
  %5 = ptrtoint ptr %tx_ring.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %tx_ring.i, align 8
  %arrayidx.i = getelementptr %struct.smsc9420_dma_desc, ptr %6, i32 %4
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %8)
  %tobool.not.i = icmp sgt i32 %8, -1
  br i1 %tobool.not.i, label %if.end.i, label %while.body.i.smsc9420_complete_tx.exit_crit_edge, !prof !209

while.body.i.smsc9420_complete_tx.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %smsc9420_complete_tx.exit

if.end.i:                                         ; preds = %while.body.i
  %and.i.i = and i32 %8, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i, !prof !209

if.then.i.i:                                      ; preds = %if.end.i
  %9 = ptrtoint ptr %tx_errors.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %tx_errors.i.i, align 4
  %inc.i.i = add i32 %10, 1
  store i32 %inc.i.i, ptr %tx_errors.i.i, align 4
  %and3.i.i = and i32 %8, 260
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i.i)
  %tobool4.not.i.i = icmp eq i32 %and3.i.i, 0
  br i1 %tobool4.not.i.i, label %if.then.i.i.if.end.i.i_crit_edge, label %if.then5.i.i

if.then.i.i.if.end.i.i_crit_edge:                 ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i.i

if.then5.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %11 = ptrtoint ptr %tx_aborted_errors.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %tx_aborted_errors.i.i, align 8
  %inc7.i.i = add i32 %12, 1
  store i32 %inc7.i.i, ptr %tx_aborted_errors.i.i, align 8
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then5.i.i, %if.then.i.i.if.end.i.i_crit_edge
  %and8.i.i = and i32 %8, 3072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i.i)
  %tobool9.not.i.i = icmp eq i32 %and8.i.i, 0
  br i1 %tobool9.not.i.i, label %if.end.i.i.if.end18.i.i_crit_edge, label %if.end.i.i.if.end18.sink.split.i.i_crit_edge

if.end.i.i.if.end18.sink.split.i.i_crit_edge:     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end18.sink.split.i.i

if.end.i.i.if.end18.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end18.i.i

if.else.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  %length5.i = getelementptr %struct.smsc9420_dma_desc, ptr %6, i32 %4, i32 1
  %13 = ptrtoint ptr %length5.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %length5.i, align 4
  %15 = ptrtoint ptr %tx_packets.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %tx_packets.i.i, align 4
  %inc15.i.i = add i32 %16, 1
  store i32 %inc15.i.i, ptr %tx_packets.i.i, align 4
  %and16.i.i = and i32 %14, 2047
  br label %if.end18.sink.split.i.i

if.end18.sink.split.i.i:                          ; preds = %if.else.i.i, %if.end.i.i.if.end18.sink.split.i.i_crit_edge
  %tx_carrier_errors.sink61.i.i = phi ptr [ %tx_bytes.i.i, %if.else.i.i ], [ %tx_carrier_errors.i.i, %if.end.i.i.if.end18.sink.split.i.i_crit_edge ]
  %.sink60.i.i = phi i32 [ %and16.i.i, %if.else.i.i ], [ 1, %if.end.i.i.if.end18.sink.split.i.i_crit_edge ]
  %17 = ptrtoint ptr %tx_carrier_errors.sink61.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %tx_carrier_errors.sink61.i.i, align 4
  %inc12.i.i = add i32 %18, %.sink60.i.i
  store i32 %inc12.i.i, ptr %tx_carrier_errors.sink61.i.i, align 4
  br label %if.end18.i.i

if.end18.i.i:                                     ; preds = %if.end18.sink.split.i.i, %if.end.i.i.if.end18.i.i_crit_edge
  %and19.i.i = and i32 %8, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19.i.i)
  %tobool20.not.i.i = icmp eq i32 %and19.i.i, 0
  %and31.i.i = lshr i32 %8, 3
  %shr.i.i = and i32 %and31.i.i, 15
  %shr.sink.i.i = select i1 %tobool20.not.i.i, i32 %shr.i.i, i32 16, !prof !209
  %19 = ptrtoint ptr %collisions33.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %collisions33.i.i, align 4
  %add34.i.i = add i32 %20, %shr.sink.i.i
  store i32 %add34.i.i, ptr %collisions33.i.i, align 4
  %and36.i.i = and i32 %8, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36.i.i)
  %tobool37.not.i.i = icmp eq i32 %and36.i.i, 0
  br i1 %tobool37.not.i.i, label %if.end18.i.i.smsc9420_tx_update_stats.exit.i_crit_edge, label %if.then44.i.i, !prof !209

if.end18.i.i.smsc9420_tx_update_stats.exit.i_crit_edge: ; preds = %if.end18.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %smsc9420_tx_update_stats.exit.i

if.then44.i.i:                                    ; preds = %if.end18.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %21 = ptrtoint ptr %tx_heartbeat_errors.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %tx_heartbeat_errors.i.i, align 4
  %inc46.i.i = add i32 %22, 1
  store i32 %inc46.i.i, ptr %tx_heartbeat_errors.i.i, align 4
  br label %smsc9420_tx_update_stats.exit.i

smsc9420_tx_update_stats.exit.i:                  ; preds = %if.then44.i.i, %if.end18.i.i.smsc9420_tx_update_stats.exit.i_crit_edge
  %23 = ptrtoint ptr %tx_buffers.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %tx_buffers.i, align 4
  %arrayidx8.i = getelementptr %struct.smsc9420_ring_info, ptr %24, i32 %4
  %25 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx8.i, align 4
  %tobool9.not.i = icmp eq ptr %26, null
  br i1 %tobool9.not.i, label %do.body19.i, label %do.body26.i, !prof !217

do.body19.i:                                      ; preds = %smsc9420_tx_update_stats.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smsc9420.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 905, 0\0A.popsection", ""() #16, !srcloc !228
  unreachable

do.body26.i:                                      ; preds = %smsc9420_tx_update_stats.exit.i
  %mapping.i = getelementptr %struct.smsc9420_ring_info, ptr %24, i32 %4, i32 1
  %27 = ptrtoint ptr %mapping.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %mapping.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool29.not.i = icmp eq i32 %28, 0
  br i1 %tobool29.not.i, label %do.body39.i, label %cleanup.i, !prof !217

do.body39.i:                                      ; preds = %do.body26.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smsc9420.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 906, 0\0A.popsection", ""() #16, !srcloc !229
  unreachable

cleanup.i:                                        ; preds = %do.body26.i
  %29 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pdev.i, align 4
  %dev48.i = getelementptr inbounds %struct.pci_dev, ptr %30, i32 0, i32 44
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %26, i32 0, i32 6
  %31 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %len.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev48.i, i32 noundef %28, i32 noundef %32, i32 noundef 1, i32 noundef 0) #16
  %33 = ptrtoint ptr %tx_buffers.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %tx_buffers.i, align 4
  %mapping57.i = getelementptr %struct.smsc9420_ring_info, ptr %34, i32 %4, i32 1
  %35 = ptrtoint ptr %mapping57.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %mapping57.i, align 4
  %36 = load ptr, ptr %tx_buffers.i, align 4
  %arrayidx59.i = getelementptr %struct.smsc9420_ring_info, ptr %36, i32 %4
  %37 = ptrtoint ptr %arrayidx59.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx59.i, align 4
  tail call void @__dev_kfree_skb_any(ptr noundef %38, i32 noundef 1) #16
  %39 = ptrtoint ptr %tx_buffers.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %tx_buffers.i, align 4
  %arrayidx62.i = getelementptr %struct.smsc9420_ring_info, ptr %40, i32 %4
  %41 = ptrtoint ptr %arrayidx62.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr null, ptr %arrayidx62.i, align 4
  %42 = ptrtoint ptr %tx_ring.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %tx_ring.i, align 8
  %buffer1.i = getelementptr %struct.smsc9420_dma_desc, ptr %43, i32 %4, i32 2
  %44 = ptrtoint ptr %buffer1.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %buffer1.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !230
  tail call void @arm_heavy_mb() #16
  %45 = ptrtoint ptr %tx_ring_tail to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %tx_ring_tail, align 8
  %add.i = add i32 %46, 1
  %rem.i = srem i32 %add.i, 32
  store i32 %rem.i, ptr %tx_ring_tail, align 8
  %47 = ptrtoint ptr %tx_ring_head to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %tx_ring_head, align 4
  %cmp.not.i = icmp eq i32 %rem.i, %48
  br i1 %cmp.not.i, label %cleanup.i.smsc9420_complete_tx.exit_crit_edge, label %cleanup.i.while.body.i_crit_edge

cleanup.i.while.body.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body.i

cleanup.i.smsc9420_complete_tx.exit_crit_edge:    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %smsc9420_complete_tx.exit

smsc9420_complete_tx.exit:                        ; preds = %cleanup.i.smsc9420_complete_tx.exit_crit_edge, %while.body.i.smsc9420_complete_tx.exit_crit_edge, %entry.smsc9420_complete_tx.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !231
  %tx_ring = getelementptr i8, ptr %dev, i32 2320
  %49 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %tx_ring, align 8
  %arrayidx = getelementptr %struct.smsc9420_dma_desc, ptr %50, i32 %1
  %51 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %52)
  %tobool.not = icmp sgt i32 %52, -1
  br i1 %tobool.not, label %do.body10, label %do.body4, !prof !209

do.body4:                                         ; preds = %smsc9420_complete_tx.exit
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smsc9420.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 937, 0\0A.popsection", ""() #16, !srcloc !232
  unreachable

do.body10:                                        ; preds = %smsc9420_complete_tx.exit
  %tx_buffers = getelementptr i8, ptr %dev, i32 2324
  %53 = ptrtoint ptr %tx_buffers to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %tx_buffers, align 4
  %arrayidx11 = getelementptr %struct.smsc9420_ring_info, ptr %54, i32 %1
  %55 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %arrayidx11, align 4
  %tobool13.not = icmp eq ptr %56, null
  br i1 %tobool13.not, label %do.body30, label %do.body21, !prof !209

do.body21:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smsc9420.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 938, 0\0A.popsection", ""() #16, !srcloc !233
  unreachable

do.body30:                                        ; preds = %do.body10
  %mapping33 = getelementptr %struct.smsc9420_ring_info, ptr %54, i32 %1, i32 1
  %57 = ptrtoint ptr %mapping33 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %mapping33, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool34.not = icmp eq i32 %58, 0
  br i1 %tobool34.not, label %do.end50, label %do.body42, !prof !209

do.body42:                                        ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smsc9420.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 939, 0\0A.popsection", ""() #16, !srcloc !234
  unreachable

do.end50:                                         ; preds = %do.body30
  %pdev = getelementptr i8, ptr %dev, i32 2308
  %59 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %pdev, align 4
  %dev51 = getelementptr inbounds %struct.pci_dev, ptr %60, i32 0, i32 44
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %61 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %data, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %63 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %len, align 4
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %62) #16
  br i1 %call.i, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %do.end50
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit_crit_edge, label %if.then.i, !prof !209

land.rhs.i.dma_map_single_attrs.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %dma_map_single_attrs.exit

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %dev51) #16
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %60, i32 0, i32 44, i32 3
  %65 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i153 = icmp eq ptr %66, null
  br i1 %tobool.not.i.i153, label %if.end.i.i154, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %dev_name.exit.i

if.end.i.i154:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  %67 = ptrtoint ptr %dev51 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %dev51, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i154, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %68, %if.end.i.i154 ], [ %66, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.49, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.50, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #16
  br label %dma_map_single_attrs.exit

if.end39.i:                                       ; preds = %do.end50
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @debug_dma_map_single(ptr noundef %dev51, ptr noundef %62, i32 noundef %64) #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %69 = load ptr, ptr @mem_map, align 4
  %70 = ptrtoint ptr %62 to i32
  %sub.i = add i32 %70, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i155 = getelementptr %struct.page, ptr %69, i32 %shr.i
  %and.i = and i32 %70, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev51, ptr noundef %add.ptr.i155, i32 noundef %and.i, i32 noundef %64, i32 noundef 1, i32 noundef 0) #16
  br label %dma_map_single_attrs.exit

dma_map_single_attrs.exit:                        ; preds = %if.end39.i, %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit_crit_edge
  %retval.0.i = phi i32 [ %call41.i, %if.end39.i ], [ -1, %dev_name.exit.i ], [ -1, %land.rhs.i.dma_map_single_attrs.exit_crit_edge ]
  %71 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %pdev, align 4
  %dev54 = getelementptr inbounds %struct.pci_dev, ptr %72, i32 0, i32 44
  tail call void @debug_dma_mapping_error(ptr noundef %dev54, i32 noundef %retval.0.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i)
  %cmp.i = icmp eq i32 %retval.0.i, -1
  br i1 %cmp.i, label %do.body58, label %if.end66

do.body58:                                        ; preds = %dma_map_single_attrs.exit
  %msg_enable = getelementptr i8, ptr %dev, i32 2676
  %73 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %msg_enable, align 4
  %and59 = and i32 %74, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and59)
  %tobool60.not = icmp eq i32 %and59, 0
  br i1 %tobool60.not, label %do.body58.cleanup_crit_edge, label %if.then61

do.body58.cleanup_crit_edge:                      ; preds = %do.body58
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then61:                                        ; preds = %do.body58
  call void @__sanitizer_cov_trace_pc() #18
  %dev62 = getelementptr i8, ptr %dev, i32 2312
  %75 = ptrtoint ptr %dev62 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %dev62, align 8
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %76, ptr noundef nonnull @.str.70) #19
  br label %cleanup

if.end66:                                         ; preds = %dma_map_single_attrs.exit
  %77 = ptrtoint ptr %tx_buffers to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %tx_buffers, align 4
  %arrayidx68 = getelementptr %struct.smsc9420_ring_info, ptr %78, i32 %1
  %79 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %skb, ptr %arrayidx68, align 4
  %80 = load ptr, ptr %tx_buffers, align 4
  %mapping72 = getelementptr %struct.smsc9420_ring_info, ptr %80, i32 %1, i32 1
  %81 = ptrtoint ptr %mapping72 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %retval.0.i, ptr %mapping72, align 4
  %82 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %len, align 4
  %and74 = and i32 %83, 2047
  %or = or i32 %and74, 1073741824
  br i1 %cmp, label %if.then82, label %if.end66.if.end85_crit_edge, !prof !217

if.end66.if.end85_crit_edge:                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end85

if.then82:                                        ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #18
  %or83 = or i32 %and74, -1073741824
  %dev84 = getelementptr i8, ptr %dev, i32 2312
  %84 = ptrtoint ptr %dev84 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %dev84, align 8
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %85, i32 0, i32 103
  %86 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %87, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #16
  br label %if.end85

if.end85:                                         ; preds = %if.then82, %if.end66.if.end85_crit_edge
  %tmp_desc1.0 = phi i32 [ %or83, %if.then82 ], [ %or, %if.end66.if.end85_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %1)
  %cmp86 = icmp eq i32 %1, 31
  br i1 %cmp86, label %if.then93, label %if.end85.if.end95_crit_edge, !prof !217

if.end85.if.end95_crit_edge:                      ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end95

if.then93:                                        ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #18
  %or94 = or i32 %tmp_desc1.0, 33554432
  br label %if.end95

if.end95:                                         ; preds = %if.then93, %if.end85.if.end95_crit_edge
  %tmp_desc1.1 = phi i32 [ %or94, %if.then93 ], [ %tmp_desc1.0, %if.end85.if.end95_crit_edge ]
  %88 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %tx_ring, align 8
  %buffer1 = getelementptr %struct.smsc9420_dma_desc, ptr %89, i32 %1, i32 2
  %90 = ptrtoint ptr %buffer1 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %retval.0.i, ptr %buffer1, align 4
  %91 = load ptr, ptr %tx_ring, align 8
  %length = getelementptr %struct.smsc9420_dma_desc, ptr %91, i32 %1, i32 1
  %92 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %tmp_desc1.1, ptr %length, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !235
  tail call void @arm_heavy_mb() #16
  %93 = ptrtoint ptr %tx_ring_head to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %tx_ring_head, align 4
  %add104 = add i32 %94, 1
  %rem105 = srem i32 %add104, 32
  store i32 %rem105, ptr %tx_ring_head, align 4
  %95 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %tx_ring, align 8
  %arrayidx108 = getelementptr %struct.smsc9420_dma_desc, ptr %96, i32 %1
  %97 = ptrtoint ptr %arrayidx108 to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 -2147483648, ptr %arrayidx108, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !236
  tail call void @arm_heavy_mb() #16
  tail call void @skb_clone_tx_timestamp(ptr noundef %skb) #16
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %98 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %end.i.i, align 4
  %tx_flags.i = getelementptr inbounds %struct.skb_shared_info, ptr %99, i32 0, i32 3
  %100 = ptrtoint ptr %tx_flags.i to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %tx_flags.i, align 1
  %102 = and i8 %101, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %102)
  %tobool.not.i156 = icmp eq i8 %102, 0
  br i1 %tobool.not.i156, label %if.end95.skb_tx_timestamp.exit_crit_edge, label %if.then.i157

if.end95.skb_tx_timestamp.exit_crit_edge:         ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #18
  br label %skb_tx_timestamp.exit

if.then.i157:                                     ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @skb_tstamp_tx(ptr noundef %skb, ptr noundef null) #16
  br label %skb_tx_timestamp.exit

skb_tx_timestamp.exit:                            ; preds = %if.then.i157, %if.end95.skb_tx_timestamp.exit_crit_edge
  %103 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i159 = getelementptr i8, ptr %104, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !213
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i159, i32 16777216) #16, !srcloc !214
  %105 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %106, i32 192
  %107 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #16, !srcloc !211
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !212
  br label %cleanup

cleanup:                                          ; preds = %skb_tx_timestamp.exit, %if.then61, %do.body58.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %skb_tx_timestamp.exit ], [ 16, %if.then61 ], [ 16, %do.body58.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @smsc9420_set_multicast_list(ptr noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i179 = getelementptr i8, ptr %1, i32 128
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i179) #16, !srcloc !211
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !212
  %flags = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 14
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 8
  %and = and i32 %5, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %do.body

do.body:                                          ; preds = %entry
  %msg_enable = getelementptr i8, ptr %dev, i32 2676
  %6 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %msg_enable, align 4
  %and2 = and i32 %7, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %do.body.do.end14_crit_edge, label %do.body5

do.body.do.end14_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end14

do.body5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smsc9420_set_multicast_list.__UNIQUE_ID_ddebug367, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smsc9420_set_multicast_list, %if.then10)) #16
          to label %do.end14 [label %if.then10], !srcloc !210

if.then10:                                        ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #18
  %dev11 = getelementptr i8, ptr %dev, i32 2312
  %8 = ptrtoint ptr %dev11 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev11, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @smsc9420_set_multicast_list.__UNIQUE_ID_ddebug367, ptr noundef %9, ptr noundef nonnull @.str.72) #16
  br label %do.end14

do.end14:                                         ; preds = %if.then10, %do.body5, %do.body.do.end14_crit_edge
  %or = and i32 %3, -794625
  %and15 = or i32 %or, 262144
  br label %if.end132

if.else:                                          ; preds = %entry
  %and18 = and i32 %5, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %if.else49, label %do.body21

do.body21:                                        ; preds = %if.else
  %msg_enable22 = getelementptr i8, ptr %dev, i32 2676
  %10 = ptrtoint ptr %msg_enable22 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %msg_enable22, align 4
  %and23 = and i32 %11, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %do.body21.do.end45_crit_edge, label %do.body26

do.body21.do.end45_crit_edge:                     ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end45

do.body26:                                        ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smsc9420_set_multicast_list.__UNIQUE_ID_ddebug368, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smsc9420_set_multicast_list, %if.then38)) #16
          to label %do.end45 [label %if.then38], !srcloc !210

if.then38:                                        ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #18
  %dev39 = getelementptr i8, ptr %dev, i32 2312
  %12 = ptrtoint ptr %dev39 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev39, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @smsc9420_set_multicast_list.__UNIQUE_ID_ddebug368, ptr noundef %13, ptr noundef nonnull @.str.73) #16
  br label %do.end45

do.end45:                                         ; preds = %if.then38, %do.body26, %do.body21.do.end45_crit_edge
  %and46 = and i32 %3, -794625
  %or47 = or i32 %and46, 524288
  br label %if.end132

if.else49:                                        ; preds = %if.else
  %mc = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 66
  %count = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 66, i32 1
  %14 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp = icmp eq i32 %15, 0
  %msg_enable103 = getelementptr i8, ptr %dev, i32 2676
  %16 = ptrtoint ptr %msg_enable103 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %msg_enable103, align 4
  %and104 = and i32 %17, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and104)
  %tobool105.not = icmp eq i32 %and104, 0
  br i1 %cmp, label %do.body102, label %if.then50

if.then50:                                        ; preds = %if.else49
  br i1 %tobool105.not, label %if.then50.do.end75_crit_edge, label %do.body56

if.then50.do.end75_crit_edge:                     ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end75

do.body56:                                        ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smsc9420_set_multicast_list.__UNIQUE_ID_ddebug369, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smsc9420_set_multicast_list, %if.then68)) #16
          to label %do.end75 [label %if.then68], !srcloc !210

if.then68:                                        ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #18
  %dev69 = getelementptr i8, ptr %dev, i32 2312
  %18 = ptrtoint ptr %dev69 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev69, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @smsc9420_set_multicast_list.__UNIQUE_ID_ddebug369, ptr noundef %19, ptr noundef nonnull @.str.74) #16
  br label %do.end75

do.end75:                                         ; preds = %if.then68, %do.body56, %if.then50.do.end75_crit_edge
  %20 = ptrtoint ptr %mc to i32
  call void @__asan_load4_noabort(i32 %20)
  %ha.0189 = load ptr, ptr %mc, align 4
  %cmp81.not190 = icmp eq ptr %ha.0189, %mc
  br i1 %cmp81.not190, label %do.end75.for.end_crit_edge, label %do.end75.smsc9420_hash.exit_crit_edge

do.end75.smsc9420_hash.exit_crit_edge:            ; preds = %do.end75
  br label %smsc9420_hash.exit

do.end75.for.end_crit_edge:                       ; preds = %do.end75
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

smsc9420_hash.exit:                               ; preds = %smsc9420_hash.exit.smsc9420_hash.exit_crit_edge, %do.end75.smsc9420_hash.exit_crit_edge
  %ha.0193 = phi ptr [ %ha.0, %smsc9420_hash.exit.smsc9420_hash.exit_crit_edge ], [ %ha.0189, %do.end75.smsc9420_hash.exit_crit_edge ]
  %hash_lo.0192 = phi i32 [ %hash_lo.1, %smsc9420_hash.exit.smsc9420_hash.exit_crit_edge ], [ 0, %do.end75.smsc9420_hash.exit_crit_edge ]
  %hash_hi.0191 = phi i32 [ %hash_hi.1, %smsc9420_hash.exit.smsc9420_hash.exit_crit_edge ], [ 0, %do.end75.smsc9420_hash.exit_crit_edge ]
  %addr = getelementptr inbounds %struct.netdev_hw_addr, ptr %ha.0193, i32 0, i32 2
  %call.i = tail call i32 @crc32_le(i32 noundef -1, ptr noundef %addr, i32 noundef 6) #21
  %21 = and i32 %call.i, 255
  %arrayidx.i.i.i.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %21
  %22 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx.i.i.i.i, align 1
  %conv2.i.i.i = zext i8 %23 to i32
  %shr22.i = lshr i32 %conv2.i.i.i, 2
  %and85 = and i32 %shr22.i, 31
  %shl = shl nuw i32 1, %and85
  %.mask = and i32 %conv2.i.i.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask)
  %tobool87.not = icmp eq i32 %.mask, 0
  %or89 = select i1 %tobool87.not, i32 0, i32 %shl
  %hash_hi.1 = or i32 %or89, %hash_hi.0191
  %or91 = select i1 %tobool87.not, i32 %shl, i32 0
  %hash_lo.1 = or i32 %or91, %hash_lo.0192
  %24 = ptrtoint ptr %ha.0193 to i32
  call void @__asan_load4_noabort(i32 %24)
  %ha.0 = load ptr, ptr %ha.0193, align 4
  %cmp81.not = icmp eq ptr %ha.0, %mc
  br i1 %cmp81.not, label %smsc9420_hash.exit.for.end_crit_edge, label %smsc9420_hash.exit.smsc9420_hash.exit_crit_edge

smsc9420_hash.exit.smsc9420_hash.exit_crit_edge:  ; preds = %smsc9420_hash.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %smsc9420_hash.exit

smsc9420_hash.exit.for.end_crit_edge:             ; preds = %smsc9420_hash.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.end:                                          ; preds = %smsc9420_hash.exit.for.end_crit_edge, %do.end75.for.end_crit_edge
  %hash_hi.0.lcssa = phi i32 [ 0, %do.end75.for.end_crit_edge ], [ %hash_hi.1, %smsc9420_hash.exit.for.end_crit_edge ]
  %hash_lo.0.lcssa = phi i32 [ 0, %do.end75.for.end_crit_edge ], [ %hash_lo.1, %smsc9420_hash.exit.for.end_crit_edge ]
  %25 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i180 = getelementptr i8, ptr %26, i32 140
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !213
  tail call void @arm_heavy_mb() #16
  %27 = tail call i32 @llvm.bswap.i32(i32 %hash_hi.0.lcssa) #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i180, i32 %27) #16, !srcloc !214
  %28 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i181 = getelementptr i8, ptr %29, i32 144
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !213
  tail call void @arm_heavy_mb() #16
  %30 = tail call i32 @llvm.bswap.i32(i32 %hash_lo.0.lcssa) #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i181, i32 %30) #16, !srcloc !214
  %and99 = and i32 %3, -794625
  %or100 = or i32 %and99, 8192
  br label %if.end132

do.body102:                                       ; preds = %if.else49
  br i1 %tobool105.not, label %do.body102.do.end126_crit_edge, label %do.body107

do.body102.do.end126_crit_edge:                   ; preds = %do.body102
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end126

do.body107:                                       ; preds = %do.body102
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smsc9420_set_multicast_list.__UNIQUE_ID_ddebug370, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smsc9420_set_multicast_list, %if.then119)) #16
          to label %do.end126 [label %if.then119], !srcloc !210

if.then119:                                       ; preds = %do.body107
  call void @__sanitizer_cov_trace_pc() #18
  %dev120 = getelementptr i8, ptr %dev, i32 2312
  %31 = ptrtoint ptr %dev120 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev120, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @smsc9420_set_multicast_list.__UNIQUE_ID_ddebug370, ptr noundef %32, ptr noundef nonnull @.str.75) #16
  br label %do.end126

do.end126:                                        ; preds = %if.then119, %do.body107, %do.body102.do.end126_crit_edge
  %33 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i182 = getelementptr i8, ptr %34, i32 140
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !213
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i182, i32 0) #16, !srcloc !214
  %35 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i183 = getelementptr i8, ptr %36, i32 144
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !213
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i183, i32 0) #16, !srcloc !214
  %and129 = and i32 %3, -794625
  br label %if.end132

if.end132:                                        ; preds = %do.end126, %for.end, %do.end45, %do.end14
  %mac_cr.0 = phi i32 [ %and15, %do.end14 ], [ %or47, %do.end45 ], [ %and129, %do.end126 ], [ %or100, %for.end ]
  %37 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i184 = getelementptr i8, ptr %38, i32 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !213
  tail call void @arm_heavy_mb() #16
  %39 = tail call i32 @llvm.bswap.i32(i32 %mac_cr.0) #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i184, i32 %39) #16, !srcloc !214
  %40 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %41, i32 192
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #16, !srcloc !211
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !212
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_mac_addr(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_validate_addr(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_do_ioctl_running(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @smsc9420_get_stats(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i8 = getelementptr i8, ptr %1, i32 32
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i8) #16, !srcloc !211
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !212
  %and = and i32 %3, 65535
  %shr = lshr i32 %3, 17
  %and2 = and i32 %shr, 1023
  %stats = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36
  %rx_dropped = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 6
  %4 = ptrtoint ptr %rx_dropped to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rx_dropped, align 8
  %add = add i32 %5, %and
  %add3 = add i32 %add, %and2
  store i32 %add3, ptr %rx_dropped, align 8
  ret ptr %stats
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @smsc9420_poll_controller(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev = getelementptr i8, ptr %dev, i32 2308
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 4
  %irq1 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 46
  %2 = ptrtoint ptr %irq1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq1, align 4
  tail call void @disable_irq(i32 noundef %3) #16
  %call2 = tail call i32 @smsc9420_isr(i32 noundef 0, ptr noundef %dev)
  tail call void @enable_irq(i32 noundef %3) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_off(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smsc9420_isr(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %dev_id, null
  br i1 %tobool.not, label %do.body4, label %do.body10, !prof !217

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smsc9420.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 598, 0\0A.popsection", ""() #16, !srcloc !237
  unreachable

do.body10:                                        ; preds = %entry
  %0 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_id, align 8
  %tobool11.not = icmp eq ptr %1, null
  br i1 %tobool11.not, label %do.body21, label %do.end29, !prof !217

do.body21:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smsc9420.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 599, 0\0A.popsection", ""() #16, !srcloc !238
  unreachable

do.end29:                                         ; preds = %do.body10
  %add.ptr.i = getelementptr i8, ptr %1, i32 204
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #16, !srcloc !211
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !212
  %3 = and i32 %2, 3072
  call void @__sanitizer_cov_trace_const_cmp4(i32 3072, i32 %3)
  %cmp.not = icmp eq i32 %3, 3072
  br i1 %cmp.not, label %if.end31, label %do.end29.cleanup_crit_edge

do.end29.cleanup_crit_edge:                       ; preds = %do.end29
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end31:                                         ; preds = %do.end29
  %4 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_id, align 8
  %add.ptr.i115 = getelementptr i8, ptr %5, i32 200
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i115) #16, !srcloc !211
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !212
  %and33 = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  br i1 %tobool34.not, label %if.end31.if.end57_crit_edge, label %if.then41, !prof !217

if.end31.if.end57_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end57

if.then41:                                        ; preds = %if.end31
  %8 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev_id, align 8
  %add.ptr.i116 = getelementptr i8, ptr %9, i32 20
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i116) #16, !srcloc !211
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !212
  %and43 = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43)
  %tobool44.not = icmp eq i32 %and43, 0
  br i1 %tobool44.not, label %if.end46, label %if.end46.thread

if.end46:                                         ; preds = %if.then41
  %and47 = and i32 %11, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47)
  %tobool48.not = icmp eq i32 %and47, 0
  br i1 %tobool48.not, label %if.end46.if.end57_crit_edge, label %if.end46.if.then49_crit_edge

if.end46.if.then49_crit_edge:                     ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then49

if.end46.if.end57_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end57

if.end46.thread:                                  ; preds = %if.then41
  %dev = getelementptr inbounds %struct.smsc9420_pdata, ptr %dev_id, i32 0, i32 2
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 8
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %13, i32 0, i32 103
  %14 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %_tx.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %15) #16
  %and47128 = and i32 %11, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47128)
  %tobool48.not129 = icmp eq i32 %and47128, 0
  br i1 %tobool48.not129, label %if.end46.thread.if.then55_crit_edge, label %if.end46.thread.if.then49_crit_edge

if.end46.thread.if.then49_crit_edge:              ; preds = %if.end46.thread
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then49

if.end46.thread.if.then55_crit_edge:              ; preds = %if.end46.thread
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then55

if.then49:                                        ; preds = %if.end46.thread.if.then49_crit_edge, %if.end46.if.then49_crit_edge
  %ints_to_clear.0130 = phi i32 [ 65601, %if.end46.thread.if.then49_crit_edge ], [ 65600, %if.end46.if.then49_crit_edge ]
  %16 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev_id, align 8
  %add.ptr.i117 = getelementptr i8, ptr %17, i32 28
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i117) #16, !srcloc !211
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !212
  %19 = and i32 %18, -1073741825
  %20 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev_id, align 8
  %add.ptr.i118 = getelementptr i8, ptr %21, i32 28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !213
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i118, i32 %19) #16, !srcloc !214
  %22 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev_id, align 8
  %add.ptr.i.i = getelementptr i8, ptr %23, i32 192
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #16, !srcloc !211
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !212
  %napi = getelementptr inbounds %struct.smsc9420_pdata, ptr %dev_id, i32 0, i32 15
  %call.i = tail call zeroext i1 @napi_schedule_prep(ptr noundef %napi) #16
  br i1 %call.i, label %if.then.i, label %if.then49.if.then55_crit_edge

if.then49.if.then55_crit_edge:                    ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then55

if.then.i:                                        ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @__napi_schedule(ptr noundef %napi) #16
  br label %if.then55

if.then55:                                        ; preds = %if.then.i, %if.then49.if.then55_crit_edge, %if.end46.thread.if.then55_crit_edge
  %ints_to_clear.1126 = phi i32 [ %ints_to_clear.0130, %if.then49.if.then55_crit_edge ], [ %ints_to_clear.0130, %if.then.i ], [ 65537, %if.end46.thread.if.then55_crit_edge ]
  %25 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev_id, align 8
  %add.ptr.i119 = getelementptr i8, ptr %26, i32 20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !213
  tail call void @arm_heavy_mb() #16
  %27 = tail call i32 @llvm.bswap.i32(i32 %ints_to_clear.1126) #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i119, i32 %27) #16, !srcloc !214
  br label %if.end57

if.end57:                                         ; preds = %if.then55, %if.end46.if.end57_crit_edge, %if.end31.if.end57_crit_edge
  %ret.0 = phi i32 [ 0, %if.end31.if.end57_crit_edge ], [ 1, %if.then55 ], [ 1, %if.end46.if.end57_crit_edge ]
  %and58 = and i32 %7, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and58)
  %tobool59.not = icmp eq i32 %and58, 0
  br i1 %tobool59.not, label %if.end57.if.end85_crit_edge, label %do.body68, !prof !209

if.end57.if.end85_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end85

do.body68:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #18
  %int_lock = getelementptr inbounds %struct.smsc9420_pdata, ptr %dev_id, i32 0, i32 13
  %call71 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %int_lock) #16
  %28 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev_id, align 8
  %add.ptr.i120 = getelementptr i8, ptr %29, i32 196
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i120) #16, !srcloc !211
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !212
  %31 = and i32 %30, -8388609
  %32 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev_id, align 8
  %add.ptr.i121 = getelementptr i8, ptr %33, i32 196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !213
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i121, i32 %31) #16, !srcloc !214
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %int_lock, i32 noundef %call71) #16
  %34 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev_id, align 8
  %add.ptr.i122 = getelementptr i8, ptr %35, i32 200
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !213
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i122, i32 8388608) #16, !srcloc !214
  %software_irq_signal = getelementptr inbounds %struct.smsc9420_pdata, ptr %dev_id, i32 0, i32 16
  %36 = ptrtoint ptr %software_irq_signal to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 1, ptr %software_irq_signal, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !239
  br label %if.end85

if.end85:                                         ; preds = %do.body68, %if.end57.if.end85_crit_edge
  %ret.1 = phi i32 [ 1, %do.body68 ], [ %ret.0, %if.end57.if.end85_crit_edge ]
  %37 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev_id, align 8
  %add.ptr.i.i123 = getelementptr i8, ptr %38, i32 192
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i123) #16, !srcloc !211
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !212
  br label %cleanup

cleanup:                                          ; preds = %if.end85, %do.end29.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %if.end85 ], [ 0, %do.end29.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @smsc9420_alloc_rx_ring(ptr nocapture noundef %pd) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_ring = getelementptr inbounds %struct.smsc9420_pdata, ptr %pd, i32 0, i32 3
  %0 = ptrtoint ptr %rx_ring to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rx_ring, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.body4, label %do.end9, !prof !217

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smsc9420.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1213, 0\0A.popsection", ""() #16, !srcloc !240
  unreachable

do.end9:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3264, i32 noundef 1024) #20
  %rx_buffers = getelementptr inbounds %struct.smsc9420_pdata, ptr %pd, i32 0, i32 6
  %3 = ptrtoint ptr %rx_buffers to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call7.i.i, ptr %rx_buffers, align 8
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %do.end9.cleanup_crit_edge, label %do.end9.for.body_crit_edge

do.end9.for.body_crit_edge:                       ; preds = %do.end9
  br label %for.body

do.end9.cleanup_crit_edge:                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %do.end9.for.body_crit_edge
  %i.0142 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %do.end9.for.body_crit_edge ]
  %4 = ptrtoint ptr %rx_ring to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rx_ring, align 4
  %arrayidx = getelementptr %struct.smsc9420_dma_desc, ptr %5, i32 %i.0142
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %arrayidx, align 4
  %7 = load ptr, ptr %rx_ring, align 4
  %length = getelementptr %struct.smsc9420_dma_desc, ptr %7, i32 %i.0142, i32 1
  %8 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1524, ptr %length, align 4
  %9 = load ptr, ptr %rx_ring, align 4
  %buffer2 = getelementptr %struct.smsc9420_dma_desc, ptr %9, i32 %i.0142, i32 3
  %10 = ptrtoint ptr %buffer2 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %buffer2, align 4
  %11 = ptrtoint ptr %rx_buffers to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rx_buffers, align 8
  %arrayidx20 = getelementptr %struct.smsc9420_ring_info, ptr %12, i32 %i.0142
  %13 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %arrayidx20, align 4
  %14 = load ptr, ptr %rx_buffers, align 8
  %mapping = getelementptr %struct.smsc9420_ring_info, ptr %14, i32 %i.0142, i32 1
  %15 = ptrtoint ptr %mapping to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %mapping, align 4
  %inc = add nuw nsw i32 %i.0142, 1
  %exitcond.not = icmp eq i32 %inc, 128
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.end:                                          ; preds = %for.body
  %16 = ptrtoint ptr %rx_ring to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rx_ring, align 4
  %length25 = getelementptr %struct.smsc9420_dma_desc, ptr %17, i32 127, i32 1
  %18 = ptrtoint ptr %length25 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 33555956, ptr %length25, align 4
  br label %for.body28

for.body28:                                       ; preds = %for.inc39.for.body28_crit_edge, %for.end
  %i.1143 = phi i32 [ 0, %for.end ], [ %inc40, %for.inc39.for.body28_crit_edge ]
  %call29 = tail call fastcc i32 @smsc9420_alloc_rx_buffer(ptr noundef %pd, i32 noundef %i.1143)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %for.inc39, label %do.body32

do.body32:                                        ; preds = %for.body28
  %msg_enable = getelementptr inbounds %struct.smsc9420_pdata, ptr %pd, i32 0, i32 18
  %19 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %msg_enable, align 4
  %and = and i32 %20, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool33.not = icmp eq i32 %and, 0
  br i1 %tobool33.not, label %do.body32.out_free_rx_skbs_crit_edge, label %if.then34

do.body32.out_free_rx_skbs_crit_edge:             ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_free_rx_skbs

if.then34:                                        ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #18
  %dev = getelementptr inbounds %struct.smsc9420_pdata, ptr %pd, i32 0, i32 2
  %21 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %22, ptr noundef nonnull @.str.44, i32 noundef %i.1143) #19
  br label %out_free_rx_skbs

for.inc39:                                        ; preds = %for.body28
  %inc40 = add nuw nsw i32 %i.1143, 1
  %exitcond145.not = icmp eq i32 %inc40, 128
  br i1 %exitcond145.not, label %for.end41, label %for.inc39.for.body28_crit_edge

for.inc39.for.body28_crit_edge:                   ; preds = %for.inc39
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body28

for.end41:                                        ; preds = %for.inc39
  %rx_ring_head = getelementptr inbounds %struct.smsc9420_pdata, ptr %pd, i32 0, i32 11
  %23 = ptrtoint ptr %rx_ring_head to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %rx_ring_head, align 4
  %rx_ring_tail = getelementptr inbounds %struct.smsc9420_pdata, ptr %pd, i32 0, i32 12
  %24 = ptrtoint ptr %rx_ring_tail to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %rx_ring_tail, align 8
  %25 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pd, align 8
  %add.ptr.i = getelementptr i8, ptr %26, i32 160
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !213
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 8454144) #16, !srcloc !214
  %msg_enable43 = getelementptr inbounds %struct.smsc9420_pdata, ptr %pd, i32 0, i32 18
  %27 = ptrtoint ptr %msg_enable43 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %msg_enable43, align 4
  %and44 = and i32 %28, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44)
  %tobool45.not = icmp eq i32 %and44, 0
  br i1 %tobool45.not, label %for.end41.do.end64_crit_edge, label %do.body47

for.end41.do.end64_crit_edge:                     ; preds = %for.end41
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end64

do.body47:                                        ; preds = %for.end41
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smsc9420_alloc_rx_ring.__UNIQUE_ID_ddebug375, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smsc9420_alloc_rx_ring, %if.then56)) #16
          to label %do.end64 [label %if.then56], !srcloc !210

if.then56:                                        ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #18
  %dev57 = getelementptr inbounds %struct.smsc9420_pdata, ptr %pd, i32 0, i32 2
  %29 = ptrtoint ptr %dev57 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev57, align 8
  %31 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pd, align 8
  %add.ptr.i135 = getelementptr i8, ptr %32, i32 160
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i135) #16, !srcloc !211
  %34 = tail call i32 @llvm.bswap.i32(i32 %33) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !212
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @smsc9420_alloc_rx_ring.__UNIQUE_ID_ddebug375, ptr noundef %30, ptr noundef nonnull @.str.46, i32 noundef %34) #16
  br label %do.end64

do.end64:                                         ; preds = %if.then56, %do.body47, %for.end41.do.end64_crit_edge
  %rx_csum = getelementptr inbounds %struct.smsc9420_pdata, ptr %pd, i32 0, i32 17
  %35 = ptrtoint ptr %rx_csum to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %rx_csum, align 1, !range !222
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool65.not = icmp eq i8 %36, 0
  br i1 %tobool65.not, label %do.end64.if.end93_crit_edge, label %if.then66

do.end64.if.end93_crit_edge:                      ; preds = %do.end64
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end93

if.then66:                                        ; preds = %do.end64
  %37 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %pd, align 8
  %add.ptr.i136 = getelementptr i8, ptr %38, i32 176
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i136) #16, !srcloc !211
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !212
  %40 = or i32 %39, 16777216
  %41 = tail call i32 @llvm.bswap.i32(i32 %40)
  %42 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %pd, align 8
  %add.ptr.i137 = getelementptr i8, ptr %43, i32 176
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !213
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i137, i32 %40) #16, !srcloc !214
  %44 = ptrtoint ptr %msg_enable43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %msg_enable43, align 4
  %and70 = and i32 %45, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and70)
  %tobool71.not = icmp eq i32 %and70, 0
  br i1 %tobool71.not, label %if.then66.if.end93_crit_edge, label %do.body73

if.then66.if.end93_crit_edge:                     ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end93

do.body73:                                        ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smsc9420_alloc_rx_ring.__UNIQUE_ID_ddebug376, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smsc9420_alloc_rx_ring, %if.then85)) #16
          to label %if.end93 [label %if.then85], !srcloc !210

if.then85:                                        ; preds = %do.body73
  call void @__sanitizer_cov_trace_pc() #18
  %dev86 = getelementptr inbounds %struct.smsc9420_pdata, ptr %pd, i32 0, i32 2
  %46 = ptrtoint ptr %dev86 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev86, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @smsc9420_alloc_rx_ring.__UNIQUE_ID_ddebug376, ptr noundef %47, ptr noundef nonnull @.str.47, i32 noundef %41) #16
  br label %if.end93

if.end93:                                         ; preds = %if.then85, %do.body73, %if.then66.if.end93_crit_edge, %do.end64.if.end93_crit_edge
  %rx_dma_addr = getelementptr inbounds %struct.smsc9420_pdata, ptr %pd, i32 0, i32 7
  %48 = ptrtoint ptr %rx_dma_addr to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %rx_dma_addr, align 4
  %50 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %pd, align 8
  %add.ptr.i138 = getelementptr i8, ptr %51, i32 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !213
  tail call void @arm_heavy_mb() #16
  %52 = tail call i32 @llvm.bswap.i32(i32 %49) #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i138, i32 %52) #16, !srcloc !214
  %53 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %pd, align 8
  %add.ptr.i.i = getelementptr i8, ptr %54, i32 192
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #16, !srcloc !211
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !212
  br label %cleanup

out_free_rx_skbs:                                 ; preds = %if.then34, %do.body32.out_free_rx_skbs_crit_edge
  tail call fastcc void @smsc9420_free_rx_ring(ptr noundef %pd)
  br label %cleanup

cleanup:                                          ; preds = %out_free_rx_skbs, %if.end93, %do.end9.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end93 ], [ -12, %do.end9.cleanup_crit_edge ], [ -12, %out_free_rx_skbs ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @smsc9420_mii_init(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @mdiobus_alloc_size(i32 noundef 0) #16
  %mii_bus = getelementptr i8, ptr %dev, i32 2680
  %0 = ptrtoint ptr %mii_bus to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call.i, ptr %mii_bus, align 8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %name = getelementptr inbounds %struct.mii_bus, ptr %call.i, i32 0, i32 1
  %1 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @.str.51, ptr %name, align 4
  %2 = ptrtoint ptr %mii_bus to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mii_bus, align 8
  %id = getelementptr inbounds %struct.mii_bus, ptr %3, i32 0, i32 2
  %pdev = getelementptr i8, ptr %dev, i32 2308
  %4 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdev, align 4
  %bus = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bus, align 8
  %number = getelementptr inbounds %struct.pci_bus, ptr %7, i32 0, i32 12
  %8 = ptrtoint ptr %number to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %number, align 4
  %conv = zext i8 %9 to i32
  %shl = shl nuw nsw i32 %conv, 8
  %devfn = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 6
  %10 = ptrtoint ptr %devfn to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %devfn, align 4
  %or = or i32 %shl, %11
  %call6 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %id, i32 noundef 61, ptr noundef nonnull @.str.52, i32 noundef %or)
  %12 = ptrtoint ptr %mii_bus to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mii_bus, align 8
  %priv = getelementptr inbounds %struct.mii_bus, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %add.ptr.i, ptr %priv, align 8
  %15 = load ptr, ptr %mii_bus, align 8
  %read = getelementptr inbounds %struct.mii_bus, ptr %15, i32 0, i32 4
  %16 = ptrtoint ptr %read to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @smsc9420_mii_read, ptr %read, align 4
  %17 = load ptr, ptr %mii_bus, align 8
  %write = getelementptr inbounds %struct.mii_bus, ptr %17, i32 0, i32 5
  %18 = ptrtoint ptr %write to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @smsc9420_mii_write, ptr %write, align 8
  %19 = load ptr, ptr %mii_bus, align 8
  %phy_mask = getelementptr inbounds %struct.mii_bus, ptr %19, i32 0, i32 13
  %20 = ptrtoint ptr %phy_mask to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -3, ptr %phy_mask, align 8
  %21 = load ptr, ptr %mii_bus, align 8
  %call12 = tail call i32 @__mdiobus_register(ptr noundef %21, ptr noundef null) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end19, label %do.body

do.body:                                          ; preds = %if.end
  %msg_enable = getelementptr i8, ptr %dev, i32 2676
  %22 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %msg_enable, align 4
  %and = and i32 %23, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool15.not = icmp eq i32 %and, 0
  br i1 %tobool15.not, label %do.body.err_out_free_bus_2_crit_edge, label %if.then16

do.body.err_out_free_bus_2_crit_edge:             ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %err_out_free_bus_2

if.then16:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  %dev17 = getelementptr i8, ptr %dev, i32 2312
  %24 = ptrtoint ptr %dev17 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev17, align 8
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %25, ptr noundef nonnull @.str.53) #19
  br label %err_out_free_bus_2

if.end19:                                         ; preds = %if.end
  %phydev1.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 145
  %26 = ptrtoint ptr %phydev1.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %phydev1.i, align 16
  %tobool.not.i = icmp eq ptr %27, null
  br i1 %tobool.not.i, label %do.end9.i, label %do.body4.i, !prof !209

do.body4.i:                                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smsc9420.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1106, 0\0A.popsection", ""() #16, !srcloc !241
  unreachable

do.end9.i:                                        ; preds = %if.end19
  %28 = ptrtoint ptr %mii_bus to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %mii_bus, align 8
  %call10.i = tail call ptr @mdiobus_get_phy(ptr noundef %29, i32 noundef 1) #16
  %tobool11.not.i = icmp eq ptr %call10.i, null
  br i1 %tobool11.not.i, label %smsc9420_mii_probe.exit.thread, label %if.end13.i

smsc9420_mii_probe.exit.thread:                   ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.57) #19
  br label %do.body23

if.end13.i:                                       ; preds = %do.end9.i
  %init_name.i.i.i = getelementptr inbounds %struct.device, ptr %call10.i, i32 0, i32 3
  %30 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %31, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.end13.i.phydev_name.exit.i_crit_edge

if.end13.i.phydev_name.exit.i_crit_edge:          ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %phydev_name.exit.i

if.end.i.i.i:                                     ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #18
  %32 = ptrtoint ptr %call10.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %call10.i, align 4
  br label %phydev_name.exit.i

phydev_name.exit.i:                               ; preds = %if.end.i.i.i, %if.end13.i.phydev_name.exit.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %33, %if.end.i.i.i ], [ %31, %if.end13.i.phydev_name.exit.i_crit_edge ]
  %call15.i = tail call ptr @phy_connect(ptr noundef %dev, ptr noundef %retval.0.i.i.i, ptr noundef nonnull @smsc9420_phy_adjust_link, i32 noundef 2) #16
  %cmp.i.i = icmp ugt ptr %call15.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %smsc9420_mii_probe.exit, label %smsc9420_mii_probe.exit.thread56

smsc9420_mii_probe.exit.thread56:                 ; preds = %phydev_name.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  %call20.i = tail call i32 @phy_set_max_speed(ptr noundef %call15.i, i32 noundef 100) #16
  tail call void @phy_support_asym_pause(ptr noundef %call15.i) #16
  tail call void @phy_attached_info(ptr noundef %call15.i) #16
  %last_duplex.i = getelementptr i8, ptr %dev, i32 2684
  %34 = ptrtoint ptr %last_duplex.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 -1, ptr %last_duplex.i, align 4
  %last_carrier.i = getelementptr i8, ptr %dev, i32 2688
  %35 = ptrtoint ptr %last_carrier.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 -1, ptr %last_carrier.i, align 8
  br label %cleanup

smsc9420_mii_probe.exit:                          ; preds = %phydev_name.exit.i
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.58) #19
  %cmp = icmp slt ptr %call15.i, null
  br i1 %cmp, label %smsc9420_mii_probe.exit.do.body23_crit_edge, label %smsc9420_mii_probe.exit.cleanup_crit_edge

smsc9420_mii_probe.exit.cleanup_crit_edge:        ; preds = %smsc9420_mii_probe.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

smsc9420_mii_probe.exit.do.body23_crit_edge:      ; preds = %smsc9420_mii_probe.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body23

do.body23:                                        ; preds = %smsc9420_mii_probe.exit.do.body23_crit_edge, %smsc9420_mii_probe.exit.thread
  %msg_enable24 = getelementptr i8, ptr %dev, i32 2676
  %36 = ptrtoint ptr %msg_enable24 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %msg_enable24, align 4
  %and25 = and i32 %37, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %do.body23.err_out_unregister_bus_3_crit_edge, label %if.then27

do.body23.err_out_unregister_bus_3_crit_edge:     ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #18
  br label %err_out_unregister_bus_3

if.then27:                                        ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #18
  %dev28 = getelementptr i8, ptr %dev, i32 2312
  %38 = ptrtoint ptr %dev28 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev28, align 8
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %39, ptr noundef nonnull @.str.54) #19
  br label %err_out_unregister_bus_3

err_out_unregister_bus_3:                         ; preds = %if.then27, %do.body23.err_out_unregister_bus_3_crit_edge
  %40 = ptrtoint ptr %mii_bus to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %mii_bus, align 8
  tail call void @mdiobus_unregister(ptr noundef %41) #16
  br label %err_out_free_bus_2

err_out_free_bus_2:                               ; preds = %err_out_unregister_bus_3, %if.then16, %do.body.err_out_free_bus_2_crit_edge
  %42 = ptrtoint ptr %mii_bus to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %mii_bus, align 8
  tail call void @mdiobus_free(ptr noundef %43) #16
  br label %cleanup

cleanup:                                          ; preds = %err_out_free_bus_2, %smsc9420_mii_probe.exit.cleanup_crit_edge, %smsc9420_mii_probe.exit.thread56, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %smsc9420_mii_probe.exit.cleanup_crit_edge ], [ -6, %err_out_free_bus_2 ], [ -12, %entry.cleanup_crit_edge ], [ 0, %smsc9420_mii_probe.exit.thread56 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_start(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_enable(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @smsc9420_free_rx_ring(ptr nocapture noundef %pd) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_ring = getelementptr inbounds %struct.smsc9420_pdata, ptr %pd, i32 0, i32 3
  %0 = ptrtoint ptr %rx_ring to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rx_ring, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.body4, label %do.end9, !prof !217

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smsc9420.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 526, 0\0A.popsection", ""() #16, !srcloc !242
  unreachable

do.end9:                                          ; preds = %entry
  %rx_buffers = getelementptr inbounds %struct.smsc9420_pdata, ptr %pd, i32 0, i32 6
  %2 = ptrtoint ptr %rx_buffers to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rx_buffers, align 8
  %tobool10.not = icmp eq ptr %3, null
  br i1 %tobool10.not, label %do.end9.cleanup_crit_edge, label %for.cond.preheader

do.end9.cleanup_crit_edge:                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.cond.preheader:                               ; preds = %do.end9
  %pdev = getelementptr inbounds %struct.smsc9420_pdata, ptr %pd, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %if.end27.for.body_crit_edge, %for.cond.preheader
  %i.065 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %if.end27.for.body_crit_edge ]
  %4 = ptrtoint ptr %rx_buffers to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rx_buffers, align 8
  %arrayidx = getelementptr %struct.smsc9420_ring_info, ptr %5, i32 %i.065
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %tobool14.not = icmp eq ptr %7, null
  br i1 %tobool14.not, label %for.body.if.end19_crit_edge, label %if.then15

for.body.if.end19_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end19

if.then15:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %7, i32 noundef 1) #16
  br label %if.end19

if.end19:                                         ; preds = %if.then15, %for.body.if.end19_crit_edge
  %8 = ptrtoint ptr %rx_buffers to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rx_buffers, align 8
  %mapping = getelementptr %struct.smsc9420_ring_info, ptr %9, i32 %i.065, i32 1
  %10 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mapping, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool22.not = icmp eq i32 %11, 0
  br i1 %tobool22.not, label %if.end19.if.end27_crit_edge, label %if.then23

if.end19.if.end27_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end27

if.then23:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #18
  %12 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44
  tail call void @dma_unmap_page_attrs(ptr noundef %dev, i32 noundef %11, i32 noundef 1524, i32 noundef 2, i32 noundef 0) #16
  br label %if.end27

if.end27:                                         ; preds = %if.then23, %if.end19.if.end27_crit_edge
  %14 = ptrtoint ptr %rx_ring to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rx_ring, align 4
  %arrayidx29 = getelementptr %struct.smsc9420_dma_desc, ptr %15, i32 %i.065
  %16 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %arrayidx29, align 4
  %17 = load ptr, ptr %rx_ring, align 4
  %length = getelementptr %struct.smsc9420_dma_desc, ptr %17, i32 %i.065, i32 1
  %18 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %length, align 4
  %19 = load ptr, ptr %rx_ring, align 4
  %buffer1 = getelementptr %struct.smsc9420_dma_desc, ptr %19, i32 %i.065, i32 2
  %20 = ptrtoint ptr %buffer1 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %buffer1, align 4
  %21 = load ptr, ptr %rx_ring, align 4
  %buffer2 = getelementptr %struct.smsc9420_dma_desc, ptr %21, i32 %i.065, i32 3
  %22 = ptrtoint ptr %buffer2 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %buffer2, align 4
  %inc = add nuw nsw i32 %i.065, 1
  %exitcond.not = icmp eq i32 %inc, 128
  br i1 %exitcond.not, label %do.body36, label %if.end27.for.body_crit_edge

if.end27.for.body_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

do.body36:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !243
  tail call void @arm_heavy_mb() #16
  %23 = ptrtoint ptr %rx_buffers to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %rx_buffers, align 8
  tail call void @kfree(ptr noundef %24) #16
  %25 = ptrtoint ptr %rx_buffers to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %rx_buffers, align 8
  %rx_ring_head = getelementptr inbounds %struct.smsc9420_pdata, ptr %pd, i32 0, i32 11
  %26 = ptrtoint ptr %rx_ring_head to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %rx_ring_head, align 4
  %rx_ring_tail = getelementptr inbounds %struct.smsc9420_pdata, ptr %pd, i32 0, i32 12
  %27 = ptrtoint ptr %rx_ring_tail to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %rx_ring_tail, align 8
  br label %cleanup

cleanup:                                          ; preds = %do.body36, %do.end9.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @smsc9420_free_tx_ring(ptr nocapture noundef %pd) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_ring = getelementptr inbounds %struct.smsc9420_pdata, ptr %pd, i32 0, i32 4
  %0 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tx_ring, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.body4, label %do.end9, !prof !217

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smsc9420.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 492, 0\0A.popsection", ""() #16, !srcloc !244
  unreachable

do.end9:                                          ; preds = %entry
  %tx_buffers = getelementptr inbounds %struct.smsc9420_pdata, ptr %pd, i32 0, i32 5
  %2 = ptrtoint ptr %tx_buffers to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tx_buffers, align 4
  %tobool10.not = icmp eq ptr %3, null
  br i1 %tobool10.not, label %do.end9.cleanup_crit_edge, label %for.cond.preheader

do.end9.cleanup_crit_edge:                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.cond.preheader:                               ; preds = %do.end9
  %pdev = getelementptr inbounds %struct.smsc9420_pdata, ptr %pd, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %if.end42.for.body_crit_edge, %for.cond.preheader
  %i.079 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %if.end42.for.body_crit_edge ]
  %4 = ptrtoint ptr %tx_buffers to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tx_buffers, align 4
  %arrayidx = getelementptr %struct.smsc9420_ring_info, ptr %5, i32 %i.079
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %tobool15.not = icmp eq ptr %7, null
  br i1 %tobool15.not, label %for.body.if.end42_crit_edge, label %do.body17

for.body.if.end42_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end42

do.body17:                                        ; preds = %for.body
  %mapping = getelementptr %struct.smsc9420_ring_info, ptr %5, i32 %i.079, i32 1
  %8 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mapping, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool20.not = icmp eq i32 %9, 0
  br i1 %tobool20.not, label %do.body30, label %do.end38, !prof !217

do.body30:                                        ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smsc9420.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 501, 0\0A.popsection", ""() #16, !srcloc !245
  unreachable

do.end38:                                         ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #18
  %10 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  %len = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 6
  %12 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %len, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev, i32 noundef %9, i32 noundef %13, i32 noundef 1, i32 noundef 0) #16
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %7, i32 noundef 1) #16
  br label %if.end42

if.end42:                                         ; preds = %do.end38, %for.body.if.end42_crit_edge
  %14 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %tx_ring, align 8
  %arrayidx44 = getelementptr %struct.smsc9420_dma_desc, ptr %15, i32 %i.079
  %16 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %arrayidx44, align 4
  %17 = load ptr, ptr %tx_ring, align 8
  %length = getelementptr %struct.smsc9420_dma_desc, ptr %17, i32 %i.079, i32 1
  %18 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %length, align 4
  %19 = load ptr, ptr %tx_ring, align 8
  %buffer1 = getelementptr %struct.smsc9420_dma_desc, ptr %19, i32 %i.079, i32 2
  %20 = ptrtoint ptr %buffer1 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %buffer1, align 4
  %21 = load ptr, ptr %tx_ring, align 8
  %buffer2 = getelementptr %struct.smsc9420_dma_desc, ptr %21, i32 %i.079, i32 3
  %22 = ptrtoint ptr %buffer2 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %buffer2, align 4
  %inc = add nuw nsw i32 %i.079, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %do.body51, label %if.end42.for.body_crit_edge

if.end42.for.body_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

do.body51:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !246
  tail call void @arm_heavy_mb() #16
  %23 = ptrtoint ptr %tx_buffers to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %tx_buffers, align 4
  tail call void @kfree(ptr noundef %24) #16
  %25 = ptrtoint ptr %tx_buffers to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %tx_buffers, align 4
  %tx_ring_head = getelementptr inbounds %struct.smsc9420_pdata, ptr %pd, i32 0, i32 9
  %26 = ptrtoint ptr %tx_ring_head to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %tx_ring_head, align 4
  %tx_ring_tail = getelementptr inbounds %struct.smsc9420_pdata, ptr %pd, i32 0, i32 10
  %27 = ptrtoint ptr %tx_ring_tail to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %tx_ring_tail, align 8
  br label %cleanup

cleanup:                                          ; preds = %do.body51, %do.end9.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_schedule_prep(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__napi_schedule(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @smsc9420_alloc_rx_buffer(ptr nocapture noundef readonly %pd, i32 noundef %index) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.smsc9420_pdata, ptr %pd, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  %call.i = tail call ptr @__netdev_alloc_skb(ptr noundef %1, i32 noundef 1524, i32 noundef 2592) #16
  %rx_buffers = getelementptr inbounds %struct.smsc9420_pdata, ptr %pd, i32 0, i32 6
  %2 = ptrtoint ptr %rx_buffers to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rx_buffers, align 8
  %arrayidx = getelementptr %struct.smsc9420_ring_info, ptr %3, i32 %index
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %do.body10, label %do.body4, !prof !209

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smsc9420.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 783, 0\0A.popsection", ""() #16, !srcloc !247
  unreachable

do.body10:                                        ; preds = %entry
  %mapping13 = getelementptr %struct.smsc9420_ring_info, ptr %3, i32 %index, i32 1
  %6 = ptrtoint ptr %mapping13 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mapping13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool14.not = icmp eq i32 %7, 0
  br i1 %tobool14.not, label %do.end30, label %do.body22, !prof !209

do.body22:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smsc9420.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 784, 0\0A.popsection", ""() #16, !srcloc !248
  unreachable

do.end30:                                         ; preds = %do.body10
  %tobool31.not = icmp eq ptr %call.i, null
  br i1 %tobool31.not, label %do.end30.cleanup_crit_edge, label %if.end41, !prof !217

do.end30.cleanup_crit_edge:                       ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end41:                                         ; preds = %do.end30
  %pdev = getelementptr inbounds %struct.smsc9420_pdata, ptr %pd, i32 0, i32 1
  %8 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pdev, align 4
  %dev42 = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 16
  %10 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tail.i, align 8
  %call.i91 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %11) #16
  br i1 %call.i91, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %if.end41
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit_crit_edge, label %if.then.i, !prof !209

land.rhs.i.dma_map_single_attrs.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %dma_map_single_attrs.exit

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %dev42) #16
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44, i32 3
  %12 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %13, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  %14 = ptrtoint ptr %dev42 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev42, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %15, %if.end.i.i ], [ %13, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.49, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.50, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #16
  br label %dma_map_single_attrs.exit

if.end39.i:                                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @debug_dma_map_single(ptr noundef %dev42, ptr noundef %11, i32 noundef 1524) #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %16 = load ptr, ptr @mem_map, align 4
  %17 = ptrtoint ptr %11 to i32
  %sub.i = add i32 %17, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i = getelementptr %struct.page, ptr %16, i32 %shr.i
  %and.i = and i32 %17, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev42, ptr noundef %add.ptr.i, i32 noundef %and.i, i32 noundef 1524, i32 noundef 2, i32 noundef 0) #16
  br label %dma_map_single_attrs.exit

dma_map_single_attrs.exit:                        ; preds = %if.end39.i, %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit_crit_edge
  %retval.0.i = phi i32 [ %call41.i, %if.end39.i ], [ -1, %dev_name.exit.i ], [ -1, %land.rhs.i.dma_map_single_attrs.exit_crit_edge ]
  %18 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pdev, align 4
  %dev46 = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 44
  tail call void @debug_dma_mapping_error(ptr noundef %dev46, i32 noundef %retval.0.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i)
  %cmp.i = icmp eq i32 %retval.0.i, -1
  br i1 %cmp.i, label %if.then49, label %if.end57

if.then49:                                        ; preds = %dma_map_single_attrs.exit
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %call.i, i32 noundef 1) #16
  %msg_enable = getelementptr inbounds %struct.smsc9420_pdata, ptr %pd, i32 0, i32 18
  %20 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %msg_enable, align 4
  %and = and i32 %21, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool51.not = icmp eq i32 %and, 0
  br i1 %tobool51.not, label %if.then49.cleanup_crit_edge, label %if.then52

if.then49.cleanup_crit_edge:                      ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then52:                                        ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #18
  %22 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %23, ptr noundef nonnull @.str.48) #19
  br label %cleanup

if.end57:                                         ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #18
  %24 = ptrtoint ptr %rx_buffers to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %rx_buffers, align 8
  %arrayidx59 = getelementptr %struct.smsc9420_ring_info, ptr %25, i32 %index
  %26 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call.i, ptr %arrayidx59, align 4
  %27 = load ptr, ptr %rx_buffers, align 8
  %mapping63 = getelementptr %struct.smsc9420_ring_info, ptr %27, i32 %index, i32 1
  %28 = ptrtoint ptr %mapping63 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %retval.0.i, ptr %mapping63, align 4
  %add = add i32 %retval.0.i, 2
  %rx_ring = getelementptr inbounds %struct.smsc9420_pdata, ptr %pd, i32 0, i32 3
  %29 = ptrtoint ptr %rx_ring to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %rx_ring, align 4
  %buffer1 = getelementptr %struct.smsc9420_dma_desc, ptr %30, i32 %index, i32 2
  %31 = ptrtoint ptr %buffer1 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %add, ptr %buffer1, align 4
  %32 = load ptr, ptr %rx_ring, align 4
  %arrayidx66 = getelementptr %struct.smsc9420_dma_desc, ptr %32, i32 %index
  %33 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 -2147483648, ptr %arrayidx66, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !249
  tail call void @arm_heavy_mb() #16
  br label %cleanup

cleanup:                                          ; preds = %if.end57, %if.then52, %if.then49.cleanup_crit_edge, %do.end30.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end57 ], [ -12, %do.end30.cleanup_crit_edge ], [ -12, %if.then52 ], [ -12, %if.then49.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_map_single(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smsc9420_mii_read(ptr nocapture noundef readonly %bus, i32 noundef %phyaddr, i32 noundef %regidx) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mii_bus, ptr %bus, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %phy_lock = getelementptr inbounds %struct.smsc9420_pdata, ptr %1, i32 0, i32 14
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %phy_lock) #16
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %add.ptr.i = getelementptr i8, ptr %3, i32 148
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #16, !srcloc !211
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !212
  %5 = and i32 %4, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.end12, label %do.body6

do.body6:                                         ; preds = %entry
  %msg_enable = getelementptr inbounds %struct.smsc9420_pdata, ptr %1, i32 0, i32 18
  %6 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %msg_enable, align 4
  %and7 = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %do.body6.out_crit_edge, label %if.then9

do.body6.out_crit_edge:                           ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.then9:                                         ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #18
  %dev = getelementptr inbounds %struct.smsc9420_pdata, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %9, ptr noundef nonnull @.str.55) #19
  br label %out

if.end12:                                         ; preds = %entry
  %and13 = shl i32 %phyaddr, 11
  %shl = and i32 %and13, 63488
  %and14 = shl i32 %regidx, 6
  %shl15 = and i32 %and14, 1984
  %or = or i32 %shl15, %shl
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 8
  %add.ptr.i47 = getelementptr i8, ptr %11, i32 148
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !213
  tail call void @arm_heavy_mb() #16
  %12 = tail call i32 @llvm.bswap.i32(i32 %or) #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i47, i32 %12) #16, !srcloc !214
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 8
  %add.ptr.i48 = getelementptr i8, ptr %14, i32 148
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i48) #16, !srcloc !211
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !212
  %16 = and i32 %15, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool21.not = icmp eq i32 %16, 0
  br i1 %tobool21.not, label %if.end12.if.then22_crit_edge, label %if.end26

if.end12.if.then22_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then22

if.then22:                                        ; preds = %if.end26.3.if.then22_crit_edge, %if.end26.2.if.then22_crit_edge, %if.end26.1.if.then22_crit_edge, %if.end26.if.then22_crit_edge, %if.end12.if.then22_crit_edge
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 8
  %add.ptr.i49 = getelementptr i8, ptr %18, i32 152
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i49) #16, !srcloc !211
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !212
  %20 = and i32 %19, -65536
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  br label %out

if.end26:                                         ; preds = %if.end12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %22(i32 noundef 2147480) #16
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %1, align 8
  %add.ptr.i48.1 = getelementptr i8, ptr %24, i32 148
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i48.1) #16, !srcloc !211
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !212
  %26 = and i32 %25, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool21.not.1 = icmp eq i32 %26, 0
  br i1 %tobool21.not.1, label %if.end26.if.then22_crit_edge, label %if.end26.1

if.end26.if.then22_crit_edge:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then22

if.end26.1:                                       ; preds = %if.end26
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %27(i32 noundef 2147480) #16
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %1, align 8
  %add.ptr.i48.2 = getelementptr i8, ptr %29, i32 148
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i48.2) #16, !srcloc !211
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !212
  %31 = and i32 %30, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool21.not.2 = icmp eq i32 %31, 0
  br i1 %tobool21.not.2, label %if.end26.1.if.then22_crit_edge, label %if.end26.2

if.end26.1.if.then22_crit_edge:                   ; preds = %if.end26.1
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then22

if.end26.2:                                       ; preds = %if.end26.1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %32 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %32(i32 noundef 2147480) #16
  %33 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %1, align 8
  %add.ptr.i48.3 = getelementptr i8, ptr %34, i32 148
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i48.3) #16, !srcloc !211
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !212
  %36 = and i32 %35, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool21.not.3 = icmp eq i32 %36, 0
  br i1 %tobool21.not.3, label %if.end26.2.if.then22_crit_edge, label %if.end26.3

if.end26.2.if.then22_crit_edge:                   ; preds = %if.end26.2
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then22

if.end26.3:                                       ; preds = %if.end26.2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %37 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %37(i32 noundef 2147480) #16
  %38 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %1, align 8
  %add.ptr.i48.4 = getelementptr i8, ptr %39, i32 148
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i48.4) #16, !srcloc !211
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !212
  %41 = and i32 %40, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool21.not.4 = icmp eq i32 %41, 0
  br i1 %tobool21.not.4, label %if.end26.3.if.then22_crit_edge, label %if.end26.4

if.end26.3.if.then22_crit_edge:                   ; preds = %if.end26.3
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then22

if.end26.4:                                       ; preds = %if.end26.3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %42 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %42(i32 noundef 2147480) #16
  %msg_enable28 = getelementptr inbounds %struct.smsc9420_pdata, ptr %1, i32 0, i32 18
  %43 = ptrtoint ptr %msg_enable28 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %msg_enable28, align 4
  %and29 = and i32 %44, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %if.end26.4.out_crit_edge, label %if.then31

if.end26.4.out_crit_edge:                         ; preds = %if.end26.4
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.then31:                                        ; preds = %if.end26.4
  call void @__sanitizer_cov_trace_pc() #18
  %dev32 = getelementptr inbounds %struct.smsc9420_pdata, ptr %1, i32 0, i32 2
  %45 = ptrtoint ptr %dev32 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev32, align 8
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %46, ptr noundef nonnull @.str.56) #19
  br label %out

out:                                              ; preds = %if.then31, %if.end26.4.out_crit_edge, %if.then22, %if.then9, %do.body6.out_crit_edge
  %reg.0 = phi i32 [ -5, %if.then9 ], [ -5, %do.body6.out_crit_edge ], [ %21, %if.then22 ], [ -5, %if.then31 ], [ -5, %if.end26.4.out_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %phy_lock, i32 noundef %call2) #16
  ret i32 %reg.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smsc9420_mii_write(ptr nocapture noundef readonly %bus, i32 noundef %phyaddr, i32 noundef %regidx, i16 noundef zeroext %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mii_bus, ptr %bus, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %phy_lock = getelementptr inbounds %struct.smsc9420_pdata, ptr %1, i32 0, i32 14
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %phy_lock) #16
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %add.ptr.i = getelementptr i8, ptr %3, i32 148
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #16, !srcloc !211
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !212
  %5 = and i32 %4, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.end12, label %do.body6

do.body6:                                         ; preds = %entry
  %msg_enable = getelementptr inbounds %struct.smsc9420_pdata, ptr %1, i32 0, i32 18
  %6 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %msg_enable, align 4
  %and7 = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %do.body6.out_crit_edge, label %do.body6.out.sink.split_crit_edge

do.body6.out.sink.split_crit_edge:                ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #18
  br label %out.sink.split

do.body6.out_crit_edge:                           ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.end12:                                         ; preds = %entry
  %conv13 = zext i16 %val to i32
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 8
  %add.ptr.i45 = getelementptr i8, ptr %9, i32 152
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !213
  tail call void @arm_heavy_mb() #16
  %10 = tail call i32 @llvm.bswap.i32(i32 %conv13) #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i45, i32 %10) #16, !srcloc !214
  %and14 = shl i32 %phyaddr, 11
  %shl = and i32 %and14, 63488
  %and15 = shl i32 %regidx, 6
  %shl16 = and i32 %and15, 1984
  %or = or i32 %shl, %shl16
  %or17 = or i32 %or, 2
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 8
  %add.ptr.i46 = getelementptr i8, ptr %12, i32 148
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !213
  tail call void @arm_heavy_mb() #16
  %13 = tail call i32 @llvm.bswap.i32(i32 %or17) #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i46, i32 %13) #16, !srcloc !214
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 8
  %add.ptr.i47 = getelementptr i8, ptr %15, i32 148
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i47) #16, !srcloc !211
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !212
  %17 = and i32 %16, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool22.not = icmp eq i32 %17, 0
  br i1 %tobool22.not, label %if.end12.out_crit_edge, label %if.end24

if.end12.out_crit_edge:                           ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.end24:                                         ; preds = %if.end12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 2147480) #16
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 8
  %add.ptr.i47.1 = getelementptr i8, ptr %20, i32 148
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i47.1) #16, !srcloc !211
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !212
  %22 = and i32 %21, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool22.not.1 = icmp eq i32 %22, 0
  br i1 %tobool22.not.1, label %if.end24.out_crit_edge, label %if.end24.1

if.end24.out_crit_edge:                           ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.end24.1:                                       ; preds = %if.end24
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %23(i32 noundef 2147480) #16
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %1, align 8
  %add.ptr.i47.2 = getelementptr i8, ptr %25, i32 148
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i47.2) #16, !srcloc !211
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !212
  %27 = and i32 %26, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool22.not.2 = icmp eq i32 %27, 0
  br i1 %tobool22.not.2, label %if.end24.1.out_crit_edge, label %if.end24.2

if.end24.1.out_crit_edge:                         ; preds = %if.end24.1
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.end24.2:                                       ; preds = %if.end24.1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %28 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %28(i32 noundef 2147480) #16
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %1, align 8
  %add.ptr.i47.3 = getelementptr i8, ptr %30, i32 148
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i47.3) #16, !srcloc !211
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !212
  %32 = and i32 %31, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool22.not.3 = icmp eq i32 %32, 0
  br i1 %tobool22.not.3, label %if.end24.2.out_crit_edge, label %if.end24.3

if.end24.2.out_crit_edge:                         ; preds = %if.end24.2
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.end24.3:                                       ; preds = %if.end24.2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %33 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %33(i32 noundef 2147480) #16
  %34 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %1, align 8
  %add.ptr.i47.4 = getelementptr i8, ptr %35, i32 148
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i47.4) #16, !srcloc !211
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !212
  %37 = and i32 %36, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool22.not.4 = icmp eq i32 %37, 0
  br i1 %tobool22.not.4, label %if.end24.3.out_crit_edge, label %if.end24.4

if.end24.3.out_crit_edge:                         ; preds = %if.end24.3
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.end24.4:                                       ; preds = %if.end24.3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %38 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %38(i32 noundef 2147480) #16
  %msg_enable26 = getelementptr inbounds %struct.smsc9420_pdata, ptr %1, i32 0, i32 18
  %39 = ptrtoint ptr %msg_enable26 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %msg_enable26, align 4
  %and27 = and i32 %40, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool28.not, label %if.end24.4.out_crit_edge, label %if.end24.4.out.sink.split_crit_edge

if.end24.4.out.sink.split_crit_edge:              ; preds = %if.end24.4
  call void @__sanitizer_cov_trace_pc() #18
  br label %out.sink.split

if.end24.4.out_crit_edge:                         ; preds = %if.end24.4
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

out.sink.split:                                   ; preds = %if.end24.4.out.sink.split_crit_edge, %do.body6.out.sink.split_crit_edge
  %.str.56.sink = phi ptr [ @.str.55, %do.body6.out.sink.split_crit_edge ], [ @.str.56, %if.end24.4.out.sink.split_crit_edge ]
  %dev30 = getelementptr inbounds %struct.smsc9420_pdata, ptr %1, i32 0, i32 2
  %41 = ptrtoint ptr %dev30 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev30, align 8
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %42, ptr noundef nonnull %.str.56.sink) #19
  br label %out

out:                                              ; preds = %out.sink.split, %if.end24.4.out_crit_edge, %if.end24.3.out_crit_edge, %if.end24.2.out_crit_edge, %if.end24.1.out_crit_edge, %if.end24.out_crit_edge, %if.end12.out_crit_edge, %do.body6.out_crit_edge
  %reg.0 = phi i32 [ -5, %do.body6.out_crit_edge ], [ -5, %if.end24.4.out_crit_edge ], [ 0, %if.end24.3.out_crit_edge ], [ 0, %if.end24.2.out_crit_edge ], [ 0, %if.end24.1.out_crit_edge ], [ 0, %if.end24.out_crit_edge ], [ 0, %if.end12.out_crit_edge ], [ -5, %out.sink.split ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %phy_lock, i32 noundef %call2) #16
  ret i32 %reg.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__mdiobus_register(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdiobus_unregister(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdiobus_free(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mdiobus_alloc_size(i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mdiobus_get_phy(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @phy_connect(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @smsc9420_phy_adjust_link(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %phydev = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 145
  %0 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phydev, align 16
  %duplex = getelementptr inbounds %struct.phy_device, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %duplex to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %duplex, align 4
  %last_duplex = getelementptr i8, ptr %dev, i32 2684
  %4 = ptrtoint ptr %last_duplex to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %last_duplex, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp.not = icmp eq i32 %3, %5
  br i1 %cmp.not, label %entry.if.end45_crit_edge, label %if.then

entry.if.end45_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end45

if.then:                                          ; preds = %entry
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i137 = getelementptr i8, ptr %7, i32 128
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i137) #16, !srcloc !211
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !212
  %10 = ptrtoint ptr %duplex to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %duplex, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not = icmp eq i32 %11, 0
  %msg_enable17 = getelementptr i8, ptr %dev, i32 2676
  %12 = ptrtoint ptr %msg_enable17 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %msg_enable17, align 4
  %and18 = and i32 %13, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool.not, label %do.body16, label %do.body

do.body:                                          ; preds = %if.then
  br i1 %tobool19.not, label %do.body.do.end15_crit_edge, label %do.body6

do.body.do.end15_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end15

do.body6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smsc9420_phy_adjust_link.__UNIQUE_ID_ddebug371, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smsc9420_phy_adjust_link, %if.then11)) #16
          to label %do.end15 [label %if.then11], !srcloc !210

if.then11:                                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #18
  %dev12 = getelementptr i8, ptr %dev, i32 2312
  %14 = ptrtoint ptr %dev12 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev12, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @smsc9420_phy_adjust_link.__UNIQUE_ID_ddebug371, ptr noundef %15, ptr noundef nonnull @.str.60) #16
  br label %do.end15

do.end15:                                         ; preds = %if.then11, %do.body6, %do.body.do.end15_crit_edge
  %or = or i32 %9, 1048576
  br label %if.end42

do.body16:                                        ; preds = %if.then
  br i1 %tobool19.not, label %do.body16.do.end40_crit_edge, label %do.body21

do.body16.do.end40_crit_edge:                     ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end40

do.body21:                                        ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smsc9420_phy_adjust_link.__UNIQUE_ID_ddebug372, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smsc9420_phy_adjust_link, %if.then33)) #16
          to label %do.end40 [label %if.then33], !srcloc !210

if.then33:                                        ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #18
  %dev34 = getelementptr i8, ptr %dev, i32 2312
  %16 = ptrtoint ptr %dev34 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev34, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @smsc9420_phy_adjust_link.__UNIQUE_ID_ddebug372, ptr noundef %17, ptr noundef nonnull @.str.61) #16
  br label %do.end40

do.end40:                                         ; preds = %if.then33, %do.body21, %do.body16.do.end40_crit_edge
  %and41 = and i32 %9, -1048577
  br label %if.end42

if.end42:                                         ; preds = %do.end40, %do.end15
  %mac_cr.0 = phi i32 [ %or, %do.end15 ], [ %and41, %do.end40 ]
  %18 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i138 = getelementptr i8, ptr %19, i32 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !213
  tail call void @arm_heavy_mb() #16
  %20 = tail call i32 @llvm.bswap.i32(i32 %mac_cr.0) #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i138, i32 %20) #16, !srcloc !214
  %dev1.i = getelementptr i8, ptr %dev, i32 2312
  %21 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev1.i, align 8
  %phydev.i = getelementptr inbounds %struct.net_device, ptr %22, i32 0, i32 145
  %23 = ptrtoint ptr %phydev.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %phydev.i, align 16
  %duplex.i = getelementptr inbounds %struct.phy_device, ptr %24, i32 0, i32 9
  %25 = ptrtoint ptr %duplex.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %duplex.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %26)
  %cmp.i = icmp eq i32 %26, 1
  br i1 %cmp.i, label %if.then.i, label %do.body20.i

if.then.i:                                        ; preds = %if.end42
  %bus.i.i = getelementptr inbounds %struct.mdio_device, ptr %24, i32 0, i32 1
  %27 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %bus.i.i, align 8
  %addr.i.i = getelementptr inbounds %struct.mdio_device, ptr %24, i32 0, i32 6
  %29 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %addr.i.i, align 8
  %call.i.i = tail call i32 @mdiobus_read(ptr noundef %28, i32 noundef %30, i32 noundef 4) #16
  %31 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %bus.i.i, align 8
  %33 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %addr.i.i, align 8
  %call.i41.i = tail call i32 @mdiobus_read(ptr noundef %32, i32 noundef %34, i32 noundef 5) #16
  %and25.i42.i = and i32 %call.i41.i, %call.i.i
  %and2.i.i = and i32 %and25.i42.i, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i)
  %tobool.not.i.i = icmp eq i32 %and2.i.i, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.mii_resolve_flowctrl_fdx.exit.i_crit_edge

if.then.i.mii_resolve_flowctrl_fdx.exit.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %mii_resolve_flowctrl_fdx.exit.i

if.else.i.i:                                      ; preds = %if.then.i
  %and6.i.i = and i32 %and25.i42.i, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i)
  %tobool7.not.i.i = icmp eq i32 %and6.i.i, 0
  br i1 %tobool7.not.i.i, label %if.else.i.i.mii_resolve_flowctrl_fdx.exit.i_crit_edge, label %if.then8.i.i

if.else.i.i.mii_resolve_flowctrl_fdx.exit.i_crit_edge: ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %mii_resolve_flowctrl_fdx.exit.i

if.then8.i.i:                                     ; preds = %if.else.i.i
  %35 = and i32 %call.i.i, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool11.not.i.i = icmp eq i32 %35, 0
  br i1 %tobool11.not.i.i, label %if.else13.i.i, label %if.then8.i.i.mii_resolve_flowctrl_fdx.exit.i_crit_edge

if.then8.i.i.mii_resolve_flowctrl_fdx.exit.i_crit_edge: ; preds = %if.then8.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %mii_resolve_flowctrl_fdx.exit.i

if.else13.i.i:                                    ; preds = %if.then8.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %36 = lshr i32 %call.i41.i, 10
  %37 = and i32 %36, 1
  br label %mii_resolve_flowctrl_fdx.exit.i

mii_resolve_flowctrl_fdx.exit.i:                  ; preds = %if.else13.i.i, %if.then8.i.i.mii_resolve_flowctrl_fdx.exit.i_crit_edge, %if.else.i.i.mii_resolve_flowctrl_fdx.exit.i_crit_edge, %if.then.i.mii_resolve_flowctrl_fdx.exit.i_crit_edge
  %cap.0.i.i = phi i32 [ 0, %if.else.i.i.mii_resolve_flowctrl_fdx.exit.i_crit_edge ], [ 3, %if.then.i.mii_resolve_flowctrl_fdx.exit.i_crit_edge ], [ 2, %if.then8.i.i.mii_resolve_flowctrl_fdx.exit.i_crit_edge ], [ %37, %if.else13.i.i ]
  %and.i = and i32 %cap.0.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %..i = select i1 %tobool.not.i, i32 0, i32 -65534
  %msg_enable.i = getelementptr i8, ptr %dev, i32 2676
  %38 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %msg_enable.i, align 4
  %and7.i = and i32 %39, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i)
  %tobool8.not.i = icmp eq i32 %and7.i, 0
  br i1 %tobool8.not.i, label %mii_resolve_flowctrl_fdx.exit.i.smsc9420_phy_update_flowcontrol.exit_crit_edge, label %if.then9.i

mii_resolve_flowctrl_fdx.exit.i.smsc9420_phy_update_flowcontrol.exit_crit_edge: ; preds = %mii_resolve_flowctrl_fdx.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %smsc9420_phy_update_flowcontrol.exit

if.then9.i:                                       ; preds = %mii_resolve_flowctrl_fdx.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  %40 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev1.i, align 8
  %cond.i = select i1 %tobool.not.i, ptr @.str.66, ptr @.str.65
  %and15.i = and i32 %cap.0.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.i)
  %tobool16.not.i = icmp eq i32 %and15.i, 0
  %cond17.i = select i1 %tobool16.not.i, ptr @.str.66, ptr @.str.65
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %41, ptr noundef nonnull @.str.64, ptr noundef nonnull %cond.i, ptr noundef nonnull %cond17.i) #19
  br label %smsc9420_phy_update_flowcontrol.exit

do.body20.i:                                      ; preds = %if.end42
  %msg_enable21.i = getelementptr i8, ptr %dev, i32 2676
  %42 = ptrtoint ptr %msg_enable21.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %msg_enable21.i, align 4
  %and22.i = and i32 %43, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22.i)
  %tobool23.not.i = icmp eq i32 %and22.i, 0
  br i1 %tobool23.not.i, label %do.body20.i.smsc9420_phy_update_flowcontrol.exit_crit_edge, label %if.then24.i

do.body20.i.smsc9420_phy_update_flowcontrol.exit_crit_edge: ; preds = %do.body20.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %smsc9420_phy_update_flowcontrol.exit

if.then24.i:                                      ; preds = %do.body20.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %22, ptr noundef nonnull @.str.67) #19
  br label %smsc9420_phy_update_flowcontrol.exit

smsc9420_phy_update_flowcontrol.exit:             ; preds = %if.then24.i, %do.body20.i.smsc9420_phy_update_flowcontrol.exit_crit_edge, %if.then9.i, %mii_resolve_flowctrl_fdx.exit.i.smsc9420_phy_update_flowcontrol.exit_crit_edge
  %flow.1.i = phi i32 [ %..i, %if.then9.i ], [ %..i, %mii_resolve_flowctrl_fdx.exit.i.smsc9420_phy_update_flowcontrol.exit_crit_edge ], [ 0, %if.then24.i ], [ 0, %do.body20.i.smsc9420_phy_update_flowcontrol.exit_crit_edge ]
  %44 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %45, i32 156
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !213
  tail call void @arm_heavy_mb() #16
  %46 = tail call i32 @llvm.bswap.i32(i32 %flow.1.i) #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %46) #16, !srcloc !214
  %47 = ptrtoint ptr %duplex to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %duplex, align 4
  %49 = ptrtoint ptr %last_duplex to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %last_duplex, align 4
  br label %if.end45

if.end45:                                         ; preds = %smsc9420_phy_update_flowcontrol.exit, %entry.if.end45_crit_edge
  %state.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 6
  %50 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile i32, ptr %state.i, align 4
  %52 = and i32 %51, 4
  %.lobit = lshr exact i32 %52, 2
  %53 = xor i32 %.lobit, 1
  %last_carrier = getelementptr i8, ptr %dev, i32 2688
  %54 = ptrtoint ptr %last_carrier to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %last_carrier, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %55, i32 %53)
  %cmp47.not = icmp eq i32 %55, %53
  br i1 %cmp47.not, label %if.end45.if.end105_crit_edge, label %if.then49

if.end45.if.end105_crit_edge:                     ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end105

if.then49:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool.not.i139 = icmp eq i32 %52, 0
  %msg_enable53 = getelementptr i8, ptr %dev, i32 2676
  %56 = ptrtoint ptr %msg_enable53 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %msg_enable53, align 4
  %and54 = and i32 %57, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54)
  %tobool55.not = icmp eq i32 %and54, 0
  br i1 %tobool.not.i139, label %do.body52, label %do.body78

do.body52:                                        ; preds = %if.then49
  br i1 %tobool55.not, label %do.body52.if.end103_crit_edge, label %do.body57

do.body52.if.end103_crit_edge:                    ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end103

do.body57:                                        ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smsc9420_phy_adjust_link.__UNIQUE_ID_ddebug373, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smsc9420_phy_adjust_link, %if.then69)) #16
          to label %if.end103 [label %if.then69], !srcloc !210

if.then69:                                        ; preds = %do.body57
  call void @__sanitizer_cov_trace_pc() #18
  %dev70 = getelementptr i8, ptr %dev, i32 2312
  %58 = ptrtoint ptr %dev70 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dev70, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @smsc9420_phy_adjust_link.__UNIQUE_ID_ddebug373, ptr noundef %59, ptr noundef nonnull @.str.62) #16
  br label %if.end103

do.body78:                                        ; preds = %if.then49
  br i1 %tobool55.not, label %do.body78.if.end103_crit_edge, label %do.body83

do.body78.if.end103_crit_edge:                    ; preds = %do.body78
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end103

do.body83:                                        ; preds = %do.body78
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smsc9420_phy_adjust_link.__UNIQUE_ID_ddebug374, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smsc9420_phy_adjust_link, %if.then95)) #16
          to label %if.end103 [label %if.then95], !srcloc !210

if.then95:                                        ; preds = %do.body83
  call void @__sanitizer_cov_trace_pc() #18
  %dev96 = getelementptr i8, ptr %dev, i32 2312
  %60 = ptrtoint ptr %dev96 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dev96, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @smsc9420_phy_adjust_link.__UNIQUE_ID_ddebug374, ptr noundef %61, ptr noundef nonnull @.str.63) #16
  br label %if.end103

if.end103:                                        ; preds = %if.then95, %do.body83, %do.body78.if.end103_crit_edge, %if.then69, %do.body57, %do.body52.if.end103_crit_edge
  %62 = ptrtoint ptr %last_carrier to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %53, ptr %last_carrier, align 8
  br label %if.end105

if.end105:                                        ; preds = %if.end103, %if.end45.if.end105_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_set_max_speed(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_support_asym_pause(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_attached_info(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdiobus_read(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_disable(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @smsc9420_stop_tx(ptr nocapture noundef readonly %pd) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pd, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 24
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #16, !srcloc !211
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !212
  %3 = and i32 %2, -2097153
  %4 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pd, align 8
  %add.ptr.i29 = getelementptr i8, ptr %5, i32 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !213
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29, i32 %3) #16, !srcloc !214
  br label %while.body

while.body:                                       ; preds = %if.end.while.body_crit_edge, %entry
  %dec37 = phi i32 [ 999, %entry ], [ %dec, %if.end.while.body_crit_edge ]
  %6 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pd, align 8
  %add.ptr.i30 = getelementptr i8, ptr %7, i32 20
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i30) #16, !srcloc !211
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !212
  %9 = and i32 %8, 28672
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool3.not = icmp eq i32 %9, 0
  br i1 %tobool3.not, label %if.end, label %while.body.if.end10_crit_edge

while.body.if.end10_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end10

if.end:                                           ; preds = %while.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 2147480) #16
  %dec = add nsw i32 %dec37, -1
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %do.body.critedge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body

do.body.critedge:                                 ; preds = %if.end
  %msg_enable = getelementptr inbounds %struct.smsc9420_pdata, ptr %pd, i32 0, i32 18
  %11 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %msg_enable, align 4
  %and6 = and i32 %12, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %do.body.critedge.if.end10_crit_edge, label %if.then8

do.body.critedge.if.end10_crit_edge:              ; preds = %do.body.critedge
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end10

if.then8:                                         ; preds = %do.body.critedge
  call void @__sanitizer_cov_trace_pc() #18
  %dev = getelementptr inbounds %struct.smsc9420_pdata, ptr %pd, i32 0, i32 2
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %14, ptr noundef nonnull @.str.68) #19
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %do.body.critedge.if.end10_crit_edge, %while.body.if.end10_crit_edge
  %15 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pd, align 8
  %add.ptr.i31 = getelementptr i8, ptr %16, i32 20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !213
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i31, i32 33554432) #16, !srcloc !214
  %17 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pd, align 8
  %add.ptr.i32 = getelementptr i8, ptr %18, i32 28
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i32) #16, !srcloc !211
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !212
  %20 = and i32 %19, -16777217
  %21 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pd, align 8
  %add.ptr.i33 = getelementptr i8, ptr %22, i32 28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !213
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i33, i32 %20) #16, !srcloc !214
  %23 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pd, align 8
  %add.ptr.i.i = getelementptr i8, ptr %24, i32 192
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #16, !srcloc !211
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !212
  %26 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pd, align 8
  %add.ptr.i34 = getelementptr i8, ptr %27, i32 128
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i34) #16, !srcloc !211
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !212
  %29 = and i32 %28, -134217729
  %30 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pd, align 8
  %add.ptr.i35 = getelementptr i8, ptr %31, i32 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !213
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i35, i32 %29) #16, !srcloc !214
  %32 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pd, align 8
  %add.ptr.i.i36 = getelementptr i8, ptr %33, i32 192
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i36) #16, !srcloc !211
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !212
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @smsc9420_stop_rx(ptr nocapture noundef readonly %pd) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pd, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 28
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #16, !srcloc !211
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !212
  %3 = and i32 %2, -1073741825
  %4 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pd, align 8
  %add.ptr.i30 = getelementptr i8, ptr %5, i32 28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !213
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i30, i32 %3) #16, !srcloc !214
  %6 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pd, align 8
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 192
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #16, !srcloc !211
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !212
  %9 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pd, align 8
  %add.ptr.i31 = getelementptr i8, ptr %10, i32 128
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i31) #16, !srcloc !211
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !212
  %12 = and i32 %11, -67108865
  %13 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pd, align 8
  %add.ptr.i32 = getelementptr i8, ptr %14, i32 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !213
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i32, i32 %12) #16, !srcloc !214
  %15 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pd, align 8
  %add.ptr.i.i33 = getelementptr i8, ptr %16, i32 192
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i33) #16, !srcloc !211
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !212
  %18 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pd, align 8
  %add.ptr.i34 = getelementptr i8, ptr %19, i32 24
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i34) #16, !srcloc !211
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !212
  %21 = and i32 %20, -33554433
  %22 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pd, align 8
  %add.ptr.i35 = getelementptr i8, ptr %23, i32 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !213
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i35, i32 %21) #16, !srcloc !214
  %24 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pd, align 8
  %add.ptr.i.i36 = getelementptr i8, ptr %25, i32 192
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i36) #16, !srcloc !211
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !212
  br label %while.body

while.body:                                       ; preds = %if.end.while.body_crit_edge, %entry
  %dec39 = phi i32 [ 999, %entry ], [ %dec, %if.end.while.body_crit_edge ]
  %27 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pd, align 8
  %add.ptr.i37 = getelementptr i8, ptr %28, i32 20
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i37) #16, !srcloc !211
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !212
  %30 = and i32 %29, 3584
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool7.not = icmp eq i32 %30, 0
  br i1 %tobool7.not, label %if.end, label %while.body.if.end14_crit_edge

while.body.if.end14_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end14

if.end:                                           ; preds = %while.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %31 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %31(i32 noundef 2147480) #16
  %dec = add nsw i32 %dec39, -1
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %do.body.critedge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body

do.body.critedge:                                 ; preds = %if.end
  %msg_enable = getelementptr inbounds %struct.smsc9420_pdata, ptr %pd, i32 0, i32 18
  %32 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %msg_enable, align 4
  %and10 = and i32 %33, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %do.body.critedge.if.end14_crit_edge, label %if.then12

do.body.critedge.if.end14_crit_edge:              ; preds = %do.body.critedge
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end14

if.then12:                                        ; preds = %do.body.critedge
  call void @__sanitizer_cov_trace_pc() #18
  %dev = getelementptr inbounds %struct.smsc9420_pdata, ptr %pd, i32 0, i32 2
  %34 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %35, ptr noundef nonnull @.str.69) #19
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %do.body.critedge.if.end14_crit_edge, %while.body.if.end14_crit_edge
  %36 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pd, align 8
  %add.ptr.i38 = getelementptr i8, ptr %37, i32 20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !213
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i38, i32 65536) #16, !srcloc !214
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_stop(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_disconnect(ptr noundef) local_unnamed_addr #0

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_disable() #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @__local_bh_disable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_disable, %__here) to i32), i32 noundef 512) #16
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %__here) to i32), i32 noundef 512) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_disable_ip(i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_clone_tx_timestamp(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_tstamp_tx(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_le(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #0

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @smsc9420_ethtool_get_drvinfo(ptr nocapture noundef readonly %netdev, ptr noundef %drvinfo) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %driver = getelementptr inbounds %struct.ethtool_drvinfo, ptr %drvinfo, i32 0, i32 1
  %call1 = tail call i32 @strlcpy(ptr noundef %driver, ptr noundef nonnull @.str.1, i32 noundef 32) #16
  %pdev = getelementptr i8, ptr %netdev, i32 2308
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 4
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44, i32 3
  %2 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %entry.pci_name.exit_crit_edge

entry.pci_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %entry.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %5, %if.end.i.i ], [ %3, %entry.pci_name.exit_crit_edge ]
  %bus_info = getelementptr inbounds %struct.ethtool_drvinfo, ptr %drvinfo, i32 0, i32 4
  %call4 = tail call i32 @strlcpy(ptr noundef %bus_info, ptr noundef %retval.0.i.i, i32 noundef 32) #16
  %version = getelementptr inbounds %struct.ethtool_drvinfo, ptr %drvinfo, i32 0, i32 2
  %call6 = tail call i32 @strlcpy(ptr noundef %version, ptr noundef nonnull @.str.2, i32 noundef 32) #16
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @smsc9420_ethtool_getregslen(ptr nocapture noundef readnone %dev) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 384
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @smsc9420_ethtool_getregs(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %regs, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %phydev = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 145
  %0 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phydev, align 16
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i28 = getelementptr i8, ptr %3, i32 192
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i28) #16, !srcloc !211
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !212
  %version = getelementptr inbounds %struct.ethtool_regs, ptr %regs, i32 0, i32 1
  %6 = ptrtoint ptr %version to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %version, align 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %j.031 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %i.030 = phi i32 [ 0, %entry ], [ %add, %for.body.for.body_crit_edge ]
  %7 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i29 = getelementptr i8, ptr %8, i32 %i.030
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i29) #16, !srcloc !211
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !212
  %inc = add nuw nsw i32 %j.031, 1
  %arrayidx = getelementptr i32, ptr %buf, i32 %j.031
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %arrayidx, align 4
  %add = add nuw nsw i32 %i.030, 4
  %exitcond.not = icmp eq i32 %inc, 64
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.end:                                          ; preds = %for.body
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %for.end.cleanup_crit_edge, label %for.cond3.preheader

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.cond3.preheader:                              ; preds = %for.end
  %bus = getelementptr inbounds %struct.mdio_device, ptr %1, i32 0, i32 1
  %addr = getelementptr inbounds %struct.mdio_device, ptr %1, i32 0, i32 6
  br label %for.body5

for.body5:                                        ; preds = %for.body5.for.body5_crit_edge, %for.cond3.preheader
  %j.133 = phi i32 [ 64, %for.cond3.preheader ], [ %inc8, %for.body5.for.body5_crit_edge ]
  %i.132 = phi i32 [ 0, %for.cond3.preheader ], [ %inc11, %for.body5.for.body5_crit_edge ]
  %12 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bus, align 8
  %14 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %addr, align 8
  %call7 = tail call i32 @smsc9420_mii_read(ptr noundef %13, i32 noundef %15, i32 noundef %i.132)
  %inc8 = add nuw nsw i32 %j.133, 1
  %arrayidx9 = getelementptr i32, ptr %buf, i32 %j.133
  %16 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %call7, ptr %arrayidx9, align 4
  %inc11 = add nuw nsw i32 %i.132, 1
  %exitcond34.not = icmp eq i32 %inc11, 32
  br i1 %exitcond34.not, label %for.body5.cleanup_crit_edge, label %for.body5.for.body5_crit_edge

for.body5.for.body5_crit_edge:                    ; preds = %for.body5
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body5

for.body5.cleanup_crit_edge:                      ; preds = %for.body5
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

cleanup:                                          ; preds = %for.body5.cleanup_crit_edge, %for.end.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @smsc9420_ethtool_get_msglevel(ptr nocapture noundef readonly %netdev) #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_enable = getelementptr i8, ptr %netdev, i32 2676
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msg_enable, align 4
  ret i32 %1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @smsc9420_ethtool_set_msglevel(ptr nocapture noundef writeonly %netdev, i32 noundef %data) #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_enable = getelementptr i8, ptr %netdev, i32 2676
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %data, ptr %msg_enable, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_ethtool_nway_reset(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethtool_op_get_link(ptr noundef) #0

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @smsc9420_ethtool_get_eeprom_len(ptr nocapture noundef readnone %dev) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 11
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smsc9420_ethtool_get_eeprom(ptr nocapture noundef readonly %dev, ptr nocapture noundef %eeprom, ptr nocapture noundef writeonly %data) #2 align 64 {
entry:
  %eeprom_data = alloca [11 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  call void @llvm.lifetime.start.p0(i64 11, ptr nonnull %eeprom_data) #16
  %0 = call ptr @memset(ptr %eeprom_data, i32 255, i32 11)
  %1 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %2, i32 208
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #16, !srcloc !211
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !212
  %4 = and i32 %3, -28673
  %5 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i3.i = getelementptr i8, ptr %6, i32 208
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !213
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3.i, i32 %4) #16, !srcloc !214
  tail call void @msleep(i32 noundef 1) #16
  %len1 = getelementptr inbounds %struct.ethtool_eeprom, ptr %eeprom, i32 0, i32 3
  %7 = ptrtoint ptr %len1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %len1, align 4
  %9 = tail call i32 @llvm.umin.i32(i32 %8, i32 11)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp234.not = icmp eq i32 %9, 0
  br i1 %cmp234.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %msg_enable.i = getelementptr i8, ptr %dev, i32 2676
  %dev.i = getelementptr i8, ptr %dev, i32 2312
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.035 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %10 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %msg_enable.i, align 4
  %and.i = and i32 %11, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %for.body.do.end9.i_crit_edge, label %do.body1.i

for.body.do.end9.i_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end9.i

do.body1.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smsc9420_eeprom_read_location.__UNIQUE_ID_ddebug360, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smsc9420_ethtool_get_eeprom, %if.then5.i)) #16
          to label %do.end9.i [label %if.then5.i], !srcloc !210

if.then5.i:                                       ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #18
  %12 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @smsc9420_eeprom_read_location.__UNIQUE_ID_ddebug360, ptr noundef %13, ptr noundef nonnull @.str.77, i32 noundef %i.035) #16
  br label %do.end9.i

do.end9.i:                                        ; preds = %if.then5.i, %do.body1.i, %for.body.do.end9.i_crit_edge
  %call10.i = tail call fastcc i32 @smsc9420_eeprom_send_cmd(ptr noundef %add.ptr.i, i32 noundef %i.035) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool11.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool11.not.i, label %cleanup, label %smsc9420_eeprom_read_location.exit

smsc9420_eeprom_read_location.exit:               ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %cmp4 = icmp slt i32 %call10.i, 0
  br i1 %cmp4, label %smsc9420_eeprom_read_location.exit.cleanup8_crit_edge, label %smsc9420_eeprom_read_location.exit.for.inc_crit_edge

smsc9420_eeprom_read_location.exit.for.inc_crit_edge: ; preds = %smsc9420_eeprom_read_location.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

smsc9420_eeprom_read_location.exit.cleanup8_crit_edge: ; preds = %smsc9420_eeprom_read_location.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup8

cleanup:                                          ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #18
  %14 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i.i25 = getelementptr i8, ptr %15, i32 252
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i25) #16, !srcloc !211
  %17 = lshr i32 %16, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !212
  %conv14.i = trunc i32 %17 to i8
  %arrayidx.i = getelementptr i8, ptr %eeprom_data, i32 %i.035
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv14.i, ptr %arrayidx.i, align 1
  br label %for.inc

for.inc:                                          ; preds = %cleanup, %smsc9420_eeprom_read_location.exit.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.035, 1
  %exitcond.not = icmp eq i32 %inc, %9
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %offset = getelementptr inbounds %struct.ethtool_eeprom, ptr %eeprom, i32 0, i32 2
  %19 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %offset, align 4
  %arrayidx = getelementptr [11 x i8], ptr %eeprom_data, i32 0, i32 %20
  %21 = call ptr @memcpy(ptr %data, ptr %arrayidx, i32 %9)
  %magic = getelementptr inbounds %struct.ethtool_eeprom, ptr %eeprom, i32 0, i32 1
  %22 = ptrtoint ptr %magic to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 37920, ptr %magic, align 4
  br label %cleanup8

cleanup8:                                         ; preds = %for.end, %smsc9420_eeprom_read_location.exit.cleanup8_crit_edge
  %storemerge = phi i32 [ %9, %for.end ], [ 0, %smsc9420_eeprom_read_location.exit.cleanup8_crit_edge ]
  %retval.2 = phi i32 [ 0, %for.end ], [ %call10.i, %smsc9420_eeprom_read_location.exit.cleanup8_crit_edge ]
  %23 = ptrtoint ptr %len1 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %storemerge, ptr %len1, align 4
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %eeprom_data) #16
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smsc9420_ethtool_set_eeprom(ptr nocapture noundef readonly %dev, ptr nocapture noundef %eeprom, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %magic = getelementptr inbounds %struct.ethtool_eeprom, ptr %eeprom, i32 0, i32 1
  %0 = ptrtoint ptr %magic to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %magic, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 37920, i32 %1)
  %cmp.not = icmp eq i32 %1, 37920
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 208
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #16, !srcloc !211
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !212
  %5 = and i32 %4, -28673
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i3.i = getelementptr i8, ptr %7, i32 208
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !213
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3.i, i32 %5) #16, !srcloc !214
  tail call void @msleep(i32 noundef 1) #16
  %call1 = tail call fastcc i32 @smsc9420_eeprom_send_cmd(ptr noundef %add.ptr.i, i32 noundef 536870912)
  %offset = getelementptr inbounds %struct.ethtool_eeprom, ptr %eeprom, i32 0, i32 2
  %8 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %offset, align 4
  %conv = trunc i32 %9 to i8
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %data, align 1
  %call2 = tail call fastcc i32 @smsc9420_eeprom_write_location(ptr noundef %add.ptr.i, i8 noundef zeroext %conv, i8 noundef zeroext %11)
  %call3 = tail call fastcc i32 @smsc9420_eeprom_send_cmd(ptr noundef %add.ptr.i, i32 noundef 268435456)
  %len = getelementptr inbounds %struct.ethtool_eeprom, ptr %eeprom, i32 0, i32 3
  %12 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %len, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethtool_op_get_ts_info(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_ethtool_get_link_ksettings(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_ethtool_set_link_ksettings(ptr noundef, ptr noundef) #0

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #15

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @smsc9420_eeprom_send_cmd(ptr nocapture noundef readonly %pd, i32 noundef %op) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_enable = getelementptr inbounds %struct.smsc9420_pdata, ptr %pd, i32 0, i32 18
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msg_enable, align 4
  %and = and i32 %1, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end8_crit_edge, label %do.body1

entry.do.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end8

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smsc9420_eeprom_send_cmd.__UNIQUE_ID_ddebug359, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smsc9420_eeprom_send_cmd, %if.then5)) #16
          to label %do.end8 [label %if.then5], !srcloc !210

if.then5:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #18
  %dev = getelementptr inbounds %struct.smsc9420_pdata, ptr %pd, i32 0, i32 2
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @smsc9420_eeprom_send_cmd.__UNIQUE_ID_ddebug359, ptr noundef %3, ptr noundef nonnull @.str.79, i32 noundef %op) #16
  br label %do.end8

do.end8:                                          ; preds = %if.then5, %do.body1, %entry.do.end8_crit_edge
  %4 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pd, align 8
  %add.ptr.i = getelementptr i8, ptr %5, i32 248
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #16, !srcloc !211
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !212
  %.mask = and i32 %6, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask)
  %tobool11.not = icmp eq i32 %.mask, 0
  br i1 %tobool11.not, label %if.end22, label %do.body13

do.body13:                                        ; preds = %do.end8
  %7 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %msg_enable, align 4
  %and15 = and i32 %8, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %do.body13.cleanup_crit_edge, label %if.then17

do.body13.cleanup_crit_edge:                      ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then17:                                        ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #18
  %dev18 = getelementptr inbounds %struct.smsc9420_pdata, ptr %pd, i32 0, i32 2
  %9 = ptrtoint ptr %dev18 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev18, align 8
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %10, ptr noundef nonnull @.str.80) #19
  br label %cleanup

if.end22:                                         ; preds = %do.end8
  %or = or i32 %op, -2147483648
  %11 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pd, align 8
  %add.ptr.i70 = getelementptr i8, ptr %12, i32 248
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !213
  tail call void @arm_heavy_mb() #16
  %13 = tail call i32 @llvm.bswap.i32(i32 %or) #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i70, i32 %13) #16, !srcloc !214
  br label %do.body23

do.body23:                                        ; preds = %land.rhs.do.body23_crit_edge, %if.end22
  %timeout.0 = phi i32 [ 100, %if.end22 ], [ %dec, %land.rhs.do.body23_crit_edge ]
  tail call void @msleep(i32 noundef 1) #16
  %14 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pd, align 8
  %add.ptr.i71 = getelementptr i8, ptr %15, i32 248
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i71) #16, !srcloc !211
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !212
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %17)
  %tobool27.not = icmp sgt i32 %17, -1
  br i1 %tobool27.not, label %if.end41, label %land.rhs

land.rhs:                                         ; preds = %do.body23
  %dec = add nsw i32 %timeout.0, -1
  %tobool28.not = icmp eq i32 %dec, 0
  br i1 %tobool28.not, label %do.body32, label %land.rhs.do.body23_crit_edge

land.rhs.do.body23_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body23

do.body32:                                        ; preds = %land.rhs
  %18 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %msg_enable, align 4
  %and34 = and i32 %19, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  br i1 %tobool35.not, label %do.body32.cleanup_crit_edge, label %if.then36

do.body32.cleanup_crit_edge:                      ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then36:                                        ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #18
  %dev37 = getelementptr inbounds %struct.smsc9420_pdata, ptr %pd, i32 0, i32 2
  %20 = ptrtoint ptr %dev37 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev37, align 8
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %21, ptr noundef nonnull @.str.81) #19
  br label %cleanup

if.end41:                                         ; preds = %do.body23
  %and42 = and i32 %17, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42)
  %tobool43.not = icmp eq i32 %and42, 0
  br i1 %tobool43.not, label %if.end41.cleanup_crit_edge, label %do.body45

if.end41.cleanup_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

do.body45:                                        ; preds = %if.end41
  %22 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %msg_enable, align 4
  %and47 = and i32 %23, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47)
  %tobool48.not = icmp eq i32 %and47, 0
  br i1 %tobool48.not, label %do.body45.cleanup_crit_edge, label %if.then49

do.body45.cleanup_crit_edge:                      ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then49:                                        ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #18
  %dev50 = getelementptr inbounds %struct.smsc9420_pdata, ptr %pd, i32 0, i32 2
  %24 = ptrtoint ptr %dev50 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev50, align 8
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %25, ptr noundef nonnull @.str.82) #19
  br label %cleanup

cleanup:                                          ; preds = %if.then49, %do.body45.cleanup_crit_edge, %if.end41.cleanup_crit_edge, %if.then36, %do.body32.cleanup_crit_edge, %if.then17, %do.body13.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %if.then17 ], [ -16, %do.body13.cleanup_crit_edge ], [ -11, %if.then36 ], [ -11, %do.body32.cleanup_crit_edge ], [ -22, %if.then49 ], [ -22, %do.body45.cleanup_crit_edge ], [ 0, %if.end41.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @smsc9420_eeprom_write_location(ptr nocapture noundef readonly %pd, i8 noundef zeroext %address, i8 noundef zeroext %data) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %address to i32
  %or = or i32 %conv, 1342177280
  %msg_enable = getelementptr inbounds %struct.smsc9420_pdata, ptr %pd, i32 0, i32 18
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msg_enable, align 4
  %and = and i32 %1, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end10_crit_edge, label %do.body1

entry.do.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end10

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smsc9420_eeprom_write_location.__UNIQUE_ID_ddebug361, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smsc9420_eeprom_write_location, %if.then5)) #16
          to label %do.end10 [label %if.then5], !srcloc !210

if.then5:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #18
  %dev = getelementptr inbounds %struct.smsc9420_pdata, ptr %pd, i32 0, i32 2
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 8
  %conv7 = zext i8 %data to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @smsc9420_eeprom_write_location.__UNIQUE_ID_ddebug361, ptr noundef %3, ptr noundef nonnull @.str.84, i32 noundef %conv, i32 noundef %conv7) #16
  br label %do.end10

do.end10:                                         ; preds = %if.then5, %do.body1, %entry.do.end10_crit_edge
  %call11 = tail call fastcc i32 @smsc9420_eeprom_send_cmd(ptr noundef %pd, i32 noundef %or)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.then13, label %do.end10.if.end18_crit_edge

do.end10.if.end18_crit_edge:                      ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end18

if.then13:                                        ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #18
  %or15 = or i32 %conv, 805306368
  %conv16 = zext i8 %data to i32
  %4 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pd, align 8
  %add.ptr.i = getelementptr i8, ptr %5, i32 252
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !213
  tail call void @arm_heavy_mb() #16
  %6 = shl nuw i32 %conv16, 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %6) #16, !srcloc !214
  %call17 = tail call fastcc i32 @smsc9420_eeprom_send_cmd(ptr noundef %pd, i32 noundef %or15)
  br label %if.end18

if.end18:                                         ; preds = %if.then13, %do.end10.if.end18_crit_edge
  %ret.0 = phi i32 [ %call11, %do.end10.if.end18_crit_edge ], [ %call17, %if.then13 ]
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_complete_done(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @eth_type_trans(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_receive_skb(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smsc9420_suspend(ptr noundef %dev_d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev_d, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  %int_lock = getelementptr i8, ptr %1, i32 2356
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %int_lock) #16
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i26 = getelementptr i8, ptr %3, i32 204
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i26) #16, !srcloc !211
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !212
  %5 = and i32 %4, -1025
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i27 = getelementptr i8, ptr %7, i32 204
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !213
  tail call void @arm_heavy_mb() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27, i32 %5) #16, !srcloc !214
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %int_lock, i32 noundef %call4) #16
  %state.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %8 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %entry
  tail call fastcc void @local_bh_disable() #16
  %10 = tail call i32 @llvm.read_register.i32(metadata !199) #16
  %and.i.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i to ptr
  %cpu1.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %cpu1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cpu1.i, align 4
  %tx_global_lock.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 108
  tail call void @_raw_spin_lock(ptr noundef %tx_global_lock.i) #16
  %num_tx_queues.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 104
  %14 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_tx_queues.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp13.not.i = icmp eq i32 %15, 0
  br i1 %cmp13.not.i, label %if.then.netif_tx_disable.exit_crit_edge, label %for.body.lr.ph.i

if.then.netif_tx_disable.exit_crit_edge:          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %netif_tx_disable.exit

for.body.lr.ph.i:                                 ; preds = %if.then
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 103
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.014.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %16 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %_tx.i.i, align 128
  %_xmit_lock.i.i = getelementptr %struct.netdev_queue, ptr %17, i32 %i.014.i, i32 10
  tail call void @_raw_spin_lock(ptr noundef %_xmit_lock.i.i) #16
  %xmit_lock_owner.i.i = getelementptr %struct.netdev_queue, ptr %17, i32 %i.014.i, i32 11
  %18 = ptrtoint ptr %xmit_lock_owner.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile i32 %13, ptr %xmit_lock_owner.i.i, align 4
  %state.i.i = getelementptr %struct.netdev_queue, ptr %17, i32 %i.014.i, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #16
  %19 = ptrtoint ptr %xmit_lock_owner.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile i32 -1, ptr %xmit_lock_owner.i.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %_xmit_lock.i.i) #16
  %inc.i = add nuw i32 %i.014.i, 1
  %20 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %num_tx_queues.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %21
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.netif_tx_disable.exit_crit_edge

for.body.i.netif_tx_disable.exit_crit_edge:       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %netif_tx_disable.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

netif_tx_disable.exit:                            ; preds = %for.body.i.netif_tx_disable.exit_crit_edge, %if.then.netif_tx_disable.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %tx_global_lock.i) #16
  tail call fastcc void @local_bh_enable() #16
  tail call fastcc void @smsc9420_stop_tx(ptr noundef %add.ptr.i)
  tail call fastcc void @smsc9420_free_tx_ring(ptr noundef %add.ptr.i)
  %napi = getelementptr i8, ptr %1, i32 2448
  tail call void @napi_disable(ptr noundef %napi) #16
  tail call fastcc void @smsc9420_stop_rx(ptr noundef %add.ptr.i)
  tail call fastcc void @smsc9420_free_rx_ring(ptr noundef %add.ptr.i)
  %pdev = getelementptr i8, ptr %1, i32 2308
  %22 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pdev, align 4
  %irq = getelementptr inbounds %struct.pci_dev, ptr %23, i32 0, i32 46
  %24 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %irq, align 4
  %call10 = tail call ptr @free_irq(i32 noundef %25, ptr noundef %add.ptr.i) #16
  tail call void @netif_device_detach(ptr noundef %1) #16
  br label %if.end

if.end:                                           ; preds = %netif_tx_disable.exit, %entry.if.end_crit_edge
  %call11 = tail call i32 @device_wakeup_disable(ptr noundef %dev_d) #16
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smsc9420_resume(ptr noundef %dev_d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev_d, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %add.ptr = getelementptr i8, ptr %dev_d, i32 -136
  tail call void @pci_set_master(ptr noundef %add.ptr) #16
  %call1 = tail call i32 @device_wakeup_disable(ptr noundef %dev_d) #16
  %state.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %call3 = tail call i32 @smsc9420_open(ptr noundef %1)
  tail call void @netif_device_attach(ptr noundef %1) #16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %err.0 = phi i32 [ %call3, %if.then ], [ 0, %entry.if.end_crit_edge ]
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_detach(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_wakeup_disable(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_attach(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #16

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #17 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 92)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #17 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 92)
  ret void
}

attributes #0 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind readonly }
attributes #10 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #15 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #16 = { nounwind }
attributes #17 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #18 = { nomerge }
attributes #19 = { cold nounwind }
attributes #20 = { nounwind allocsize(2) }
attributes #21 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !7, !8, !9, !11, !12, !14, !16, !18, !19, !21, !23, !25, !27, !28, !29, !30, !31, !32, !34, !35, !36, !38, !40, !42, !44, !46, !47, !49, !51, !53, !55, !57, !58, !60, !61, !63, !64, !65, !66, !67, !69, !71, !73, !74, !75, !77, !79, !80, !81, !83, !84, !86, !87, !89, !91, !93, !95, !96, !97, !99, !101, !102, !104, !106, !108, !110, !112, !113, !114, !116, !117, !119, !121, !122, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !142, !143, !145, !146, !148, !149, !151, !152, !154, !155, !156, !158, !160, !162, !164, !166, !167, !168, !170, !171, !173, !174, !176, !177, !179, !181, !182, !183, !185, !186, !187, !189, !191, !193, !195, !196, !197}
!llvm.named.register.sp = !{!199}
!llvm.module.flags = !{!200, !201, !202, !203, !204, !205, !206, !207}
!llvm.ident = !{!208}

!0 = !{ptr @__UNIQUE_ID_file353, !1, !"__UNIQUE_ID_file353", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/smsc/smsc9420.c", i32 29, i32 1}
!2 = !{ptr @__UNIQUE_ID_license354, !1, !"__UNIQUE_ID_license354", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_version355, !4, !"__UNIQUE_ID_version355", i1 false, i1 false}
!4 = !{!"../drivers/net/ethernet/smsc/smsc9420.c", i32 30, i32 1}
!5 = !{ptr @.str, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @__modver_attr, !4, !"__modver_attr", i1 false, i1 false}
!9 = !{ptr @__param_debug, !10, !"__param_debug", i1 false, i1 false}
!10 = !{!"../drivers/net/ethernet/smsc/smsc9420.c", i32 83, i32 1}
!11 = !{ptr @__UNIQUE_ID_debugtype356, !10, !"__UNIQUE_ID_debugtype356", i1 false, i1 false}
!12 = !{ptr @__UNIQUE_ID_debug357, !13, !"__UNIQUE_ID_debug357", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/smsc/smsc9420.c", i32 84, i32 1}
!14 = !{ptr @__initcall__kmod_smsc9420__380_1673_smsc9420_init_module6, !15, !"__initcall__kmod_smsc9420__380_1673_smsc9420_init_module6", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/smsc/smsc9420.c", i32 1673, i32 1}
!16 = !{ptr @__exitcall_smsc9420_exit_module, !17, !"__exitcall_smsc9420_exit_module", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/smsc/smsc9420.c", i32 1674, i32 1}
!18 = !{ptr @__param_str_debug, !10, !"__param_str_debug", i1 false, i1 false}
!19 = !{ptr @debug, !20, !"debug", i1 false, i1 false}
!20 = !{!"../drivers/net/ethernet/smsc/smsc9420.c", i32 82, i32 13}
!21 = !{ptr @smsc9420_driver, !22, !"smsc9420_driver", i1 false, i1 false}
!22 = !{!"../drivers/net/ethernet/smsc/smsc9420.c", i32 1653, i32 26}
!23 = !{ptr @smsc9420_id_table, !24, !"smsc9420_id_table", i1 false, i1 false}
!24 = !{!"../drivers/net/ethernet/smsc/smsc9420.c", i32 72, i32 35}
!25 = !{ptr @.str.3, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/ethernet/smsc/smsc9420.c", i32 1504, i32 2}
!27 = !{ptr @.str.4, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.5, !26, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @smsc9420_probe._entry, !26, !"_entry", i1 false, i1 false}
!30 = !{ptr @smsc9420_probe._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.6, !26, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.8, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/ethernet/smsc/smsc9420.c", i32 1509, i32 3}
!34 = !{ptr @smsc9420_probe._entry.7, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @smsc9420_probe._entry_ptr.9, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.10, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/ethernet/smsc/smsc9420.c", i32 1522, i32 19}
!38 = !{ptr @.str.11, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/ethernet/smsc/smsc9420.c", i32 1527, i32 19}
!40 = !{ptr @.str.12, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/ethernet/smsc/smsc9420.c", i32 1532, i32 19}
!42 = !{ptr @.str.13, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/ethernet/smsc/smsc9420.c", i32 1539, i32 19}
!44 = !{ptr @.str.14, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/ethernet/smsc/smsc9420.c", i32 1567, i32 2}
!46 = !{ptr @smsc9420_probe.__UNIQUE_ID_ddebug379, !45, !"__UNIQUE_ID_ddebug379", i1 false, i1 false}
!47 = !{ptr @.str.15, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/ethernet/smsc/smsc9420.c", i32 1572, i32 3}
!49 = !{ptr @.str.16, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/ethernet/smsc/smsc9420.c", i32 1576, i32 3}
!51 = !{ptr @.str.17, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/ethernet/smsc/smsc9420.c", i32 1577, i32 3}
!53 = !{ptr @.str.18, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/ethernet/smsc/smsc9420.c", i32 1592, i32 3}
!55 = !{ptr @smsc9420_probe.__key, !56, !"__key", i1 false, i1 false}
!56 = !{!"../drivers/net/ethernet/smsc/smsc9420.c", i32 1599, i32 2}
!57 = !{ptr @.str.19, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @smsc9420_probe.__key.20, !59, !"__key", i1 false, i1 false}
!59 = !{!"../drivers/net/ethernet/smsc/smsc9420.c", i32 1600, i32 2}
!60 = !{ptr @.str.21, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @.str.23, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/net/ethernet/smsc/smsc9420.c", i32 1602, i32 2}
!63 = !{ptr @.str.24, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @.str.25, !62, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @smsc9420_probe._entry.22, !62, !"_entry", i1 false, i1 false}
!66 = !{ptr @smsc9420_probe._entry_ptr.26, !62, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @smsc_debug, !68, !"smsc_debug", i1 false, i1 false}
!68 = !{!"../drivers/net/ethernet/smsc/smsc9420.c", i32 81, i32 13}
!69 = !{ptr @.str.27, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/net/ethernet/smsc/smsc9420.c", i32 675, i32 3}
!71 = !{ptr @.str.28, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/net/ethernet/smsc/smsc9420.c", i32 196, i32 3}
!73 = !{ptr @.str.29, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @smsc9420_eeprom_reload.__UNIQUE_ID_ddebug358, !72, !"__UNIQUE_ID_ddebug358", i1 false, i1 false}
!75 = !{ptr @.str.30, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/net/ethernet/smsc/smsc9420.c", i32 209, i32 2}
!77 = !{ptr @.str.31, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/net/ethernet/smsc/smsc9420.c", i32 424, i32 3}
!79 = !{ptr @.str.32, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @smsc9420_check_mac_address.__UNIQUE_ID_ddebug364, !78, !"__UNIQUE_ID_ddebug364", i1 false, i1 false}
!81 = !{ptr @.str.33, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/net/ethernet/smsc/smsc9420.c", i32 441, i32 4}
!83 = !{ptr @smsc9420_check_mac_address.__UNIQUE_ID_ddebug365, !82, !"__UNIQUE_ID_ddebug365", i1 false, i1 false}
!84 = !{ptr @.str.34, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/net/ethernet/smsc/smsc9420.c", i32 447, i32 4}
!86 = !{ptr @smsc9420_check_mac_address.__UNIQUE_ID_ddebug366, !85, !"__UNIQUE_ID_ddebug366", i1 false, i1 false}
!87 = !{ptr @smsc9420_netdev_ops, !88, !"smsc9420_netdev_ops", i1 false, i1 false}
!88 = !{!"../drivers/net/ethernet/smsc/smsc9420.c", i32 1481, i32 36}
!89 = !{ptr @.str.35, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/net/ethernet/smsc/smsc9420.c", i32 1274, i32 3}
!91 = !{ptr @.str.36, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/net/ethernet/smsc/smsc9420.c", i32 1294, i32 3}
!93 = !{ptr @.str.37, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/net/ethernet/smsc/smsc9420.c", i32 1329, i32 2}
!95 = !{ptr @.str.38, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @smsc9420_open.__UNIQUE_ID_ddebug377, !94, !"__UNIQUE_ID_ddebug377", i1 false, i1 false}
!97 = !{ptr @.str.39, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/net/ethernet/smsc/smsc9420.c", i32 1359, i32 3}
!99 = !{ptr @.str.40, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/net/ethernet/smsc/smsc9420.c", i32 1364, i32 2}
!101 = !{ptr @smsc9420_open.__UNIQUE_ID_ddebug378, !100, !"__UNIQUE_ID_ddebug378", i1 false, i1 false}
!102 = !{ptr @.str.41, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/net/ethernet/smsc/smsc9420.c", i32 1368, i32 3}
!104 = !{ptr @.str.42, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/net/ethernet/smsc/smsc9420.c", i32 1376, i32 3}
!106 = !{ptr @.str.43, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/net/ethernet/smsc/smsc9420.c", i32 1384, i32 3}
!108 = !{ptr @.str.44, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/net/ethernet/smsc/smsc9420.c", i32 1234, i32 4}
!110 = !{ptr @.str.45, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/net/ethernet/smsc/smsc9420.c", i32 1244, i32 2}
!112 = !{ptr @.str.46, !111, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @smsc9420_alloc_rx_ring.__UNIQUE_ID_ddebug375, !111, !"__UNIQUE_ID_ddebug375", i1 false, i1 false}
!114 = !{ptr @.str.47, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/net/ethernet/smsc/smsc9420.c", i32 1251, i32 3}
!116 = !{ptr @smsc9420_alloc_rx_ring.__UNIQUE_ID_ddebug376, !115, !"__UNIQUE_ID_ddebug376", i1 false, i1 false}
!117 = !{ptr @.str.48, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/net/ethernet/smsc/smsc9420.c", i32 793, i32 3}
!119 = distinct !{null, !120, !"__already_done", i1 false, i1 false}
!120 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!121 = !{ptr @.str.49, !120, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @.str.50, !120, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @.str.51, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/net/ethernet/smsc/smsc9420.c", i32 1146, i32 22}
!125 = !{ptr @.str.52, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/net/ethernet/smsc/smsc9420.c", i32 1147, i32 45}
!127 = !{ptr @.str.53, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/net/ethernet/smsc/smsc9420.c", i32 1157, i32 3}
!129 = !{ptr @.str.54, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/net/ethernet/smsc/smsc9420.c", i32 1162, i32 3}
!131 = !{ptr @.str.55, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/net/ethernet/smsc/smsc9420.c", i32 114, i32 3}
!133 = !{ptr @.str.56, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/net/ethernet/smsc/smsc9420.c", i32 133, i32 2}
!135 = !{ptr @.str.57, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/net/ethernet/smsc/smsc9420.c", i32 1111, i32 19}
!137 = !{ptr @.str.58, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/net/ethernet/smsc/smsc9420.c", i32 1119, i32 19}
!139 = !{ptr @.str.59, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/net/ethernet/smsc/smsc9420.c", i32 1079, i32 4}
!141 = !{ptr @.str.60, !140, !"<string literal>", i1 false, i1 false}
!142 = !{ptr @smsc9420_phy_adjust_link.__UNIQUE_ID_ddebug371, !140, !"__UNIQUE_ID_ddebug371", i1 false, i1 false}
!143 = !{ptr @.str.61, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/net/ethernet/smsc/smsc9420.c", i32 1082, i32 4}
!145 = !{ptr @smsc9420_phy_adjust_link.__UNIQUE_ID_ddebug372, !144, !"__UNIQUE_ID_ddebug372", i1 false, i1 false}
!146 = !{ptr @.str.62, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/net/ethernet/smsc/smsc9420.c", i32 1094, i32 4}
!148 = !{ptr @smsc9420_phy_adjust_link.__UNIQUE_ID_ddebug373, !147, !"__UNIQUE_ID_ddebug373", i1 false, i1 false}
!149 = !{ptr @.str.63, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/net/ethernet/smsc/smsc9420.c", i32 1096, i32 4}
!151 = !{ptr @smsc9420_phy_adjust_link.__UNIQUE_ID_ddebug374, !150, !"__UNIQUE_ID_ddebug374", i1 false, i1 false}
!152 = !{ptr @.str.64, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/net/ethernet/smsc/smsc9420.c", i32 1057, i32 3}
!154 = !{ptr @.str.65, !153, !"<string literal>", i1 false, i1 false}
!155 = !{ptr @.str.66, !153, !"<string literal>", i1 false, i1 false}
!156 = !{ptr @.str.67, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/net/ethernet/smsc/smsc9420.c", i32 1061, i32 3}
!158 = !{ptr @.str.68, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/net/ethernet/smsc/smsc9420.c", i32 471, i32 3}
!160 = !{ptr @.str.69, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/net/ethernet/smsc/smsc9420.c", i32 584, i32 3}
!162 = !{ptr @.str.70, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/net/ethernet/smsc/smsc9420.c", i32 944, i32 3}
!164 = !{ptr @.str.71, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/net/ethernet/smsc/smsc9420.c", i32 997, i32 3}
!166 = !{ptr @.str.72, !165, !"<string literal>", i1 false, i1 false}
!167 = !{ptr @smsc9420_set_multicast_list.__UNIQUE_ID_ddebug367, !165, !"__UNIQUE_ID_ddebug367", i1 false, i1 false}
!168 = !{ptr @.str.73, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/net/ethernet/smsc/smsc9420.c", i32 1002, i32 3}
!170 = !{ptr @smsc9420_set_multicast_list.__UNIQUE_ID_ddebug368, !169, !"__UNIQUE_ID_ddebug368", i1 false, i1 false}
!171 = !{ptr @.str.74, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/net/ethernet/smsc/smsc9420.c", i32 1010, i32 3}
!173 = !{ptr @smsc9420_set_multicast_list.__UNIQUE_ID_ddebug369, !172, !"__UNIQUE_ID_ddebug369", i1 false, i1 false}
!174 = !{ptr @.str.75, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/net/ethernet/smsc/smsc9420.c", i32 1028, i32 3}
!176 = !{ptr @smsc9420_set_multicast_list.__UNIQUE_ID_ddebug370, !175, !"__UNIQUE_ID_ddebug370", i1 false, i1 false}
!177 = !{ptr @smsc9420_ethtool_ops, !178, !"smsc9420_ethtool_ops", i1 false, i1 false}
!178 = !{!"../drivers/net/ethernet/smsc/smsc9420.c", i32 387, i32 33}
!179 = !{ptr @.str.76, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/net/ethernet/smsc/smsc9420.c", i32 311, i32 2}
!181 = !{ptr @.str.77, !180, !"<string literal>", i1 false, i1 false}
!182 = !{ptr @smsc9420_eeprom_read_location.__UNIQUE_ID_ddebug360, !180, !"__UNIQUE_ID_ddebug360", i1 false, i1 false}
!183 = !{ptr @.str.78, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/net/ethernet/smsc/smsc9420.c", i32 277, i32 2}
!185 = !{ptr @.str.79, !184, !"<string literal>", i1 false, i1 false}
!186 = !{ptr @smsc9420_eeprom_send_cmd.__UNIQUE_ID_ddebug359, !184, !"__UNIQUE_ID_ddebug359", i1 false, i1 false}
!187 = !{ptr @.str.80, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/net/ethernet/smsc/smsc9420.c", i32 279, i32 3}
!189 = !{ptr @.str.81, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/net/ethernet/smsc/smsc9420.c", i32 292, i32 3}
!191 = !{ptr @.str.82, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/net/ethernet/smsc/smsc9420.c", i32 297, i32 3}
!193 = !{ptr @.str.83, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/net/ethernet/smsc/smsc9420.c", i32 326, i32 2}
!195 = !{ptr @.str.84, !194, !"<string literal>", i1 false, i1 false}
!196 = !{ptr @smsc9420_eeprom_write_location.__UNIQUE_ID_ddebug361, !194, !"__UNIQUE_ID_ddebug361", i1 false, i1 false}
!197 = !{ptr @smsc9420_pm_ops, !198, !"smsc9420_pm_ops", i1 false, i1 false}
!198 = !{!"../drivers/net/ethernet/smsc/smsc9420.c", i32 1651, i32 8}
!199 = !{!"sp"}
!200 = !{i32 1, !"wchar_size", i32 2}
!201 = !{i32 1, !"min_enum_size", i32 4}
!202 = !{i32 8, !"branch-target-enforcement", i32 0}
!203 = !{i32 8, !"sign-return-address", i32 0}
!204 = !{i32 8, !"sign-return-address-all", i32 0}
!205 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!206 = !{i32 7, !"uwtable", i32 1}
!207 = !{i32 7, !"frame-pointer", i32 2}
!208 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!209 = !{!"branch_weights", i32 2000, i32 1}
!210 = !{i64 2148757828, i64 2148757833, i64 2148757846, i64 2148757890, i64 2148757924, i64 2148757945}
!211 = !{i64 4239054}
!212 = !{i64 2151779403}
!213 = !{i64 2151780758}
!214 = !{i64 4238636}
!215 = !{i64 2156997233, i64 2156997735, i64 2156997270, i64 2156997326, i64 2156997360, i64 2156997384, i64 2156997425, i64 2156997446, i64 2156997474, i64 2156997508}
!216 = !{i64 2156998871, i64 2156999373, i64 2156998908, i64 2156998964, i64 2156998998, i64 2156999022, i64 2156999063, i64 2156999084, i64 2156999112, i64 2156999146}
!217 = !{!"branch_weights", i32 1, i32 2000}
!218 = !{i64 2157000505, i64 2157001007, i64 2157000542, i64 2157000598, i64 2157000632, i64 2157000656, i64 2157000697, i64 2157000718, i64 2157000746, i64 2157000780}
!219 = !{i64 2157002139, i64 2157002641, i64 2157002176, i64 2157002232, i64 2157002266, i64 2157002290, i64 2157002331, i64 2157002352, i64 2157002380, i64 2157002414}
!220 = !{i64 2156868898, i64 2156869399, i64 2156868935, i64 2156868991, i64 2156869025, i64 2156869049, i64 2156869090, i64 2156869111, i64 2156869139, i64 2156869173}
!221 = !{i64 2156919246}
!222 = !{i8 0, i8 2}
!223 = !{i64 2156961192, i64 2156961694, i64 2156961229, i64 2156961285, i64 2156961319, i64 2156961343, i64 2156961384, i64 2156961405, i64 2156961433, i64 2156961467}
!224 = !{i64 2156962899}
!225 = !{i64 2156909982, i64 2156910483, i64 2156910019, i64 2156910075, i64 2156910109, i64 2156910133, i64 2156910174, i64 2156910195, i64 2156910223, i64 2156910257}
!226 = !{i64 2156911613, i64 2156912114, i64 2156911650, i64 2156911706, i64 2156911740, i64 2156911764, i64 2156911805, i64 2156911826, i64 2156911854, i64 2156911888}
!227 = !{i64 2156919809}
!228 = !{i64 2156920269, i64 2156920770, i64 2156920306, i64 2156920362, i64 2156920396, i64 2156920420, i64 2156920461, i64 2156920482, i64 2156920510, i64 2156920544}
!229 = !{i64 2156921936, i64 2156922437, i64 2156921973, i64 2156922029, i64 2156922063, i64 2156922087, i64 2156922128, i64 2156922149, i64 2156922177, i64 2156922211}
!230 = !{i64 2156927546}
!231 = !{i64 2156927647}
!232 = !{i64 2156928086, i64 2156928587, i64 2156928123, i64 2156928179, i64 2156928213, i64 2156928237, i64 2156928278, i64 2156928299, i64 2156928327, i64 2156928361}
!233 = !{i64 2156929743, i64 2156930244, i64 2156929780, i64 2156929836, i64 2156929870, i64 2156929894, i64 2156929935, i64 2156929956, i64 2156929984, i64 2156930018}
!234 = !{i64 2156931408, i64 2156931909, i64 2156931445, i64 2156931501, i64 2156931535, i64 2156931559, i64 2156931600, i64 2156931621, i64 2156931649, i64 2156931683}
!235 = !{i64 2156933589}
!236 = !{i64 2156933755}
!237 = !{i64 2156904223, i64 2156904724, i64 2156904260, i64 2156904316, i64 2156904350, i64 2156904374, i64 2156904415, i64 2156904436, i64 2156904464, i64 2156904498}
!238 = !{i64 2156905852, i64 2156906353, i64 2156905889, i64 2156905945, i64 2156905979, i64 2156906003, i64 2156906044, i64 2156906065, i64 2156906093, i64 2156906127}
!239 = !{i64 2156908477}
!240 = !{i64 2156963278, i64 2156963780, i64 2156963315, i64 2156963371, i64 2156963405, i64 2156963429, i64 2156963470, i64 2156963491, i64 2156963519, i64 2156963553}
!241 = !{i64 2156958581, i64 2156959083, i64 2156958618, i64 2156958674, i64 2156958708, i64 2156958732, i64 2156958773, i64 2156958794, i64 2156958822, i64 2156958856}
!242 = !{i64 2156900955, i64 2156901456, i64 2156900992, i64 2156901048, i64 2156901082, i64 2156901106, i64 2156901147, i64 2156901168, i64 2156901196, i64 2156901230}
!243 = !{i64 2156902528}
!244 = !{i64 2156897398, i64 2156897899, i64 2156897435, i64 2156897491, i64 2156897525, i64 2156897549, i64 2156897590, i64 2156897611, i64 2156897639, i64 2156897673}
!245 = !{i64 2156899062, i64 2156899563, i64 2156899099, i64 2156899155, i64 2156899189, i64 2156899213, i64 2156899254, i64 2156899275, i64 2156899303, i64 2156899337}
!246 = !{i64 2156900573}
!247 = !{i64 2156914233, i64 2156914734, i64 2156914270, i64 2156914326, i64 2156914360, i64 2156914384, i64 2156914425, i64 2156914446, i64 2156914474, i64 2156914508}
!248 = !{i64 2156915898, i64 2156916399, i64 2156915935, i64 2156915991, i64 2156916025, i64 2156916049, i64 2156916090, i64 2156916111, i64 2156916139, i64 2156916173}
!249 = !{i64 2156917956}
