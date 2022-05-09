; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/natsemi/ns83820.c_pt.bc'
source_filename = "../drivers/net/ethernet/natsemi/ns83820.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

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
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.97 }
%union.anon.97 = type { ptr }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.99, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
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
%struct.atomic_t = type { i32 }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.99 = type { ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.104, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.121, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.104 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.121 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
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
%struct.ns83820 = type { ptr, ptr, ptr, %struct.rx_info, %struct.tasklet_struct, i32, %struct.work_struct, %struct.spinlock, i32, i32, i32, i32, %struct.spinlock, i16, i16, i16, i16, %struct.atomic_t, [128 x ptr], [4 x i8], [16 x i8], ptr, i32, %struct.timer_list, [8 x i8] }
%struct.rx_info = type { %struct.spinlock, i32, i32, [64 x ptr], ptr, i16, i16, ptr, i32 }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.122, i32 }
%union.anon.122 = type { ptr }
%struct.page = type { i32, %union.anon.2, %union.anon.96, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.96 = type { %struct.atomic_t }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.ethtool_drvinfo = type { i32, [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8], [12 x i8], i32, i32, i32, i32, i32 }
%struct.ethtool_link_settings = type { i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [1 x i8], [7 x i32], [0 x i32] }
%struct.ethtool_link_ksettings = type { %struct.ethtool_link_settings, %struct.anon.120, i32 }
%struct.anon.120 = type { [3 x i32], [3 x i32], [3 x i32] }

@driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @ns83820_pci_tbl, ptr @ns83820_init_one, ptr @ns83820_remove_one, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__UNIQUE_ID_author343 = internal constant [49 x i8] c"ns83820.author=Benjamin LaHaise <bcrl@kvack.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description344 = internal constant [70 x i8] c"ns83820.description=National Semiconductor DP83820 10/100/1000 driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file345 = internal constant [50 x i8] c"ns83820.file=drivers/net/ethernet/natsemi/ns83820\00", section ".modinfo", align 1
@__UNIQUE_ID_license346 = internal constant [20 x i8] c"ns83820.license=GPL\00", section ".modinfo", align 1
@__param_str_lnksts = internal constant [15 x i8] c"ns83820.lnksts\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@lnksts = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_lnksts = internal constant %struct.kernel_param { ptr @__param_str_lnksts, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.97 { ptr @lnksts } }, section "__param", align 4
@__UNIQUE_ID_lnkststype347 = internal constant [28 x i8] c"ns83820.parmtype=lnksts:int\00", section ".modinfo", align 1
@__UNIQUE_ID_lnksts348 = internal constant [43 x i8] c"ns83820.parm=lnksts:Polarity of LNKSTS bit\00", section ".modinfo", align 1
@__param_str_ihr = internal constant [12 x i8] c"ns83820.ihr\00", align 1
@ihr = internal global { i32, [28 x i8] } { i32 2, [28 x i8] zeroinitializer }, align 32
@__param_ihr = internal constant %struct.kernel_param { ptr @__param_str_ihr, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.97 { ptr @ihr } }, section "__param", align 4
@__UNIQUE_ID_ihrtype349 = internal constant [25 x i8] c"ns83820.parmtype=ihr:int\00", section ".modinfo", align 1
@__UNIQUE_ID_ihr350 = internal constant [77 x i8] c"ns83820.parm=ihr:Time in 100 us increments to delay interrupts (range 0-127)\00", section ".modinfo", align 1
@__param_str_reset_phy = internal constant [18 x i8] c"ns83820.reset_phy\00", align 1
@reset_phy = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_reset_phy = internal constant %struct.kernel_param { ptr @__param_str_reset_phy, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.97 { ptr @reset_phy } }, section "__param", align 4
@__UNIQUE_ID_reset_phytype351 = internal constant [31 x i8] c"ns83820.parmtype=reset_phy:int\00", section ".modinfo", align 1
@__UNIQUE_ID_reset_phy352 = internal constant [60 x i8] c"ns83820.parm=reset_phy:Set to 1 to reset the PHY on startup\00", section ".modinfo", align 1
@__initcall__kmod_ns83820__353_2265_ns83820_init6 = internal global ptr @ns83820_init, section ".initcall6.init", align 4
@__exitcall_ns83820_exit = internal global ptr @ns83820_exit, section ".exitcall.exit", align 4
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ns83820\00", [24 x i8] zeroinitializer }, align 32
@ns83820_pci_tbl = internal constant { [2 x %struct.pci_device_id], [32 x i8] } { [2 x %struct.pci_device_id] [%struct.pci_device_id { i32 4107, i32 34, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@ns83820_init_one._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1912, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"dma_set_mask failed!\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ns83820_init_one\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/net/ethernet/natsemi/ns83820.c\00", [57 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ns83820_init_one._entry_ptr = internal global ptr @ns83820_init_one._entry, section ".printk_index", align 4
@ns83820_init_one.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&dev->rx_info.lock\00", [45 x i8] zeroinitializer }, align 32
@ns83820_init_one.__key.7 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&dev->tx_lock\00", [18 x i8] zeroinitializer }, align 32
@ns83820_init_one.__key.9 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&dev->misc_lock\00", [16 x i8] zeroinitializer }, align 32
@ns83820_init_one.__key.11 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"(work_completion)(&dev->tq_refill)\00", [61 x i8] zeroinitializer }, align 32
@ns83820_init_one._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.2, ptr @.str.3, i32 1936, ptr @.str.15, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"pci_enable_dev failed: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@ns83820_init_one._entry_ptr.16 = internal global ptr @ns83820_init_one._entry.13, section ".printk_index", align 4
@ns83820_init_one._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.2, ptr @.str.3, i32 1965, ptr @.str.15, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"unable to register irq %d, err %d\0A\00", [61 x i8] zeroinitializer }, align 32
@ns83820_init_one._entry_ptr.19 = internal global ptr @ns83820_init_one._entry.17, section ".printk_index", align 4
@ns83820_init_one._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.2, ptr @.str.3, i32 1979, ptr @.str.15, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"unable to get netdev name: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@ns83820_init_one._entry_ptr.22 = internal global ptr @ns83820_init_one._entry.20, section ".printk_index", align 4
@ns83820_init_one._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.2, ptr @.str.3, i32 1985, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%s: ns83820.c: 0x22c: %08x, subsystem: %04x:%04x\0A\00", [46 x i8] zeroinitializer }, align 32
@ns83820_init_one._entry_ptr.25 = internal global ptr @ns83820_init_one._entry.23, section ".printk_index", align 4
@netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @ns83820_open, ptr @ns83820_stop, ptr @ns83820_hard_start_xmit, ptr null, ptr null, ptr null, ptr @ns83820_set_multicast, ptr @eth_mac_addr, ptr @eth_validate_addr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ns83820_tx_timeout, ptr null, ptr null, ptr null, ptr @ns83820_get_stats, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@ops = internal constant { %struct.ethtool_ops, [68 x i8] } { %struct.ethtool_ops { i8 0, i32 0, i32 0, ptr @ns83820_get_drvinfo, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ns83820_get_link, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ns83820_get_link_ksettings, ptr @ns83820_set_link_ksettings, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [68 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sram bist\00", [22 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"eeprom bist\00", [20 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"eeprom load\00", [20 x i8] zeroinitializer }, align 32
@ns83820_init_one._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.2, ptr @.str.3, i32 2007, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016%s: detected 64 bit PCI data bus.\0A\00", [59 x i8] zeroinitializer }, align 32
@ns83820_init_one._entry_ptr.31 = internal global ptr @ns83820_init_one._entry.29, section ".printk_index", align 4
@ns83820_init_one._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.2, ptr @.str.3, i32 2011, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\016%s: EEPROM did not enable 64 bit bus.  Disabled.\0A\00", [44 x i8] zeroinitializer }, align 32
@ns83820_init_one._entry_ptr.34 = internal global ptr @ns83820_init_one._entry.32, section ".printk_index", align 4
@ns83820_init_one._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.2, ptr @.str.3, i32 2038, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\016%s: enabling optical transceiver\0A\00", [60 x i8] zeroinitializer }, align 32
@ns83820_init_one._entry_ptr.37 = internal global ptr @ns83820_init_one._entry.35, section ".printk_index", align 4
@ns83820_init_one._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.2, ptr @.str.3, i32 2059, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\016%s: resetting phy\0A\00", [43 x i8] zeroinitializer }, align 32
@ns83820_init_one._entry_ptr.40 = internal global ptr @ns83820_init_one._entry.38, section ".printk_index", align 4
@ns83820_init_one._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.2, ptr @.str.3, i32 2157, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016%s: using 64 bit addressing.\0A\00", [32 x i8] zeroinitializer }, align 32
@ns83820_init_one._entry_ptr.43 = internal global ptr @ns83820_init_one._entry.41, section ".printk_index", align 4
@ns83820_init_one._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.2, ptr @.str.3, i32 2167, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\016%s: ns83820 v0.23: DP83820 v%u.%u: %pM io=0x%08lx irq=%d f=%s\0A\00", [63 x i8] zeroinitializer }, align 32
@ns83820_init_one._entry_ptr.46 = internal global ptr @ns83820_init_one._entry.44, section ".printk_index", align 4
@.str.47 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"h,sg\00", [27 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"sg\00", [29 x i8] zeroinitializer }, align 32
@ns83820_init_one._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.2, ptr @.str.3, i32 2175, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016ns83820: unable to register netdev: %d\0A\00", [54 x i8] zeroinitializer }, align 32
@ns83820_init_one._entry_ptr.51 = internal global ptr @ns83820_init_one._entry.49, section ".printk_index", align 4
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.52 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@kick_rx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.55, ptr @.str.3, i32 468, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\017%s: uh-oh: next_rx == next_empty???\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"kick_rx\00", [24 x i8] zeroinitializer }, align 32
@kick_rx._entry_ptr = internal global ptr @kick_rx._entry, section ".printk_index", align 4
@ns83820_rx_kick._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.57, ptr @.str.3, i32 812, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"\017%s: BAD\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ns83820_rx_kick\00", [16 x i8] zeroinitializer }, align 32
@ns83820_rx_kick._entry_ptr = internal global ptr @ns83820_rx_kick._entry, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@ns83820_do_isr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.59, ptr @.str.3, i32 1457, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\011%s: BUG -- txdp out of range\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ns83820_do_isr\00", [17 x i8] zeroinitializer }, align 32
@ns83820_do_isr._entry_ptr = internal global ptr @ns83820_do_isr._entry, section ".printk_index", align 4
@phy_intr.speeds = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64], [44 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"10\00", [29 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"100\00", [28 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"1000\00", [27 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"1000(?)\00", [24 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"1000F\00", [26 x i8] zeroinitializer }, align 32
@phy_intr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.66, ptr @.str.3, i32 697, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016%s: link now %s mbps, %s duplex and up.\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"phy_intr\00", [23 x i8] zeroinitializer }, align 32
@phy_intr._entry_ptr = internal global ptr @phy_intr._entry, section ".printk_index", align 4
@.str.67 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"full\00", [27 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"half\00", [27 x i8] zeroinitializer }, align 32
@phy_intr._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.66, ptr @.str.3, i32 701, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\016%s: link now down.\0A\00", [42 x i8] zeroinitializer }, align 32
@phy_intr._entry_ptr.71 = internal global ptr @phy_intr._entry.69, section ".printk_index", align 4
@ns83820_open.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.72 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"(&dev->tx_watchdog)\00", [44 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@ns83820_tx_watch._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.74, ptr @.str.3, i32 1604, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\017%s: ns83820_tx_watch: %u %u %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ns83820_tx_watch\00", [47 x i8] zeroinitializer }, align 32
@ns83820_tx_watch._entry_ptr = internal global ptr @ns83820_tx_watch._entry, section ".printk_index", align 4
@ns83820_tx_timeout._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.76, ptr @.str.3, i32 1565, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\016%s: tx_timeout: tx_done_idx=%d free_idx=%d cmdsts=%08x\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ns83820_tx_timeout\00", [45 x i8] zeroinitializer }, align 32
@ns83820_tx_timeout._entry_ptr = internal global ptr @ns83820_tx_timeout._entry, section ".printk_index", align 4
@ns83820_tx_timeout._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.76, ptr @.str.3, i32 1583, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\016%s: after: tx_done_idx=%d free_idx=%d cmdsts=%08x\0A\00", [43 x i8] zeroinitializer }, align 32
@ns83820_tx_timeout._entry_ptr.79 = internal global ptr @ns83820_tx_timeout._entry.77, section ".printk_index", align 4
@.str.80 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"0.23\00", [27 x i8] zeroinitializer }, align 32
@ns83820_set_link_ksettings._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.82, ptr @.str.3, i32 1320, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\016%s: Duplex set via ethtool\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ns83820_set_link_ksettings\00", [37 x i8] zeroinitializer }, align 32
@ns83820_set_link_ksettings._entry_ptr = internal global ptr @ns83820_set_link_ksettings._entry, section ".printk_index", align 4
@ns83820_set_link_ksettings._entry.83 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.82, ptr @.str.3, i32 1333, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\016%s: autoneg enabled via ethtool\0A\00", [61 x i8] zeroinitializer }, align 32
@ns83820_set_link_ksettings._entry_ptr.85 = internal global ptr @ns83820_set_link_ksettings._entry.83, section ".printk_index", align 4
@ns83820_set_link_ksettings._entry.86 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.82, ptr @.str.3, i32 1340, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\016%s: autoneg %s via ethtool\0A\00", [34 x i8] zeroinitializer }, align 32
@ns83820_set_link_ksettings._entry_ptr.88 = internal global ptr @ns83820_set_link_ksettings._entry.86, section ".printk_index", align 4
@.str.89 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ENABLED\00", [24 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"DISABLED\00", [23 x i8] zeroinitializer }, align 32
@ns83820_run_bist._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.92, ptr @.str.3, i32 1729, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\016%s: %s failed! (0x%08x & 0x%08x)\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ns83820_run_bist\00", [47 x i8] zeroinitializer }, align 32
@ns83820_run_bist._entry_ptr = internal global ptr @ns83820_run_bist._entry, section ".printk_index", align 4
@ns83820_run_bist._entry.93 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.92, ptr @.str.3, i32 1732, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016%s: run_bist %s timed out! (%08x)\0A\00", [59 x i8] zeroinitializer }, align 32
@ns83820_run_bist._entry_ptr.95 = internal global ptr @ns83820_run_bist._entry.93, section ".printk_index", align 4
@ns83820_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.97, ptr @.str.3, i32 2241, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\016ns83820.c: National Semiconductor DP83820 10/100/1000 driver.\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ns83820_init\00", [19 x i8] zeroinitializer }, align 32
@ns83820_init._entry_ptr = internal global ptr @ns83820_init._entry, section ".printk_index", align 4
@___asan_gen_.98 = private unnamed_addr constant [7 x i8] c"driver\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 2227, i32 26 }
@___asan_gen_.101 = private unnamed_addr constant [7 x i8] c"lnksts\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 115, i32 12 }
@___asan_gen_.104 = private unnamed_addr constant [4 x i8] c"ihr\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 113, i32 12 }
@___asan_gen_.107 = private unnamed_addr constant [10 x i8] c"reset_phy\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 114, i32 12 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 2228, i32 11 }
@___asan_gen_.113 = private unnamed_addr constant [16 x i8] c"ns83820_pci_tbl\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 2222, i32 35 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 1912, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 1924, i32 2 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 1925, i32 2 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 1926, i32 2 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 1931, i32 2 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 1936, i32 3 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 1964, i32 3 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 1979, i32 3 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 1983, i32 2 }
@___asan_gen_.185 = private unnamed_addr constant [11 x i8] c"netdev_ops\00", align 1
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 1885, i32 36 }
@___asan_gen_.188 = private unnamed_addr constant [4 x i8] c"ops\00", align 1
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 1366, i32 33 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 1996, i32 25 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 1998, i32 25 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 2000, i32 25 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 2006, i32 3 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 2010, i32 4 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 2037, i32 3 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 2059, i32 3 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 2156, i32 3 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 2161, i32 2 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 2175, i32 3 }
@___asan_gen_.252 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 326, i32 6 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 467, i32 4 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 812, i32 3 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 1457, i32 4 }
@___asan_gen_.281 = private unnamed_addr constant [7 x i8] c"speeds\00", align 1
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 601, i32 21 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 601, i32 34 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 601, i32 40 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 601, i32 47 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 601, i32 55 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 601, i32 66 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 694, i32 3 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 701, i32 3 }
@___asan_gen_.320 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 1640, i32 2 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 1601, i32 3 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 1563, i32 2 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 1581, i32 2 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 1355, i32 25 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 1319, i32 3 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 1332, i32 4 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 1339, i32 3 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 1728, i32 3 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 1731, i32 3 }
@___asan_gen_.395 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.401 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.402 = private constant [42 x i8] c"../drivers/net/ethernet/natsemi/ns83820.c\00", align 1
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 2241, i32 2 }
@llvm.compiler.used = appending global [144 x ptr] [ptr @__UNIQUE_ID_author343, ptr @__UNIQUE_ID_description344, ptr @__UNIQUE_ID_file345, ptr @__UNIQUE_ID_ihr350, ptr @__UNIQUE_ID_ihrtype349, ptr @__UNIQUE_ID_license346, ptr @__UNIQUE_ID_lnksts348, ptr @__UNIQUE_ID_lnkststype347, ptr @__UNIQUE_ID_reset_phy352, ptr @__UNIQUE_ID_reset_phytype351, ptr @__exitcall_ns83820_exit, ptr @__initcall__kmod_ns83820__353_2265_ns83820_init6, ptr @__param_ihr, ptr @__param_lnksts, ptr @__param_reset_phy, ptr @kick_rx._entry, ptr @kick_rx._entry_ptr, ptr @ns83820_do_isr._entry, ptr @ns83820_do_isr._entry_ptr, ptr @ns83820_exit, ptr @ns83820_init._entry, ptr @ns83820_init._entry_ptr, ptr @ns83820_init_one._entry, ptr @ns83820_init_one._entry.13, ptr @ns83820_init_one._entry.17, ptr @ns83820_init_one._entry.20, ptr @ns83820_init_one._entry.23, ptr @ns83820_init_one._entry.29, ptr @ns83820_init_one._entry.32, ptr @ns83820_init_one._entry.35, ptr @ns83820_init_one._entry.38, ptr @ns83820_init_one._entry.41, ptr @ns83820_init_one._entry.44, ptr @ns83820_init_one._entry.49, ptr @ns83820_init_one._entry_ptr, ptr @ns83820_init_one._entry_ptr.16, ptr @ns83820_init_one._entry_ptr.19, ptr @ns83820_init_one._entry_ptr.22, ptr @ns83820_init_one._entry_ptr.25, ptr @ns83820_init_one._entry_ptr.31, ptr @ns83820_init_one._entry_ptr.34, ptr @ns83820_init_one._entry_ptr.37, ptr @ns83820_init_one._entry_ptr.40, ptr @ns83820_init_one._entry_ptr.43, ptr @ns83820_init_one._entry_ptr.46, ptr @ns83820_init_one._entry_ptr.51, ptr @ns83820_run_bist._entry, ptr @ns83820_run_bist._entry.93, ptr @ns83820_run_bist._entry_ptr, ptr @ns83820_run_bist._entry_ptr.95, ptr @ns83820_rx_kick._entry, ptr @ns83820_rx_kick._entry_ptr, ptr @ns83820_set_link_ksettings._entry, ptr @ns83820_set_link_ksettings._entry.83, ptr @ns83820_set_link_ksettings._entry.86, ptr @ns83820_set_link_ksettings._entry_ptr, ptr @ns83820_set_link_ksettings._entry_ptr.85, ptr @ns83820_set_link_ksettings._entry_ptr.88, ptr @ns83820_tx_timeout._entry, ptr @ns83820_tx_timeout._entry.77, ptr @ns83820_tx_timeout._entry_ptr, ptr @ns83820_tx_timeout._entry_ptr.79, ptr @ns83820_tx_watch._entry, ptr @ns83820_tx_watch._entry_ptr, ptr @phy_intr._entry, ptr @phy_intr._entry.69, ptr @phy_intr._entry_ptr, ptr @phy_intr._entry_ptr.71, ptr @driver, ptr @lnksts, ptr @ihr, ptr @reset_phy, ptr @.str, ptr @ns83820_pci_tbl, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @ns83820_init_one.__key, ptr @.str.6, ptr @ns83820_init_one.__key.7, ptr @.str.8, ptr @ns83820_init_one.__key.9, ptr @.str.10, ptr @ns83820_init_one.__key.11, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.18, ptr @.str.21, ptr @.str.24, ptr @netdev_ops, ptr @ops, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.30, ptr @.str.33, ptr @.str.36, ptr @.str.39, ptr @.str.42, ptr @.str.45, ptr @.str.47, ptr @.str.48, ptr @.str.50, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @phy_intr.speeds, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.70, ptr @ns83820_open.__key, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.78, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.84, ptr @.str.87, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.94, ptr @.str.96, ptr @.str.97], section "llvm.metadata"
@0 = internal global [102 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lnksts to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ihr to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reset_phy to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ns83820_pci_tbl to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ns83820_init_one._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ns83820_init_one.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ns83820_init_one.__key.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ns83820_init_one.__key.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ns83820_init_one.__key.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ns83820_init_one._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ns83820_init_one._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ns83820_init_one._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ns83820_init_one._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ops to i32), i32 284, i32 352, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ns83820_init_one._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ns83820_init_one._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ns83820_init_one._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ns83820_init_one._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ns83820_init_one._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ns83820_init_one._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ns83820_init_one._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kick_rx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ns83820_rx_kick._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ns83820_do_isr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phy_intr.speeds to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phy_intr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phy_intr._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ns83820_open.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ns83820_tx_watch._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ns83820_tx_timeout._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ns83820_tx_timeout._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ns83820_set_link_ksettings._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ns83820_set_link_ksettings._entry.83 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ns83820_set_link_ksettings._entry.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ns83820_run_bist._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ns83820_run_bist._entry.93 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ns83820_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ns83820_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @pci_unregister_driver(ptr noundef nonnull @driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ns83820_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.96) #13
  %call1 = tail call i32 @__pci_register_driver(ptr noundef nonnull @driver, ptr noundef null, ptr noundef nonnull @.str) #10
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ns83820_init_one(ptr noundef %pci_dev, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %pci_dev, i32 0, i32 44
  %call = tail call i32 @dma_set_mask(ptr noundef %dev1, i64 noundef 4294967295) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %do.end

if.then:                                          ; preds = %entry
  %call3 = tail call ptr @alloc_etherdev_mqs(i32 noundef 1120, i32 noundef 1, i32 noundef 1) #10
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %if.then.cleanup_crit_edge, label %if.end6

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.1) #13
  br label %cleanup

if.end6:                                          ; preds = %if.then
  %add.ptr.i.i = getelementptr i8, ptr %call3, i32 2304
  %ndev8 = getelementptr i8, ptr %call3, i32 2312
  %0 = ptrtoint ptr %ndev8 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call3, ptr %ndev8, align 8
  %rx_info = getelementptr i8, ptr %call3, i32 2316
  tail call void @__raw_spin_lock_init(ptr noundef %rx_info, ptr noundef nonnull @.str.6, ptr noundef nonnull @ns83820_init_one.__key, i16 noundef signext 3) #10
  %tx_lock = getelementptr i8, ptr %call3, i32 2772
  tail call void @__raw_spin_lock_init(ptr noundef %tx_lock, ptr noundef nonnull @.str.8, ptr noundef nonnull @ns83820_init_one.__key.7, i16 noundef signext 3) #10
  %misc_lock = getelementptr i8, ptr %call3, i32 2712
  tail call void @__raw_spin_lock_init(ptr noundef %misc_lock, ptr noundef nonnull @.str.10, ptr noundef nonnull @ns83820_init_one.__key.9, i16 noundef signext 3) #10
  %pci_dev21 = getelementptr i8, ptr %call3, i32 2308
  %1 = ptrtoint ptr %pci_dev21 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %pci_dev, ptr %pci_dev21, align 4
  %parent = getelementptr inbounds %struct.net_device, ptr %call3, i32 0, i32 133, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev1, ptr %parent, align 8
  %tq_refill = getelementptr i8, ptr %call3, i32 2668
  tail call void @__init_work(ptr noundef %tq_refill, i32 noundef 0) #10
  %3 = ptrtoint ptr %tq_refill to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -64, ptr %tq_refill, align 4
  %lockdep_map = getelementptr i8, ptr %call3, i32 2684
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.12, ptr noundef nonnull @ns83820_init_one.__key.11, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  %entry28 = getelementptr i8, ptr %call3, i32 2672
  %4 = ptrtoint ptr %entry28 to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %entry28, ptr %entry28, align 4
  %prev.i = getelementptr i8, ptr %call3, i32 2676
  %5 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %entry28, ptr %prev.i, align 4
  %func = getelementptr i8, ptr %call3, i32 2680
  %6 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @queue_refill, ptr %func, align 4
  %rx_tasklet = getelementptr i8, ptr %call3, i32 2640
  tail call void @tasklet_setup(ptr noundef %rx_tasklet, ptr noundef nonnull @rx_action) #10
  %call32 = tail call i32 @pci_enable_device(ptr noundef %pci_dev) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.end39, label %do.end37

do.end37:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.14, i32 noundef %call32) #13
  br label %out_free

if.end39:                                         ; preds = %if.end6
  tail call void @pci_set_master(ptr noundef %pci_dev) #10
  %arrayidx = getelementptr %struct.pci_dev, ptr %pci_dev, i32 0, i32 47, i32 1
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx, align 8
  %call40 = tail call ptr @ioremap(i32 noundef %8, i32 noundef 4096) #10
  %9 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call40, ptr %add.ptr.i.i, align 16
  %tx_phy_descs = getelementptr i8, ptr %call3, i32 3364
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev1, i32 noundef 4096, ptr noundef %tx_phy_descs, i32 noundef 3264, i32 noundef 0) #10
  %tx_descs = getelementptr i8, ptr %call3, i32 3360
  %10 = ptrtoint ptr %tx_descs to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call.i, ptr %tx_descs, align 16
  %phy_descs = getelementptr i8, ptr %call3, i32 2636
  %call.i477 = tail call ptr @dma_alloc_attrs(ptr noundef %dev1, i32 noundef 2048, ptr noundef %phy_descs, i32 noundef 3264, i32 noundef 0) #10
  %descs = getelementptr i8, ptr %call3, i32 2632
  %11 = ptrtoint ptr %descs to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call.i477, ptr %descs, align 4
  %12 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %add.ptr.i.i, align 16
  %tobool48.not = icmp eq ptr %13, null
  br i1 %tobool48.not, label %if.end39.if.end332_crit_edge, label %lor.lhs.false

if.end39.if.end332_crit_edge:                     ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end332

lor.lhs.false:                                    ; preds = %if.end39
  %14 = ptrtoint ptr %tx_descs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %tx_descs, align 16
  %tobool50.not = icmp eq ptr %15, null
  %tobool54.not = icmp eq ptr %call.i477, null
  %or.cond = select i1 %tobool50.not, i1 true, i1 %tobool54.not
  br i1 %or.cond, label %lor.lhs.false.out_disable_crit_edge, label %do.end59

lor.lhs.false.out_disable_crit_edge:              ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_disable

do.end59:                                         ; preds = %lor.lhs.false
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !217
  tail call void @arm_heavy_mb() #10
  %16 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %add.ptr.i.i, align 16
  %add.ptr.i = getelementptr i8, ptr %17, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #10, !srcloc !218
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !219
  tail call void @arm_heavy_mb() #10
  %18 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %add.ptr.i.i, align 16
  %add.ptr4.i = getelementptr i8, ptr %19, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 0) #10, !srcloc !218
  %20 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %add.ptr.i.i, align 16
  %add.ptr6.i = getelementptr i8, ptr %21, i32 24
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i) #10, !srcloc !220
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !221
  %IMR_cache = getelementptr i8, ptr %call3, i32 2764
  %23 = ptrtoint ptr %IMR_cache to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %IMR_cache, align 4
  %irq = getelementptr inbounds %struct.pci_dev, ptr %pci_dev, i32 0, i32 46
  %24 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %irq, align 4
  %call.i478 = tail call i32 @request_threaded_irq(i32 noundef %25, ptr noundef nonnull @ns83820_irq, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str, ptr noundef nonnull %call3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i478)
  %tobool61.not = icmp eq i32 %call.i478, 0
  br i1 %tobool61.not, label %if.end68, label %do.end65

do.end65:                                         ; preds = %do.end59
  call void @__sanitizer_cov_trace_pc() #12
  %26 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %irq, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.18, i32 noundef %27, i32 noundef %call.i478) #13
  br label %out_disable

if.end68:                                         ; preds = %do.end59
  tail call void @rtnl_lock() #10
  %call69 = tail call i32 @dev_alloc_name(ptr noundef nonnull %call3, ptr noundef nonnull %call3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %cmp = icmp slt i32 %call69, 0
  br i1 %cmp, label %do.end73, label %do.end78

do.end73:                                         ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.21, i32 noundef %call69) #13
  br label %out_free_irq

do.end78:                                         ; preds = %if.end68
  %28 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %add.ptr.i.i, align 16
  %add.ptr = getelementptr i8, ptr %29, i32 556
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !220
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !222
  %subsystem_vendor = getelementptr inbounds %struct.pci_dev, ptr %pci_dev, i32 0, i32 9
  %31 = ptrtoint ptr %subsystem_vendor to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %subsystem_vendor, align 4
  %conv = zext i16 %32 to i32
  %subsystem_device = getelementptr inbounds %struct.pci_dev, ptr %pci_dev, i32 0, i32 10
  %33 = ptrtoint ptr %subsystem_device to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %subsystem_device, align 2
  %conv85 = zext i16 %34 to i32
  %call86 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull %call3, i32 noundef %30, i32 noundef %conv, i32 noundef %conv85) #13
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %call3, i32 0, i32 16
  %35 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @netdev_ops, ptr %netdev_ops, align 8
  %ethtool_ops = getelementptr inbounds %struct.net_device, ptr %call3, i32 0, i32 44
  %36 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @ops, ptr %ethtool_ops, align 16
  %watchdog_timeo = getelementptr inbounds %struct.net_device, ptr %call3, i32 0, i32 115
  %37 = ptrtoint ptr %watchdog_timeo to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 500, ptr %watchdog_timeo, align 4
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pci_dev, i32 0, i32 44, i32 8
  %38 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call3, ptr %driver_data.i.i, align 4
  tail call fastcc void @ns83820_do_reset(ptr noundef %add.ptr.i.i)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !223
  tail call void @arm_heavy_mb() #10
  %39 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %add.ptr.i.i, align 16
  %add.ptr91 = getelementptr i8, ptr %40, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr91, i32 2097152) #10, !srcloc !218
  tail call fastcc void @ns83820_run_bist(ptr noundef nonnull %call3, ptr noundef nonnull @.str.26, i32 noundef 1024, i32 noundef 512, i32 noundef 440)
  tail call fastcc void @ns83820_run_bist(ptr noundef nonnull %call3, ptr noundef nonnull @.str.27, i32 noundef 2, i32 noundef 0, i32 noundef 1)
  tail call fastcc void @ns83820_run_bist(ptr noundef nonnull %call3, ptr noundef nonnull @.str.28, i32 noundef 4, i32 noundef 0, i32 noundef 0)
  %41 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %add.ptr.i.i, align 16
  %add.ptr95 = getelementptr i8, ptr %42, i32 4
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr95) #10, !srcloc !220
  %44 = tail call i32 @llvm.bswap.i32(i32 %43)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !224
  %CFG_cache = getelementptr i8, ptr %call3, i32 2756
  %45 = ptrtoint ptr %CFG_cache to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %CFG_cache, align 4
  %and = and i32 %44, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool100.not = icmp eq i32 %and, 0
  br i1 %tobool100.not, label %if.else121, label %do.end104

do.end104:                                        ; preds = %do.end78
  %call108 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef nonnull %call3) #13
  %46 = ptrtoint ptr %CFG_cache to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %CFG_cache, align 4
  %and110 = and i32 %47, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and110)
  %tobool111.not = icmp eq i32 %and110, 0
  br i1 %tobool111.not, label %do.end115, label %do.end104.if.end124_crit_edge

do.end104.if.end124_crit_edge:                    ; preds = %do.end104
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end124

do.end115:                                        ; preds = %do.end104
  call void @__sanitizer_cov_trace_pc() #12
  %call119 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef nonnull %call3) #13
  br label %if.end124

if.else121:                                       ; preds = %do.end78
  call void @__sanitizer_cov_trace_pc() #12
  %and123 = and i32 %44, -4097
  %48 = ptrtoint ptr %CFG_cache to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %and123, ptr %CFG_cache, align 4
  br label %if.end124

if.end124:                                        ; preds = %if.else121, %do.end115, %do.end104.if.end124_crit_edge
  %49 = ptrtoint ptr %CFG_cache to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %CFG_cache, align 4
  %and126 = and i32 %50, 16898050
  %or133 = or i32 %and126, 1966520
  store i32 %or133, ptr %CFG_cache, align 4
  %and142 = and i32 %50, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and142)
  %tobool143.not = icmp eq i32 %and142, 0
  br i1 %tobool143.not, label %if.end124.do.body192_crit_edge, label %do.end147

if.end124.do.body192_crit_edge:                   ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body192

do.end147:                                        ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #12
  %call151 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef nonnull %call3) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !225
  tail call void @arm_heavy_mb() #10
  %51 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %add.ptr.i.i, align 16
  %add.ptr158 = getelementptr i8, ptr %52, i32 44
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr158) #10, !srcloc !220
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !226
  %54 = or i32 %53, -402456576
  %55 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %add.ptr.i.i, align 16
  %add.ptr164 = getelementptr i8, ptr %56, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr164, i32 %54) #10, !srcloc !218
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !227
  tail call void @arm_heavy_mb() #10
  %57 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %add.ptr.i.i, align 16
  %add.ptr171 = getelementptr i8, ptr %58, i32 232
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr171) #10, !srcloc !220
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !228
  %60 = or i32 %59, 1610612736
  %61 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %add.ptr.i.i, align 16
  %add.ptr178 = getelementptr i8, ptr %62, i32 232
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr178, i32 %60) #10, !srcloc !218
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !229
  tail call void @arm_heavy_mb() #10
  %63 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %add.ptr.i.i, align 16
  %add.ptr183 = getelementptr i8, ptr %64, i32 224
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr183, i32 1179648) #10, !srcloc !218
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !230
  tail call void @arm_heavy_mb() #10
  %65 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %add.ptr.i.i, align 16
  %add.ptr188 = getelementptr i8, ptr %66, i32 224
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr188, i32 1048576) #10, !srcloc !218
  %linkstate = getelementptr i8, ptr %call3, i32 2768
  %67 = ptrtoint ptr %linkstate to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 1, ptr %linkstate, align 16
  %68 = ptrtoint ptr %CFG_cache to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %CFG_cache, align 4
  %or190 = or i32 %69, 4194304
  store i32 %or190, ptr %CFG_cache, align 4
  br label %do.body192

do.body192:                                       ; preds = %do.end147, %if.end124.do.body192_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !231
  tail call void @arm_heavy_mb() #10
  %70 = ptrtoint ptr %CFG_cache to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %CFG_cache, align 4
  %72 = tail call i32 @llvm.bswap.i32(i32 %71)
  %73 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %add.ptr.i.i, align 16
  %add.ptr197 = getelementptr i8, ptr %74, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr197, i32 %72) #10, !srcloc !218
  %75 = load i32, ptr @reset_phy, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %tobool201.not = icmp eq i32 %75, 0
  br i1 %tobool201.not, label %do.body192.do.body224_crit_edge, label %do.end205

do.body192.do.body224_crit_edge:                  ; preds = %do.body192
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body224

do.end205:                                        ; preds = %do.body192
  call void @__sanitizer_cov_trace_pc() #12
  %call209 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef nonnull %call3) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !232
  tail call void @arm_heavy_mb() #10
  %76 = ptrtoint ptr %CFG_cache to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %CFG_cache, align 4
  %or214 = or i32 %77, 1024
  %78 = tail call i32 @llvm.bswap.i32(i32 %or214)
  %79 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %add.ptr.i.i, align 16
  %add.ptr216 = getelementptr i8, ptr %80, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr216, i32 %78) #10, !srcloc !218
  tail call void @msleep(i32 noundef 10) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !233
  tail call void @arm_heavy_mb() #10
  %81 = ptrtoint ptr %CFG_cache to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %CFG_cache, align 4
  %83 = tail call i32 @llvm.bswap.i32(i32 %82)
  %84 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %add.ptr.i.i, align 16
  %add.ptr222 = getelementptr i8, ptr %85, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr222, i32 %83) #10, !srcloc !218
  br label %do.body224

do.body224:                                       ; preds = %do.end205, %do.body192.do.body224_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !234
  tail call void @arm_heavy_mb() #10
  %86 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %add.ptr.i.i, align 16
  %add.ptr228 = getelementptr i8, ptr %87, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr228, i32 3305680) #10, !srcloc !218
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !235
  tail call void @arm_heavy_mb() #10
  %88 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %add.ptr.i.i, align 16
  %add.ptr233 = getelementptr i8, ptr %89, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr233, i32 0) #10, !srcloc !218
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !236
  tail call void @arm_heavy_mb() #10
  %90 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %add.ptr.i.i, align 16
  %add.ptr238 = getelementptr i8, ptr %91, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr238, i32 65536) #10, !srcloc !218
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !237
  tail call void @arm_heavy_mb() #10
  %92 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %add.ptr.i.i, align 16
  %add.ptr243 = getelementptr i8, ptr %93, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr243, i32 0) #10, !srcloc !218
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !238
  tail call void @arm_heavy_mb() #10
  %94 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %add.ptr.i.i, align 16
  %add.ptr248 = getelementptr i8, ptr %95, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr248, i32 28916) #10, !srcloc !218
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !239
  tail call void @arm_heavy_mb() #10
  %96 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %add.ptr.i.i, align 16
  %add.ptr253 = getelementptr i8, ptr %97, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr253, i32 0) #10, !srcloc !218
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !240
  tail call void @arm_heavy_mb() #10
  %98 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %add.ptr.i.i, align 16
  %add.ptr258 = getelementptr i8, ptr %99, i32 188
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr258, i32 318767104) #10, !srcloc !218
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !241
  tail call void @arm_heavy_mb() #10
  %100 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %add.ptr.i.i, align 16
  %add.ptr263 = getelementptr i8, ptr %101, i32 192
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr263, i32 167772160) #10, !srcloc !218
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !242
  tail call void @arm_heavy_mb() #10
  %102 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %add.ptr.i.i, align 16
  %add.ptr268 = getelementptr i8, ptr %103, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr268, i32 -16785183) #10, !srcloc !218
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !243
  tail call void @arm_heavy_mb() #10
  %104 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %add.ptr.i.i, align 16
  %add.ptr273 = getelementptr i8, ptr %105, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr273, i32 0) #10, !srcloc !218
  tail call fastcc void @ns83820_getmac(ptr noundef %add.ptr.i.i, ptr noundef nonnull %call3)
  %features = getelementptr inbounds %struct.net_device, ptr %call3, i32 0, i32 23
  %106 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %106)
  %107 = load i64, ptr %features, align 16
  %min_mtu = getelementptr inbounds %struct.net_device, ptr %call3, i32 0, i32 30
  %108 = ptrtoint ptr %min_mtu to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 0, ptr %min_mtu, align 8
  %or278 = or i64 %107, 387
  store i64 %or278, ptr %features, align 16
  %109 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %add.ptr.i.i, align 16
  %add.ptr300 = getelementptr i8, ptr %110, i32 88
  %111 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr300) #10, !srcloc !220
  %112 = tail call i32 @llvm.bswap.i32(i32 %111)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !244
  %shr = lshr i32 %112, 8
  %113 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %add.ptr.i.i, align 16
  %add.ptr307 = getelementptr i8, ptr %114, i32 88
  %115 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr307) #10, !srcloc !220
  %116 = lshr i32 %115, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !245
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %call3, i32 0, i32 86
  %117 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %dev_addr, align 64
  %119 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %irq, align 4
  %121 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %121)
  %122 = load i64, ptr %features, align 16
  %and314 = and i64 %122, 32
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and314)
  %tobool315.not = icmp eq i64 %and314, 0
  %cond = select i1 %tobool315.not, ptr @.str.48, ptr @.str.47
  %call316 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, ptr noundef nonnull %call3, i32 noundef %shr, i32 noundef %116, ptr noundef %118, i32 noundef %8, i32 noundef %120, ptr noundef nonnull %cond) #13
  %call317 = tail call i32 @register_netdevice(ptr noundef nonnull %call3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call317)
  %tobool318.not = icmp eq i32 %call317, 0
  br i1 %tobool318.not, label %if.end325, label %do.end322

do.end322:                                        ; preds = %do.body224
  call void @__sanitizer_cov_trace_pc() #12
  %call324 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, i32 noundef %call317) #13
  tail call fastcc void @ns83820_disable_interrupts(ptr noundef %add.ptr.i.i)
  br label %out_free_irq

if.end325:                                        ; preds = %do.body224
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @rtnl_unlock() #10
  br label %cleanup

out_free_irq:                                     ; preds = %do.end322, %do.end73
  %err.0 = phi i32 [ %call69, %do.end73 ], [ %call317, %do.end322 ]
  tail call void @rtnl_unlock() #10
  %123 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %irq, align 4
  %call327 = tail call ptr @free_irq(i32 noundef %124, ptr noundef nonnull %call3) #10
  br label %out_disable

out_disable:                                      ; preds = %out_free_irq, %do.end65, %lor.lhs.false.out_disable_crit_edge
  %err.1.ph = phi i32 [ -12, %lor.lhs.false.out_disable_crit_edge ], [ %err.0, %out_free_irq ], [ %call.i478, %do.end65 ]
  %125 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %.pr = load ptr, ptr %add.ptr.i.i, align 16
  %tobool329.not = icmp eq ptr %.pr, null
  br i1 %tobool329.not, label %out_disable.if.end332_crit_edge, label %if.then330

out_disable.if.end332_crit_edge:                  ; preds = %out_disable
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end332

if.then330:                                       ; preds = %out_disable
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @iounmap(ptr noundef nonnull %.pr) #10
  br label %if.end332

if.end332:                                        ; preds = %if.then330, %out_disable.if.end332_crit_edge, %if.end39.if.end332_crit_edge
  %err.1481 = phi i32 [ %err.1.ph, %if.then330 ], [ %err.1.ph, %out_disable.if.end332_crit_edge ], [ -12, %if.end39.if.end332_crit_edge ]
  %126 = ptrtoint ptr %tx_descs to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %tx_descs, align 16
  %128 = ptrtoint ptr %tx_phy_descs to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %tx_phy_descs, align 4
  tail call void @dma_free_attrs(ptr noundef %dev1, i32 noundef 4096, ptr noundef %127, i32 noundef %129, i32 noundef 0) #10
  %130 = ptrtoint ptr %descs to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %descs, align 4
  %132 = ptrtoint ptr %phy_descs to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %phy_descs, align 4
  tail call void @dma_free_attrs(ptr noundef %dev1, i32 noundef 2048, ptr noundef %131, i32 noundef %133, i32 noundef 0) #10
  tail call void @pci_disable_device(ptr noundef %pci_dev) #10
  br label %out_free

out_free:                                         ; preds = %if.end332, %do.end37
  %err.2 = phi i32 [ %call32, %do.end37 ], [ %err.1481, %if.end332 ]
  tail call void @free_netdev(ptr noundef nonnull %call3) #10
  br label %cleanup

cleanup:                                          ; preds = %out_free, %if.end325, %do.end, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %do.end ], [ 0, %if.end325 ], [ %err.2, %out_free ], [ -12, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ns83820_remove_one(ptr nocapture noundef readonly %pci_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pci_dev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 2304
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !217
  tail call void @arm_heavy_mb() #10
  %2 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i.i, align 16
  %add.ptr.i = getelementptr i8, ptr %3, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #10, !srcloc !218
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !219
  tail call void @arm_heavy_mb() #10
  %4 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr.i.i, align 16
  %add.ptr4.i = getelementptr i8, ptr %5, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 0) #10, !srcloc !218
  %6 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr.i.i, align 16
  %add.ptr6.i = getelementptr i8, ptr %7, i32 24
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i) #10, !srcloc !220
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !221
  tail call void @unregister_netdev(ptr noundef nonnull %1) #10
  %pci_dev2 = getelementptr i8, ptr %1, i32 2308
  %9 = ptrtoint ptr %pci_dev2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pci_dev2, align 4
  %irq = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 46
  %11 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %irq, align 4
  %call3 = tail call ptr @free_irq(i32 noundef %12, ptr noundef nonnull %1) #10
  %13 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %add.ptr.i.i, align 16
  tail call void @iounmap(ptr noundef %14) #10
  %15 = ptrtoint ptr %pci_dev2 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pci_dev2, align 4
  %dev5 = getelementptr inbounds %struct.pci_dev, ptr %16, i32 0, i32 44
  %tx_descs = getelementptr i8, ptr %1, i32 3360
  %17 = ptrtoint ptr %tx_descs to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %tx_descs, align 16
  %tx_phy_descs = getelementptr i8, ptr %1, i32 3364
  %19 = ptrtoint ptr %tx_phy_descs to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tx_phy_descs, align 4
  tail call void @dma_free_attrs(ptr noundef %dev5, i32 noundef 4096, ptr noundef %18, i32 noundef %20, i32 noundef 0) #10
  %21 = ptrtoint ptr %pci_dev2 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pci_dev2, align 4
  %dev7 = getelementptr inbounds %struct.pci_dev, ptr %22, i32 0, i32 44
  %descs = getelementptr i8, ptr %1, i32 2632
  %23 = ptrtoint ptr %descs to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %descs, align 4
  %phy_descs = getelementptr i8, ptr %1, i32 2636
  %25 = ptrtoint ptr %phy_descs to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %phy_descs, align 4
  tail call void @dma_free_attrs(ptr noundef %dev7, i32 noundef 2048, ptr noundef %24, i32 noundef %26, i32 noundef 0) #10
  %27 = ptrtoint ptr %pci_dev2 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pci_dev2, align 4
  tail call void @pci_disable_device(ptr noundef %28) #10
  tail call void @free_netdev(ptr noundef nonnull %1) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_etherdev_mqs(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @queue_refill(ptr nocapture noundef readonly %work) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %ndev1 = getelementptr i8, ptr %work, i32 -356
  %0 = ptrtoint ptr %ndev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ndev1, align 8
  %call = tail call fastcc i32 @rx_refill(ptr noundef %1, i32 noundef 3264)
  %up = getelementptr i8, ptr %work, i32 -308
  %2 = ptrtoint ptr %up to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %up, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  %add.ptr.i.i.i = getelementptr i8, ptr %1, i32 2304
  %idle.i = getelementptr i8, ptr %1, i32 2364
  %call1.i = tail call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %idle.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.then.if.end_crit_edge, label %do.body5.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.body5.i:                                       ; preds = %if.then
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !246
  tail call void @arm_heavy_mb() #10
  %phy_descs.i = getelementptr i8, ptr %1, i32 2636
  %4 = ptrtoint ptr %phy_descs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %phy_descs.i, align 4
  %next_rx.i = getelementptr i8, ptr %1, i32 2628
  %6 = ptrtoint ptr %next_rx.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %next_rx.i, align 4
  %conv.i = zext i16 %7 to i32
  %mul.i = shl nuw nsw i32 %conv.i, 5
  %add.i = add i32 %mul.i, %5
  %8 = tail call i32 @llvm.bswap.i32(i32 %add.i) #10
  %9 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr.i.i.i, align 16
  %add.ptr.i = getelementptr i8, ptr %10, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %8) #10, !srcloc !218
  %11 = ptrtoint ptr %next_rx.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %next_rx.i, align 4
  %next_empty.i = getelementptr i8, ptr %1, i32 2630
  %13 = ptrtoint ptr %next_empty.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %next_empty.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %12, i16 %14)
  %cmp.i = icmp eq i16 %12, %14
  br i1 %cmp.i, label %do.end19.i, label %do.body5.i.do.body21.i_crit_edge

do.body5.i.do.body21.i_crit_edge:                 ; preds = %do.body5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body21.i

do.end19.i:                                       ; preds = %do.body5.i
  call void @__sanitizer_cov_trace_pc() #12
  %call20.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, ptr noundef %1) #13
  br label %do.body21.i

do.body21.i:                                      ; preds = %do.end19.i, %do.body5.i.do.body21.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !247
  tail call void @arm_heavy_mb() #10
  %15 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %add.ptr.i.i.i, align 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 67108864) #10, !srcloc !218
  br label %if.end

if.end:                                           ; preds = %do.body21.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_setup(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rx_action(ptr noundef %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -336
  %ndev1 = getelementptr i8, ptr %t, i32 -328
  %0 = ptrtoint ptr %ndev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ndev1, align 8
  tail call fastcc void @rx_irq(ptr noundef %1)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !248
  tail call void @arm_heavy_mb() #10
  %2 = load i32, ptr @ihr, align 4
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr, align 16
  %add.ptr2 = getelementptr i8, ptr %5, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 %3) #10, !srcloc !218
  %misc_lock = getelementptr i8, ptr %t, i32 72
  tail call void @_raw_spin_lock_irq(ptr noundef %misc_lock) #10
  %IMR_cache = getelementptr i8, ptr %t, i32 124
  %6 = ptrtoint ptr %IMR_cache to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %IMR_cache, align 4
  %or = or i32 %7, 2
  store i32 %or, ptr %IMR_cache, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !249
  tail call void @arm_heavy_mb() #10
  %8 = ptrtoint ptr %IMR_cache to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %IMR_cache, align 4
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  %11 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %add.ptr, align 16
  %add.ptr8 = getelementptr i8, ptr %12, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 %10) #10, !srcloc !218
  tail call void @_raw_spin_unlock_irq(ptr noundef %misc_lock) #10
  tail call fastcc void @rx_irq(ptr noundef %1)
  tail call fastcc void @ns83820_rx_kick(ptr noundef %1)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ns83820_disable_interrupts(ptr nocapture noundef readonly %dev) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !217
  tail call void @arm_heavy_mb() #10
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 16
  %add.ptr = getelementptr i8, ptr %1, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #10, !srcloc !218
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !219
  tail call void @arm_heavy_mb() #10
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 16
  %add.ptr4 = getelementptr i8, ptr %3, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 0) #10, !srcloc !218
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 16
  %add.ptr6 = getelementptr i8, ptr %5, i32 24
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6) #10, !srcloc !220
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !221
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ns83820_irq(i32 noundef %foo, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %data, i32 2304
  %ihr = getelementptr i8, ptr %data, i32 2664
  %0 = ptrtoint ptr %ihr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %ihr, align 8
  %1 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %add.ptr.i.i, align 16
  %add.ptr = getelementptr i8, ptr %2, i32 16
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !220
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !250
  %and.i = and i32 %4, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %if.then.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %idle.i = getelementptr i8, ptr %data, i32 2364
  %5 = ptrtoint ptr %idle.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %idle.i, align 4
  tail call fastcc void @ns83820_rx_kick(ptr noundef %data) #10
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %and1.i = and i32 %4, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.not.i = icmp eq i32 %and1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end19.i_crit_edge, label %if.then3.i

if.end.i.if.end19.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19.i

if.then3.i:                                       ; preds = %if.end.i
  %next_rx_desc.i = getelementptr i8, ptr %data, i32 2624
  %6 = ptrtoint ptr %next_rx_desc.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %next_rx_desc.i, align 4
  tail call void asm sideeffect "pld\09${0:a}", "r"(ptr %7) #10, !srcloc !251
  %misc_lock.i = getelementptr i8, ptr %data, i32 2712
  %call8.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %misc_lock.i) #10
  %IMR_cache.i = getelementptr i8, ptr %data, i32 2764
  %8 = ptrtoint ptr %IMR_cache.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %IMR_cache.i, align 4
  %and13.i = and i32 %9, -4
  store i32 %and13.i, ptr %IMR_cache.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !252
  tail call void @arm_heavy_mb() #10
  %10 = ptrtoint ptr %IMR_cache.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %IMR_cache.i, align 4
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #10
  %13 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %add.ptr.i.i, align 16
  %add.ptr.i = getelementptr i8, ptr %14, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %12) #10, !srcloc !218
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %misc_lock.i, i32 noundef %call8.i) #10
  %state.i.i = getelementptr i8, ptr %data, i32 2644
  %call.i.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.then3.i.if.end19.i_crit_edge

if.then3.i.if.end19.i_crit_edge:                  ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19.i

if.then.i.i:                                      ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #12
  %rx_tasklet.i = getelementptr i8, ptr %data, i32 2640
  tail call void @__tasklet_schedule(ptr noundef %rx_tasklet.i) #10
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.then.i.i, %if.then3.i.if.end19.i_crit_edge, %if.end.i.if.end19.i_crit_edge
  %and20.i = and i32 %4, 55
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20.i)
  %tobool21.not.i = icmp eq i32 %and20.i, 0
  br i1 %tobool21.not.i, label %if.end19.i.if.end23.i_crit_edge, label %if.then22.i

if.end19.i.if.end23.i_crit_edge:                  ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i

if.then22.i:                                      ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @ns83820_rx_kick(ptr noundef %data) #10
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.then22.i, %if.end19.i.if.end23.i_crit_edge
  %and24.i = and i32 %4, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24.i)
  %tobool25.not.i = icmp eq i32 %and24.i, 0
  br i1 %tobool25.not.i, label %if.end23.i.if.end29.i_crit_edge, label %if.then28.i, !prof !253

if.end23.i.if.end29.i_crit_edge:                  ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29.i

if.then28.i:                                      ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #12
  %rx_fifo_errors.i = getelementptr inbounds %struct.net_device, ptr %data, i32 0, i32 36, i32 14
  %15 = ptrtoint ptr %rx_fifo_errors.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %rx_fifo_errors.i, align 8
  %inc.i = add i32 %16, 1
  store i32 %inc.i, ptr %rx_fifo_errors.i, align 8
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.then28.i, %if.end23.i.if.end29.i_crit_edge
  %and30.i = and i32 %4, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30.i)
  %tobool31.not.i = icmp eq i32 %and30.i, 0
  br i1 %tobool31.not.i, label %if.end29.i.if.end42.i_crit_edge, label %if.then38.i, !prof !253

if.end29.i.if.end42.i_crit_edge:                  ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end42.i

if.then38.i:                                      ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #12
  %rx_fifo_errors40.i = getelementptr inbounds %struct.net_device, ptr %data, i32 0, i32 36, i32 14
  %17 = ptrtoint ptr %rx_fifo_errors40.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %rx_fifo_errors40.i, align 8
  %inc41.i = add i32 %18, 1
  store i32 %inc41.i, ptr %rx_fifo_errors40.i, align 8
  br label %if.end42.i

if.end42.i:                                       ; preds = %if.then38.i, %if.end29.i.if.end42.i_crit_edge
  %and43.i = and i32 %4, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43.i)
  %tobool44.not.i = icmp eq i32 %and43.i, 0
  br i1 %tobool44.not.i, label %if.end42.i.if.end53.i_crit_edge, label %land.lhs.true.i

if.end42.i.if.end53.i_crit_edge:                  ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end53.i

land.lhs.true.i:                                  ; preds = %if.end42.i
  %up.i = getelementptr i8, ptr %data, i32 2360
  %19 = ptrtoint ptr %up.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %up.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool46.not.i = icmp eq i32 %20, 0
  br i1 %tobool46.not.i, label %land.lhs.true.i.if.end53.i_crit_edge, label %do.body48.i

land.lhs.true.i.if.end53.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end53.i

do.body48.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !254
  tail call void @arm_heavy_mb() #10
  %21 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %add.ptr.i.i, align 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 67108864) #10, !srcloc !218
  br label %if.end53.i

if.end53.i:                                       ; preds = %do.body48.i, %land.lhs.true.i.if.end53.i_crit_edge, %if.end42.i.if.end53.i_crit_edge
  %and54.i = and i32 %4, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54.i)
  %tobool55.not.i = icmp eq i32 %and54.i, 0
  br i1 %tobool55.not.i, label %if.end53.i.if.end85.i_crit_edge, label %if.then56.i

if.end53.i.if.end85.i_crit_edge:                  ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end85.i

if.then56.i:                                      ; preds = %if.end53.i
  %23 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %add.ptr.i.i, align 16
  %add.ptr58.i = getelementptr i8, ptr %24, i32 32
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr58.i) #10, !srcloc !220
  %26 = tail call i32 @llvm.bswap.i32(i32 %25) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !255
  %tx_phy_descs.i = getelementptr i8, ptr %data, i32 3364
  %27 = ptrtoint ptr %tx_phy_descs.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %tx_phy_descs.i, align 4
  %sub.i = sub i32 %26, %28
  %div247.i = lshr i32 %sub.i, 5
  %conv65.i = trunc i32 %div247.i to i16
  %tx_idx.i = getelementptr i8, ptr %data, i32 2818
  %29 = ptrtoint ptr %tx_idx.i to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %conv65.i, ptr %tx_idx.i, align 2
  %30 = and i32 %sub.i, 2093056
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp68.not.i = icmp eq i32 %30, 0
  br i1 %cmp68.not.i, label %if.then56.i.if.end77.i_crit_edge, label %do.end73.i

if.then56.i.if.end77.i_crit_edge:                 ; preds = %if.then56.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end77.i

do.end73.i:                                       ; preds = %if.then56.i
  call void @__sanitizer_cov_trace_pc() #12
  %call75.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, ptr noundef %data) #13
  %31 = ptrtoint ptr %tx_idx.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 0, ptr %tx_idx.i, align 2
  br label %if.end77.i

if.end77.i:                                       ; preds = %do.end73.i, %if.then56.i.if.end77.i_crit_edge
  %32 = ptrtoint ptr %tx_idx.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %tx_idx.i, align 2
  %tx_free_idx.i = getelementptr i8, ptr %data, i32 2820
  %34 = ptrtoint ptr %tx_free_idx.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load volatile i16, ptr %tx_free_idx.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %33, i16 %35)
  %cmp81.not.i = icmp eq i16 %33, %35
  br i1 %cmp81.not.i, label %if.end77.i.if.end85.i_crit_edge, label %if.then83.i

if.end77.i.if.end85.i_crit_edge:                  ; preds = %if.end77.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end85.i

if.then83.i:                                      ; preds = %if.end77.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !256
  tail call void @arm_heavy_mb() #10
  %36 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %add.ptr.i.i, align 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %37, i32 16777216) #10, !srcloc !218
  br label %if.end85.i

if.end85.i:                                       ; preds = %if.then83.i, %if.end77.i.if.end85.i_crit_edge, %if.end53.i.if.end85.i_crit_edge
  %and86.i = and i32 %4, 960
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and86.i)
  %tobool87.not.i = icmp eq i32 %and86.i, 0
  br i1 %tobool87.not.i, label %if.end85.i.if.end137.i_crit_edge, label %do.body90.i

if.end85.i.if.end137.i_crit_edge:                 ; preds = %if.end85.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end137.i

do.body90.i:                                      ; preds = %if.end85.i
  %tx_lock.i = getelementptr i8, ptr %data, i32 2772
  %call97.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %tx_lock.i) #10
  tail call fastcc void @do_tx_done(ptr noundef %data) #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %tx_lock.i, i32 noundef %call97.i) #10
  %tx_done_idx.i = getelementptr i8, ptr %data, i32 2816
  %38 = ptrtoint ptr %tx_done_idx.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %tx_done_idx.i, align 16
  %tx_free_idx104.i = getelementptr i8, ptr %data, i32 2820
  %40 = ptrtoint ptr %tx_free_idx104.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load volatile i16, ptr %tx_free_idx104.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %39, i16 %41)
  %cmp106.i = icmp eq i16 %39, %41
  br i1 %cmp106.i, label %land.lhs.true108.i, label %do.body90.i.if.end137.i_crit_edge

do.body90.i.if.end137.i_crit_edge:                ; preds = %do.body90.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end137.i

land.lhs.true108.i:                               ; preds = %do.body90.i
  %IMR_cache109.i = getelementptr i8, ptr %data, i32 2764
  %42 = ptrtoint ptr %IMR_cache109.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %IMR_cache109.i, align 4
  %and110.i = and i32 %43, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and110.i)
  %tobool111.not.i = icmp eq i32 %and110.i, 0
  br i1 %tobool111.not.i, label %land.lhs.true108.i.if.end137.i_crit_edge, label %do.body114.i

land.lhs.true108.i.if.end137.i_crit_edge:         ; preds = %land.lhs.true108.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end137.i

do.body114.i:                                     ; preds = %land.lhs.true108.i
  call void @__sanitizer_cov_trace_pc() #12
  %misc_lock120.i = getelementptr i8, ptr %data, i32 2712
  %call122.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %misc_lock120.i) #10
  %44 = ptrtoint ptr %IMR_cache109.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %IMR_cache109.i, align 4
  %and128.i = and i32 %45, -65
  store i32 %and128.i, ptr %IMR_cache109.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !257
  tail call void @arm_heavy_mb() #10
  %46 = ptrtoint ptr %IMR_cache109.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %IMR_cache109.i, align 4
  %48 = tail call i32 @llvm.bswap.i32(i32 %47) #10
  %49 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %add.ptr.i.i, align 16
  %add.ptr134.i = getelementptr i8, ptr %50, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr134.i, i32 %48) #10, !srcloc !218
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %misc_lock120.i, i32 noundef %call122.i) #10
  br label %if.end137.i

if.end137.i:                                      ; preds = %do.body114.i, %land.lhs.true108.i.if.end137.i_crit_edge, %do.body90.i.if.end137.i_crit_edge, %if.end85.i.if.end137.i_crit_edge
  br i1 %tobool55.not.i, label %if.end137.i.if.end170.i_crit_edge, label %land.lhs.true140.i

if.end137.i.if.end170.i_crit_edge:                ; preds = %if.end137.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end170.i

land.lhs.true140.i:                               ; preds = %if.end137.i
  %tx_done_idx141.i = getelementptr i8, ptr %data, i32 2816
  %51 = ptrtoint ptr %tx_done_idx141.i to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %tx_done_idx141.i, align 16
  %tx_free_idx143.i = getelementptr i8, ptr %data, i32 2820
  %53 = ptrtoint ptr %tx_free_idx143.i to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load volatile i16, ptr %tx_free_idx143.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %52, i16 %54)
  %cmp145.not.i = icmp eq i16 %52, %54
  br i1 %cmp145.not.i, label %land.lhs.true140.i.if.end170.i_crit_edge, label %do.body149.i

land.lhs.true140.i.if.end170.i_crit_edge:         ; preds = %land.lhs.true140.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end170.i

do.body149.i:                                     ; preds = %land.lhs.true140.i
  call void @__sanitizer_cov_trace_pc() #12
  %misc_lock155.i = getelementptr i8, ptr %data, i32 2712
  %call157.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %misc_lock155.i) #10
  %IMR_cache162.i = getelementptr i8, ptr %data, i32 2764
  %55 = ptrtoint ptr %IMR_cache162.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %IMR_cache162.i, align 4
  %or.i = or i32 %56, 64
  store i32 %or.i, ptr %IMR_cache162.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !258
  tail call void @arm_heavy_mb() #10
  %57 = ptrtoint ptr %IMR_cache162.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %IMR_cache162.i, align 4
  %59 = tail call i32 @llvm.bswap.i32(i32 %58) #10
  %60 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %add.ptr.i.i, align 16
  %add.ptr168.i = getelementptr i8, ptr %61, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr168.i, i32 %59) #10, !srcloc !218
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %misc_lock155.i, i32 noundef %call157.i) #10
  br label %if.end170.i

if.end170.i:                                      ; preds = %do.body149.i, %land.lhs.true140.i.if.end170.i_crit_edge, %if.end137.i.if.end170.i_crit_edge
  %and171.i = and i32 %4, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and171.i)
  %tobool172.not.i = icmp eq i32 %and171.i, 0
  br i1 %tobool172.not.i, label %if.end170.i.if.end180.i_crit_edge, label %if.then179.i, !prof !253

if.end170.i.if.end180.i_crit_edge:                ; preds = %if.end170.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end180.i

if.then179.i:                                     ; preds = %if.end170.i
  call void @__sanitizer_cov_trace_pc() #12
  %misc_lock.i8 = getelementptr i8, ptr %data, i32 2712
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %misc_lock.i8) #10
  tail call fastcc void @ns83820_update_stats(ptr noundef %add.ptr.i.i) #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %misc_lock.i8, i32 noundef %call2.i) #10
  br label %if.end180.i

if.end180.i:                                      ; preds = %if.then179.i, %if.end170.i.if.end180.i_crit_edge
  %and181.i = and i32 %4, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and181.i)
  %tobool182.not.i = icmp eq i32 %and181.i, 0
  br i1 %tobool182.not.i, label %if.end180.i.ns83820_do_isr.exit_crit_edge, label %if.then189.i, !prof !253

if.end180.i.ns83820_do_isr.exit_crit_edge:        ; preds = %if.end180.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ns83820_do_isr.exit

if.then189.i:                                     ; preds = %if.end180.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @phy_intr(ptr noundef %data) #10
  br label %ns83820_do_isr.exit

ns83820_do_isr.exit:                              ; preds = %if.then189.i, %if.end180.i.ns83820_do_isr.exit_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_alloc_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ns83820_do_reset(ptr nocapture noundef readonly %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !259
  tail call void @arm_heavy_mb() #10
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 65536) #10, !srcloc !218
  br label %do.body3

do.body3:                                         ; preds = %do.body3.do.body3_crit_edge, %entry
  tail call void @schedule() #10
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 16
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #10, !srcloc !220
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !260
  %5 = and i32 %4, 65536
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %do.end10, label %do.body3.do.body3_crit_edge

do.body3.do.body3_crit_edge:                      ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body3

do.end10:                                         ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ns83820_run_bist(ptr noundef %ndev, ptr noundef %name, i32 noundef %enable, i32 noundef %done, i32 noundef %fail) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %ndev, i32 2304
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !261
  tail call void @arm_heavy_mb() #10
  %1 = tail call i32 @llvm.bswap.i32(i32 %enable)
  %2 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i.i, align 16
  %add.ptr = getelementptr i8, ptr %3, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %1) #10, !srcloc !218
  %4 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr.i.i, align 16
  %add.ptr560 = getelementptr i8, ptr %5, i32 12
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr560) #10, !srcloc !220
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !262
  %and61 = and i32 %7, %enable
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61)
  %tobool.not62 = icmp ne i32 %and61, 0
  %and863 = and i32 %7, %done
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and863)
  %tobool9.not64 = icmp eq i32 %and863, 0
  %or.cond65 = and i1 %tobool.not62, %tobool9.not64
  %and1266 = and i32 %7, %fail
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1266)
  %tobool13.not67 = icmp eq i32 %and1266, 0
  %or.cond5468 = select i1 %or.cond65, i1 %tobool13.not67, i1 false
  br i1 %or.cond5468, label %if.end15.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.end15.lr.ph:                                   ; preds = %entry
  %add.neg = sub i32 -100, %0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %8 = load volatile i32, ptr @jiffies, align 128
  %sub82 = add i32 %add.neg, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub82)
  %cmp83 = icmp sgt i32 %sub82, -1
  br i1 %cmp83, label %if.end15.lr.ph.do.end32_crit_edge, label %if.end15.lr.ph.if.end17_crit_edge

if.end15.lr.ph.if.end17_crit_edge:                ; preds = %if.end15.lr.ph
  br label %if.end17

if.end15.lr.ph.do.end32_crit_edge:                ; preds = %if.end15.lr.ph
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end32

if.end15:                                         ; preds = %if.end17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %9 = load volatile i32, ptr @jiffies, align 128
  %sub = add i32 %add.neg, %9
  %cmp = icmp sgt i32 %sub, -1
  br i1 %cmp, label %if.end15.do.end32_crit_edge, label %if.end15.if.end17_crit_edge

if.end15.if.end17_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

if.end15.do.end32_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end32

if.end17:                                         ; preds = %if.end15.if.end17_crit_edge, %if.end15.lr.ph.if.end17_crit_edge
  %call18 = tail call i32 @schedule_timeout_uninterruptible(i32 noundef 1) #10
  %10 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add.ptr.i.i, align 16
  %add.ptr5 = getelementptr i8, ptr %11, i32 12
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5) #10, !srcloc !220
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !262
  %and = and i32 %13, %enable
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp ne i32 %and, 0
  %and8 = and i32 %13, %done
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  %or.cond = and i1 %tobool.not, %tobool9.not
  %and12 = and i32 %13, %fail
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  %or.cond54 = select i1 %or.cond, i1 %tobool13.not, i1 false
  br i1 %or.cond54, label %if.end15, label %if.end17.for.end_crit_edge

if.end17.for.end_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %if.end17.for.end_crit_edge, %entry.for.end_crit_edge
  %.lcssa = phi i32 [ %7, %entry.for.end_crit_edge ], [ %13, %if.end17.for.end_crit_edge ]
  %tobool13.not.lcssa = phi i1 [ %tobool13.not67, %entry.for.end_crit_edge ], [ %tobool13.not, %if.end17.for.end_crit_edge ]
  br i1 %tobool13.not.lcssa, label %for.end.do.end41_crit_edge, label %do.end24

for.end.do.end41_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end41

do.end24:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.91, ptr noundef %ndev, ptr noundef %name, i32 noundef %.lcssa, i32 noundef %fail) #13
  br label %do.end41

do.end32:                                         ; preds = %if.end15.do.end32_crit_edge, %if.end15.lr.ph.do.end32_crit_edge
  %.lcssa78 = phi i32 [ %7, %if.end15.lr.ph.do.end32_crit_edge ], [ %13, %if.end15.do.end32_crit_edge ]
  %call36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.94, ptr noundef %ndev, ptr noundef %name, i32 noundef %.lcssa78) #13
  br label %do.end41

do.end41:                                         ; preds = %do.end32, %do.end24, %for.end.do.end41_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ns83820_getmac(ptr nocapture noundef readonly %dev, ptr noundef %ndev) unnamed_addr #2 align 64 {
entry:
  %mac = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mac) #10
  %0 = getelementptr inbounds [6 x i8], ptr %mac, i32 0, i32 1
  %1 = getelementptr inbounds [6 x i8], ptr %mac, i32 0, i32 2
  %2 = getelementptr inbounds [6 x i8], ptr %mac, i32 0, i32 3
  %3 = getelementptr inbounds [6 x i8], ptr %mac, i32 0, i32 4
  %4 = getelementptr inbounds [6 x i8], ptr %mac, i32 0, i32 5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !263
  tail call void @arm_heavy_mb() #10
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 16
  %add.ptr = getelementptr i8, ptr %6, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #10, !srcloc !218
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 16
  %add.ptr2 = getelementptr i8, ptr %8, i32 76
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2) #10, !srcloc !220
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !264
  %conv = trunc i32 %10 to i8
  %11 = ptrtoint ptr %mac to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv, ptr %mac, align 1
  %shr = lshr i32 %10, 8
  %conv5 = trunc i32 %shr to i8
  %12 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv5, ptr %0, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !263
  tail call void @arm_heavy_mb() #10
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 16
  %add.ptr.1 = getelementptr i8, ptr %14, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.1, i32 33554432) #10, !srcloc !218
  %15 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev, align 16
  %add.ptr2.1 = getelementptr i8, ptr %16, i32 76
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.1) #10, !srcloc !220
  %18 = tail call i32 @llvm.bswap.i32(i32 %17)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !264
  %conv.1 = trunc i32 %18 to i8
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv.1, ptr %1, align 1
  %shr.1 = lshr i32 %18, 8
  %conv5.1 = trunc i32 %shr.1 to i8
  %20 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv5.1, ptr %2, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !263
  tail call void @arm_heavy_mb() #10
  %21 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev, align 16
  %add.ptr.2 = getelementptr i8, ptr %22, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.2, i32 67108864) #10, !srcloc !218
  %23 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev, align 16
  %add.ptr2.2 = getelementptr i8, ptr %24, i32 76
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.2) #10, !srcloc !220
  %26 = tail call i32 @llvm.bswap.i32(i32 %25)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !264
  %conv.2 = trunc i32 %26 to i8
  %27 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv.2, ptr %3, align 1
  %shr.2 = lshr i32 %26, 8
  %conv5.2 = trunc i32 %shr.2 to i8
  %28 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv5.2, ptr %4, align 1
  call void @dev_addr_mod(ptr noundef %ndev, i32 noundef 0, ptr noundef nonnull %mac, i32 noundef 6) #10
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mac) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdevice(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rx_refill(ptr noundef %ndev, i32 noundef %gfp) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i = getelementptr i8, ptr %ndev, i32 2304
  %rx_info = getelementptr i8, ptr %ndev, i32 2316
  %next_rx = getelementptr i8, ptr %ndev, i32 2628
  %0 = ptrtoint ptr %next_rx to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %next_rx, align 4
  %conv = zext i16 %1 to i32
  %add = add nuw nsw i32 %conv, 62
  %next_empty = getelementptr i8, ptr %ndev, i32 2630
  %2 = ptrtoint ptr %next_empty to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %next_empty, align 2
  %conv2 = zext i16 %3 to i32
  %sub = sub nsw i32 %add, %conv2
  %rem = srem i32 %sub, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %rem)
  %cmp = icmp slt i32 %rem, 3
  br i1 %cmp, label %entry.cleanup73_crit_edge, label %do.end, !prof !265

entry.cleanup73_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup73

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 2592, i32 %gfp)
  %cmp5 = icmp eq i32 %gfp, 2592
  br i1 %cmp5, label %do.body9, label %do.end.if.end19_crit_edge

do.end.if.end19_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

do.body9:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %call14 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rx_info) #10
  br label %if.end19

if.end19:                                         ; preds = %do.body9, %do.end.if.end19_crit_edge
  %flags.0 = phi i32 [ %call14, %do.body9 ], [ 0, %do.end.if.end19_crit_edge ]
  %descs.i = getelementptr i8, ptr %ndev, i32 2632
  %pci_dev.i = getelementptr i8, ptr %ndev, i32 2308
  %phy_descs.i = getelementptr i8, ptr %ndev, i32 2636
  br label %for.body

for.body:                                         ; preds = %if.end61.for.body_crit_edge, %if.end19
  %flags.1102 = phi i32 [ %flags.0, %if.end19 ], [ %flags.2, %if.end61.for.body_crit_edge ]
  %i.0101 = phi i32 [ 0, %if.end19 ], [ %inc, %if.end61.for.body_crit_edge ]
  %call22 = tail call ptr @__netdev_alloc_skb(ptr noundef %ndev, i32 noundef 1530, i32 noundef %gfp) #10
  %tobool23.not = icmp eq ptr %call22, null
  br i1 %tobool23.not, label %for.body.for.end_crit_edge, label %if.end33, !prof !265

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.end33:                                         ; preds = %for.body
  %data = getelementptr inbounds %struct.sk_buff, ptr %call22, i32 0, i32 19
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %6 = ptrtoint ptr %5 to i32
  %add35 = add i32 %6, 15
  %and = and i32 %add35, -16
  %sub.ptr.sub = sub i32 %6, %and
  %add.ptr.i = getelementptr i8, ptr %5, i32 %sub.ptr.sub
  store ptr %add.ptr.i, ptr %data, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %call22, i32 0, i32 16
  %7 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tail.i, align 8
  %add.ptr1.i = getelementptr i8, ptr %8, i32 %sub.ptr.sub
  store ptr %add.ptr1.i, ptr %tail.i, align 8
  br i1 %cmp5, label %if.end33.if.end54_crit_edge, label %do.body40

if.end33.if.end54_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end54

do.body40:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  %call49 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rx_info) #10
  br label %if.end54

if.end54:                                         ; preds = %do.body40, %if.end33.if.end54_crit_edge
  %flags.2 = phi i32 [ %call49, %do.body40 ], [ %flags.1102, %if.end33.if.end54_crit_edge ]
  %9 = ptrtoint ptr %next_empty to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %next_empty, align 2
  %conv.i = zext i16 %10 to i32
  %11 = ptrtoint ptr %next_rx to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %next_rx, align 4
  %conv3.i = zext i16 %12 to i32
  %add.i = sub nsw i32 62, %conv.i
  %sub.i = add nsw i32 %add.i, %conv3.i
  %rem.i = srem i32 %sub.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %rem.i)
  %cmp.i = icmp slt i32 %rem.i, 3
  br i1 %cmp.i, label %if.then.i, label %if.end.i, !prof !265

if.then.i:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree_skb_reason(ptr noundef nonnull %call22, i32 noundef 0) #10
  br label %ns83820_add_rx_skb.exit

if.end.i:                                         ; preds = %if.end54
  %arrayidx.i = getelementptr %struct.ns83820, ptr %add.ptr.i.i, i32 0, i32 3, i32 3, i32 %conv.i
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx.i, align 4
  %cmp11.not.i = icmp eq ptr %14, null
  br i1 %cmp11.not.i, label %do.end26.i, label %do.body20.i, !prof !253

do.body20.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/natsemi/ns83820.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 524, 0\0A.popsection", ""() #10, !srcloc !266
  unreachable

do.end26.i:                                       ; preds = %if.end.i
  %mul.i = shl nuw nsw i32 %conv.i, 3
  %15 = ptrtoint ptr %descs.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %descs.i, align 4
  %add.ptr.i94 = getelementptr i32, ptr %16, i32 %mul.i
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call22, ptr %arrayidx.i, align 4
  %add30.i = add i16 %10, 1
  %rem31.i = and i16 %add30.i, 63
  %18 = ptrtoint ptr %next_empty to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %rem31.i, ptr %next_empty, align 2
  %19 = ptrtoint ptr %pci_dev.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pci_dev.i, align 4
  %dev35.i = getelementptr inbounds %struct.pci_dev, ptr %20, i32 0, i32 44
  %21 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %data, align 4
  %call.i.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %22) #10
  br i1 %call.i.i, label %land.rhs.i.i, label %if.end39.i.i

land.rhs.i.i:                                     ; preds = %do.end26.i
  %.b1.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs.i.i.dma_map_single_attrs.exit.i_crit_edge, label %if.then.i.i, !prof !253

land.rhs.i.i.dma_map_single_attrs.exit.i_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_map_single_attrs.exit.i

if.then.i.i:                                      ; preds = %land.rhs.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i = tail call ptr @dev_driver_string(ptr noundef %dev35.i) #10
  %init_name.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %20, i32 0, i32 44, i32 3
  %23 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %24, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.dev_name.exit.i.i_crit_edge

if.then.i.i.dev_name.exit.i.i_crit_edge:          ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_name.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %25 = ptrtoint ptr %dev35.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev35.i, align 4
  br label %dev_name.exit.i.i

dev_name.exit.i.i:                                ; preds = %if.end.i.i.i, %if.then.i.i.dev_name.exit.i.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %26, %if.end.i.i.i ], [ %24, %if.then.i.i.dev_name.exit.i.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.52, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.53, ptr noundef %call16.i.i, ptr noundef %retval.0.i.i.i) #10
  br label %dma_map_single_attrs.exit.i

if.end39.i.i:                                     ; preds = %do.end26.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @debug_dma_map_single(ptr noundef %dev35.i, ptr noundef %22, i32 noundef 1514) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %27 = load ptr, ptr @mem_map, align 4
  %28 = ptrtoint ptr %22 to i32
  %sub.i.i = add i32 %28, 1073741824
  %shr.i.i = lshr i32 %sub.i.i, 12
  %add.ptr.i.i96 = getelementptr %struct.page, ptr %27, i32 %shr.i.i
  %and.i.i = and i32 %28, 4095
  %call41.i.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev35.i, ptr noundef %add.ptr.i.i96, i32 noundef %and.i.i, i32 noundef 1514, i32 noundef 2, i32 noundef 0) #10
  br label %dma_map_single_attrs.exit.i

dma_map_single_attrs.exit.i:                      ; preds = %if.end39.i.i, %dev_name.exit.i.i, %land.rhs.i.i.dma_map_single_attrs.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %call41.i.i, %if.end39.i.i ], [ -1, %dev_name.exit.i.i ], [ -1, %land.rhs.i.i.dma_map_single_attrs.exit.i_crit_edge ]
  %29 = ptrtoint ptr %add.ptr.i94 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %add.ptr.i94, align 4
  %30 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i.i) #10
  %add.ptr2.i.i = getelementptr i32, ptr %add.ptr.i94, i32 1
  %31 = ptrtoint ptr %add.ptr2.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %add.ptr2.i.i, align 4
  %arrayidx5.i.i = getelementptr i32, ptr %add.ptr.i94, i32 3
  %32 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %arrayidx5.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !267
  tail call void @arm_heavy_mb() #10
  %arrayidx8.i.i = getelementptr i32, ptr %add.ptr.i94, i32 2
  %33 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 -368771040, ptr %arrayidx8.i.i, align 4
  %34 = ptrtoint ptr %next_rx to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %next_rx, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %10, i16 %35)
  %cmp39.not.i = icmp eq i16 %10, %35
  br i1 %cmp39.not.i, label %dma_map_single_attrs.exit.i.ns83820_add_rx_skb.exit_crit_edge, label %if.then47.i, !prof !265

dma_map_single_attrs.exit.i.ns83820_add_rx_skb.exit_crit_edge: ; preds = %dma_map_single_attrs.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ns83820_add_rx_skb.exit

if.then47.i:                                      ; preds = %dma_map_single_attrs.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %36 = ptrtoint ptr %phy_descs.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %phy_descs.i, align 4
  %mul50.i = shl nuw nsw i32 %conv.i, 5
  %add51.i = add i32 %37, %mul50.i
  %38 = tail call i32 @llvm.bswap.i32(i32 %add51.i) #10
  %39 = ptrtoint ptr %descs.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %descs.i, align 4
  %rem56.i = add nuw nsw i32 %mul.i, 504
  %mul57.i = and i32 %rem56.i, 504
  %arrayidx58.i = getelementptr i32, ptr %40, i32 %mul57.i
  %41 = ptrtoint ptr %arrayidx58.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %38, ptr %arrayidx58.i, align 4
  br label %ns83820_add_rx_skb.exit

ns83820_add_rx_skb.exit:                          ; preds = %if.then47.i, %dma_map_single_attrs.exit.i.ns83820_add_rx_skb.exit_crit_edge, %if.then.i
  br i1 %cmp5, label %ns83820_add_rx_skb.exit.if.end61_crit_edge, label %if.then58

ns83820_add_rx_skb.exit.if.end61_crit_edge:       ; preds = %ns83820_add_rx_skb.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end61

if.then58:                                        ; preds = %ns83820_add_rx_skb.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rx_info, i32 noundef %flags.2) #10
  br label %if.end61

if.end61:                                         ; preds = %if.then58, %ns83820_add_rx_skb.exit.if.end61_crit_edge
  %inc = add nuw nsw i32 %i.0101, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %inc)
  %exitcond.not = icmp eq i32 %inc, 64
  %or.cond = select i1 %cmp.i, i1 true, i1 %exitcond.not
  br i1 %or.cond, label %if.end61.for.end_crit_edge, label %if.end61.for.body_crit_edge

if.end61.for.body_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

if.end61.for.end_crit_edge:                       ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %if.end61.for.end_crit_edge, %for.body.for.end_crit_edge
  %i.2 = phi i32 [ 1, %if.end61.for.end_crit_edge ], [ %i.0101, %for.body.for.end_crit_edge ]
  %flags.4 = phi i32 [ %flags.2, %if.end61.for.end_crit_edge ], [ %flags.1102, %for.body.for.end_crit_edge ]
  br i1 %cmp5, label %if.then68, label %for.end.if.end71_crit_edge

for.end.if.end71_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end71

if.then68:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rx_info, i32 noundef %flags.4) #10
  br label %if.end71

if.end71:                                         ; preds = %if.then68, %for.end.if.end71_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.2)
  %tobool72.not = icmp eq i32 %i.2, 0
  %cond = select i1 %tobool72.not, i32 -12, i32 0
  br label %cleanup73

cleanup73:                                        ; preds = %if.end71, %entry.cleanup73_crit_edge
  %retval.0 = phi i32 [ %cond, %if.end71 ], [ 0, %entry.cleanup73_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

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
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rx_irq(ptr noundef %ndev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %ndev, i32 2304
  %rx_info = getelementptr i8, ptr %ndev, i32 2316
  %call7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rx_info) #10
  %up = getelementptr i8, ptr %ndev, i32 2360
  %0 = ptrtoint ptr %up to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %up, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.out_crit_edge, label %do.end14

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

do.end14:                                         ; preds = %entry
  %next_rx15 = getelementptr i8, ptr %ndev, i32 2628
  %2 = ptrtoint ptr %next_rx15 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %next_rx15, align 4
  %conv16 = zext i16 %3 to i32
  %next_rx_desc = getelementptr i8, ptr %ndev, i32 2624
  %4 = ptrtoint ptr %next_rx_desc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %next_rx_desc, align 4
  %arrayidx150 = getelementptr i32, ptr %5, i32 2
  %6 = ptrtoint ptr %arrayidx150 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx150, align 4
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %8)
  %tobool17.not151 = icmp sgt i32 %8, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %7)
  %cmp18.not152 = icmp eq i32 %7, 128
  %or.cond153 = select i1 %tobool17.not151, i1 true, i1 %cmp18.not152
  br i1 %or.cond153, label %do.end14.while.end_crit_edge, label %while.body.lr.ph

do.end14.while.end_crit_edge:                     ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #12
  %.pre = shl nuw nsw i32 %conv16, 3
  br label %while.end

while.body.lr.ph:                                 ; preds = %do.end14
  %descs.i = getelementptr i8, ptr %ndev, i32 2632
  %pci_dev = getelementptr i8, ptr %ndev, i32 2308
  %multicast = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 36, i32 8
  %stats68 = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 36
  %rx_bytes = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 36, i32 2
  %rx_dropped = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 36, i32 6
  br label %while.body

while.body:                                       ; preds = %if.end93.while.body_crit_edge, %while.body.lr.ph
  %9 = phi i32 [ %8, %while.body.lr.ph ], [ %48, %if.end93.while.body_crit_edge ]
  %next_rx.0155 = phi i32 [ %conv16, %while.body.lr.ph ], [ %conv96, %if.end93.while.body_crit_edge ]
  %desc.0154 = phi ptr [ %5, %while.body.lr.ph ], [ %add.ptr97, %if.end93.while.body_crit_edge ]
  %arrayidx20 = getelementptr i32, ptr %desc.0154, i32 3
  %10 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx20, align 4
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  %add.ptr = getelementptr i32, ptr %desc.0154, i32 1
  %13 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %add.ptr, align 4
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  %arrayidx31 = getelementptr %struct.ns83820, ptr %add.ptr.i.i, i32 0, i32 3, i32 3, i32 %next_rx.0155
  %16 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx31, align 4
  store ptr null, ptr %arrayidx31, align 4
  %18 = trunc i32 %next_rx.0155 to i16
  %19 = add i16 %18, 1
  %conv34 = and i16 %19, 63
  %20 = ptrtoint ptr %next_rx15 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %conv34, ptr %next_rx15, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !268
  tail call void @arm_heavy_mb() #10
  %21 = ptrtoint ptr %descs.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %descs.i, align 4
  %mul.i = shl nuw nsw i32 %next_rx.0155, 3
  %add.ptr.i = getelementptr i32, ptr %22, i32 %mul.i
  %23 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %add.ptr.i, align 4
  %add.ptr2.i.i = getelementptr i32, ptr %add.ptr.i, i32 1
  %24 = ptrtoint ptr %add.ptr2.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %add.ptr2.i.i, align 4
  %arrayidx5.i.i = getelementptr i32, ptr %add.ptr.i, i32 3
  %25 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %arrayidx5.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !267
  tail call void @arm_heavy_mb() #10
  %arrayidx8.i.i = getelementptr i32, ptr %add.ptr.i, i32 2
  %26 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 128, ptr %arrayidx8.i.i, align 4
  %27 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pci_dev, align 4
  %dev39 = getelementptr inbounds %struct.pci_dev, ptr %28, i32 0, i32 44
  tail call void @dma_unmap_page_attrs(ptr noundef %dev39, i32 noundef %15, i32 noundef 1500, i32 noundef 2, i32 noundef 0) #10
  %and40 = and i32 %9, 65535
  %and41 = and i32 %9, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41)
  %tobool42.not = icmp eq i32 %and41, 0
  br i1 %tobool42.not, label %lor.rhs, label %while.body.if.then51_crit_edge

while.body.if.then51_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then51

lor.rhs:                                          ; preds = %while.body
  %and43 = and i32 %9, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43)
  %tobool44.not = icmp ne i32 %and43, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 55, i32 %and40)
  %cmp46 = icmp ugt i32 %and40, 55
  %spec.select = and i1 %tobool44.not, %cmp46
  br i1 %spec.select, label %lor.rhs.if.then51_crit_edge, label %if.else92, !prof !253

lor.rhs.if.then51_crit_edge:                      ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then51

if.then51:                                        ; preds = %lor.rhs.if.then51_crit_edge, %while.body.if.then51_crit_edge
  %call52 = tail call ptr @skb_put(ptr noundef %17, i32 noundef %and40) #10
  %tobool53.not = icmp eq ptr %17, null
  br i1 %tobool53.not, label %if.then51.netdev_mangle_me_harder_failed_crit_edge, label %if.end63, !prof !265

if.then51.netdev_mangle_me_harder_failed_crit_edge: ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #12
  br label %netdev_mangle_me_harder_failed

if.end63:                                         ; preds = %if.then51
  %and64 = and i32 %9, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and64)
  %tobool65.not = icmp eq i32 %and64, 0
  br i1 %tobool65.not, label %if.end63.if.end67_crit_edge, label %if.then66

if.end63.if.end67_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end67

if.then66:                                        ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #12
  %29 = ptrtoint ptr %multicast to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %multicast, align 8
  %inc = add i32 %30, 1
  store i32 %inc, ptr %multicast, align 8
  br label %if.end67

if.end67:                                         ; preds = %if.then66, %if.end63.if.end67_crit_edge
  %31 = ptrtoint ptr %stats68 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %stats68, align 8
  %inc69 = add i32 %32, 1
  store i32 %inc69, ptr %stats68, align 8
  %33 = ptrtoint ptr %rx_bytes to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %rx_bytes, align 8
  %add71 = add i32 %34, %and40
  store i32 %add71, ptr %rx_bytes, align 8
  %and72 = and i32 %12, 2752512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and72)
  %tobool73.not = icmp ne i32 %and72, 0
  %and74 = and i32 %12, 5505024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and74)
  %tobool75.not = icmp eq i32 %and74, 0
  %or.cond149 = and i1 %tobool73.not, %tobool75.not
  br i1 %or.cond149, label %if.then76, label %if.end67.if.end77_crit_edge

if.end67.if.end77_crit_edge:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end77

if.then76:                                        ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #12
  %ip_summed = getelementptr inbounds %struct.sk_buff, ptr %17, i32 0, i32 15
  %35 = ptrtoint ptr %ip_summed to i32
  call void @__asan_load2_noabort(i32 %35)
  %bf.load = load i16, ptr %ip_summed, align 8
  %bf.clear = and i16 %bf.load, -1537
  %bf.set = or i16 %bf.clear, 512
  store i16 %bf.set, ptr %ip_summed, align 8
  br label %if.end77

if.end77:                                         ; preds = %if.then76, %if.end67.if.end77_crit_edge
  %call78 = tail call zeroext i16 @eth_type_trans(ptr noundef nonnull %17, ptr noundef %ndev) #10
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %17, i32 0, i32 15, i32 0, i32 18
  %36 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %call78, ptr %protocol, align 8
  %and79 = and i32 %12, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and79)
  %tobool80.not = icmp eq i32 %and79, 0
  br i1 %tobool80.not, label %if.end77.if.end84_crit_edge, label %if.then81

if.end77.if.end84_crit_edge:                      ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end84

if.then81:                                        ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #12
  %conv83 = trunc i32 %12 to i16
  %vlan_proto1.i = getelementptr inbounds %struct.sk_buff, ptr %17, i32 0, i32 15, i32 0, i32 9
  %37 = ptrtoint ptr %vlan_proto1.i to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 -31011, ptr %vlan_proto1.i, align 8
  %vlan_tci2.i = getelementptr inbounds %struct.sk_buff, ptr %17, i32 0, i32 15, i32 0, i32 10
  %38 = ptrtoint ptr %vlan_tci2.i to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %conv83, ptr %vlan_tci2.i, align 2
  %vlan_present.i = getelementptr inbounds %struct.sk_buff, ptr %17, i32 0, i32 15, i32 0, i32 3
  %39 = ptrtoint ptr %vlan_present.i to i32
  call void @__asan_loadN_noabort(i32 %39, i32 4)
  %bf.load.i = load i32, ptr %vlan_present.i, align 2
  %bf.set.i = or i32 %bf.load.i, -2147483648
  store i32 %bf.set.i, ptr %vlan_present.i, align 2
  br label %if.end84

if.end84:                                         ; preds = %if.then81, %if.end77.if.end84_crit_edge
  %call85 = tail call i32 @netif_rx(ptr noundef nonnull %17) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call85)
  %cmp86 = icmp eq i32 %call85, 1
  br i1 %cmp86, label %if.end84.netdev_mangle_me_harder_failed_crit_edge, label %if.end84.if.end93_crit_edge

if.end84.if.end93_crit_edge:                      ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end93

if.end84.netdev_mangle_me_harder_failed_crit_edge: ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #12
  br label %netdev_mangle_me_harder_failed

netdev_mangle_me_harder_failed:                   ; preds = %if.end84.netdev_mangle_me_harder_failed_crit_edge, %if.then51.netdev_mangle_me_harder_failed_crit_edge
  %40 = ptrtoint ptr %rx_dropped to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %rx_dropped, align 8
  %inc90 = add i32 %41, 1
  store i32 %inc90, ptr %rx_dropped, align 8
  br label %if.end93

if.else92:                                        ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__dev_kfree_skb_irq(ptr noundef %17, i32 noundef 1) #10
  br label %if.end93

if.end93:                                         ; preds = %if.else92, %netdev_mangle_me_harder_failed, %if.end84.if.end93_crit_edge
  %42 = ptrtoint ptr %next_rx15 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %next_rx15, align 4
  %conv96 = zext i16 %43 to i32
  %44 = ptrtoint ptr %descs.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %descs.i, align 4
  %mul = shl nuw nsw i32 %conv96, 3
  %add.ptr97 = getelementptr i32, ptr %45, i32 %mul
  %arrayidx = getelementptr i32, ptr %add.ptr97, i32 2
  %46 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx, align 4
  %48 = tail call i32 @llvm.bswap.i32(i32 %47)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %48)
  %tobool17.not = icmp sgt i32 %48, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %47)
  %cmp18.not = icmp eq i32 %47, 128
  %or.cond = select i1 %tobool17.not, i1 true, i1 %cmp18.not
  br i1 %or.cond, label %if.end93.while.end_crit_edge, label %if.end93.while.body_crit_edge

if.end93.while.body_crit_edge:                    ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

if.end93.while.end_crit_edge:                     ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %if.end93.while.end_crit_edge, %do.end14.while.end_crit_edge
  %mul101.pre-phi = phi i32 [ %.pre, %do.end14.while.end_crit_edge ], [ %mul, %if.end93.while.end_crit_edge ]
  %next_rx.0.lcssa = phi i16 [ %3, %do.end14.while.end_crit_edge ], [ %43, %if.end93.while.end_crit_edge ]
  %49 = ptrtoint ptr %next_rx15 to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %next_rx.0.lcssa, ptr %next_rx15, align 4
  %descs100 = getelementptr i8, ptr %ndev, i32 2632
  %50 = ptrtoint ptr %descs100 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %descs100, align 4
  %add.ptr102 = getelementptr i32, ptr %51, i32 %mul101.pre-phi
  %52 = ptrtoint ptr %next_rx_desc to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %add.ptr102, ptr %next_rx_desc, align 4
  br label %out

out:                                              ; preds = %while.end, %entry.out_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rx_info, i32 noundef %call7) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ns83820_rx_kick(ptr noundef %ndev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %ndev, i32 2304
  %up = getelementptr i8, ptr %ndev, i32 2360
  %0 = ptrtoint ptr %up to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %up, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.else_crit_edge, label %if.then

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

if.then:                                          ; preds = %entry
  %call.i = tail call fastcc i32 @rx_refill(ptr noundef %ndev, i32 noundef 2592) #10
  %idle.i = getelementptr i8, ptr %ndev, i32 2364
  %call1.i = tail call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %idle.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.then.if.end_crit_edge, label %do.body5.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.body5.i:                                       ; preds = %if.then
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !246
  tail call void @arm_heavy_mb() #10
  %phy_descs.i = getelementptr i8, ptr %ndev, i32 2636
  %2 = ptrtoint ptr %phy_descs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %phy_descs.i, align 4
  %next_rx.i = getelementptr i8, ptr %ndev, i32 2628
  %4 = ptrtoint ptr %next_rx.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %next_rx.i, align 4
  %conv.i = zext i16 %5 to i32
  %mul.i = shl nuw nsw i32 %conv.i, 5
  %add.i = add i32 %mul.i, %3
  %6 = tail call i32 @llvm.bswap.i32(i32 %add.i) #10
  %7 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %add.ptr.i.i, align 16
  %add.ptr.i = getelementptr i8, ptr %8, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %6) #10, !srcloc !218
  %9 = ptrtoint ptr %next_rx.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %next_rx.i, align 4
  %next_empty.i = getelementptr i8, ptr %ndev, i32 2630
  %11 = ptrtoint ptr %next_empty.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %next_empty.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %10, i16 %12)
  %cmp.i = icmp eq i16 %10, %12
  br i1 %cmp.i, label %do.end19.i, label %do.body5.i.do.body21.i_crit_edge

do.body5.i.do.body21.i_crit_edge:                 ; preds = %do.body5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body21.i

do.end19.i:                                       ; preds = %do.body5.i
  call void @__sanitizer_cov_trace_pc() #12
  %call20.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, ptr noundef %ndev) #13
  br label %do.body21.i

do.body21.i:                                      ; preds = %do.end19.i, %do.body5.i.do.body21.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !247
  tail call void @arm_heavy_mb() #10
  %13 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %add.ptr.i.i, align 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 67108864) #10, !srcloc !218
  br label %if.end

if.end:                                           ; preds = %do.body21.i, %if.then.if.end_crit_edge
  %15 = ptrtoint ptr %up to i32
  call void @__asan_load4_noabort(i32 %15)
  %.pr = load i32, ptr %up, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool3.not = icmp eq i32 %.pr, 0
  br i1 %tobool3.not, label %if.end.if.else_crit_edge, label %land.lhs.true

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

land.lhs.true:                                    ; preds = %if.end
  %next_rx = getelementptr i8, ptr %ndev, i32 2628
  %16 = ptrtoint ptr %next_rx to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %next_rx, align 4
  %conv = zext i16 %17 to i32
  %add = add nuw nsw i32 %conv, 62
  %next_empty = getelementptr i8, ptr %ndev, i32 2630
  %18 = ptrtoint ptr %next_empty to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %next_empty, align 2
  %conv6 = zext i16 %19 to i32
  %sub = sub nsw i32 %add, %conv6
  %rem = srem i32 %sub, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %rem)
  %cmp = icmp sgt i32 %rem, 48
  br i1 %cmp, label %if.then8, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

if.then8:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %tq_refill = getelementptr i8, ptr %ndev, i32 2668
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %20 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %20, ptr noundef %tq_refill) #10
  br label %if.end10

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end.if.else_crit_edge, %entry.if.else_crit_edge
  %idle.i26 = getelementptr i8, ptr %ndev, i32 2364
  %call1.i27 = tail call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %idle.i26) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i27)
  %tobool.not.i28 = icmp eq i32 %call1.i27, 0
  br i1 %tobool.not.i28, label %if.else.if.end10_crit_edge, label %do.body5.i37

if.else.if.end10_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

do.body5.i37:                                     ; preds = %if.else
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !246
  tail call void @arm_heavy_mb() #10
  %phy_descs.i29 = getelementptr i8, ptr %ndev, i32 2636
  %21 = ptrtoint ptr %phy_descs.i29 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %phy_descs.i29, align 4
  %next_rx.i30 = getelementptr i8, ptr %ndev, i32 2628
  %23 = ptrtoint ptr %next_rx.i30 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %next_rx.i30, align 4
  %conv.i31 = zext i16 %24 to i32
  %mul.i32 = shl nuw nsw i32 %conv.i31, 5
  %add.i33 = add i32 %mul.i32, %22
  %25 = tail call i32 @llvm.bswap.i32(i32 %add.i33) #10
  %26 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %add.ptr.i.i, align 16
  %add.ptr.i34 = getelementptr i8, ptr %27, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i34, i32 %25) #10, !srcloc !218
  %28 = ptrtoint ptr %next_rx.i30 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %next_rx.i30, align 4
  %next_empty.i35 = getelementptr i8, ptr %ndev, i32 2630
  %30 = ptrtoint ptr %next_empty.i35 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %next_empty.i35, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %29, i16 %31)
  %cmp.i36 = icmp eq i16 %29, %31
  br i1 %cmp.i36, label %do.end19.i39, label %do.body5.i37.do.body21.i40_crit_edge

do.body5.i37.do.body21.i40_crit_edge:             ; preds = %do.body5.i37
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body21.i40

do.end19.i39:                                     ; preds = %do.body5.i37
  call void @__sanitizer_cov_trace_pc() #12
  %call20.i38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, ptr noundef %ndev) #13
  br label %do.body21.i40

do.body21.i40:                                    ; preds = %do.end19.i39, %do.body5.i37.do.body21.i40_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !247
  tail call void @arm_heavy_mb() #10
  %32 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %add.ptr.i.i, align 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 67108864) #10, !srcloc !218
  br label %if.end10

if.end10:                                         ; preds = %do.body21.i40, %if.else.if.end10_crit_edge, %if.then8
  %idle = getelementptr i8, ptr %ndev, i32 2364
  %34 = ptrtoint ptr %idle to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %idle, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool12.not = icmp eq i32 %35, 0
  br i1 %tobool12.not, label %if.end10.if.end15_crit_edge, label %do.end

if.end10.if.end15_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

do.end:                                           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, ptr noundef %ndev) #13
  br label %if.end15

if.end15:                                         ; preds = %do.end, %if.end10.if.end15_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @eth_type_trans(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_rx(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @do_tx_done(ptr noundef %ndev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %ndev, i32 2304
  %tx_done_idx1 = getelementptr i8, ptr %ndev, i32 2816
  %0 = ptrtoint ptr %tx_done_idx1 to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %tx_done_idx1, align 16
  %tx_descs = getelementptr i8, ptr %ndev, i32 3360
  %2 = ptrtoint ptr %tx_descs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tx_descs, align 16
  %tx_free_idx = getelementptr i8, ptr %ndev, i32 2820
  %4 = ptrtoint ptr %tx_free_idx to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load volatile i16, ptr %tx_free_idx, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %1, i16 %5)
  %cmp.not100 = icmp eq i16 %1, %5
  br i1 %cmp.not100, label %entry.while.end_crit_edge, label %land.rhs.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

land.rhs.lr.ph:                                   ; preds = %entry
  %conv = zext i16 %1 to i32
  %mul = shl nuw nsw i32 %conv, 3
  %add.ptr = getelementptr i32, ptr %3, i32 %mul
  %tx_errors = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 36, i32 5
  %tx_packets = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 36, i32 1
  %tx_bytes = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 36, i32 3
  %pci_dev = getelementptr i8, ptr %ndev, i32 2308
  %nr_tx_skbs = getelementptr i8, ptr %ndev, i32 2824
  br label %land.rhs

land.rhs:                                         ; preds = %if.end38.land.rhs_crit_edge, %land.rhs.lr.ph
  %desc.0102 = phi ptr [ %add.ptr, %land.rhs.lr.ph ], [ %add.ptr48, %if.end38.land.rhs_crit_edge ]
  %tx_done_idx.0101 = phi i32 [ %conv, %land.rhs.lr.ph ], [ %rem, %if.end38.land.rhs_crit_edge ]
  %arrayidx = getelementptr i32, ptr %desc.0102, i32 2
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %8)
  %tobool.not = icmp sgt i32 %8, -1
  br i1 %tobool.not, label %while.body, label %land.rhs.while.end_crit_edge

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body:                                       ; preds = %land.rhs
  %and7 = and i32 %8, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %while.body.if.end_crit_edge, label %if.then

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  %9 = ptrtoint ptr %tx_errors to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %tx_errors, align 4
  %inc = add i32 %10, 1
  store i32 %inc, ptr %tx_errors, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body.if.end_crit_edge
  %and9 = and i32 %8, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.end.do.end23_crit_edge, label %if.then11

if.end.do.end23_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %.pre = and i32 %8, 65535
  br label %do.end23

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %11 = ptrtoint ptr %tx_packets to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %tx_packets, align 4
  %inc13 = add i32 %12, 1
  store i32 %inc13, ptr %tx_packets, align 4
  %and18 = and i32 %8, 65535
  %13 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tx_bytes, align 4
  %add = add i32 %14, %and18
  store i32 %add, ptr %tx_bytes, align 4
  br label %do.end23

do.end23:                                         ; preds = %if.then11, %if.end.do.end23_crit_edge
  %and30.pre-phi = phi i32 [ %.pre, %if.end.do.end23_crit_edge ], [ %and18, %if.then11 ]
  %arrayidx24 = getelementptr %struct.ns83820, ptr %add.ptr.i.i, i32 0, i32 18, i32 %tx_done_idx.0101
  %15 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx24, align 4
  store ptr null, ptr %arrayidx24, align 4
  %add.ptr31 = getelementptr i32, ptr %desc.0102, i32 1
  %17 = ptrtoint ptr %add.ptr31 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %add.ptr31, align 4
  %19 = tail call i32 @llvm.bswap.i32(i32 %18)
  %tobool33.not = icmp eq ptr %16, null
  %20 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pci_dev, align 4
  %dev37 = getelementptr inbounds %struct.pci_dev, ptr %21, i32 0, i32 44
  tail call void @dma_unmap_page_attrs(ptr noundef %dev37, i32 noundef %19, i32 noundef %and30.pre-phi, i32 noundef 1, i32 noundef 0) #10
  br i1 %tobool33.not, label %do.end23.if.end38_crit_edge, label %if.then34

do.end23.if.end38_crit_edge:                      ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end38

if.then34:                                        ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__dev_kfree_skb_irq(ptr noundef nonnull %16, i32 noundef 0) #10
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %nr_tx_skbs, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %nr_tx_skbs, i32 1, i32 3, i32 1) #10
  %22 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %nr_tx_skbs, ptr %nr_tx_skbs, i32 1, ptr elementtype(i32) %nr_tx_skbs) #10, !srcloc !269
  br label %if.end38

if.end38:                                         ; preds = %if.then34, %do.end23.if.end38_crit_edge
  %add39 = add nuw nsw i32 %tx_done_idx.0101, 1
  %rem = and i32 %add39, 127
  %conv40 = trunc i32 %rem to i16
  %23 = ptrtoint ptr %tx_done_idx1 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %conv40, ptr %tx_done_idx1, align 16
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %arrayidx, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !270
  tail call void @arm_heavy_mb() #10
  %25 = ptrtoint ptr %tx_descs to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %tx_descs, align 16
  %mul47 = shl nuw nsw i32 %rem, 3
  %add.ptr48 = getelementptr i32, ptr %26, i32 %mul47
  %27 = ptrtoint ptr %tx_free_idx to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load volatile i16, ptr %tx_free_idx, align 4
  %conv5 = zext i16 %28 to i32
  %cmp.not = icmp eq i32 %rem, %conv5
  br i1 %cmp.not, label %if.end38.while.end_crit_edge, label %if.end38.land.rhs_crit_edge

if.end38.land.rhs_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs

if.end38.while.end_crit_edge:                     ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %if.end38.while.end_crit_edge, %land.rhs.while.end_crit_edge, %entry.while.end_crit_edge
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 103
  %29 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %30, i32 0, i32 13
  %31 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %state.i.i, align 4
  %and1.i.i.i = and i32 %32, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.i.i.not = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.i.i.not, label %while.end.if.end63_crit_edge, label %land.lhs.true

while.end.if.end63_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end63

land.lhs.true:                                    ; preds = %while.end
  %33 = ptrtoint ptr %tx_done_idx1 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %tx_done_idx1, align 16
  %conv52 = zext i16 %34 to i32
  %add53 = add nuw nsw i32 %conv52, 126
  %35 = ptrtoint ptr %tx_free_idx to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load volatile i16, ptr %tx_free_idx, align 4
  %conv55 = zext i16 %36 to i32
  %sub = sub nsw i32 %add53, %conv55
  %rem56 = srem i32 %sub, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %rem56)
  %cmp57 = icmp sgt i32 %rem56, 8
  br i1 %cmp57, label %do.end62, label %land.lhs.true.if.end63_crit_edge

land.lhs.true.if.end63_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end63

do.end62:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i) #10
  %37 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %_tx.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %38) #10
  br label %if.end63

if.end63:                                         ; preds = %do.end62, %land.lhs.true.if.end63_crit_edge, %while.end.if.end63_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @phy_intr(ptr noundef %ndev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %ndev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 16
  %add.ptr = getelementptr i8, ptr %1, i32 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !220
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !271
  %4 = load i32, ptr @lnksts, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  %or = select i1 %tobool.not, i32 1879048192, i32 -268435456
  %xor = xor i32 %or, %3
  %CFG_cache = getelementptr i8, ptr %ndev, i32 2756
  %5 = ptrtoint ptr %CFG_cache to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %CFG_cache, align 4
  %and = and i32 %6, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %if.else128, label %if.then

if.then:                                          ; preds = %entry
  %7 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %add.ptr.i.i, align 16
  %add.ptr7 = getelementptr i8, ptr %8, i32 228
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7) #10, !srcloc !220
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !272
  %10 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add.ptr.i.i, align 16
  %add.ptr14 = getelementptr i8, ptr %11, i32 232
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr14) #10, !srcloc !220
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !273
  %14 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %add.ptr.i.i, align 16
  %add.ptr21 = getelementptr i8, ptr %15, i32 236
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr21) #10, !srcloc !220
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !274
  %and25 = and i32 %17, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  %and27 = and i32 %13, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  %or.cond317 = select i1 %tobool26.not, i1 true, i1 %tobool28.not
  br i1 %or.cond317, label %if.else, label %do.body30

do.body30:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !275
  tail call void @arm_heavy_mb() #10
  %18 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %add.ptr.i.i, align 16
  %add.ptr36 = getelementptr i8, ptr %19, i32 40
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr36) #10, !srcloc !220
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !276
  %21 = or i32 %20, 208
  %22 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %add.ptr.i.i, align 16
  %add.ptr44 = getelementptr i8, ptr %23, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr44, i32 %21) #10, !srcloc !218
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !277
  tail call void @arm_heavy_mb() #10
  %24 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %add.ptr.i.i, align 16
  %add.ptr51 = getelementptr i8, ptr %25, i32 56
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51) #10, !srcloc !220
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !278
  %27 = or i32 %26, 16
  %28 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %add.ptr.i.i, align 16
  %add.ptr57 = getelementptr i8, ptr %29, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr57, i32 %27) #10, !srcloc !218
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !279
  tail call void @arm_heavy_mb() #10
  %30 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %add.ptr.i.i, align 16
  %add.ptr64 = getelementptr i8, ptr %31, i32 44
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr64) #10, !srcloc !220
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !280
  %33 = or i32 %32, 16777216
  %34 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %add.ptr.i.i, align 16
  %add.ptr70 = getelementptr i8, ptr %35, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr70, i32 %33) #10, !srcloc !218
  br label %if.end216

if.else:                                          ; preds = %if.then
  %and71 = and i32 %17, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and71)
  %tobool72.not = icmp eq i32 %and71, 0
  %and73 = and i32 %13, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and73)
  %tobool74.not = icmp eq i32 %and73, 0
  %or.cond = select i1 %tobool72.not, i1 true, i1 %tobool74.not
  %or.cond309 = select i1 %tobool26.not, i1 true, i1 %tobool74.not
  %or.cond316 = select i1 %or.cond, i1 %or.cond309, i1 false
  %or.cond310 = select i1 %tobool72.not, i1 true, i1 %tobool28.not
  %or.cond318 = select i1 %or.cond316, i1 %or.cond310, i1 false
  br i1 %or.cond318, label %if.else.if.end216_crit_edge, label %do.body87

if.else.if.end216_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end216

do.body87:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !281
  tail call void @arm_heavy_mb() #10
  %36 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %add.ptr.i.i, align 16
  %add.ptr93 = getelementptr i8, ptr %37, i32 40
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr93) #10, !srcloc !220
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !282
  %39 = and i32 %38, -209
  %40 = or i32 %39, 16
  %41 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %add.ptr.i.i, align 16
  %add.ptr100 = getelementptr i8, ptr %42, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr100, i32 %40) #10, !srcloc !218
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !283
  tail call void @arm_heavy_mb() #10
  %43 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %add.ptr.i.i, align 16
  %add.ptr107 = getelementptr i8, ptr %44, i32 56
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr107) #10, !srcloc !220
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !284
  %46 = and i32 %45, -17
  %47 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %add.ptr.i.i, align 16
  %add.ptr113 = getelementptr i8, ptr %48, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr113, i32 %46) #10, !srcloc !218
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !285
  tail call void @arm_heavy_mb() #10
  %49 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %add.ptr.i.i, align 16
  %add.ptr120 = getelementptr i8, ptr %50, i32 44
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr120) #10, !srcloc !220
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !286
  %52 = and i32 %51, -16777217
  %53 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %add.ptr.i.i, align 16
  %add.ptr126 = getelementptr i8, ptr %54, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr126, i32 %52) #10, !srcloc !218
  br label %if.end216

if.else128:                                       ; preds = %entry
  %and130 = and i32 %6, -1614807105
  %and131 = lshr i32 %xor, 8
  %55 = and i32 %and131, 4194304
  %56 = or i32 %55, %and130
  %div308 = lshr i32 %xor, 29
  %and138 = and i32 %div308, 3
  %and139 = and i32 %xor, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and139)
  %tobool140.not = icmp eq i32 %and139, 0
  br i1 %tobool140.not, label %do.body171, label %if.then141

if.then141:                                       ; preds = %if.else128
  call void @__sanitizer_cov_trace_pc() #12
  %or142 = or i32 %56, 64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !287
  tail call void @arm_heavy_mb() #10
  %57 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %add.ptr.i.i, align 16
  %add.ptr149 = getelementptr i8, ptr %58, i32 40
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr149) #10, !srcloc !220
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !288
  %60 = or i32 %59, 192
  %61 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %add.ptr.i.i, align 16
  %add.ptr156 = getelementptr i8, ptr %62, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr156, i32 %60) #10, !srcloc !218
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !289
  tail call void @arm_heavy_mb() #10
  %63 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %add.ptr.i.i, align 16
  %add.ptr163 = getelementptr i8, ptr %64, i32 56
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr163) #10, !srcloc !220
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !290
  %66 = or i32 %65, 16
  %67 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %add.ptr.i.i, align 16
  %add.ptr169 = getelementptr i8, ptr %68, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr169, i32 %66) #10, !srcloc !218
  br label %if.end197

do.body171:                                       ; preds = %if.else128
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !291
  tail call void @arm_heavy_mb() #10
  %69 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %add.ptr.i.i, align 16
  %add.ptr177 = getelementptr i8, ptr %70, i32 40
  %71 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr177) #10, !srcloc !220
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !292
  %72 = and i32 %71, -193
  %73 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %add.ptr.i.i, align 16
  %add.ptr183 = getelementptr i8, ptr %74, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr183, i32 %72) #10, !srcloc !218
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !293
  tail call void @arm_heavy_mb() #10
  %75 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %add.ptr.i.i, align 16
  %add.ptr190 = getelementptr i8, ptr %76, i32 56
  %77 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr190) #10, !srcloc !220
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !294
  %78 = and i32 %77, -17
  %79 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %add.ptr.i.i, align 16
  %add.ptr196 = getelementptr i8, ptr %80, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr196, i32 %78) #10, !srcloc !218
  br label %if.end197

if.end197:                                        ; preds = %do.body171, %if.then141
  %new_cfg.1 = phi i32 [ %or142, %if.then141 ], [ %56, %do.body171 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %xor)
  %tobool199.not = icmp sgt i32 %xor, -1
  br i1 %tobool199.not, label %if.end197.if.end210_crit_edge, label %land.lhs.true200

if.end197.if.end210_crit_edge:                    ; preds = %if.end197
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end210

land.lhs.true200:                                 ; preds = %if.end197
  %81 = ptrtoint ptr %CFG_cache to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %CFG_cache, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %new_cfg.1, i32 %82)
  %cmp.not = icmp eq i32 %new_cfg.1, %82
  br i1 %cmp.not, label %land.lhs.true200.if.end210_crit_edge, label %do.body204

land.lhs.true200.if.end210_crit_edge:             ; preds = %land.lhs.true200
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end210

do.body204:                                       ; preds = %land.lhs.true200
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !295
  tail call void @arm_heavy_mb() #10
  %83 = tail call i32 @llvm.bswap.i32(i32 %new_cfg.1)
  %84 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %add.ptr.i.i, align 16
  %add.ptr208 = getelementptr i8, ptr %85, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr208, i32 %83) #10, !srcloc !218
  %86 = ptrtoint ptr %CFG_cache to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %new_cfg.1, ptr %CFG_cache, align 4
  br label %if.end210

if.end210:                                        ; preds = %do.body204, %land.lhs.true200.if.end210_crit_edge, %if.end197.if.end210_crit_edge
  %87 = ptrtoint ptr %CFG_cache to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %CFG_cache, align 4
  %and212 = and i32 %88, -1610612737
  %and213 = and i32 %xor, 1610612736
  %or215 = or i32 %and212, %and213
  store i32 %or215, ptr %CFG_cache, align 4
  br label %if.end216

if.end216:                                        ; preds = %if.end210, %do.body87, %if.else.if.end216_crit_edge, %do.body30
  %fullduplex.2 = phi i32 [ %and139, %if.end210 ], [ 1, %do.body30 ], [ 0, %do.body87 ], [ 0, %if.else.if.end216_crit_edge ]
  %speed.0 = phi i32 [ %and138, %if.end210 ], [ 4, %do.body30 ], [ 4, %do.body87 ], [ 4, %if.else.if.end216_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %xor)
  %tobool218.not = icmp sgt i32 %xor, -1
  %cond219 = select i1 %tobool218.not, i32 2, i32 4
  %and220 = and i32 %cond219, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and220)
  %tobool221.not = icmp eq i32 %and220, 0
  br i1 %tobool221.not, label %if.else232, label %land.lhs.true222

land.lhs.true222:                                 ; preds = %if.end216
  %linkstate = getelementptr i8, ptr %ndev, i32 2768
  %89 = ptrtoint ptr %linkstate to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %linkstate, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %90, i32 %cond219)
  %cmp223.not = icmp eq i32 %90, %cond219
  br i1 %cmp223.not, label %land.lhs.true222.if.end247_crit_edge, label %if.then224

land.lhs.true222.if.end247_crit_edge:             ; preds = %land.lhs.true222
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end247

if.then224:                                       ; preds = %land.lhs.true222
  call void @__sanitizer_cov_trace_pc() #12
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 103
  %91 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %92, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i) #10
  %93 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %_tx.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %94) #10
  %arrayidx = getelementptr [5 x ptr], ptr @phy_intr.speeds, i32 0, i32 %speed.0
  %95 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %fullduplex.2)
  %tobool229.not = icmp eq i32 %fullduplex.2, 0
  %cond230 = select i1 %tobool229.not, ptr @.str.68, ptr @.str.67
  %call231 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65, ptr noundef %ndev, ptr noundef %96, ptr noundef nonnull %cond230) #13
  br label %if.end247

if.else232:                                       ; preds = %if.end216
  %and233 = and i32 %cond219, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and233)
  %tobool234.not = icmp eq i32 %and233, 0
  br i1 %tobool234.not, label %if.else232.if.end247_crit_edge, label %land.lhs.true235

if.else232.if.end247_crit_edge:                   ; preds = %if.else232
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end247

land.lhs.true235:                                 ; preds = %if.else232
  %linkstate236 = getelementptr i8, ptr %ndev, i32 2768
  %97 = ptrtoint ptr %linkstate236 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %linkstate236, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %98, i32 %cond219)
  %cmp237.not = icmp eq i32 %98, %cond219
  br i1 %cmp237.not, label %land.lhs.true235.if.end247_crit_edge, label %if.then238

land.lhs.true235.if.end247_crit_edge:             ; preds = %land.lhs.true235
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end247

if.then238:                                       ; preds = %land.lhs.true235
  call void @__sanitizer_cov_trace_pc() #12
  %_tx.i.i312 = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 103
  %99 = ptrtoint ptr %_tx.i.i312 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %_tx.i.i312, align 128
  %state.i.i313 = getelementptr inbounds %struct.netdev_queue, ptr %100, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i313) #10
  %call245 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70, ptr noundef %ndev) #13
  br label %if.end247

if.end247:                                        ; preds = %if.then238, %land.lhs.true235.if.end247_crit_edge, %if.else232.if.end247_crit_edge, %if.then224, %land.lhs.true222.if.end247_crit_edge
  %linkstate248 = getelementptr i8, ptr %ndev, i32 2768
  %101 = ptrtoint ptr %linkstate248 to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %cond219, ptr %linkstate248, align 16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ns83820_update_stats(ptr nocapture noundef readonly %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ndev1 = getelementptr inbounds %struct.ns83820, ptr %dev, i32 0, i32 2
  %0 = ptrtoint ptr %ndev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ndev1, align 8
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 16
  %add.ptr = getelementptr i8, ptr %3, i32 96
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !220
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !296
  %5 = and i32 %4, -65536
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %rx_errors = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 4
  %7 = ptrtoint ptr %rx_errors to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %rx_errors, align 8
  %add = add i32 %8, %6
  store i32 %add, ptr %rx_errors, align 8
  %add.ptr6 = getelementptr i8, ptr %3, i32 100
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6) #10, !srcloc !220
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !297
  %10 = and i32 %9, -65536
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  %rx_crc_errors = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 12
  %12 = ptrtoint ptr %rx_crc_errors to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rx_crc_errors, align 8
  %add12 = add i32 %13, %11
  store i32 %add12, ptr %rx_crc_errors, align 8
  %add.ptr15 = getelementptr i8, ptr %3, i32 104
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr15) #10, !srcloc !220
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !298
  %15 = and i32 %14, -65536
  %16 = tail call i32 @llvm.bswap.i32(i32 %15)
  %rx_missed_errors = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 15
  %17 = ptrtoint ptr %rx_missed_errors to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %rx_missed_errors, align 4
  %add21 = add i32 %18, %16
  store i32 %add21, ptr %rx_missed_errors, align 4
  %add.ptr24 = getelementptr i8, ptr %3, i32 108
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr24) #10, !srcloc !220
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !299
  %20 = and i32 %19, -65536
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  %rx_frame_errors = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 13
  %22 = ptrtoint ptr %rx_frame_errors to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %rx_frame_errors, align 4
  %add30 = add i32 %23, %21
  store i32 %add30, ptr %rx_frame_errors, align 4
  %add.ptr33 = getelementptr i8, ptr %3, i32 112
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr33) #10, !srcloc !220
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !300
  %add.ptr39 = getelementptr i8, ptr %3, i32 116
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr39) #10, !srcloc !220
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !301
  %26 = and i32 %25, -65536
  %27 = tail call i32 @llvm.bswap.i32(i32 %26)
  %rx_length_errors = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 10
  %28 = ptrtoint ptr %rx_length_errors to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %rx_length_errors, align 8
  %add45 = add i32 %29, %27
  store i32 %add45, ptr %rx_length_errors, align 8
  %add.ptr48 = getelementptr i8, ptr %3, i32 120
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr48) #10, !srcloc !220
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !302
  %31 = and i32 %30, -65536
  %32 = tail call i32 @llvm.bswap.i32(i32 %31)
  %33 = ptrtoint ptr %rx_length_errors to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %rx_length_errors, align 8
  %add55 = add i32 %34, %32
  store i32 %add55, ptr %rx_length_errors, align 8
  %add.ptr58 = getelementptr i8, ptr %3, i32 124
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr58) #10, !srcloc !220
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !303
  %add.ptr64 = getelementptr i8, ptr %3, i32 128
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr64) #10, !srcloc !220
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !304
  %add.ptr70 = getelementptr i8, ptr %3, i32 132
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr70) #10, !srcloc !220
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !305
  %add.ptr76 = getelementptr i8, ptr %3, i32 136
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr76) #10, !srcloc !220
  %39 = lshr i32 %38, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !306
  %tx_carrier_errors = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 17
  %40 = ptrtoint ptr %tx_carrier_errors to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %tx_carrier_errors, align 4
  %add82 = add i32 %41, %39
  store i32 %add82, ptr %tx_carrier_errors, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ns83820_open(ptr noundef %ndev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %ndev, i32 2304
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !307
  tail call void @arm_heavy_mb() #10
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 16
  %add.ptr = getelementptr i8, ptr %1, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #10, !srcloc !218
  %idle.i = getelementptr i8, ptr %ndev, i32 2364
  %2 = ptrtoint ptr %idle.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %idle.i, align 4
  %next_rx.i = getelementptr i8, ptr %ndev, i32 2628
  %3 = ptrtoint ptr %next_rx.i to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 0, ptr %next_rx.i, align 4
  %descs.i = getelementptr i8, ptr %ndev, i32 2632
  %4 = ptrtoint ptr %descs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %descs.i, align 4
  %next_rx_desc.i = getelementptr i8, ptr %ndev, i32 2624
  %6 = ptrtoint ptr %next_rx_desc.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %next_rx_desc.i, align 4
  %next_empty.i = getelementptr i8, ptr %ndev, i32 2630
  %7 = ptrtoint ptr %next_empty.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 0, ptr %next_empty.i, align 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry
  %i.0104.i = phi i32 [ 0, %entry ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %8 = ptrtoint ptr %descs.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %descs.i, align 4
  %mul.i.i = shl nuw nsw i32 %i.0104.i, 3
  %add.ptr.i.i48 = getelementptr i32, ptr %9, i32 %mul.i.i
  %10 = ptrtoint ptr %add.ptr.i.i48 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %add.ptr.i.i48, align 4
  %add.ptr2.i.i.i = getelementptr i32, ptr %add.ptr.i.i48, i32 1
  %11 = ptrtoint ptr %add.ptr2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %add.ptr2.i.i.i, align 4
  %arrayidx5.i.i.i = getelementptr i32, ptr %add.ptr.i.i48, i32 3
  %12 = ptrtoint ptr %arrayidx5.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %arrayidx5.i.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !267
  tail call void @arm_heavy_mb() #10
  %arrayidx8.i.i.i = getelementptr i32, ptr %add.ptr.i.i48, i32 2
  %13 = ptrtoint ptr %arrayidx8.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 128, ptr %arrayidx8.i.i.i, align 4
  %inc.i = add nuw nsw i32 %i.0104.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 64
  br i1 %exitcond.not.i, label %do.body5.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

do.body5.i:                                       ; preds = %for.body.i
  %rx_info.i = getelementptr i8, ptr %ndev, i32 2316
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !308
  tail call void @arm_heavy_mb() #10
  %14 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %add.ptr.i.i, align 16
  %add.ptr.i = getelementptr i8, ptr %15, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #10, !srcloc !218
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !309
  tail call void @arm_heavy_mb() #10
  %phy_descs.i = getelementptr i8, ptr %ndev, i32 2636
  %16 = ptrtoint ptr %phy_descs.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %phy_descs.i, align 4
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #10
  %19 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %add.ptr.i.i, align 16
  %add.ptr13.i = getelementptr i8, ptr %20, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i, i32 %18) #10, !srcloc !218
  %call14.i = tail call fastcc i32 @rx_refill(ptr noundef %ndev, i32 noundef 3264) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %tobool.not.i = icmp eq i32 %call14.i, 0
  br i1 %tobool.not.i, label %do.end17.i, label %failed

do.end17.i:                                       ; preds = %do.body5.i
  tail call void @_raw_spin_lock_irq(ptr noundef %rx_info.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !310
  tail call void @arm_heavy_mb() #10
  %21 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %add.ptr.i.i, align 16
  %add.ptr23.i = getelementptr i8, ptr %22, i32 204
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr23.i, i32 16777216) #10, !srcloc !218
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !311
  tail call void @arm_heavy_mb() #10
  %23 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %add.ptr.i.i, align 16
  %add.ptr28.i = getelementptr i8, ptr %24, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr28.i, i32 0) #10, !srcloc !218
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !312
  tail call void @arm_heavy_mb() #10
  %25 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %add.ptr.i.i, align 16
  %add.ptr33.i = getelementptr i8, ptr %26, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr33.i, i32 49279) #10, !srcloc !218
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !313
  tail call void @arm_heavy_mb() #10
  %27 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %add.ptr.i.i, align 16
  %add.ptr38.i = getelementptr i8, ptr %28, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr38.i, i32 49407) #10, !srcloc !218
  %up.i = getelementptr i8, ptr %ndev, i32 2360
  %29 = ptrtoint ptr %up.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 1, ptr %up.i, align 4
  tail call fastcc void @phy_intr(ptr noundef %ndev) #10
  %misc_lock.i = getelementptr i8, ptr %ndev, i32 2712
  tail call void @_raw_spin_lock(ptr noundef %misc_lock.i) #10
  %IMR_cache.i = getelementptr i8, ptr %ndev, i32 2764
  %30 = ptrtoint ptr %IMR_cache.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %IMR_cache.i, align 4
  %or53.i = or i32 %31, 2179762
  store i32 %or53.i, ptr %IMR_cache.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !314
  tail call void @arm_heavy_mb() #10
  %32 = ptrtoint ptr %IMR_cache.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %IMR_cache.i, align 4
  %34 = tail call i32 @llvm.bswap.i32(i32 %33) #10
  %35 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %add.ptr.i.i, align 16
  %add.ptr59.i = getelementptr i8, ptr %36, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr59.i, i32 %34) #10, !srcloc !218
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !315
  tail call void @arm_heavy_mb() #10
  %37 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %add.ptr.i.i, align 16
  %add.ptr64.i = getelementptr i8, ptr %38, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr64.i, i32 16777216) #10, !srcloc !218
  tail call void @_raw_spin_unlock(ptr noundef %misc_lock.i) #10
  %call1.i.i = tail call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %idle.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %do.end17.i.if.end_crit_edge, label %do.body5.i.i

do.end17.i.if.end_crit_edge:                      ; preds = %do.end17.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.body5.i.i:                                     ; preds = %do.end17.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !246
  tail call void @arm_heavy_mb() #10
  %39 = ptrtoint ptr %phy_descs.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %phy_descs.i, align 4
  %41 = ptrtoint ptr %next_rx.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %next_rx.i, align 4
  %conv.i.i = zext i16 %42 to i32
  %mul.i102.i = shl nuw nsw i32 %conv.i.i, 5
  %add.i.i = add i32 %mul.i102.i, %40
  %43 = tail call i32 @llvm.bswap.i32(i32 %add.i.i) #10
  %44 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %add.ptr.i.i, align 16
  %add.ptr.i103.i = getelementptr i8, ptr %45, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i103.i, i32 %43) #10, !srcloc !218
  %46 = ptrtoint ptr %next_rx.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %next_rx.i, align 4
  %48 = ptrtoint ptr %next_empty.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %next_empty.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %47, i16 %49)
  %cmp.i.i = icmp eq i16 %47, %49
  br i1 %cmp.i.i, label %do.end19.i.i, label %do.body5.i.i.do.body21.i.i_crit_edge

do.body5.i.i.do.body21.i.i_crit_edge:             ; preds = %do.body5.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body21.i.i

do.end19.i.i:                                     ; preds = %do.body5.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call20.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, ptr noundef %ndev) #13
  br label %do.body21.i.i

do.body21.i.i:                                    ; preds = %do.end19.i.i, %do.body5.i.i.do.body21.i.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !247
  tail call void @arm_heavy_mb() #10
  %50 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %add.ptr.i.i, align 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %51, i32 67108864) #10, !srcloc !218
  br label %if.end

if.end:                                           ; preds = %do.body21.i.i, %do.end17.i.if.end_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %rx_info.i) #10
  %tx_descs = getelementptr i8, ptr %ndev, i32 3360
  %52 = ptrtoint ptr %tx_descs to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %tx_descs, align 16
  %54 = call ptr @memset(ptr %53, i32 0, i32 4096)
  %tx_phy_descs = getelementptr i8, ptr %ndev, i32 3364
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end
  %i.049 = phi i32 [ 0, %if.end ], [ %add, %for.body.for.body_crit_edge ]
  %55 = ptrtoint ptr %tx_phy_descs to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %tx_phy_descs, align 4
  %add = add nuw nsw i32 %i.049, 1
  %rem = shl nuw nsw i32 %add, 5
  %mul = and i32 %rem, 4064
  %add6 = add i32 %56, %mul
  %57 = tail call i32 @llvm.bswap.i32(i32 %add6)
  %58 = ptrtoint ptr %tx_descs to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %tx_descs, align 16
  %mul8 = shl nuw nsw i32 %i.049, 3
  %arrayidx = getelementptr i32, ptr %59, i32 %mul8
  %60 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %57, ptr %arrayidx, align 4
  %exitcond.not = icmp eq i32 %add, 128
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %tx_idx = getelementptr i8, ptr %ndev, i32 2818
  %61 = ptrtoint ptr %tx_idx to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 0, ptr %tx_idx, align 2
  %tx_done_idx = getelementptr i8, ptr %ndev, i32 2816
  %62 = ptrtoint ptr %tx_done_idx to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 0, ptr %tx_done_idx, align 16
  %63 = ptrtoint ptr %tx_phy_descs to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %tx_phy_descs, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !316
  tail call void @arm_heavy_mb() #10
  %65 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %add.ptr.i.i, align 16
  %add.ptr15 = getelementptr i8, ptr %66, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15, i32 0) #10, !srcloc !218
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !317
  tail call void @arm_heavy_mb() #10
  %67 = tail call i32 @llvm.bswap.i32(i32 %64)
  %68 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %add.ptr.i.i, align 16
  %add.ptr20 = getelementptr i8, ptr %69, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20, i32 %67) #10, !srcloc !218
  %tx_watchdog = getelementptr i8, ptr %ndev, i32 3368
  tail call void @init_timer_key(ptr noundef %tx_watchdog, ptr noundef nonnull @ns83820_tx_watch, i32 noundef 0, ptr noundef nonnull @.str.72, ptr noundef nonnull @ns83820_open.__key) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %70 = load volatile i32, ptr @jiffies, align 128
  %add25 = add i32 %70, 200
  %call26 = tail call i32 @mod_timer(ptr noundef %tx_watchdog, i32 noundef %add25) #10
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 103
  %71 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %72, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i) #10
  br label %cleanup

failed:                                           ; preds = %do.body5.i
  call void @__sanitizer_cov_trace_pc() #12
  %call27 = tail call i32 @ns83820_stop(ptr noundef %ndev)
  br label %cleanup

cleanup:                                          ; preds = %failed, %for.end
  %retval.0 = phi i32 [ %call14.i, %failed ], [ 0, %for.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ns83820_stop(ptr noundef %ndev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %ndev, i32 2304
  %tx_watchdog = getelementptr i8, ptr %ndev, i32 3368
  %call1 = tail call i32 @del_timer_sync(ptr noundef %tx_watchdog) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !217
  tail call void @arm_heavy_mb() #10
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 16
  %add.ptr.i = getelementptr i8, ptr %1, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #10, !srcloc !218
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !219
  tail call void @arm_heavy_mb() #10
  %2 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i.i, align 16
  %add.ptr4.i = getelementptr i8, ptr %3, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 0) #10, !srcloc !218
  %4 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr.i.i, align 16
  %add.ptr6.i = getelementptr i8, ptr %5, i32 24
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i) #10, !srcloc !220
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !221
  %up = getelementptr i8, ptr %ndev, i32 2360
  %7 = ptrtoint ptr %up to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %up, align 4
  %pci_dev = getelementptr i8, ptr %ndev, i32 2308
  %8 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pci_dev, align 4
  %irq = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 46
  %10 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %irq, align 4
  tail call void @synchronize_irq(i32 noundef %11) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !259
  tail call void @arm_heavy_mb() #10
  %12 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %add.ptr.i.i, align 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 65536) #10, !srcloc !218
  br label %do.body3.i

do.body3.i:                                       ; preds = %do.body3.i.do.body3.i_crit_edge, %entry
  tail call void @schedule() #10
  %14 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %add.ptr.i.i, align 16
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #10, !srcloc !220
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !260
  %17 = and i32 %16, 65536
  %tobool.not.i = icmp eq i32 %17, 0
  br i1 %tobool.not.i, label %ns83820_do_reset.exit, label %do.body3.i.do.body3.i_crit_edge

do.body3.i.do.body3.i_crit_edge:                  ; preds = %do.body3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body3.i

ns83820_do_reset.exit:                            ; preds = %do.body3.i
  %18 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pci_dev, align 4
  %irq3 = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 46
  %20 = ptrtoint ptr %irq3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %irq3, align 4
  tail call void @synchronize_irq(i32 noundef %21) #10
  %misc_lock = getelementptr i8, ptr %ndev, i32 2712
  tail call void @_raw_spin_lock_irq(ptr noundef %misc_lock) #10
  %IMR_cache = getelementptr i8, ptr %ndev, i32 2764
  %22 = ptrtoint ptr %IMR_cache to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %IMR_cache, align 4
  %and = and i32 %23, -1985
  store i32 %and, ptr %IMR_cache, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %misc_lock) #10
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %misc_lock) #10
  %24 = ptrtoint ptr %IMR_cache to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %IMR_cache, align 4
  %and.i = and i32 %25, -32
  store i32 %and.i, ptr %IMR_cache, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !318
  tail call void @arm_heavy_mb() #10
  %26 = ptrtoint ptr %IMR_cache to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %IMR_cache, align 4
  %28 = tail call i32 @llvm.bswap.i32(i32 %27) #10
  %29 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %add.ptr.i.i, align 16
  %add.ptr.i15 = getelementptr i8, ptr %30, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i15, i32 %28) #10, !srcloc !218
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %misc_lock, i32 noundef %call3.i) #10
  %31 = ptrtoint ptr %up to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %up, align 4
  %32 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pci_dev, align 4
  %irq.i = getelementptr inbounds %struct.pci_dev, ptr %33, i32 0, i32 46
  %34 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %irq.i, align 4
  tail call void @synchronize_irq(i32 noundef %35) #10
  %36 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %add.ptr.i.i, align 16
  %add.ptr14.i = getelementptr i8, ptr %37, i32 20
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr14.i) #10, !srcloc !220
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !319
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !320
  tail call void @arm_heavy_mb() #10
  %39 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %add.ptr.i.i, align 16
  %add.ptr22.i = getelementptr i8, ptr %40, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22.i, i32 0) #10, !srcloc !218
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !321
  tail call void @arm_heavy_mb() #10
  %41 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %add.ptr.i.i, align 16
  %add.ptr27.i = getelementptr i8, ptr %42, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr27.i, i32 0) #10, !srcloc !218
  %descs.i.i = getelementptr i8, ptr %ndev, i32 2632
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %ns83820_do_reset.exit
  %i.050.i = phi i32 [ 0, %ns83820_do_reset.exit ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.ns83820, ptr %add.ptr.i.i, i32 0, i32 3, i32 3, i32 %i.050.i
  %43 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx.i, align 4
  store ptr null, ptr %arrayidx.i, align 4
  %45 = ptrtoint ptr %descs.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %descs.i.i, align 4
  %mul.i.i = shl nuw nsw i32 %i.050.i, 3
  %add.ptr.i.i16 = getelementptr i32, ptr %46, i32 %mul.i.i
  %47 = ptrtoint ptr %add.ptr.i.i16 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %add.ptr.i.i16, align 4
  %add.ptr2.i.i.i = getelementptr i32, ptr %add.ptr.i.i16, i32 1
  %48 = ptrtoint ptr %add.ptr2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %add.ptr2.i.i.i, align 4
  %arrayidx5.i.i.i = getelementptr i32, ptr %add.ptr.i.i16, i32 3
  %49 = ptrtoint ptr %arrayidx5.i.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %arrayidx5.i.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !267
  tail call void @arm_heavy_mb() #10
  %arrayidx8.i.i.i = getelementptr i32, ptr %add.ptr.i.i16, i32 2
  %50 = ptrtoint ptr %arrayidx8.i.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 128, ptr %arrayidx8.i.i.i, align 4
  tail call void @kfree_skb_reason(ptr noundef %44, i32 noundef 0) #10
  %inc.i = add nuw nsw i32 %i.050.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 64
  br i1 %exitcond.not.i, label %ns83820_cleanup_rx.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

ns83820_cleanup_rx.exit:                          ; preds = %for.body.i
  %tx_descs.i = getelementptr i8, ptr %ndev, i32 3360
  %nr_tx_skbs.i = getelementptr i8, ptr %ndev, i32 2824
  br label %for.body.i20

for.body.i20:                                     ; preds = %if.end.i.for.body.i20_crit_edge, %ns83820_cleanup_rx.exit
  %i.019.i = phi i32 [ 0, %ns83820_cleanup_rx.exit ], [ %inc.i23, %if.end.i.for.body.i20_crit_edge ]
  %arrayidx.i18 = getelementptr %struct.ns83820, ptr %add.ptr.i.i, i32 0, i32 18, i32 %i.019.i
  %51 = ptrtoint ptr %arrayidx.i18 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %arrayidx.i18, align 4
  store ptr null, ptr %arrayidx.i18, align 4
  %tobool.not.i19 = icmp eq ptr %52, null
  br i1 %tobool.not.i19, label %for.body.i20.if.end.i_crit_edge, label %if.then.i

for.body.i20.if.end.i_crit_edge:                  ; preds = %for.body.i20
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then.i:                                        ; preds = %for.body.i20
  call void @__sanitizer_cov_trace_pc() #12
  %53 = ptrtoint ptr %tx_descs.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %tx_descs.i, align 16
  %mul.i = shl nuw nsw i32 %i.019.i, 3
  %add.ptr.i21 = getelementptr i32, ptr %54, i32 %mul.i
  %55 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %pci_dev, align 4
  %dev3.i = getelementptr inbounds %struct.pci_dev, ptr %56, i32 0, i32 44
  %add.ptr4.i22 = getelementptr i32, ptr %add.ptr.i21, i32 1
  %57 = ptrtoint ptr %add.ptr4.i22 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %add.ptr4.i22, align 4
  %59 = tail call i32 @llvm.bswap.i32(i32 %58) #10
  %arrayidx6.i = getelementptr i32, ptr %add.ptr.i21, i32 2
  %60 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx6.i, align 4
  %62 = and i32 %61, -65536
  %63 = tail call i32 @llvm.bswap.i32(i32 %62) #10
  tail call void @dma_unmap_page_attrs(ptr noundef %dev3.i, i32 noundef %59, i32 noundef %63, i32 noundef 1, i32 noundef 0) #10
  tail call void @__dev_kfree_skb_irq(ptr noundef nonnull %52, i32 noundef 1) #10
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %nr_tx_skbs.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %nr_tx_skbs.i, i32 1, i32 3, i32 1) #10
  %64 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %nr_tx_skbs.i, ptr %nr_tx_skbs.i, i32 1, ptr elementtype(i32) %nr_tx_skbs.i) #10, !srcloc !269
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body.i20.if.end.i_crit_edge
  %inc.i23 = add nuw nsw i32 %i.019.i, 1
  %exitcond.not.i24 = icmp eq i32 %inc.i23, 128
  br i1 %exitcond.not.i24, label %ns83820_cleanup_tx.exit, label %if.end.i.for.body.i20_crit_edge

if.end.i.for.body.i20_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i20

ns83820_cleanup_tx.exit:                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %65 = ptrtoint ptr %tx_descs.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %tx_descs.i, align 16
  %67 = call ptr @memset(ptr %66, i32 0, i32 4096)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ns83820_hard_start_xmit(ptr noundef %skb, ptr noundef %ndev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %ndev, i32 2304
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %0 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %end.i, align 4
  %nr_frags2 = getelementptr inbounds %struct.skb_shared_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %nr_frags2 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %nr_frags2, align 2
  %conv = zext i8 %3 to i32
  %CFG_cache = getelementptr i8, ptr %ndev, i32 2756
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 103
  %tx_free_idx = getelementptr i8, ptr %ndev, i32 2820
  %tx_done_idx17 = getelementptr i8, ptr %ndev, i32 2816
  br label %again

again:                                            ; preds = %do.end33, %entry
  %4 = ptrtoint ptr %CFG_cache to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %CFG_cache, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %tobool.not = icmp sgt i32 %5, -1
  br i1 %tobool.not, label %again.if.end15_crit_edge, label %if.then, !prof !253

again.if.end15_crit_edge:                         ; preds = %again
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

if.then:                                          ; preds = %again
  %6 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %7, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #10
  %8 = ptrtoint ptr %CFG_cache to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %CFG_cache, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %tobool7.not = icmp sgt i32 %9, -1
  br i1 %tobool7.not, label %if.end, label %if.then.cleanup158_crit_edge, !prof !253

if.then.cleanup158_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup158

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i245 = getelementptr inbounds %struct.netdev_queue, ptr %11, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i245) #10
  br label %if.end15

if.end15:                                         ; preds = %if.end, %again.if.end15_crit_edge
  %12 = ptrtoint ptr %tx_free_idx to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load volatile i16, ptr %tx_free_idx, align 4
  %conv16 = zext i16 %13 to i32
  %14 = ptrtoint ptr %tx_done_idx17 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %tx_done_idx17, align 16
  %conv18 = zext i16 %15 to i32
  %sub = sub nsw i32 126, %conv16
  %sub19 = add nsw i32 %sub, %conv18
  %rem = and i32 %sub19, 127
  %sub20 = add nsw i32 %rem, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub20, i32 %conv)
  %cmp.not = icmp sgt i32 %sub20, %conv
  br i1 %cmp.not, label %if.end35, label %do.end25

do.end25:                                         ; preds = %if.end15
  %16 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i247 = getelementptr inbounds %struct.netdev_queue, ptr %17, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i247) #10
  %18 = ptrtoint ptr %tx_done_idx17 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %tx_done_idx17, align 16
  %cmp28.not = icmp eq i16 %19, %15
  br i1 %cmp28.not, label %do.end25.cleanup158_crit_edge, label %do.end33

do.end25.cleanup158_crit_edge:                    ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup158

do.end33:                                         ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #12
  %20 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i249 = getelementptr inbounds %struct.netdev_queue, ptr %21, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i249) #10
  br label %again

if.end35:                                         ; preds = %if.end15
  %conv16.le = zext i16 %13 to i32
  %tx_intr_idx = getelementptr i8, ptr %ndev, i32 2822
  %22 = ptrtoint ptr %tx_intr_idx to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %tx_intr_idx, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %13, i16 %23)
  %cmp37 = icmp eq i16 %13, %23
  br i1 %cmp37, label %if.then39, label %if.end35.if.end46_crit_edge

if.end35.if.end46_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end46

if.then39:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  %24 = add i16 %13, 32
  %25 = and i16 %24, 127
  %26 = ptrtoint ptr %tx_intr_idx to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %25, ptr %tx_intr_idx, align 2
  br label %if.end46

if.end46:                                         ; preds = %if.then39, %if.end35.if.end46_crit_edge
  %sub47 = sub nsw i32 %sub20, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %sub47)
  %cmp48 = icmp slt i32 %sub47, 8
  br i1 %cmp48, label %do.end53, label %if.end46.if.end54_crit_edge

if.end46.if.end54_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end54

do.end53:                                         ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #12
  %27 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i251 = getelementptr inbounds %struct.netdev_queue, ptr %28, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i251) #10
  br label %if.end54

if.end54:                                         ; preds = %do.end53, %if.end46.if.end54_crit_edge
  %29 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %end.i, align 4
  %frags = getelementptr inbounds %struct.skb_shared_info, ptr %30, i32 0, i32 12
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool56.not = icmp eq i8 %3, 0
  %spec.store.select = select i1 %tobool56.not, ptr null, ptr %frags
  %ip_summed = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %31 = ptrtoint ptr %ip_summed to i32
  call void @__asan_load2_noabort(i32 %31)
  %bf.load = load i16, ptr %ip_summed, align 8
  %32 = and i16 %bf.load, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1536, i16 %32)
  %cmp60 = icmp eq i16 %32, 1536
  br i1 %cmp60, label %if.then62, label %if.end54.if.end78_crit_edge

if.end54.if.end78_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end78

if.then62:                                        ; preds = %if.end54
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %33 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %35 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %36 to i32
  %add.ptr.i.i253 = getelementptr i8, ptr %34, i32 %conv.i.i
  %protocol = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i253, i32 0, i32 6
  %37 = ptrtoint ptr %protocol to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %protocol, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %38)
  %cmp65 = icmp eq i8 %38, 6
  br i1 %cmp65, label %if.then62.if.end78_crit_edge, label %if.else

if.then62.if.end78_crit_edge:                     ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end78

if.else:                                          ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp1(i8 17, i8 %38)
  %cmp72 = icmp eq i8 %38, 17
  %spec.select = select i1 %cmp72, i32 2228224, i32 131072
  br label %if.end78

if.end78:                                         ; preds = %if.else, %if.then62.if.end78_crit_edge, %if.end54.if.end78_crit_edge
  %extsts.0 = phi i32 [ 0, %if.end54.if.end78_crit_edge ], [ 655360, %if.then62.if.end78_crit_edge ], [ %spec.select, %if.else ]
  %vlan_present = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %39 = ptrtoint ptr %vlan_present to i32
  call void @__asan_loadN_noabort(i32 %39, i32 4)
  %bf.load79 = load i32, ptr %vlan_present, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load79)
  %tobool82.not = icmp sgt i32 %bf.load79, -1
  br i1 %tobool82.not, label %if.end78.if.end87_crit_edge, label %if.then83

if.end78.if.end87_crit_edge:                      ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end87

if.then83:                                        ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #12
  %vlan_tci = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 10
  %40 = ptrtoint ptr %vlan_tci to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %vlan_tci, align 2
  %conv84 = zext i16 %41 to i32
  %or85 = or i32 %extsts.0, %conv84
  %or86 = or i32 %or85, 65536
  br label %if.end87

if.end87:                                         ; preds = %if.then83, %if.end78.if.end87_crit_edge
  %extsts.1 = phi i32 [ %or86, %if.then83 ], [ %extsts.0, %if.end78.if.end87_crit_edge ]
  %len88 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %42 = ptrtoint ptr %len88 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %len88, align 4
  br i1 %tobool56.not, label %if.end87.if.end92_crit_edge, label %if.then90

if.end87.if.end92_crit_edge:                      ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end92

if.then90:                                        ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #12
  %data_len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %44 = ptrtoint ptr %data_len to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %data_len, align 8
  %sub91 = sub i32 %43, %45
  br label %if.end92

if.end92:                                         ; preds = %if.then90, %if.end87.if.end92_crit_edge
  %len.0 = phi i32 [ %sub91, %if.then90 ], [ %43, %if.end87.if.end92_crit_edge ]
  %pci_dev = getelementptr i8, ptr %ndev, i32 2308
  %46 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %pci_dev, align 4
  %dev93 = getelementptr inbounds %struct.pci_dev, ptr %47, i32 0, i32 44
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %48 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %data, align 4
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %49) #10
  br i1 %call.i, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %if.end92
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit_crit_edge, label %if.then.i, !prof !253

land.rhs.i.dma_map_single_attrs.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_map_single_attrs.exit

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %dev93) #10
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %47, i32 0, i32 44, i32 3
  %50 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %51, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %52 = ptrtoint ptr %dev93 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev93, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %53, %if.end.i.i ], [ %51, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.52, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.53, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #10
  br label %dma_map_single_attrs.exit

if.end39.i:                                       ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @debug_dma_map_single(ptr noundef %dev93, ptr noundef %49, i32 noundef %len.0) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %54 = load ptr, ptr @mem_map, align 4
  %55 = ptrtoint ptr %49 to i32
  %sub.i = add i32 %55, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i = getelementptr %struct.page, ptr %54, i32 %shr.i
  %and.i = and i32 %55, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev93, ptr noundef %add.ptr.i, i32 noundef %and.i, i32 noundef %len.0, i32 noundef 1, i32 noundef 0) #10
  br label %dma_map_single_attrs.exit

dma_map_single_attrs.exit:                        ; preds = %if.end39.i, %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit_crit_edge
  %retval.0.i = phi i32 [ %call41.i, %if.end39.i ], [ -1, %dev_name.exit.i ], [ -1, %land.rhs.i.dma_map_single_attrs.exit_crit_edge ]
  %tx_descs = getelementptr i8, ptr %ndev, i32 3360
  %56 = ptrtoint ptr %tx_descs to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %tx_descs, align 16
  %mul = shl nuw nsw i32 %conv16.le, 3
  %add.ptr = getelementptr i32, ptr %57, i32 %mul
  %tx_phy_descs = getelementptr i8, ptr %ndev, i32 3364
  %58 = tail call i32 @llvm.bswap.i32(i32 %extsts.1)
  %cond = select i1 %cmp37, i32 536870912, i32 0
  br label %for.cond

for.cond:                                         ; preds = %cleanup, %dma_map_single_attrs.exit
  %free_idx.0 = phi i32 [ %conv16.le, %dma_map_single_attrs.exit ], [ %rem102, %cleanup ]
  %nr_frags.0 = phi i32 [ %conv, %dma_map_single_attrs.exit ], [ %dec, %cleanup ]
  %buf.0 = phi i32 [ %retval.0.i, %dma_map_single_attrs.exit ], [ %call2.i, %cleanup ]
  %len.1 = phi i32 [ %len.0, %dma_map_single_attrs.exit ], [ %79, %cleanup ]
  %frag.0 = phi ptr [ %spec.store.select, %dma_map_single_attrs.exit ], [ %incdec.ptr, %cleanup ]
  %59 = ptrtoint ptr %tx_descs to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %tx_descs, align 16
  %mul96 = shl nuw nsw i32 %free_idx.0, 3
  %add.ptr97 = getelementptr i32, ptr %60, i32 %mul96
  %add101 = add nuw nsw i32 %free_idx.0, 1
  %rem102 = and i32 %add101, 127
  %61 = ptrtoint ptr %tx_phy_descs to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %tx_phy_descs, align 4
  %mul104 = shl nuw nsw i32 %rem102, 5
  %add105 = add i32 %62, %mul104
  %63 = tail call i32 @llvm.bswap.i32(i32 %add105)
  %64 = ptrtoint ptr %add.ptr97 to i32
  call void @__asan_store4_noabort(i32 %64)
  store volatile i32 %63, ptr %add.ptr97, align 4
  %65 = tail call i32 @llvm.bswap.i32(i32 %buf.0)
  %add.ptr107 = getelementptr i32, ptr %add.ptr97, i32 1
  %66 = ptrtoint ptr %add.ptr107 to i32
  call void @__asan_store4_noabort(i32 %66)
  store volatile i32 %65, ptr %add.ptr107, align 4
  %arrayidx111 = getelementptr i32, ptr %add.ptr97, i32 3
  %67 = ptrtoint ptr %arrayidx111 to i32
  call void @__asan_store4_noabort(i32 %67)
  store volatile i32 %58, ptr %arrayidx111, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_frags.0)
  %tobool112.not = icmp eq i32 %nr_frags.0, 0
  %spec.select243 = select i1 %tobool112.not, i32 %cond, i32 1073741824
  %cmp115 = icmp eq ptr %add.ptr97, %add.ptr
  %cond117 = select i1 %cmp115, i32 0, i32 -2147483648
  %or118 = or i32 %len.1, %spec.select243
  %or119 = or i32 %or118, %cond117
  %68 = tail call i32 @llvm.bswap.i32(i32 %or119)
  %arrayidx120 = getelementptr i32, ptr %add.ptr97, i32 2
  %69 = ptrtoint ptr %arrayidx120 to i32
  call void @__asan_store4_noabort(i32 %69)
  store volatile i32 %68, ptr %arrayidx120, align 4
  br i1 %tobool112.not, label %do.end134, label %cleanup

cleanup:                                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  %70 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %pci_dev, align 4
  %dev125 = getelementptr inbounds %struct.pci_dev, ptr %71, i32 0, i32 44
  %bv_len.i = getelementptr inbounds %struct.bio_vec, ptr %frag.0, i32 0, i32 1
  %72 = ptrtoint ptr %bv_len.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %bv_len.i, align 4
  %74 = ptrtoint ptr %frag.0 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %frag.0, align 4
  %bv_offset.i.i = getelementptr inbounds %struct.bio_vec, ptr %frag.0, i32 0, i32 2
  %76 = ptrtoint ptr %bv_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %bv_offset.i.i, align 4
  %call2.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev125, ptr noundef %75, i32 noundef %77, i32 noundef %73, i32 noundef 1, i32 noundef 0) #10
  %78 = ptrtoint ptr %bv_len.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %bv_len.i, align 4
  %incdec.ptr = getelementptr %struct.bio_vec, ptr %frag.0, i32 1
  %dec = add nsw i32 %nr_frags.0, -1
  br label %for.cond

do.end134:                                        ; preds = %for.cond
  %tx_lock = getelementptr i8, ptr %ndev, i32 2772
  tail call void @_raw_spin_lock_irq(ptr noundef %tx_lock) #10
  %arrayidx135 = getelementptr %struct.ns83820, ptr %add.ptr.i.i, i32 0, i32 18, i32 %free_idx.0
  %80 = ptrtoint ptr %arrayidx135 to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %skb, ptr %arrayidx135, align 4
  %arrayidx136 = getelementptr i32, ptr %add.ptr, i32 2
  %81 = ptrtoint ptr %arrayidx136 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load volatile i32, ptr %arrayidx136, align 4
  %or137 = or i32 %82, 128
  store volatile i32 %or137, ptr %arrayidx136, align 4
  %conv138 = trunc i32 %rem102 to i16
  %83 = ptrtoint ptr %tx_free_idx to i32
  call void @__asan_store2_noabort(i32 %83)
  store volatile i16 %conv138, ptr %tx_free_idx, align 4
  %nr_tx_skbs = getelementptr i8, ptr %ndev, i32 2824
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %nr_tx_skbs, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %nr_tx_skbs, i32 1, i32 3, i32 1) #10
  %84 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %nr_tx_skbs, ptr %nr_tx_skbs, i32 1, ptr elementtype(i32) %nr_tx_skbs) #10, !srcloc !322
  tail call void @_raw_spin_unlock_irq(ptr noundef %tx_lock) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !256
  tail call void @arm_heavy_mb() #10
  %85 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %add.ptr.i.i, align 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %86, i32 16777216) #10, !srcloc !218
  br i1 %cmp48, label %land.lhs.true, label %do.end134.cleanup158_crit_edge

do.end134.cleanup158_crit_edge:                   ; preds = %do.end134
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup158

land.lhs.true:                                    ; preds = %do.end134
  %87 = ptrtoint ptr %tx_done_idx17 to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %tx_done_idx17, align 16
  call void @__sanitizer_cov_trace_cmp2(i16 %88, i16 %15)
  %cmp144.not = icmp eq i16 %88, %15
  br i1 %cmp144.not, label %land.lhs.true.cleanup158_crit_edge, label %land.lhs.true146

land.lhs.true.cleanup158_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup158

land.lhs.true146:                                 ; preds = %land.lhs.true
  %conv143 = zext i16 %88 to i32
  %add149 = add nuw nsw i32 %conv143, 126
  %89 = ptrtoint ptr %tx_free_idx to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load volatile i16, ptr %tx_free_idx, align 4
  %conv151 = zext i16 %90 to i32
  %sub152 = sub nsw i32 %add149, %conv151
  %rem153 = srem i32 %sub152, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %rem153)
  %cmp154 = icmp sgt i32 %rem153, 8
  br i1 %cmp154, label %if.then156, label %land.lhs.true146.cleanup158_crit_edge

land.lhs.true146.cleanup158_crit_edge:            ; preds = %land.lhs.true146
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup158

if.then156:                                       ; preds = %land.lhs.true146
  call void @__sanitizer_cov_trace_pc() #12
  %91 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i260 = getelementptr inbounds %struct.netdev_queue, ptr %92, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i260) #10
  br label %cleanup158

cleanup158:                                       ; preds = %if.then156, %land.lhs.true146.cleanup158_crit_edge, %land.lhs.true.cleanup158_crit_edge, %do.end134.cleanup158_crit_edge, %do.end25.cleanup158_crit_edge, %if.then.cleanup158_crit_edge
  %retval.0 = phi i32 [ 0, %if.then156 ], [ 0, %land.lhs.true146.cleanup158_crit_edge ], [ 0, %land.lhs.true.cleanup158_crit_edge ], [ 0, %do.end134.cleanup158_crit_edge ], [ 16, %if.then.cleanup158_crit_edge ], [ 16, %do.end25.cleanup158_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ns83820_set_multicast(ptr noundef %ndev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %ndev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 16
  %flags = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 14
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 8
  %and = and i32 %3, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %. = select i1 %tobool.not, i32 0, i32 805306368
  %.32 = select i1 %tobool.not, i32 -805306369, i32 -1
  %and3 = and i32 %3, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %lor.lhs.false, label %entry.if.then6_crit_edge

entry.if.then6_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then6

lor.lhs.false:                                    ; preds = %entry
  %count = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 66, i32 1
  %4 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool5.not = icmp eq i32 %5, 0
  br i1 %tobool5.not, label %if.else8, label %lor.lhs.false.if.then6_crit_edge

lor.lhs.false.if.then6_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then6

if.then6:                                         ; preds = %lor.lhs.false.if.then6_crit_edge, %entry.if.then6_crit_edge
  %or7 = or i32 %., 536870912
  br label %if.end10

if.else8:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  %and9 = and i32 %.32, -536870913
  br label %if.end10

if.end10:                                         ; preds = %if.else8, %if.then6
  %or_mask.1 = phi i32 [ %or7, %if.then6 ], [ %., %if.else8 ]
  %and_mask.1 = phi i32 [ %.32, %if.then6 ], [ %and9, %if.else8 ]
  %add.ptr = getelementptr i8, ptr %1, i32 72
  %misc_lock = getelementptr i8, ptr %ndev, i32 2712
  tail call void @_raw_spin_lock_irq(ptr noundef %misc_lock) #10
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !220
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !323
  %and13 = and i32 %7, %and_mask.1
  %or14 = or i32 %and13, %or_mask.1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !324
  tail call void @arm_heavy_mb() #10
  %and15 = and i32 %or14, 2147483647
  %8 = tail call i32 @llvm.bswap.i32(i32 %and15)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %8) #10, !srcloc !218
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !325
  tail call void @arm_heavy_mb() #10
  %9 = tail call i32 @llvm.bswap.i32(i32 %or14)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %9) #10, !srcloc !218
  tail call void @_raw_spin_unlock_irq(ptr noundef %misc_lock) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_mac_addr(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_validate_addr(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ns83820_tx_timeout(ptr noundef %ndev, i32 noundef %txqueue) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_lock = getelementptr i8, ptr %ndev, i32 2772
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %tx_lock) #10
  %tx_done_idx6 = getelementptr i8, ptr %ndev, i32 2816
  %0 = ptrtoint ptr %tx_done_idx6 to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %tx_done_idx6, align 16
  %conv7 = zext i16 %1 to i32
  %tx_descs = getelementptr i8, ptr %ndev, i32 3360
  %2 = ptrtoint ptr %tx_descs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tx_descs, align 16
  %mul = shl nuw nsw i32 %conv7, 3
  %add.ptr = getelementptr i32, ptr %3, i32 %mul
  %tx_free_idx = getelementptr i8, ptr %ndev, i32 2820
  %4 = ptrtoint ptr %tx_free_idx to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load volatile i16, ptr %tx_free_idx, align 4
  %conv12 = zext i16 %5 to i32
  %arrayidx = getelementptr i32, ptr %add.ptr, i32 2
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75, ptr noundef %ndev, i32 noundef %conv7, i32 noundef %conv12, i32 noundef %8) #13
  tail call fastcc void @do_tx_done(ptr noundef %ndev)
  %9 = ptrtoint ptr %tx_done_idx6 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %tx_done_idx6, align 16
  %conv15 = zext i16 %10 to i32
  %11 = ptrtoint ptr %tx_descs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %tx_descs, align 16
  %mul17 = shl nuw nsw i32 %conv15, 3
  %add.ptr18 = getelementptr i32, ptr %12, i32 %mul17
  %13 = ptrtoint ptr %tx_free_idx to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load volatile i16, ptr %tx_free_idx, align 4
  %conv26 = zext i16 %14 to i32
  %arrayidx27 = getelementptr i32, ptr %add.ptr18, i32 2
  %15 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx27, align 4
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  %call28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78, ptr noundef %ndev, i32 noundef %conv15, i32 noundef %conv26, i32 noundef %17) #13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %tx_lock, i32 noundef %call3) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @ns83820_get_stats(ptr noundef %ndev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %ndev, i32 2304
  %misc_lock = getelementptr i8, ptr %ndev, i32 2712
  tail call void @_raw_spin_lock_irq(ptr noundef %misc_lock) #10
  tail call fastcc void @ns83820_update_stats(ptr noundef %add.ptr.i.i)
  tail call void @_raw_spin_unlock_irq(ptr noundef %misc_lock) #10
  %stats = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 36
  ret ptr %stats
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ns83820_tx_watch(ptr noundef %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ndev1 = getelementptr i8, ptr %t, i32 -1056
  %0 = ptrtoint ptr %ndev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ndev1, align 8
  %call = tail call i32 @dev_trans_start(ptr noundef %1) #10
  %add = add i32 %call, 100
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %tx_done_idx = getelementptr i8, ptr %t, i32 -552
  %3 = ptrtoint ptr %tx_done_idx to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %tx_done_idx, align 16
  %tx_free_idx = getelementptr i8, ptr %t, i32 -548
  %5 = ptrtoint ptr %tx_free_idx to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load volatile i16, ptr %tx_free_idx, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %4, i16 %6)
  %cmp3.not = icmp eq i16 %4, %6
  br i1 %cmp3.not, label %land.lhs.true.if.end_crit_edge, label %do.end

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %conv7 = zext i16 %4 to i32
  %7 = ptrtoint ptr %tx_free_idx to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load volatile i16, ptr %tx_free_idx, align 4
  %conv9 = zext i16 %8 to i32
  %nr_tx_skbs = getelementptr i8, ptr %t, i32 -544
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %nr_tx_skbs, i32 noundef 4) #10
  %9 = ptrtoint ptr %nr_tx_skbs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %nr_tx_skbs, align 4
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.73, ptr noundef %1, i32 noundef %conv7, i32 noundef %conv9, i32 noundef %10) #13
  %tx_lock.i = getelementptr i8, ptr %1, i32 2772
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %tx_lock.i) #10
  %tx_done_idx6.i = getelementptr i8, ptr %1, i32 2816
  %11 = ptrtoint ptr %tx_done_idx6.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %tx_done_idx6.i, align 16
  %conv7.i = zext i16 %12 to i32
  %tx_descs.i = getelementptr i8, ptr %1, i32 3360
  %13 = ptrtoint ptr %tx_descs.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %tx_descs.i, align 16
  %mul.i = shl nuw nsw i32 %conv7.i, 3
  %add.ptr.i = getelementptr i32, ptr %14, i32 %mul.i
  %tx_free_idx.i = getelementptr i8, ptr %1, i32 2820
  %15 = ptrtoint ptr %tx_free_idx.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load volatile i16, ptr %tx_free_idx.i, align 4
  %conv12.i = zext i16 %16 to i32
  %arrayidx.i = getelementptr i32, ptr %add.ptr.i, i32 2
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx.i, align 4
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #10
  %call13.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75, ptr noundef %1, i32 noundef %conv7.i, i32 noundef %conv12.i, i32 noundef %19) #13
  tail call fastcc void @do_tx_done(ptr noundef %1) #10
  %20 = ptrtoint ptr %tx_done_idx6.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %tx_done_idx6.i, align 16
  %conv15.i = zext i16 %21 to i32
  %22 = ptrtoint ptr %tx_descs.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %tx_descs.i, align 16
  %mul17.i = shl nuw nsw i32 %conv15.i, 3
  %add.ptr18.i = getelementptr i32, ptr %23, i32 %mul17.i
  %24 = ptrtoint ptr %tx_free_idx.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load volatile i16, ptr %tx_free_idx.i, align 4
  %conv26.i = zext i16 %25 to i32
  %arrayidx27.i = getelementptr i32, ptr %add.ptr18.i, i32 2
  %26 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx27.i, align 4
  %28 = tail call i32 @llvm.bswap.i32(i32 %27) #10
  %call28.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78, ptr noundef %1, i32 noundef %conv15.i, i32 noundef %conv26.i, i32 noundef %28) #13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %tx_lock.i, i32 noundef %call3.i) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %29 = load volatile i32, ptr @jiffies, align 128
  %add12 = add i32 %29, 200
  %call13 = tail call i32 @mod_timer(ptr noundef %t, i32 noundef %add12) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_trans_start(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ns83820_get_drvinfo(ptr nocapture noundef readonly %ndev, ptr noundef %info) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 1
  %call1 = tail call i32 @strlcpy(ptr noundef %driver, ptr noundef nonnull @.str, i32 noundef 32) #10
  %version = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 2
  %call3 = tail call i32 @strlcpy(ptr noundef %version, ptr noundef nonnull @.str.80, i32 noundef 32) #10
  %pci_dev = getelementptr i8, ptr %ndev, i32 2308
  %0 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pci_dev, align 4
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44, i32 3
  %2 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %entry.pci_name.exit_crit_edge

entry.pci_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %entry.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %5, %if.end.i.i ], [ %3, %entry.pci_name.exit_crit_edge ]
  %bus_info = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 4
  %call6 = tail call i32 @strlcpy(ptr noundef %bus_info, ptr noundef %retval.0.i.i, i32 noundef 32) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ns83820_get_link(ptr nocapture noundef readonly %ndev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %ndev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 16
  %add.ptr = getelementptr i8, ptr %1, i32 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !220
  %3 = shl i32 %2, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !326
  %4 = load i32, ptr @lnksts, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  %or = select i1 %tobool.not, i32 0, i32 -2147483648
  %5 = xor i32 %or, %3
  %tobool3.not = lshr i32 %5, 31
  ret i32 %tobool3.not
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ns83820_get_link_ksettings(ptr nocapture noundef readonly %ndev, ptr noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %ndev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 16
  %add.ptr = getelementptr i8, ptr %1, i32 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !220
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !327
  %4 = load i32, ptr @lnksts, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  %or = select i1 %tobool.not, i32 1879048192, i32 -268435456
  %xor = xor i32 %or, %3
  %5 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %add.ptr.i.i, align 16
  %add.ptr6 = getelementptr i8, ptr %6, i32 232
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6) #10, !srcloc !220
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !328
  %8 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr.i.i, align 16
  %add.ptr13 = getelementptr i8, ptr %9, i32 224
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13) #10, !srcloc !220
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !329
  %CFG_cache = getelementptr i8, ptr %ndev, i32 2756
  %11 = ptrtoint ptr %CFG_cache to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %CFG_cache, align 4
  %and19 = and i32 %12, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  %spec.select = select i1 %tobool20.not, i8 2, i8 3
  %spec.select56 = select i1 %tobool20.not, i32 639, i32 1136
  %13 = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 3
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %spec.select, ptr %13, align 1
  %link_modes = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %cmd, i32 0, i32 1
  tail call void @ethtool_convert_legacy_u32_to_link_mode(ptr noundef %link_modes, i32 noundef %spec.select56) #10
  %and = lshr i32 %xor, 28
  %15 = trunc i32 %and to i8
  %16 = and i8 %15, 1
  %duplex = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 2
  %17 = ptrtoint ptr %duplex to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %duplex, align 4
  %div55 = lshr i32 %xor, 29
  %and30 = and i32 %div55, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and30)
  %switch.selectcmp = icmp eq i32 %and30, 1
  %switch.select = select i1 %switch.selectcmp, i32 100, i32 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and30)
  %switch.selectcmp57 = icmp eq i32 %and30, 2
  %switch.select58 = select i1 %switch.selectcmp57, i32 1000, i32 %switch.select
  %speed36 = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 1
  %18 = ptrtoint ptr %speed36 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %switch.select58, ptr %speed36, align 4
  %19 = lshr i32 %10, 20
  %20 = trunc i32 %19 to i8
  %21 = and i8 %20, 1
  %autoneg = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 5
  %22 = ptrtoint ptr %autoneg to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %autoneg, align 1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ns83820_set_link_ksettings(ptr noundef %ndev, ptr nocapture noundef readonly %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %ndev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 16
  %add.ptr = getelementptr i8, ptr %1, i32 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !220
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !330
  %3 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr.i.i, align 16
  %add.ptr6 = getelementptr i8, ptr %4, i32 232
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6) #10, !srcloc !220
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !331
  %CFG_cache = getelementptr i8, ptr %ndev, i32 2756
  %6 = ptrtoint ptr %CFG_cache to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %CFG_cache, align 4
  %and = and i32 %7, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool10.not = icmp eq i32 %and, 0
  %8 = lshr i32 %5, 24
  %and11 = and i32 %8, 32
  %9 = shl i32 %2, 24
  %10 = and i32 %9, 268435456
  %and12 = xor i32 %10, 268435456
  %fullduplex.0 = select i1 %tobool10.not, i32 %and12, i32 %and11
  %misc_lock = getelementptr i8, ptr %ndev, i32 2712
  tail call void @_raw_spin_lock_irq(ptr noundef %misc_lock) #10
  %tx_lock = getelementptr i8, ptr %ndev, i32 2772
  tail call void @_raw_spin_lock(ptr noundef %tx_lock) #10
  %duplex = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 2
  %11 = ptrtoint ptr %duplex to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %duplex, align 4
  %conv = zext i8 %12 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %fullduplex.0, i32 %conv)
  %cmp.not = icmp eq i32 %fullduplex.0, %conv
  br i1 %cmp.not, label %entry.if.end71_crit_edge, label %if.then15

entry.if.end71_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end71

if.then15:                                        ; preds = %entry
  %tobool10.not.not = xor i1 %tobool10.not, true
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %12)
  %cmp21 = icmp eq i8 %12, 1
  %or.cond = select i1 %tobool10.not.not, i1 %cmp21, i1 false
  br i1 %or.cond, label %do.body, label %if.then15.do.end68_crit_edge

if.then15.do.end68_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end68

do.body:                                          ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !332
  tail call void @arm_heavy_mb() #10
  %13 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %add.ptr.i.i, align 16
  %add.ptr27 = getelementptr i8, ptr %14, i32 40
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr27) #10, !srcloc !220
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !333
  %16 = or i32 %15, 208
  %17 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %add.ptr.i.i, align 16
  %add.ptr35 = getelementptr i8, ptr %18, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr35, i32 %16) #10, !srcloc !218
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !334
  tail call void @arm_heavy_mb() #10
  %19 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %add.ptr.i.i, align 16
  %add.ptr42 = getelementptr i8, ptr %20, i32 56
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr42) #10, !srcloc !220
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !335
  %22 = or i32 %21, 16
  %23 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %add.ptr.i.i, align 16
  %add.ptr48 = getelementptr i8, ptr %24, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr48, i32 %22) #10, !srcloc !218
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !336
  tail call void @arm_heavy_mb() #10
  %25 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %add.ptr.i.i, align 16
  %add.ptr55 = getelementptr i8, ptr %26, i32 44
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr55) #10, !srcloc !220
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !337
  %28 = or i32 %27, 16777216
  %29 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %add.ptr.i.i, align 16
  %add.ptr61 = getelementptr i8, ptr %30, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr61, i32 %28) #10, !srcloc !218
  br label %do.end68

do.end68:                                         ; preds = %do.body, %if.then15.do.end68_crit_edge
  %call70 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.81, ptr noundef %ndev) #13
  br label %if.end71

if.end71:                                         ; preds = %do.end68, %entry.if.end71_crit_edge
  %autoneg = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 5
  %31 = ptrtoint ptr %autoneg to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %autoneg, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %32)
  %cmp74 = icmp eq i8 %32, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  %33 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %add.ptr.i.i, align 16
  %add.ptr81 = getelementptr i8, ptr %34, i32 224
  br i1 %cmp74, label %do.body77, label %do.body95

do.body77:                                        ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr81, i32 1179648) #10, !srcloc !218
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !338
  tail call void @arm_heavy_mb() #10
  %35 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %add.ptr.i.i, align 16
  %add.ptr86 = getelementptr i8, ptr %36, i32 224
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr86, i32 1048576) #10, !srcloc !218
  %linkstate = getelementptr i8, ptr %ndev, i32 2768
  %37 = ptrtoint ptr %linkstate to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 1, ptr %linkstate, align 16
  %call93 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.84, ptr noundef %ndev) #13
  br label %do.end103

do.body95:                                        ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr81, i32 0) #10, !srcloc !218
  br label %do.end103

do.end103:                                        ; preds = %do.body95, %do.body77
  %38 = ptrtoint ptr %autoneg to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %autoneg, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool110.not = icmp eq i8 %39, 0
  %cond111 = select i1 %tobool110.not, ptr @.str.90, ptr @.str.89
  %call112 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.87, ptr noundef %ndev, ptr noundef nonnull %cond111) #13
  tail call fastcc void @phy_intr(ptr noundef %ndev)
  tail call void @_raw_spin_unlock(ptr noundef %tx_lock) #10
  tail call void @_raw_spin_unlock_irq(ptr noundef %misc_lock) #10
  ret i32 0
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @ethtool_convert_legacy_u32_to_link_mode(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout_uninterruptible(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

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
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 102)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 102)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !12, !14, !15, !17, !19, !20, !22, !24, !26, !28, !30, !32, !34, !35, !36, !37, !38, !39, !40, !42, !43, !45, !46, !48, !49, !51, !52, !54, !55, !56, !57, !59, !60, !61, !63, !64, !65, !67, !68, !69, !71, !73, !75, !77, !78, !79, !81, !82, !83, !85, !86, !87, !89, !90, !91, !93, !94, !95, !97, !98, !99, !100, !101, !103, !104, !105, !107, !108, !109, !111, !112, !113, !114, !116, !117, !118, !119, !121, !122, !123, !124, !126, !128, !130, !132, !134, !136, !138, !139, !140, !141, !142, !143, !145, !146, !147, !149, !151, !152, !154, !155, !156, !157, !159, !160, !161, !162, !164, !165, !166, !168, !170, !172, !173, !174, !175, !177, !178, !179, !181, !182, !183, !184, !185, !187, !188, !189, !190, !192, !193, !194, !195, !197, !198, !200, !201, !203, !205, !206, !207}
!llvm.module.flags = !{!208, !209, !210, !211, !212, !213, !214, !215}
!llvm.ident = !{!216}

!0 = !{ptr @__UNIQUE_ID_author343, !1, !"__UNIQUE_ID_author343", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/natsemi/ns83820.c", i32 2250, i32 1}
!2 = !{ptr @__UNIQUE_ID_description344, !3, !"__UNIQUE_ID_description344", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/natsemi/ns83820.c", i32 2251, i32 1}
!4 = !{ptr @__UNIQUE_ID_file345, !5, !"__UNIQUE_ID_file345", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/natsemi/ns83820.c", i32 2252, i32 1}
!6 = !{ptr @__UNIQUE_ID_license346, !5, !"__UNIQUE_ID_license346", i1 false, i1 false}
!7 = !{ptr @__param_lnksts, !8, !"__param_lnksts", i1 false, i1 false}
!8 = !{!"../drivers/net/ethernet/natsemi/ns83820.c", i32 2256, i32 1}
!9 = !{ptr @__UNIQUE_ID_lnkststype347, !8, !"__UNIQUE_ID_lnkststype347", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_lnksts348, !11, !"__UNIQUE_ID_lnksts348", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/natsemi/ns83820.c", i32 2257, i32 1}
!12 = !{ptr @__param_ihr, !13, !"__param_ihr", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/natsemi/ns83820.c", i32 2259, i32 1}
!14 = !{ptr @__UNIQUE_ID_ihrtype349, !13, !"__UNIQUE_ID_ihrtype349", i1 false, i1 false}
!15 = !{ptr @__UNIQUE_ID_ihr350, !16, !"__UNIQUE_ID_ihr350", i1 false, i1 false}
!16 = !{!"../drivers/net/ethernet/natsemi/ns83820.c", i32 2260, i32 1}
!17 = !{ptr @__param_reset_phy, !18, !"__param_reset_phy", i1 false, i1 false}
!18 = !{!"../drivers/net/ethernet/natsemi/ns83820.c", i32 2262, i32 1}
!19 = !{ptr @__UNIQUE_ID_reset_phytype351, !18, !"__UNIQUE_ID_reset_phytype351", i1 false, i1 false}
!20 = !{ptr @__UNIQUE_ID_reset_phy352, !21, !"__UNIQUE_ID_reset_phy352", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/natsemi/ns83820.c", i32 2263, i32 1}
!22 = !{ptr @__initcall__kmod_ns83820__353_2265_ns83820_init6, !23, !"__initcall__kmod_ns83820__353_2265_ns83820_init6", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/natsemi/ns83820.c", i32 2265, i32 1}
!24 = !{ptr @__exitcall_ns83820_exit, !25, !"__exitcall_ns83820_exit", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/natsemi/ns83820.c", i32 2266, i32 1}
!26 = !{ptr @.str, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/ethernet/natsemi/ns83820.c", i32 2228, i32 11}
!28 = !{ptr @driver, !29, !"driver", i1 false, i1 false}
!29 = !{!"../drivers/net/ethernet/natsemi/ns83820.c", i32 2227, i32 26}
!30 = !{ptr @ns83820_pci_tbl, !31, !"ns83820_pci_tbl", i1 false, i1 false}
!31 = !{!"../drivers/net/ethernet/natsemi/ns83820.c", i32 2222, i32 35}
!32 = !{ptr @.str.1, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/ethernet/natsemi/ns83820.c", i32 1912, i32 3}
!34 = !{ptr @.str.2, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.3, !33, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.4, !33, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.5, !33, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @ns83820_init_one._entry, !33, !"_entry", i1 false, i1 false}
!39 = !{ptr @ns83820_init_one._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @ns83820_init_one.__key, !41, !"__key", i1 false, i1 false}
!41 = !{!"../drivers/net/ethernet/natsemi/ns83820.c", i32 1924, i32 2}
!42 = !{ptr @.str.6, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @ns83820_init_one.__key.7, !44, !"__key", i1 false, i1 false}
!44 = !{!"../drivers/net/ethernet/natsemi/ns83820.c", i32 1925, i32 2}
!45 = !{ptr @.str.8, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @ns83820_init_one.__key.9, !47, !"__key", i1 false, i1 false}
!47 = !{!"../drivers/net/ethernet/natsemi/ns83820.c", i32 1926, i32 2}
!48 = !{ptr @.str.10, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @ns83820_init_one.__key.11, !50, !"__key", i1 false, i1 false}
!50 = !{!"../drivers/net/ethernet/natsemi/ns83820.c", i32 1931, i32 2}
!51 = !{ptr @.str.12, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.14, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/ethernet/natsemi/ns83820.c", i32 1936, i32 3}
!54 = !{ptr @.str.15, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @ns83820_init_one._entry.13, !53, !"_entry", i1 false, i1 false}
!56 = !{ptr @ns83820_init_one._entry_ptr.16, !53, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.18, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/net/ethernet/natsemi/ns83820.c", i32 1964, i32 3}
!59 = !{ptr @ns83820_init_one._entry.17, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @ns83820_init_one._entry_ptr.19, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.21, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/net/ethernet/natsemi/ns83820.c", i32 1979, i32 3}
!63 = !{ptr @ns83820_init_one._entry.20, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @ns83820_init_one._entry_ptr.22, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.24, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/net/ethernet/natsemi/ns83820.c", i32 1983, i32 2}
!67 = !{ptr @ns83820_init_one._entry.23, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @ns83820_init_one._entry_ptr.25, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.26, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/net/ethernet/natsemi/ns83820.c", i32 1996, i32 25}
!71 = !{ptr @.str.27, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/net/ethernet/natsemi/ns83820.c", i32 1998, i32 25}
!73 = !{ptr @.str.28, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/net/ethernet/natsemi/ns83820.c", i32 2000, i32 25}
!75 = !{ptr @.str.30, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/net/ethernet/natsemi/ns83820.c", i32 2006, i32 3}
!77 = !{ptr @ns83820_init_one._entry.29, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @ns83820_init_one._entry_ptr.31, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.33, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/net/ethernet/natsemi/ns83820.c", i32 2010, i32 4}
!81 = !{ptr @ns83820_init_one._entry.32, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @ns83820_init_one._entry_ptr.34, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.36, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/net/ethernet/natsemi/ns83820.c", i32 2037, i32 3}
!85 = !{ptr @ns83820_init_one._entry.35, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @ns83820_init_one._entry_ptr.37, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.39, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/net/ethernet/natsemi/ns83820.c", i32 2059, i32 3}
!89 = !{ptr @ns83820_init_one._entry.38, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @ns83820_init_one._entry_ptr.40, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.42, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/net/ethernet/natsemi/ns83820.c", i32 2156, i32 3}
!93 = !{ptr @ns83820_init_one._entry.41, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @ns83820_init_one._entry_ptr.43, !92, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.45, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/net/ethernet/natsemi/ns83820.c", i32 2161, i32 2}
!97 = !{ptr @ns83820_init_one._entry.44, !96, !"_entry", i1 false, i1 false}
!98 = !{ptr @ns83820_init_one._entry_ptr.46, !96, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.47, !96, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @.str.48, !96, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @.str.50, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/net/ethernet/natsemi/ns83820.c", i32 2175, i32 3}
!103 = !{ptr @ns83820_init_one._entry.49, !102, !"_entry", i1 false, i1 false}
!104 = !{ptr @ns83820_init_one._entry_ptr.51, !102, !"_entry_ptr", i1 false, i1 false}
!105 = distinct !{null, !106, !"__already_done", i1 false, i1 false}
!106 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!107 = !{ptr @.str.52, !106, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @.str.53, !106, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @.str.54, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/net/ethernet/natsemi/ns83820.c", i32 467, i32 4}
!111 = !{ptr @.str.55, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @kick_rx._entry, !110, !"_entry", i1 false, i1 false}
!113 = !{ptr @kick_rx._entry_ptr, !110, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.56, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/net/ethernet/natsemi/ns83820.c", i32 812, i32 3}
!116 = !{ptr @.str.57, !115, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @ns83820_rx_kick._entry, !115, !"_entry", i1 false, i1 false}
!118 = !{ptr @ns83820_rx_kick._entry_ptr, !115, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.58, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/net/ethernet/natsemi/ns83820.c", i32 1457, i32 4}
!121 = !{ptr @.str.59, !120, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @ns83820_do_isr._entry, !120, !"_entry", i1 false, i1 false}
!123 = !{ptr @ns83820_do_isr._entry_ptr, !120, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @.str.60, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/net/ethernet/natsemi/ns83820.c", i32 601, i32 34}
!126 = !{ptr @.str.61, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/net/ethernet/natsemi/ns83820.c", i32 601, i32 40}
!128 = !{ptr @.str.62, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/net/ethernet/natsemi/ns83820.c", i32 601, i32 47}
!130 = !{ptr @.str.63, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/net/ethernet/natsemi/ns83820.c", i32 601, i32 55}
!132 = !{ptr @.str.64, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/net/ethernet/natsemi/ns83820.c", i32 601, i32 66}
!134 = !{ptr @phy_intr.speeds, !135, !"speeds", i1 false, i1 false}
!135 = !{!"../drivers/net/ethernet/natsemi/ns83820.c", i32 601, i32 21}
!136 = !{ptr @.str.65, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/net/ethernet/natsemi/ns83820.c", i32 694, i32 3}
!138 = !{ptr @.str.66, !137, !"<string literal>", i1 false, i1 false}
!139 = !{ptr @phy_intr._entry, !137, !"_entry", i1 false, i1 false}
!140 = !{ptr @phy_intr._entry_ptr, !137, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @.str.67, !137, !"<string literal>", i1 false, i1 false}
!142 = !{ptr @.str.68, !137, !"<string literal>", i1 false, i1 false}
!143 = !{ptr @.str.70, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/net/ethernet/natsemi/ns83820.c", i32 701, i32 3}
!145 = !{ptr @phy_intr._entry.69, !144, !"_entry", i1 false, i1 false}
!146 = !{ptr @phy_intr._entry_ptr.71, !144, !"_entry_ptr", i1 false, i1 false}
!147 = !{ptr @netdev_ops, !148, !"netdev_ops", i1 false, i1 false}
!148 = !{!"../drivers/net/ethernet/natsemi/ns83820.c", i32 1885, i32 36}
!149 = !{ptr @ns83820_open.__key, !150, !"__key", i1 false, i1 false}
!150 = !{!"../drivers/net/ethernet/natsemi/ns83820.c", i32 1640, i32 2}
!151 = !{ptr @.str.72, !150, !"<string literal>", i1 false, i1 false}
!152 = !{ptr @.str.73, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/net/ethernet/natsemi/ns83820.c", i32 1601, i32 3}
!154 = !{ptr @.str.74, !153, !"<string literal>", i1 false, i1 false}
!155 = !{ptr @ns83820_tx_watch._entry, !153, !"_entry", i1 false, i1 false}
!156 = !{ptr @ns83820_tx_watch._entry_ptr, !153, !"_entry_ptr", i1 false, i1 false}
!157 = !{ptr @.str.75, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/net/ethernet/natsemi/ns83820.c", i32 1563, i32 2}
!159 = !{ptr @.str.76, !158, !"<string literal>", i1 false, i1 false}
!160 = !{ptr @ns83820_tx_timeout._entry, !158, !"_entry", i1 false, i1 false}
!161 = !{ptr @ns83820_tx_timeout._entry_ptr, !158, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @.str.78, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/net/ethernet/natsemi/ns83820.c", i32 1581, i32 2}
!164 = !{ptr @ns83820_tx_timeout._entry.77, !163, !"_entry", i1 false, i1 false}
!165 = !{ptr @ns83820_tx_timeout._entry_ptr.79, !163, !"_entry_ptr", i1 false, i1 false}
!166 = !{ptr @ops, !167, !"ops", i1 false, i1 false}
!167 = !{!"../drivers/net/ethernet/natsemi/ns83820.c", i32 1366, i32 33}
!168 = !{ptr @.str.80, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/net/ethernet/natsemi/ns83820.c", i32 1355, i32 25}
!170 = !{ptr @.str.81, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/net/ethernet/natsemi/ns83820.c", i32 1319, i32 3}
!172 = !{ptr @.str.82, !171, !"<string literal>", i1 false, i1 false}
!173 = !{ptr @ns83820_set_link_ksettings._entry, !171, !"_entry", i1 false, i1 false}
!174 = !{ptr @ns83820_set_link_ksettings._entry_ptr, !171, !"_entry_ptr", i1 false, i1 false}
!175 = !{ptr @.str.84, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/net/ethernet/natsemi/ns83820.c", i32 1332, i32 4}
!177 = !{ptr @ns83820_set_link_ksettings._entry.83, !176, !"_entry", i1 false, i1 false}
!178 = !{ptr @ns83820_set_link_ksettings._entry_ptr.85, !176, !"_entry_ptr", i1 false, i1 false}
!179 = !{ptr @.str.87, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/net/ethernet/natsemi/ns83820.c", i32 1339, i32 3}
!181 = !{ptr @ns83820_set_link_ksettings._entry.86, !180, !"_entry", i1 false, i1 false}
!182 = !{ptr @ns83820_set_link_ksettings._entry_ptr.88, !180, !"_entry_ptr", i1 false, i1 false}
!183 = !{ptr @.str.89, !180, !"<string literal>", i1 false, i1 false}
!184 = !{ptr @.str.90, !180, !"<string literal>", i1 false, i1 false}
!185 = !{ptr @.str.91, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/net/ethernet/natsemi/ns83820.c", i32 1728, i32 3}
!187 = !{ptr @.str.92, !186, !"<string literal>", i1 false, i1 false}
!188 = !{ptr @ns83820_run_bist._entry, !186, !"_entry", i1 false, i1 false}
!189 = !{ptr @ns83820_run_bist._entry_ptr, !186, !"_entry_ptr", i1 false, i1 false}
!190 = !{ptr @.str.94, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/net/ethernet/natsemi/ns83820.c", i32 1731, i32 3}
!192 = !{ptr @ns83820_run_bist._entry.93, !191, !"_entry", i1 false, i1 false}
!193 = !{ptr @ns83820_run_bist._entry_ptr.95, !191, !"_entry_ptr", i1 false, i1 false}
!194 = !{ptr @__param_str_lnksts, !8, !"__param_str_lnksts", i1 false, i1 false}
!195 = !{ptr @lnksts, !196, !"lnksts", i1 false, i1 false}
!196 = !{!"../drivers/net/ethernet/natsemi/ns83820.c", i32 115, i32 12}
!197 = !{ptr @__param_str_ihr, !13, !"__param_str_ihr", i1 false, i1 false}
!198 = !{ptr @ihr, !199, !"ihr", i1 false, i1 false}
!199 = !{!"../drivers/net/ethernet/natsemi/ns83820.c", i32 113, i32 12}
!200 = !{ptr @__param_str_reset_phy, !18, !"__param_str_reset_phy", i1 false, i1 false}
!201 = !{ptr @reset_phy, !202, !"reset_phy", i1 false, i1 false}
!202 = !{!"../drivers/net/ethernet/natsemi/ns83820.c", i32 114, i32 12}
!203 = !{ptr @.str.96, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/net/ethernet/natsemi/ns83820.c", i32 2241, i32 2}
!205 = !{ptr @.str.97, !204, !"<string literal>", i1 false, i1 false}
!206 = !{ptr @ns83820_init._entry, !204, !"_entry", i1 false, i1 false}
!207 = !{ptr @ns83820_init._entry_ptr, !204, !"_entry_ptr", i1 false, i1 false}
!208 = !{i32 1, !"wchar_size", i32 2}
!209 = !{i32 1, !"min_enum_size", i32 4}
!210 = !{i32 8, !"branch-target-enforcement", i32 0}
!211 = !{i32 8, !"sign-return-address", i32 0}
!212 = !{i32 8, !"sign-return-address-all", i32 0}
!213 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!214 = !{i32 7, !"uwtable", i32 1}
!215 = !{i32 7, !"frame-pointer", i32 2}
!216 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!217 = !{i64 2156667105}
!218 = !{i64 5039719}
!219 = !{i64 2156667489}
!220 = !{i64 5040137}
!221 = !{i64 2156668144}
!222 = !{i64 2156703445}
!223 = !{i64 2156703718}
!224 = !{i64 2156704466}
!225 = !{i64 2156710295}
!226 = !{i64 2156711202}
!227 = !{i64 2156712218}
!228 = !{i64 2156713161}
!229 = !{i64 2156713459}
!230 = !{i64 2156713929}
!231 = !{i64 2156714369}
!232 = !{i64 2156716262}
!233 = !{i64 2156716737}
!234 = !{i64 2156717276}
!235 = !{i64 2156717880}
!236 = !{i64 2156718280}
!237 = !{i64 2156718680}
!238 = !{i64 2156719224}
!239 = !{i64 2156719854}
!240 = !{i64 2156720344}
!241 = !{i64 2156720917}
!242 = !{i64 2156721549}
!243 = !{i64 2156722212}
!244 = !{i64 2156727143}
!245 = !{i64 2156727630}
!246 = !{i64 2156591094}
!247 = !{i64 2156593228}
!248 = !{i64 2156638310}
!249 = !{i64 2156638724}
!250 = !{i64 2156669010}
!251 = !{i64 898200}
!252 = !{i64 2156669698}
!253 = !{!"branch_weights", i32 2000, i32 1}
!254 = !{i64 2156670317}
!255 = !{i64 2156671010}
!256 = !{i64 2156639353}
!257 = !{i64 2156673530}
!258 = !{i64 2156674350}
!259 = !{i64 2156674912}
!260 = !{i64 2156675579}
!261 = !{i64 2156687737}
!262 = !{i64 2156688407}
!263 = !{i64 2156685441}
!264 = !{i64 2156686102}
!265 = !{!"branch_weights", i32 1, i32 2000}
!266 = !{i64 2156595893, i64 2156596396, i64 2156595930, i64 2156595986, i64 2156596020, i64 2156596044, i64 2156596085, i64 2156596106, i64 2156596134, i64 2156596168}
!267 = !{i64 2156594880}
!268 = !{i64 2156636349}
!269 = !{i64 2148402377, i64 2148402403, i64 2148402432, i64 2148402466, i64 2148402497, i64 2148402520}
!270 = !{i64 2156641158}
!271 = !{i64 2156602193}
!272 = !{i64 2156602832}
!273 = !{i64 2156603319}
!274 = !{i64 2156603806}
!275 = !{i64 2156604865}
!276 = !{i64 2156605834}
!277 = !{i64 2156606857}
!278 = !{i64 2156607774}
!279 = !{i64 2156608771}
!280 = !{i64 2156609688}
!281 = !{i64 2156610807}
!282 = !{i64 2156611794}
!283 = !{i64 2156612825}
!284 = !{i64 2156613746}
!285 = !{i64 2156614747}
!286 = !{i64 2156615668}
!287 = !{i64 2156616790}
!288 = !{i64 2156617733}
!289 = !{i64 2156618743}
!290 = !{i64 2156619660}
!291 = !{i64 2156620686}
!292 = !{i64 2156621639}
!293 = !{i64 2156622659}
!294 = !{i64 2156623586}
!295 = !{i64 2156623849}
!296 = !{i64 2156645376}
!297 = !{i64 2156645838}
!298 = !{i64 2156646300}
!299 = !{i64 2156646762}
!300 = !{i64 2156647224}
!301 = !{i64 2156647686}
!302 = !{i64 2156648148}
!303 = !{i64 2156648610}
!304 = !{i64 2156649072}
!305 = !{i64 2156649534}
!306 = !{i64 2156649996}
!307 = !{i64 2156683771}
!308 = !{i64 2156627394}
!309 = !{i64 2156627799}
!310 = !{i64 2156628449}
!311 = !{i64 2156628848}
!312 = !{i64 2156629241}
!313 = !{i64 2156629661}
!314 = !{i64 2156630173}
!315 = !{i64 2156630596}
!316 = !{i64 2156684360}
!317 = !{i64 2156684747}
!318 = !{i64 2156631427}
!319 = !{i64 2156632121}
!320 = !{i64 2156632337}
!321 = !{i64 2156632721}
!322 = !{i64 2148399912, i64 2148399938, i64 2148399967, i64 2148400001, i64 2148400032, i64 2148400055}
!323 = !{i64 2156686702}
!324 = !{i64 2156686929}
!325 = !{i64 2156687337}
!326 = !{i64 2156666596}
!327 = !{i64 2156650483}
!328 = !{i64 2156651083}
!329 = !{i64 2156651570}
!330 = !{i64 2156653705}
!331 = !{i64 2156654305}
!332 = !{i64 2156655363}
!333 = !{i64 2156656332}
!334 = !{i64 2156657355}
!335 = !{i64 2156658272}
!336 = !{i64 2156659269}
!337 = !{i64 2156660186}
!338 = !{i64 2156662416}
