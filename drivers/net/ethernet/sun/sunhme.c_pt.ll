; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/sun/sunhme.c_pt.bc'
source_filename = "../drivers/net/ethernet/sun/sunhme.c"
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
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.quattro = type { [4 x ptr], ptr, ptr, i32 }
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
%struct.atomic_t = type { i32 }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.121 = type { ptr }
%struct.pci_bus = type { %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, [4 x ptr], %struct.list_head, %struct.resource, ptr, ptr, ptr, i8, i8, i8, i8, i32, [48 x i8], i16, i16, ptr, %struct.device, ptr, ptr, i8 }
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
%struct.happy_meal = type { ptr, ptr, ptr, ptr, %struct.spinlock, [32 x ptr], [32 x ptr], i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, ptr, ptr, i32 }
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
%struct.happy_meal_rxd = type { i32, i32 }
%struct.page = type { i32, %union.anon.2, %union.anon.96, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.96 = type { %struct.atomic_t }
%struct.hmeal_init_block = type { [256 x %struct.happy_meal_rxd], [256 x %struct.happy_meal_txd] }
%struct.happy_meal_txd = type { i32, i32 }
%struct.netdev_hw_addr = type { %struct.list_head, %struct.rb_node, [32 x i8], i8, i8, i32, i32, i32, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.ethtool_link_settings = type { i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [1 x i8], [7 x i32], [0 x i32] }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.anon.53 = type { i16, i16 }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.ethtool_drvinfo = type { i32, [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8], [12 x i8], i32, i32, i32, i32, i32 }
%struct.ethtool_link_ksettings = type { %struct.ethtool_link_settings, %struct.anon.119, i32 }
%struct.anon.119 = type { [3 x i32], [3 x i32], [3 x i32] }

@__UNIQUE_ID_version341 = internal constant [20 x i8] c"sunhme.version=3.10\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"sunhme\00", [25 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"3.10\00", [27 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@__UNIQUE_ID_author342 = internal constant [52 x i8] c"sunhme.author=David S. Miller (davem@davemloft.net)\00", section ".modinfo", align 1
@__UNIQUE_ID_description343 = internal constant [74 x i8] c"sunhme.description=Sun HappyMealEthernet(HME) 10/100baseT ethernet driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file344 = internal constant [44 x i8] c"sunhme.file=drivers/net/ethernet/sun/sunhme\00", section ".modinfo", align 1
@__UNIQUE_ID_license345 = internal constant [19 x i8] c"sunhme.license=GPL\00", section ".modinfo", align 1
@__param_str_macaddr = internal constant [15 x i8] c"sunhme.macaddr\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_macaddr = internal constant %struct.kparam_array { i32 6, i32 4, ptr null, ptr @param_ops_int, ptr @macaddr }, align 4
@__param_macaddr = internal constant %struct.kernel_param { ptr @__param_str_macaddr, ptr null, ptr @param_array_ops, i16 0, i8 -1, i8 0, %union.anon.97 { ptr @__param_arr_macaddr } }, section "__param", align 4
@__UNIQUE_ID_macaddrtype346 = internal constant [37 x i8] c"sunhme.parmtype=macaddr:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_macaddr347 = internal constant [50 x i8] c"sunhme.parm=macaddr:Happy Meal MAC address to set\00", section ".modinfo", align 1
@__initcall__kmod_sunhme__348_3380_happy_meal_probe6 = internal global ptr @happy_meal_probe, section ".initcall6.init", align 4
@__exitcall_happy_meal_exit = internal global ptr @happy_meal_exit, section ".exitcall.exit", align 4
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@macaddr = internal global { [6 x i32], [40 x i8] } zeroinitializer, align 32
@hme_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str.3, ptr @happymeal_pci_ids, ptr @happy_meal_pci_probe, ptr @happy_meal_pci_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@qfe_pci_list = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"hme\00", [28 x i8] zeroinitializer }, align 32
@happymeal_pci_ids = internal constant { [2 x %struct.pci_device_id], [32 x i8] } { [2 x %struct.pci_device_id] [%struct.pci_device_id { i32 4238, i32 4097, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"SUNW,qfe\00", [23 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"SUNW,hme\00", [23 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"qfe\00", [28 x i8] zeroinitializer }, align 32
@hme_version_printed = internal global { i32, [28 x i8] } zeroinitializer, align 32
@happy_meal_pci_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.9, i32 3012, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\016%s\00", [27 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"happy_meal_pci_probe\00", [43 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/net/ethernet/sun/sunhme.c\00", [62 x i8] zeroinitializer }, align 32
@happy_meal_pci_probe._entry_ptr = internal global ptr @happy_meal_pci_probe._entry, section ".printk_index", align 4
@version = internal global { [70 x i8], [58 x i8] } { [70 x i8] c"sunhme.c:v3.10 August 26, 2008 David S. Miller (davem@davemloft.net)\0A\00", [58 x i8] zeroinitializer }, align 32
@happy_meal_pci_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&hp->happy_lock\00", [16 x i8] zeroinitializer }, align 32
@happy_meal_pci_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.8, ptr @.str.9, i32 3030, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\013happymeal(PCI): Cannot find proper PCI device base address.\0A\00", [33 x i8] zeroinitializer }, align 32
@happy_meal_pci_probe._entry_ptr.13 = internal global ptr @happy_meal_pci_probe._entry.11, section ".printk_index", align 4
@happy_meal_pci_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.8, ptr @.str.9, i32 3035, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\013happymeal(PCI): Cannot obtain PCI resources, aborting.\0A\00", [38 x i8] zeroinitializer }, align 32
@happy_meal_pci_probe._entry_ptr.16 = internal global ptr @happy_meal_pci_probe._entry.14, section ".printk_index", align 4
@happy_meal_pci_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.8, ptr @.str.9, i32 3040, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013happymeal(PCI): Unable to remap card memory.\0A\00", [48 x i8] zeroinitializer }, align 32
@happy_meal_pci_probe._entry_ptr.19 = internal global ptr @happy_meal_pci_probe._entry.17, section ".printk_index", align 4
@happy_meal_pci_probe.__key.20 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.21 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"(&hp->happy_timer)\00", [45 x i8] zeroinitializer }, align 32
@hme_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @happy_meal_open, ptr @happy_meal_close, ptr @happy_meal_start_xmit, ptr null, ptr null, ptr null, ptr @happy_meal_set_multicast, ptr @eth_mac_addr, ptr @eth_validate_addr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @happy_meal_tx_timeout, ptr null, ptr null, ptr null, ptr @happy_meal_get_stats, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@hme_ethtool_ops = internal constant { %struct.ethtool_ops, [68 x i8] } { %struct.ethtool_ops { i8 0, i32 0, i32 0, ptr @hme_get_drvinfo, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @hme_get_link, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @hme_get_link_ksettings, ptr @hme_set_link_ksettings, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [68 x i8] zeroinitializer }, align 32
@happy_meal_pci_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.8, ptr @.str.9, i32 3148, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\013happymeal(PCI): Cannot register net device, aborting.\0A\00", [39 x i8] zeroinitializer }, align 32
@happy_meal_pci_probe._entry_ptr.24 = internal global ptr @happy_meal_pci_probe._entry.22, section ".printk_index", align 4
@.str.25 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"eth\00", [28 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"-%d\00", [28 x i8] zeroinitializer }, align 32
@happy_meal_pci_probe._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.8, ptr @.str.9, i32 3162, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\016%s%s: Quattro HME (PCI/CheerIO) 10/100baseT Ethernet \00", [40 x i8] zeroinitializer }, align 32
@happy_meal_pci_probe._entry_ptr.29 = internal global ptr @happy_meal_pci_probe._entry.27, section ".printk_index", align 4
@happy_meal_pci_probe._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.8, ptr @.str.9, i32 3165, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"DEC 21153 PCI Bridge\0A\00", [42 x i8] zeroinitializer }, align 32
@happy_meal_pci_probe._entry_ptr.32 = internal global ptr @happy_meal_pci_probe._entry.30, section ".printk_index", align 4
@happy_meal_pci_probe._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.8, ptr @.str.9, i32 3168, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"unknown bridge %04x.%04x\0A\00", [38 x i8] zeroinitializer }, align 32
@happy_meal_pci_probe._entry_ptr.35 = internal global ptr @happy_meal_pci_probe._entry.33, section ".printk_index", align 4
@happy_meal_pci_probe._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.8, ptr @.str.9, i32 3173, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\016%s: Quattro HME slot %d (PCI/CheerIO) 10/100baseT Ethernet \00", [34 x i8] zeroinitializer }, align 32
@happy_meal_pci_probe._entry_ptr.38 = internal global ptr @happy_meal_pci_probe._entry.36, section ".printk_index", align 4
@happy_meal_pci_probe._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.8, ptr @.str.9, i32 3176, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\016%s: HAPPY MEAL (PCI/CheerIO) 10/100BaseT Ethernet \00", [43 x i8] zeroinitializer }, align 32
@happy_meal_pci_probe._entry_ptr.41 = internal global ptr @happy_meal_pci_probe._entry.39, section ".printk_index", align 4
@happy_meal_pci_probe._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.8, ptr @.str.9, i32 3178, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%pM\0A\00", [27 x i8] zeroinitializer }, align 32
@happy_meal_pci_probe._entry_ptr.44 = internal global ptr @happy_meal_pci_probe._entry.42, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@happy_meal_timer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.9, i32 683, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\015%s: Auto-Negotiation unsuccessful, trying force link mode\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"happy_meal_timer\00", [47 x i8] zeroinitializer }, align 32
@happy_meal_timer._entry_ptr = internal global ptr @happy_meal_timer._entry, section ".printk_index", align 4
@happy_meal_timer._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.46, ptr @.str.9, i32 743, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\015%s: Auto negotiation successful, link still not completely up.\0A\00", [62 x i8] zeroinitializer }, align 32
@happy_meal_timer._entry_ptr.49 = internal global ptr @happy_meal_timer._entry.47, section ".printk_index", align 4
@happy_meal_timer._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.46, ptr @.str.9, i32 799, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\015%s: Link down, cable problem?\0A\00", [63 x i8] zeroinitializer }, align 32
@happy_meal_timer._entry_ptr.52 = internal global ptr @happy_meal_timer._entry.50, section ".printk_index", align 4
@happy_meal_timer._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.46, ptr @.str.9, i32 805, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013%s: Error, cannot re-init the Happy Meal.\0A\00", [51 x i8] zeroinitializer }, align 32
@happy_meal_timer._entry_ptr.55 = internal global ptr @happy_meal_timer._entry.53, section ".printk_index", align 4
@happy_meal_timer._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.46, ptr @.str.9, i32 828, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\013%s: Aieee, link timer is asleep but we got one anyways!\0A\00", [37 x i8] zeroinitializer }, align 32
@happy_meal_timer._entry_ptr.58 = internal global ptr @happy_meal_timer._entry.56, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@happy_meal_tcvr_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.60, ptr @.str.9, i32 452, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013happy meal: Aieee, transceiver MIF read bolixed\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"happy_meal_tcvr_read\00", [43 x i8] zeroinitializer }, align 32
@happy_meal_tcvr_read._entry_ptr = internal global ptr @happy_meal_tcvr_read._entry, section ".printk_index", align 4
@happy_meal_tcvr_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.62, ptr @.str.9, i32 485, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013happy meal: Aieee, transceiver MIF write bolixed\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"happy_meal_tcvr_write\00", [42 x i8] zeroinitializer }, align 32
@happy_meal_tcvr_write._entry_ptr = internal global ptr @happy_meal_tcvr_write._entry, section ".printk_index", align 4
@display_link_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.64, ptr @.str.9, i32 548, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\016%s: Link is up using \00", [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"display_link_mode\00", [46 x i8] zeroinitializer }, align 32
@display_link_mode._entry_ptr = internal global ptr @display_link_mode._entry, section ".printk_index", align 4
@display_link_mode._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.64, ptr @.str.9, i32 550, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"external \00", [22 x i8] zeroinitializer }, align 32
@display_link_mode._entry_ptr.67 = internal global ptr @display_link_mode._entry.65, section ".printk_index", align 4
@display_link_mode._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.64, ptr @.str.9, i32 552, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"internal \00", [22 x i8] zeroinitializer }, align 32
@display_link_mode._entry_ptr.70 = internal global ptr @display_link_mode._entry.68, section ".printk_index", align 4
@display_link_mode._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.64, ptr @.str.9, i32 553, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"transceiver at \00", [16 x i8] zeroinitializer }, align 32
@display_link_mode._entry_ptr.73 = internal global ptr @display_link_mode._entry.71, section ".printk_index", align 4
@display_link_mode._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.64, ptr @.str.9, i32 557, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"100Mb/s, Full Duplex.\0A\00", [41 x i8] zeroinitializer }, align 32
@display_link_mode._entry_ptr.76 = internal global ptr @display_link_mode._entry.74, section ".printk_index", align 4
@display_link_mode._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.64, ptr @.str.9, i32 559, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"100Mb/s, Half Duplex.\0A\00", [41 x i8] zeroinitializer }, align 32
@display_link_mode._entry_ptr.79 = internal global ptr @display_link_mode._entry.77, section ".printk_index", align 4
@display_link_mode._entry.80 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.64, ptr @.str.9, i32 562, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"10Mb/s, Full Duplex.\0A\00", [42 x i8] zeroinitializer }, align 32
@display_link_mode._entry_ptr.82 = internal global ptr @display_link_mode._entry.80, section ".printk_index", align 4
@display_link_mode._entry.83 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.64, ptr @.str.9, i32 564, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"10Mb/s, Half Duplex.\0A\00", [42 x i8] zeroinitializer }, align 32
@display_link_mode._entry_ptr.85 = internal global ptr @display_link_mode._entry.83, section ".printk_index", align 4
@display_forced_link_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.87, ptr @.str.9, i32 570, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016%s: Link has been forced up using \00", [59 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"display_forced_link_mode\00", [39 x i8] zeroinitializer }, align 32
@display_forced_link_mode._entry_ptr = internal global ptr @display_forced_link_mode._entry, section ".printk_index", align 4
@display_forced_link_mode._entry.88 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.87, ptr @.str.9, i32 572, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@display_forced_link_mode._entry_ptr.89 = internal global ptr @display_forced_link_mode._entry.88, section ".printk_index", align 4
@display_forced_link_mode._entry.90 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.87, ptr @.str.9, i32 574, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@display_forced_link_mode._entry_ptr.91 = internal global ptr @display_forced_link_mode._entry.90, section ".printk_index", align 4
@display_forced_link_mode._entry.92 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.87, ptr @.str.9, i32 575, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@display_forced_link_mode._entry_ptr.93 = internal global ptr @display_forced_link_mode._entry.92, section ".printk_index", align 4
@display_forced_link_mode._entry.94 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.87, ptr @.str.9, i32 578, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"100Mb/s, \00", [22 x i8] zeroinitializer }, align 32
@display_forced_link_mode._entry_ptr.96 = internal global ptr @display_forced_link_mode._entry.94, section ".printk_index", align 4
@display_forced_link_mode._entry.97 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.87, ptr @.str.9, i32 580, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"10Mb/s, \00", [23 x i8] zeroinitializer }, align 32
@display_forced_link_mode._entry_ptr.99 = internal global ptr @display_forced_link_mode._entry.97, section ".printk_index", align 4
@display_forced_link_mode._entry.100 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.87, ptr @.str.9, i32 582, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Full Duplex.\0A\00", [18 x i8] zeroinitializer }, align 32
@display_forced_link_mode._entry_ptr.102 = internal global ptr @display_forced_link_mode._entry.100, section ".printk_index", align 4
@display_forced_link_mode._entry.103 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.87, ptr @.str.9, i32 584, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Half Duplex.\0A\00", [18 x i8] zeroinitializer }, align 32
@display_forced_link_mode._entry_ptr.105 = internal global ptr @display_forced_link_mode._entry.103, section ".printk_index", align 4
@happy_meal_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.106, ptr @.str.107, ptr @.str.9, i32 1618, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\013happy meal: Eieee, rx config register gets greasy fries.\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"happy_meal_init\00", [16 x i8] zeroinitializer }, align 32
@happy_meal_init._entry_ptr = internal global ptr @happy_meal_init._entry, section ".printk_index", align 4
@happy_meal_init._entry.108 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.109, ptr @.str.107, ptr @.str.9, i32 1620, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013happy meal: Trying to set %08x, reread gives %08x\0A\00", [43 x i8] zeroinitializer }, align 32
@happy_meal_init._entry_ptr.110 = internal global ptr @happy_meal_init._entry.108, section ".printk_index", align 4
@happy_meal_stop._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.111, ptr @.str.112, ptr @.str.9, i32 903, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\013happy meal: Fry guys.\00", [40 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"happy_meal_stop\00", [16 x i8] zeroinitializer }, align 32
@happy_meal_stop._entry_ptr = internal global ptr @happy_meal_stop._entry, section ".printk_index", align 4
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.113 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@happy_meal_transceiver_check._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.115, ptr @.str.116, ptr @.str.9, i32 1121, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013happy meal: Transceiver and a coke please.\00", [51 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"happy_meal_transceiver_check\00", [35 x i8] zeroinitializer }, align 32
@happy_meal_transceiver_check._entry_ptr = internal global ptr @happy_meal_transceiver_check._entry, section ".printk_index", align 4
@happy_meal_tx_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.117, ptr @.str.118, ptr @.str.9, i32 861, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013happy meal: Transceiver BigMac ATTACK!\00", [55 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"happy_meal_tx_reset\00", [44 x i8] zeroinitializer }, align 32
@happy_meal_tx_reset._entry_ptr = internal global ptr @happy_meal_tx_reset._entry, section ".printk_index", align 4
@happy_meal_rx_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.119, ptr @.str.120, ptr @.str.9, i32 881, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013happy meal: Receiver BigMac ATTACK!\00", [58 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"happy_meal_rx_reset\00", [44 x i8] zeroinitializer }, align 32
@happy_meal_rx_reset._entry_ptr = internal global ptr @happy_meal_rx_reset._entry, section ".printk_index", align 4
@happy_meal_begin_auto_negotiation._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.121, ptr @.str.122, ptr @.str.9, i32 1347, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\013%s: Happy Meal would not start auto negotiation BMCR=0x%04x\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"happy_meal_begin_auto_negotiation\00", [62 x i8] zeroinitializer }, align 32
@happy_meal_begin_auto_negotiation._entry_ptr = internal global ptr @happy_meal_begin_auto_negotiation._entry, section ".printk_index", align 4
@happy_meal_begin_auto_negotiation._entry.123 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.124, ptr @.str.122, ptr @.str.9, i32 1349, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\015%s: Performing force link detection.\0A\00", [56 x i8] zeroinitializer }, align 32
@happy_meal_begin_auto_negotiation._entry_ptr.125 = internal global ptr @happy_meal_begin_auto_negotiation._entry.123, section ".printk_index", align 4
@happy_meal_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.126, ptr @.str.127, ptr @.str.9, i32 2178, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013happy_meal(SBUS): Can't order irq %d to go.\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"happy_meal_open\00", [16 x i8] zeroinitializer }, align 32
@happy_meal_open._entry_ptr = internal global ptr @happy_meal_open._entry, section ".printk_index", align 4
@happy_meal_is_not_so_happy._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.128, ptr @.str.129, ptr @.str.9, i32 1758, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013%s: Error interrupt for happy meal, status = %08x\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"happy_meal_is_not_so_happy\00", [37 x i8] zeroinitializer }, align 32
@happy_meal_is_not_so_happy._entry_ptr = internal global ptr @happy_meal_is_not_so_happy._entry, section ".printk_index", align 4
@happy_meal_is_not_so_happy._entry.130 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.131, ptr @.str.129, ptr @.str.9, i32 1763, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\017%s: Happy Meal receive FIFO overflow.\0A\00", [55 x i8] zeroinitializer }, align 32
@happy_meal_is_not_so_happy._entry_ptr.132 = internal global ptr @happy_meal_is_not_so_happy._entry.130, section ".printk_index", align 4
@happy_meal_is_not_so_happy._entry.133 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.134, ptr @.str.129, ptr @.str.9, i32 1768, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013%s: Happy Meal BigMAC SQE test failed.\0A\00", [54 x i8] zeroinitializer }, align 32
@happy_meal_is_not_so_happy._entry_ptr.135 = internal global ptr @happy_meal_is_not_so_happy._entry.133, section ".printk_index", align 4
@happy_meal_is_not_so_happy._entry.136 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.137, ptr @.str.129, ptr @.str.9, i32 1775, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013%s: Happy Meal transmitter FIFO underrun, DMA error.\0A\00", [40 x i8] zeroinitializer }, align 32
@happy_meal_is_not_so_happy._entry_ptr.138 = internal global ptr @happy_meal_is_not_so_happy._entry.136, section ".printk_index", align 4
@happy_meal_is_not_so_happy._entry.139 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.140, ptr @.str.129, ptr @.str.9, i32 1783, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013%s: Happy Meal MAX Packet size error.\0A\00", [55 x i8] zeroinitializer }, align 32
@happy_meal_is_not_so_happy._entry_ptr.141 = internal global ptr @happy_meal_is_not_so_happy._entry.139, section ".printk_index", align 4
@happy_meal_is_not_so_happy._entry.142 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.143, ptr @.str.129, ptr @.str.9, i32 1795, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\016%s: Happy Meal out of receive descriptors, packet dropped.\0A\00", [34 x i8] zeroinitializer }, align 32
@happy_meal_is_not_so_happy._entry_ptr.144 = internal global ptr @happy_meal_is_not_so_happy._entry.142, section ".printk_index", align 4
@happy_meal_is_not_so_happy._entry.145 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.146, ptr @.str.129, ptr @.str.9, i32 1800, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013%s: Happy Meal rx DMA errors [ \00", [62 x i8] zeroinitializer }, align 32
@happy_meal_is_not_so_happy._entry_ptr.147 = internal global ptr @happy_meal_is_not_so_happy._entry.145, section ".printk_index", align 4
@happy_meal_is_not_so_happy._entry.148 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.149, ptr @.str.129, ptr @.str.9, i32 1802, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"GenericError \00", [18 x i8] zeroinitializer }, align 32
@happy_meal_is_not_so_happy._entry_ptr.150 = internal global ptr @happy_meal_is_not_so_happy._entry.148, section ".printk_index", align 4
@happy_meal_is_not_so_happy._entry.151 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.152, ptr @.str.129, ptr @.str.9, i32 1804, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ParityError \00", [19 x i8] zeroinitializer }, align 32
@happy_meal_is_not_so_happy._entry_ptr.153 = internal global ptr @happy_meal_is_not_so_happy._entry.151, section ".printk_index", align 4
@happy_meal_is_not_so_happy._entry.154 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.155, ptr @.str.129, ptr @.str.9, i32 1806, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"RxTagBotch \00", [20 x i8] zeroinitializer }, align 32
@happy_meal_is_not_so_happy._entry_ptr.156 = internal global ptr @happy_meal_is_not_so_happy._entry.154, section ".printk_index", align 4
@happy_meal_is_not_so_happy._entry.157 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.158, ptr @.str.129, ptr @.str.9, i32 1807, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"]\0A\00", [29 x i8] zeroinitializer }, align 32
@happy_meal_is_not_so_happy._entry_ptr.159 = internal global ptr @happy_meal_is_not_so_happy._entry.157, section ".printk_index", align 4
@happy_meal_is_not_so_happy._entry.160 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.161, ptr @.str.129, ptr @.str.9, i32 1816, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013%s: EOP not set in happy meal transmit descriptor!\0A\00", [42 x i8] zeroinitializer }, align 32
@happy_meal_is_not_so_happy._entry_ptr.162 = internal global ptr @happy_meal_is_not_so_happy._entry.160, section ".printk_index", align 4
@happy_meal_is_not_so_happy._entry.163 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.164, ptr @.str.129, ptr @.str.9, i32 1822, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013%s: Happy Meal MIF interrupt.\0A\00", [63 x i8] zeroinitializer }, align 32
@happy_meal_is_not_so_happy._entry_ptr.165 = internal global ptr @happy_meal_is_not_so_happy._entry.163, section ".printk_index", align 4
@happy_meal_is_not_so_happy._entry.166 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.167, ptr @.str.129, ptr @.str.9, i32 1828, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013%s: Happy Meal tx DMA errors [ \00", [62 x i8] zeroinitializer }, align 32
@happy_meal_is_not_so_happy._entry_ptr.168 = internal global ptr @happy_meal_is_not_so_happy._entry.166, section ".printk_index", align 4
@happy_meal_is_not_so_happy._entry.169 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.149, ptr @.str.129, ptr @.str.9, i32 1830, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@happy_meal_is_not_so_happy._entry_ptr.170 = internal global ptr @happy_meal_is_not_so_happy._entry.169, section ".printk_index", align 4
@happy_meal_is_not_so_happy._entry.171 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.172, ptr @.str.129, ptr @.str.9, i32 1832, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"LateError \00", [21 x i8] zeroinitializer }, align 32
@happy_meal_is_not_so_happy._entry_ptr.173 = internal global ptr @happy_meal_is_not_so_happy._entry.171, section ".printk_index", align 4
@happy_meal_is_not_so_happy._entry.174 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.152, ptr @.str.129, ptr @.str.9, i32 1834, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@happy_meal_is_not_so_happy._entry_ptr.175 = internal global ptr @happy_meal_is_not_so_happy._entry.174, section ".printk_index", align 4
@happy_meal_is_not_so_happy._entry.176 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.177, ptr @.str.129, ptr @.str.9, i32 1836, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"TagBotch \00", [22 x i8] zeroinitializer }, align 32
@happy_meal_is_not_so_happy._entry_ptr.178 = internal global ptr @happy_meal_is_not_so_happy._entry.176, section ".printk_index", align 4
@happy_meal_is_not_so_happy._entry.179 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.158, ptr @.str.129, ptr @.str.9, i32 1837, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@happy_meal_is_not_so_happy._entry_ptr.180 = internal global ptr @happy_meal_is_not_so_happy._entry.179, section ".printk_index", align 4
@happy_meal_is_not_so_happy._entry.181 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.182, ptr @.str.129, ptr @.str.9, i32 1847, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\013%s: Happy Meal register access SBUS slave (%s) error.\0A\00", [39 x i8] zeroinitializer }, align 32
@happy_meal_is_not_so_happy._entry_ptr.183 = internal global ptr @happy_meal_is_not_so_happy._entry.181, section ".printk_index", align 4
@.str.184 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"parity\00", [25 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"generic\00", [24 x i8] zeroinitializer }, align 32
@happy_meal_is_not_so_happy._entry.186 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.187, ptr @.str.129, ptr @.str.9, i32 1852, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\015%s: Resetting...\0A\00", [44 x i8] zeroinitializer }, align 32
@happy_meal_is_not_so_happy._entry_ptr.188 = internal global ptr @happy_meal_is_not_so_happy._entry.186, section ".printk_index", align 4
@happy_meal_mif_interrupt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.189, ptr @.str.190, ptr @.str.9, i32 1864, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\016%s: Link status change.\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"happy_meal_mif_interrupt\00", [39 x i8] zeroinitializer }, align 32
@happy_meal_mif_interrupt._entry_ptr = internal global ptr @happy_meal_mif_interrupt._entry, section ".printk_index", align 4
@happy_meal_mif_interrupt._entry.191 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.192, ptr @.str.190, ptr @.str.9, i32 1870, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016%s: Switching to 100Mbps at full duplex.\00", [53 x i8] zeroinitializer }, align 32
@happy_meal_mif_interrupt._entry_ptr.193 = internal global ptr @happy_meal_mif_interrupt._entry.191, section ".printk_index", align 4
@happy_meal_mif_interrupt._entry.194 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.195, ptr @.str.190, ptr @.str.9, i32 1873, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.195 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016%s: Switching to 100MBps at half duplex.\00", [53 x i8] zeroinitializer }, align 32
@happy_meal_mif_interrupt._entry_ptr.196 = internal global ptr @happy_meal_mif_interrupt._entry.194, section ".printk_index", align 4
@happy_meal_mif_interrupt._entry.197 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.198, ptr @.str.190, ptr @.str.9, i32 1876, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.198 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016%s: Switching to 10MBps at full duplex.\00", [54 x i8] zeroinitializer }, align 32
@happy_meal_mif_interrupt._entry_ptr.199 = internal global ptr @happy_meal_mif_interrupt._entry.197, section ".printk_index", align 4
@happy_meal_mif_interrupt._entry.200 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.201, ptr @.str.190, ptr @.str.9, i32 1879, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.201 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\016%s: Using 10Mbps at half duplex.\00", [61 x i8] zeroinitializer }, align 32
@happy_meal_mif_interrupt._entry_ptr.202 = internal global ptr @happy_meal_mif_interrupt._entry.200, section ".printk_index", align 4
@happy_meal_rx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.203, ptr @.str.204, ptr @.str.9, i32 2069, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.203 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\016%s: Memory squeeze, deferring packet.\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.204 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"happy_meal_rx\00", [18 x i8] zeroinitializer }, align 32
@happy_meal_rx._entry_ptr = internal global ptr @happy_meal_rx._entry, section ".printk_index", align 4
@happy_meal_start_xmit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.205, ptr @.str.206, ptr @.str.9, i32 2284, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.205 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013%s: BUG! Tx Ring full when queue awake!\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.206 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"happy_meal_start_xmit\00", [42 x i8] zeroinitializer }, align 32
@happy_meal_start_xmit._entry_ptr = internal global ptr @happy_meal_start_xmit._entry, section ".printk_index", align 4
@happy_meal_tx_timeout._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.207, ptr @.str.208, ptr @.str.9, i32 2228, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.207 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013%s: transmit timed out, resetting\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.208 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"happy_meal_tx_timeout\00", [42 x i8] zeroinitializer }, align 32
@happy_meal_tx_timeout._entry_ptr = internal global ptr @happy_meal_tx_timeout._entry, section ".printk_index", align 4
@happy_meal_tx_timeout._entry.209 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.210, ptr @.str.208, ptr @.str.9, i32 2233, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.210 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013%s: Happy Status %08x TX[%08x:%08x]\0A\00", [57 x i8] zeroinitializer }, align 32
@happy_meal_tx_timeout._entry_ptr.211 = internal global ptr @happy_meal_tx_timeout._entry.209, section ".printk_index", align 4
@.str.212 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"2.02\00", [27 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.213 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.214 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.215 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.216 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.217 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.218 = internal global [4 x i64] [i64 2, i64 32, i64 10, i64 100]
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 71, i32 1 }
@___asan_gen_.228 = private unnamed_addr constant [8 x i8] c"macaddr\00", align 1
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 76, i32 12 }
@___asan_gen_.231 = private unnamed_addr constant [15 x i8] c"hme_pci_driver\00", align 1
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 3224, i32 26 }
@___asan_gen_.234 = private unnamed_addr constant [13 x i8] c"qfe_pci_list\00", align 1
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 87, i32 24 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 3225, i32 11 }
@___asan_gen_.240 = private unnamed_addr constant [18 x i8] c"happymeal_pci_ids\00", align 1
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 3217, i32 35 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 2983, i32 21 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 2985, i32 21 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 2994, i32 59 }
@___asan_gen_.252 = private unnamed_addr constant [20 x i8] c"hme_version_printed\00", align 1
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 2526, i32 12 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 3012, i32 3 }
@___asan_gen_.267 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 68, i32 13 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 3019, i32 2 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 3030, i32 3 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 3034, i32 3 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 3040, i32 3 }
@___asan_gen_.294 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 3117, i32 2 }
@___asan_gen_.300 = private unnamed_addr constant [15 x i8] c"hme_netdev_ops\00", align 1
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 2645, i32 36 }
@___asan_gen_.303 = private unnamed_addr constant [16 x i8] c"hme_ethtool_ops\00", align 1
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 2519, i32 33 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 3147, i32 3 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 3158, i32 27 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 3160, i32 23 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 3162, i32 3 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 3165, i32 4 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 3167, i32 4 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 3172, i32 3 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 3175, i32 3 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 3178, i32 2 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 682, i32 4 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 742, i32 5 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 798, i32 6 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 804, i32 7 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 827, i32 3 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 452, i32 3 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 485, i32 3 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 548, i32 2 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 550, i32 3 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 552, i32 3 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 553, i32 2 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 557, i32 4 }
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 559, i32 4 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 562, i32 4 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 564, i32 4 }
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 570, i32 2 }
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 572, i32 3 }
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 574, i32 3 }
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 575, i32 2 }
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 578, i32 3 }
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 580, i32 3 }
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 582, i32 3 }
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 584, i32 3 }
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 1618, i32 3 }
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 1619, i32 3 }
@___asan_gen_.521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 903, i32 3 }
@___asan_gen_.526 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 326, i32 6 }
@___asan_gen_.536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 1121, i32 5 }
@___asan_gen_.545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 861, i32 3 }
@___asan_gen_.554 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 881, i32 3 }
@___asan_gen_.563 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 1346, i32 4 }
@___asan_gen_.569 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 1348, i32 4 }
@___asan_gen_.578 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 2177, i32 4 }
@___asan_gen_.587 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 1757, i32 3 }
@___asan_gen_.593 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 1763, i32 3 }
@___asan_gen_.599 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 1768, i32 3 }
@___asan_gen_.605 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 1774, i32 3 }
@___asan_gen_.611 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 1783, i32 3 }
@___asan_gen_.617 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 1793, i32 3 }
@___asan_gen_.623 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 1800, i32 3 }
@___asan_gen_.629 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 1802, i32 4 }
@___asan_gen_.635 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 1804, i32 4 }
@___asan_gen_.641 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 1806, i32 4 }
@___asan_gen_.647 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 1807, i32 3 }
@___asan_gen_.653 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 1815, i32 3 }
@___asan_gen_.659 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 1822, i32 3 }
@___asan_gen_.665 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 1828, i32 3 }
@___asan_gen_.668 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 1830, i32 4 }
@___asan_gen_.674 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 1832, i32 4 }
@___asan_gen_.677 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 1834, i32 4 }
@___asan_gen_.683 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 1836, i32 4 }
@___asan_gen_.686 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 1837, i32 3 }
@___asan_gen_.698 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 1845, i32 3 }
@___asan_gen_.704 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 1852, i32 3 }
@___asan_gen_.713 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 1864, i32 2 }
@___asan_gen_.719 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 1870, i32 3 }
@___asan_gen_.725 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 1873, i32 3 }
@___asan_gen_.731 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 1876, i32 3 }
@___asan_gen_.737 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 1879, i32 3 }
@___asan_gen_.746 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 2069, i32 3 }
@___asan_gen_.755 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 2283, i32 3 }
@___asan_gen_.764 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 2228, i32 2 }
@___asan_gen_.765 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.770 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 2230, i32 2 }
@___asan_gen_.771 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.772 = private constant [37 x i8] c"../drivers/net/ethernet/sun/sunhme.c\00", align 1
@___asan_gen_.773 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.772, i32 2490, i32 25 }
@llvm.compiler.used = appending global [270 x ptr] [ptr @__UNIQUE_ID_author342, ptr @__UNIQUE_ID_description343, ptr @__UNIQUE_ID_file344, ptr @__UNIQUE_ID_license345, ptr @__UNIQUE_ID_macaddr347, ptr @__UNIQUE_ID_macaddrtype346, ptr @__UNIQUE_ID_version341, ptr @__exitcall_happy_meal_exit, ptr @__initcall__kmod_sunhme__348_3380_happy_meal_probe6, ptr @__modver_attr, ptr @__param_macaddr, ptr @display_forced_link_mode._entry, ptr @display_forced_link_mode._entry.100, ptr @display_forced_link_mode._entry.103, ptr @display_forced_link_mode._entry.88, ptr @display_forced_link_mode._entry.90, ptr @display_forced_link_mode._entry.92, ptr @display_forced_link_mode._entry.94, ptr @display_forced_link_mode._entry.97, ptr @display_forced_link_mode._entry_ptr, ptr @display_forced_link_mode._entry_ptr.102, ptr @display_forced_link_mode._entry_ptr.105, ptr @display_forced_link_mode._entry_ptr.89, ptr @display_forced_link_mode._entry_ptr.91, ptr @display_forced_link_mode._entry_ptr.93, ptr @display_forced_link_mode._entry_ptr.96, ptr @display_forced_link_mode._entry_ptr.99, ptr @display_link_mode._entry, ptr @display_link_mode._entry.65, ptr @display_link_mode._entry.68, ptr @display_link_mode._entry.71, ptr @display_link_mode._entry.74, ptr @display_link_mode._entry.77, ptr @display_link_mode._entry.80, ptr @display_link_mode._entry.83, ptr @display_link_mode._entry_ptr, ptr @display_link_mode._entry_ptr.67, ptr @display_link_mode._entry_ptr.70, ptr @display_link_mode._entry_ptr.73, ptr @display_link_mode._entry_ptr.76, ptr @display_link_mode._entry_ptr.79, ptr @display_link_mode._entry_ptr.82, ptr @display_link_mode._entry_ptr.85, ptr @happy_meal_begin_auto_negotiation._entry, ptr @happy_meal_begin_auto_negotiation._entry.123, ptr @happy_meal_begin_auto_negotiation._entry_ptr, ptr @happy_meal_begin_auto_negotiation._entry_ptr.125, ptr @happy_meal_exit, ptr @happy_meal_init._entry, ptr @happy_meal_init._entry.108, ptr @happy_meal_init._entry_ptr, ptr @happy_meal_init._entry_ptr.110, ptr @happy_meal_is_not_so_happy._entry, ptr @happy_meal_is_not_so_happy._entry.130, ptr @happy_meal_is_not_so_happy._entry.133, ptr @happy_meal_is_not_so_happy._entry.136, ptr @happy_meal_is_not_so_happy._entry.139, ptr @happy_meal_is_not_so_happy._entry.142, ptr @happy_meal_is_not_so_happy._entry.145, ptr @happy_meal_is_not_so_happy._entry.148, ptr @happy_meal_is_not_so_happy._entry.151, ptr @happy_meal_is_not_so_happy._entry.154, ptr @happy_meal_is_not_so_happy._entry.157, ptr @happy_meal_is_not_so_happy._entry.160, ptr @happy_meal_is_not_so_happy._entry.163, ptr @happy_meal_is_not_so_happy._entry.166, ptr @happy_meal_is_not_so_happy._entry.169, ptr @happy_meal_is_not_so_happy._entry.171, ptr @happy_meal_is_not_so_happy._entry.174, ptr @happy_meal_is_not_so_happy._entry.176, ptr @happy_meal_is_not_so_happy._entry.179, ptr @happy_meal_is_not_so_happy._entry.181, ptr @happy_meal_is_not_so_happy._entry.186, ptr @happy_meal_is_not_so_happy._entry_ptr, ptr @happy_meal_is_not_so_happy._entry_ptr.132, ptr @happy_meal_is_not_so_happy._entry_ptr.135, ptr @happy_meal_is_not_so_happy._entry_ptr.138, ptr @happy_meal_is_not_so_happy._entry_ptr.141, ptr @happy_meal_is_not_so_happy._entry_ptr.144, ptr @happy_meal_is_not_so_happy._entry_ptr.147, ptr @happy_meal_is_not_so_happy._entry_ptr.150, ptr @happy_meal_is_not_so_happy._entry_ptr.153, ptr @happy_meal_is_not_so_happy._entry_ptr.156, ptr @happy_meal_is_not_so_happy._entry_ptr.159, ptr @happy_meal_is_not_so_happy._entry_ptr.162, ptr @happy_meal_is_not_so_happy._entry_ptr.165, ptr @happy_meal_is_not_so_happy._entry_ptr.168, ptr @happy_meal_is_not_so_happy._entry_ptr.170, ptr @happy_meal_is_not_so_happy._entry_ptr.173, ptr @happy_meal_is_not_so_happy._entry_ptr.175, ptr @happy_meal_is_not_so_happy._entry_ptr.178, ptr @happy_meal_is_not_so_happy._entry_ptr.180, ptr @happy_meal_is_not_so_happy._entry_ptr.183, ptr @happy_meal_is_not_so_happy._entry_ptr.188, ptr @happy_meal_mif_interrupt._entry, ptr @happy_meal_mif_interrupt._entry.191, ptr @happy_meal_mif_interrupt._entry.194, ptr @happy_meal_mif_interrupt._entry.197, ptr @happy_meal_mif_interrupt._entry.200, ptr @happy_meal_mif_interrupt._entry_ptr, ptr @happy_meal_mif_interrupt._entry_ptr.193, ptr @happy_meal_mif_interrupt._entry_ptr.196, ptr @happy_meal_mif_interrupt._entry_ptr.199, ptr @happy_meal_mif_interrupt._entry_ptr.202, ptr @happy_meal_open._entry, ptr @happy_meal_open._entry_ptr, ptr @happy_meal_pci_probe._entry, ptr @happy_meal_pci_probe._entry.11, ptr @happy_meal_pci_probe._entry.14, ptr @happy_meal_pci_probe._entry.17, ptr @happy_meal_pci_probe._entry.22, ptr @happy_meal_pci_probe._entry.27, ptr @happy_meal_pci_probe._entry.30, ptr @happy_meal_pci_probe._entry.33, ptr @happy_meal_pci_probe._entry.36, ptr @happy_meal_pci_probe._entry.39, ptr @happy_meal_pci_probe._entry.42, ptr @happy_meal_pci_probe._entry_ptr, ptr @happy_meal_pci_probe._entry_ptr.13, ptr @happy_meal_pci_probe._entry_ptr.16, ptr @happy_meal_pci_probe._entry_ptr.19, ptr @happy_meal_pci_probe._entry_ptr.24, ptr @happy_meal_pci_probe._entry_ptr.29, ptr @happy_meal_pci_probe._entry_ptr.32, ptr @happy_meal_pci_probe._entry_ptr.35, ptr @happy_meal_pci_probe._entry_ptr.38, ptr @happy_meal_pci_probe._entry_ptr.41, ptr @happy_meal_pci_probe._entry_ptr.44, ptr @happy_meal_rx._entry, ptr @happy_meal_rx._entry_ptr, ptr @happy_meal_rx_reset._entry, ptr @happy_meal_rx_reset._entry_ptr, ptr @happy_meal_start_xmit._entry, ptr @happy_meal_start_xmit._entry_ptr, ptr @happy_meal_stop._entry, ptr @happy_meal_stop._entry_ptr, ptr @happy_meal_tcvr_read._entry, ptr @happy_meal_tcvr_read._entry_ptr, ptr @happy_meal_tcvr_write._entry, ptr @happy_meal_tcvr_write._entry_ptr, ptr @happy_meal_timer._entry, ptr @happy_meal_timer._entry.47, ptr @happy_meal_timer._entry.50, ptr @happy_meal_timer._entry.53, ptr @happy_meal_timer._entry.56, ptr @happy_meal_timer._entry_ptr, ptr @happy_meal_timer._entry_ptr.49, ptr @happy_meal_timer._entry_ptr.52, ptr @happy_meal_timer._entry_ptr.55, ptr @happy_meal_timer._entry_ptr.58, ptr @happy_meal_transceiver_check._entry, ptr @happy_meal_transceiver_check._entry_ptr, ptr @happy_meal_tx_reset._entry, ptr @happy_meal_tx_reset._entry_ptr, ptr @happy_meal_tx_timeout._entry, ptr @happy_meal_tx_timeout._entry.209, ptr @happy_meal_tx_timeout._entry_ptr, ptr @happy_meal_tx_timeout._entry_ptr.211, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @macaddr, ptr @hme_pci_driver, ptr @qfe_pci_list, ptr @.str.3, ptr @happymeal_pci_ids, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @hme_version_printed, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @version, ptr @happy_meal_pci_probe.__key, ptr @.str.10, ptr @.str.12, ptr @.str.15, ptr @.str.18, ptr @happy_meal_pci_probe.__key.20, ptr @.str.21, ptr @hme_netdev_ops, ptr @hme_ethtool_ops, ptr @.str.23, ptr @.str.25, ptr @.str.26, ptr @.str.28, ptr @.str.31, ptr @.str.34, ptr @.str.37, ptr @.str.40, ptr @.str.43, ptr @.str.45, ptr @.str.46, ptr @.str.48, ptr @.str.51, ptr @.str.54, ptr @.str.57, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.66, ptr @.str.69, ptr @.str.72, ptr @.str.75, ptr @.str.78, ptr @.str.81, ptr @.str.84, ptr @.str.86, ptr @.str.87, ptr @.str.95, ptr @.str.98, ptr @.str.101, ptr @.str.104, ptr @.str.106, ptr @.str.107, ptr @.str.109, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.124, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.131, ptr @.str.134, ptr @.str.137, ptr @.str.140, ptr @.str.143, ptr @.str.146, ptr @.str.149, ptr @.str.152, ptr @.str.155, ptr @.str.158, ptr @.str.161, ptr @.str.164, ptr @.str.167, ptr @.str.172, ptr @.str.177, ptr @.str.182, ptr @.str.184, ptr @.str.185, ptr @.str.187, ptr @.str.189, ptr @.str.190, ptr @.str.192, ptr @.str.195, ptr @.str.198, ptr @.str.201, ptr @.str.203, ptr @.str.204, ptr @.str.205, ptr @.str.206, ptr @.str.207, ptr @.str.208, ptr @.str.210, ptr @.str.212], section "llvm.metadata"
@0 = internal global [185 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @macaddr to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hme_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qfe_pci_list to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @happymeal_pci_ids to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hme_version_printed to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @happy_meal_pci_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @version to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @happy_meal_pci_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @happy_meal_pci_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @happy_meal_pci_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @happy_meal_pci_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @happy_meal_pci_probe.__key.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hme_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hme_ethtool_ops to i32), i32 284, i32 352, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @happy_meal_pci_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @happy_meal_pci_probe._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @happy_meal_pci_probe._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @happy_meal_pci_probe._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @happy_meal_pci_probe._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @happy_meal_pci_probe._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @happy_meal_pci_probe._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @happy_meal_timer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @happy_meal_timer._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @happy_meal_timer._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @happy_meal_timer._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @happy_meal_timer._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @happy_meal_tcvr_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @happy_meal_tcvr_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @display_link_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @display_link_mode._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @display_link_mode._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @display_link_mode._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @display_link_mode._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @display_link_mode._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @display_link_mode._entry.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @display_link_mode._entry.83 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @display_forced_link_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @display_forced_link_mode._entry.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @display_forced_link_mode._entry.90 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @display_forced_link_mode._entry.92 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @display_forced_link_mode._entry.94 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @display_forced_link_mode._entry.97 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @display_forced_link_mode._entry.100 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @display_forced_link_mode._entry.103 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @happy_meal_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @happy_meal_init._entry.108 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @happy_meal_stop._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @happy_meal_transceiver_check._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @happy_meal_tx_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @happy_meal_rx_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @happy_meal_begin_auto_negotiation._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @happy_meal_begin_auto_negotiation._entry.123 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @happy_meal_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @happy_meal_is_not_so_happy._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @happy_meal_is_not_so_happy._entry.130 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @happy_meal_is_not_so_happy._entry.133 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @happy_meal_is_not_so_happy._entry.136 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @happy_meal_is_not_so_happy._entry.139 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @happy_meal_is_not_so_happy._entry.142 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @happy_meal_is_not_so_happy._entry.145 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @happy_meal_is_not_so_happy._entry.148 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @happy_meal_is_not_so_happy._entry.151 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @happy_meal_is_not_so_happy._entry.154 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @happy_meal_is_not_so_happy._entry.157 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @happy_meal_is_not_so_happy._entry.160 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @happy_meal_is_not_so_happy._entry.163 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @happy_meal_is_not_so_happy._entry.166 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @happy_meal_is_not_so_happy._entry.169 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @happy_meal_is_not_so_happy._entry.171 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @happy_meal_is_not_so_happy._entry.174 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @happy_meal_is_not_so_happy._entry.176 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @happy_meal_is_not_so_happy._entry.179 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @happy_meal_is_not_so_happy._entry.181 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @happy_meal_is_not_so_happy._entry.186 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @happy_meal_mif_interrupt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @happy_meal_mif_interrupt._entry.191 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @happy_meal_mif_interrupt._entry.194 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @happy_meal_mif_interrupt._entry.197 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @happy_meal_mif_interrupt._entry.200 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @happy_meal_rx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.203 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @happy_meal_start_xmit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.205 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.206 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @happy_meal_tx_timeout._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.208 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @happy_meal_tx_timeout._entry.209 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.210 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.212 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @happy_meal_exit() #1 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @pci_unregister_driver(ptr noundef nonnull @hme_pci_driver) #13
  %.pr.i = load ptr, ptr @qfe_pci_list, align 4
  %tobool.not3.i = icmp eq ptr %.pr.i, null
  br i1 %tobool.not3.i, label %entry.happy_meal_pci_exit.exit_crit_edge, label %entry.while.body.i_crit_edge

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

entry.happy_meal_pci_exit.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %happy_meal_pci_exit.exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  %0 = phi ptr [ %2, %while.body.i.while.body.i_crit_edge ], [ %.pr.i, %entry.while.body.i_crit_edge ]
  %next1.i = getelementptr inbounds %struct.quattro, ptr %0, i32 0, i32 2
  %1 = ptrtoint ptr %next1.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %next1.i, align 4
  tail call void @kfree(ptr noundef nonnull %0) #13
  store ptr %2, ptr @qfe_pci_list, align 4
  %tobool.not.i = icmp eq ptr %2, null
  br i1 %tobool.not.i, label %while.body.i.happy_meal_pci_exit.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i

while.body.i.happy_meal_pci_exit.exit_crit_edge:  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %happy_meal_pci_exit.exit

happy_meal_pci_exit.exit:                         ; preds = %while.body.i.happy_meal_pci_exit.exit_crit_edge, %entry.happy_meal_pci_exit.exit_crit_edge
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @happy_meal_probe() #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @__pci_register_driver(ptr noundef nonnull @hme_pci_driver, ptr noundef null, ptr noundef nonnull @.str.1) #13
  ret i32 %call.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #0

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #0

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @happy_meal_pci_probe(ptr noundef %pdev, ptr nocapture noundef readnone %ent) #3 align 64 {
entry:
  %size.i = alloca i32, align 4
  %prom_name = alloca [64 x i8], align 1
  %addr = alloca [6 x i8], align 1
  %addr100 = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %prom_name) #13
  %0 = call ptr @memset(ptr %prom_name, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %addr) #13
  %1 = getelementptr inbounds [6 x i8], ptr %addr, i32 0, i32 1
  %2 = getelementptr inbounds [6 x i8], ptr %addr, i32 0, i32 2
  %3 = getelementptr inbounds [6 x i8], ptr %addr, i32 0, i32 3
  %4 = getelementptr inbounds [6 x i8], ptr %addr, i32 0, i32 4
  %5 = getelementptr inbounds [6 x i8], ptr %addr, i32 0, i32 5
  %bus.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 1
  %6 = call ptr @memset(ptr %addr, i32 255, i32 6)
  %7 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bus.i, align 8
  %self.i = getelementptr inbounds %struct.pci_bus, ptr %8, i32 0, i32 4
  %9 = ptrtoint ptr %self.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %self.i, align 4
  %cmp.i = icmp eq ptr %10, null
  br i1 %cmp.i, label %entry.if.else_crit_edge, label %lor.lhs.false.i

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

lor.lhs.false.i:                                  ; preds = %entry
  %vendor.i = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 7
  %11 = ptrtoint ptr %vendor.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %vendor.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 4113, i16 %12)
  %cmp1.not.i = icmp eq i16 %12, 4113
  br i1 %cmp1.not.i, label %lor.lhs.false3.i, label %lor.lhs.false.i.if.else_crit_edge

lor.lhs.false.i.if.else_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

lor.lhs.false3.i:                                 ; preds = %lor.lhs.false.i
  %device.i = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 8
  %13 = ptrtoint ptr %device.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %device.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 37, i16 %14)
  %cmp5.not.i = icmp eq i16 %14, 37
  br i1 %cmp5.not.i, label %if.end.i, label %lor.lhs.false3.i.if.else_crit_edge

lor.lhs.false3.i.if.else_crit_edge:               ; preds = %lor.lhs.false3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

if.end.i:                                         ; preds = %lor.lhs.false3.i
  %devices.i = getelementptr inbounds %struct.pci_bus, ptr %8, i32 0, i32 3
  %15 = ptrtoint ptr %devices.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %this_pdev.041.i = load ptr, ptr %devices.i, align 4
  %cmp10.not42.i = icmp eq ptr %this_pdev.041.i, %devices.i
  br i1 %cmp10.not42.i, label %if.end.i.if.else_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

if.end.i.if.else_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %this_pdev.044.i = phi ptr [ %this_pdev.0.i, %for.inc.i.for.body.i_crit_edge ], [ %this_pdev.041.i, %if.end.i.for.body.i_crit_edge ]
  %n_hmes.043.i = phi i32 [ %n_hmes.1.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end.i.for.body.i_crit_edge ]
  %vendor12.i = getelementptr inbounds %struct.pci_dev, ptr %this_pdev.044.i, i32 0, i32 7
  %16 = ptrtoint ptr %vendor12.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %vendor12.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 4238, i16 %17)
  %cmp14.i = icmp eq i16 %17, 4238
  br i1 %cmp14.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  %device16.i = getelementptr inbounds %struct.pci_dev, ptr %this_pdev.044.i, i32 0, i32 8
  %18 = ptrtoint ptr %device16.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %device16.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4097, i16 %19)
  %cmp18.i = icmp eq i16 %19, 4097
  %inc.i = zext i1 %cmp18.i to i32
  %spec.select.i = add i32 %n_hmes.043.i, %inc.i
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i, %for.body.i.for.inc.i_crit_edge
  %n_hmes.1.i = phi i32 [ %n_hmes.043.i, %for.body.i.for.inc.i_crit_edge ], [ %spec.select.i, %land.lhs.true.i ]
  %20 = ptrtoint ptr %this_pdev.044.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %this_pdev.0.i = load ptr, ptr %this_pdev.044.i, align 4
  %cmp10.not.i = icmp eq ptr %this_pdev.0.i, %devices.i
  br i1 %cmp10.not.i, label %is_quattro_p.exit, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

is_quattro_p.exit:                                ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %n_hmes.1.i)
  %cmp27.not.i.not = icmp eq i32 %n_hmes.1.i, 4
  br i1 %cmp27.not.i.not, label %if.then, label %is_quattro_p.exit.if.else_crit_edge

is_quattro_p.exit.if.else_crit_edge:              ; preds = %is_quattro_p.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

if.then:                                          ; preds = %is_quattro_p.exit
  call void @__sanitizer_cov_trace_pc() #15
  %21 = call ptr @memcpy(ptr %prom_name, ptr @.str.4, i32 9)
  br label %if.end

if.else:                                          ; preds = %is_quattro_p.exit.if.else_crit_edge, %if.end.i.if.else_crit_edge, %lor.lhs.false3.i.if.else_crit_edge, %lor.lhs.false.i.if.else_crit_edge, %entry.if.else_crit_edge
  %22 = call ptr @memcpy(ptr %prom_name, ptr @.str.5, i32 9)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %call4 = tail call i32 @pci_enable_device(ptr noundef %pdev) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end7:                                          ; preds = %if.end
  tail call void @pci_set_master(ptr noundef %pdev) #13
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(9) %prom_name, ptr noundef nonnull dereferenceable(9) @.str.4, i32 9) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool10.not = icmp eq i32 %bcmp, 0
  br i1 %tobool10.not, label %if.end7.if.then14_crit_edge, label %lor.lhs.false

if.end7.if.then14_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then14

lor.lhs.false:                                    ; preds = %if.end7
  %bcmp356 = call i32 @bcmp(ptr noundef nonnull dereferenceable(4) %prom_name, ptr noundef nonnull dereferenceable(4) @.str.6, i32 4) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp356)
  %tobool13.not = icmp eq i32 %bcmp356, 0
  br i1 %tobool13.not, label %lor.lhs.false.if.then14_crit_edge, label %lor.lhs.false.if.end25_crit_edge

lor.lhs.false.if.end25_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end25

lor.lhs.false.if.then14_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then14

if.then14:                                        ; preds = %lor.lhs.false.if.then14_crit_edge, %if.end7.if.then14_crit_edge
  %23 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %bus.i, align 8
  %self.i358 = getelementptr inbounds %struct.pci_bus, ptr %24, i32 0, i32 4
  %25 = ptrtoint ptr %self.i358 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %self.i358, align 4
  %tobool.not.i = icmp eq ptr %26, null
  br i1 %tobool.not.i, label %if.then14.cleanup_crit_edge, label %for.cond.preheader.i

if.then14.cleanup_crit_edge:                      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.cond.preheader.i:                             ; preds = %if.then14
  %qp.031.i = load ptr, ptr @qfe_pci_list, align 4
  %cmp.not32.i = icmp eq ptr %qp.031.i, null
  br i1 %cmp.not32.i, label %for.cond.preheader.i.for.end.i361_crit_edge, label %for.cond.preheader.i.for.body.i359_crit_edge

for.cond.preheader.i.for.body.i359_crit_edge:     ; preds = %for.cond.preheader.i
  br label %for.body.i359

for.cond.preheader.i.for.end.i361_crit_edge:      ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i361

for.body.i359:                                    ; preds = %for.inc.i360.for.body.i359_crit_edge, %for.cond.preheader.i.for.body.i359_crit_edge
  %qp.033.i = phi ptr [ %qp.0.i, %for.inc.i360.for.body.i359_crit_edge ], [ %qp.031.i, %for.cond.preheader.i.for.body.i359_crit_edge ]
  %quattro_dev.i = getelementptr inbounds %struct.quattro, ptr %qp.033.i, i32 0, i32 1
  %27 = ptrtoint ptr %quattro_dev.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %quattro_dev.i, align 4
  %cmp1.i = icmp eq ptr %28, %26
  br i1 %cmp1.i, label %for.body.i359.quattro_pci_find.exit_crit_edge, label %for.inc.i360

for.body.i359.quattro_pci_find.exit_crit_edge:    ; preds = %for.body.i359
  call void @__sanitizer_cov_trace_pc() #15
  br label %quattro_pci_find.exit

for.inc.i360:                                     ; preds = %for.body.i359
  %next.i = getelementptr inbounds %struct.quattro, ptr %qp.033.i, i32 0, i32 2
  %29 = ptrtoint ptr %next.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %qp.0.i = load ptr, ptr %next.i, align 4
  %cmp.not.i = icmp eq ptr %qp.0.i, null
  br i1 %cmp.not.i, label %for.inc.i360.for.end.i361_crit_edge, label %for.inc.i360.for.body.i359_crit_edge

for.inc.i360.for.body.i359_crit_edge:             ; preds = %for.inc.i360
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i359

for.inc.i360.for.end.i361_crit_edge:              ; preds = %for.inc.i360
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i361

for.end.i361:                                     ; preds = %for.inc.i360.for.end.i361_crit_edge, %for.cond.preheader.i.for.end.i361_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %30 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %30, i32 noundef 3264, i32 noundef 28) #17
  %cmp4.not.i = icmp eq ptr %call7.i.i, null
  br i1 %cmp4.not.i, label %for.end.i361.cleanup_crit_edge, label %for.body8.preheader.i

for.end.i361.cleanup_crit_edge:                   ; preds = %for.end.i361
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body8.preheader.i:                            ; preds = %for.end.i361
  call void @__sanitizer_cov_trace_pc() #15
  %31 = call ptr @memset(ptr %call7.i.i, i32 0, i32 16)
  %quattro_dev11.i = getelementptr inbounds %struct.quattro, ptr %call7.i.i, i32 0, i32 1
  %32 = ptrtoint ptr %quattro_dev11.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %26, ptr %quattro_dev11.i, align 8
  %33 = load ptr, ptr @qfe_pci_list, align 4
  %next12.i = getelementptr inbounds %struct.quattro, ptr %call7.i.i, i32 0, i32 2
  %34 = ptrtoint ptr %next12.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %33, ptr %next12.i, align 4
  store ptr %call7.i.i, ptr @qfe_pci_list, align 4
  %nranges.i = getelementptr inbounds %struct.quattro, ptr %call7.i.i, i32 0, i32 3
  %35 = ptrtoint ptr %nranges.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %nranges.i, align 8
  br label %quattro_pci_find.exit

quattro_pci_find.exit:                            ; preds = %for.body8.preheader.i, %for.body.i359.quattro_pci_find.exit_crit_edge
  %retval.2.i = phi ptr [ %call7.i.i, %for.body8.preheader.i ], [ %qp.033.i, %for.body.i359.quattro_pci_find.exit_crit_edge ]
  %36 = ptrtoint ptr %retval.2.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %retval.2.i, align 4
  %cmp19 = icmp eq ptr %37, null
  br i1 %cmp19, label %quattro_pci_find.exit.if.end25_crit_edge, label %for.inc

quattro_pci_find.exit.if.end25_crit_edge:         ; preds = %quattro_pci_find.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end25

for.inc:                                          ; preds = %quattro_pci_find.exit
  %arrayidx.1 = getelementptr [4 x ptr], ptr %retval.2.i, i32 0, i32 1
  %38 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx.1, align 4
  %cmp19.1 = icmp eq ptr %39, null
  br i1 %cmp19.1, label %for.inc.if.end25_crit_edge, label %for.inc.1

for.inc.if.end25_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end25

for.inc.1:                                        ; preds = %for.inc
  %arrayidx.2 = getelementptr [4 x ptr], ptr %retval.2.i, i32 0, i32 2
  %40 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx.2, align 4
  %cmp19.2 = icmp eq ptr %41, null
  br i1 %cmp19.2, label %for.inc.1.if.end25_crit_edge, label %for.inc.2

for.inc.1.if.end25_crit_edge:                     ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end25

for.inc.2:                                        ; preds = %for.inc.1
  %arrayidx.3 = getelementptr [4 x ptr], ptr %retval.2.i, i32 0, i32 3
  %42 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx.3, align 4
  %cmp19.3 = icmp eq ptr %43, null
  br i1 %cmp19.3, label %for.inc.2.if.end25_crit_edge, label %for.inc.2.cleanup_crit_edge

for.inc.2.cleanup_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.inc.2.if.end25_crit_edge:                     ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end25

if.end25:                                         ; preds = %for.inc.2.if.end25_crit_edge, %for.inc.1.if.end25_crit_edge, %for.inc.if.end25_crit_edge, %quattro_pci_find.exit.if.end25_crit_edge, %lor.lhs.false.if.end25_crit_edge
  %qfe_slot.1 = phi i32 [ -1, %lor.lhs.false.if.end25_crit_edge ], [ 0, %quattro_pci_find.exit.if.end25_crit_edge ], [ 1, %for.inc.if.end25_crit_edge ], [ 2, %for.inc.1.if.end25_crit_edge ], [ 3, %for.inc.2.if.end25_crit_edge ]
  %qp.0 = phi ptr [ null, %lor.lhs.false.if.end25_crit_edge ], [ %retval.2.i, %quattro_pci_find.exit.if.end25_crit_edge ], [ %retval.2.i, %for.inc.if.end25_crit_edge ], [ %retval.2.i, %for.inc.1.if.end25_crit_edge ], [ %retval.2.i, %for.inc.2.if.end25_crit_edge ]
  %call26 = tail call ptr @alloc_etherdev_mqs(i32 noundef 492, i32 noundef 1, i32 noundef 1) #13
  %tobool27.not = icmp eq ptr %call26, null
  br i1 %tobool27.not, label %if.end25.cleanup_crit_edge, label %if.end29

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end29:                                         ; preds = %if.end25
  %dev30 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %parent = getelementptr inbounds %struct.net_device, ptr %call26, i32 0, i32 133, i32 1
  %44 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %dev30, ptr %parent, align 8
  %45 = load i32, ptr @hme_version_printed, align 4
  %inc32 = add i32 %45, 1
  store i32 %inc32, ptr @hme_version_printed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp33 = icmp eq i32 %45, 0
  br i1 %cmp33, label %do.end, label %if.end29.if.end36_crit_edge

if.end29.if.end36_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end36

do.end:                                           ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #15
  %call35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @version) #18
  br label %if.end36

if.end36:                                         ; preds = %do.end, %if.end29.if.end36_crit_edge
  %add.ptr.i = getelementptr i8, ptr %call26, i32 2304
  %happy_dev = getelementptr i8, ptr %call26, i32 2312
  %46 = ptrtoint ptr %happy_dev to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %pdev, ptr %happy_dev, align 4
  %dma_dev = getelementptr i8, ptr %call26, i32 2316
  %47 = ptrtoint ptr %dma_dev to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %dev30, ptr %dma_dev, align 4
  %happy_lock = getelementptr i8, ptr %call26, i32 2320
  tail call void @__raw_spin_lock_init(ptr noundef %happy_lock, ptr noundef nonnull @.str.10, ptr noundef nonnull @happy_meal_pci_probe.__key, i16 noundef signext 3) #13
  %cmp43.not = icmp eq ptr %qp.0, null
  br i1 %cmp43.not, label %if.end36.if.end47_crit_edge, label %if.then44

if.end36.if.end47_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end47

if.then44:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #15
  %qfe_parent = getelementptr i8, ptr %call26, i32 2788
  %48 = ptrtoint ptr %qfe_parent to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %qp.0, ptr %qfe_parent, align 4
  %qfe_ent = getelementptr i8, ptr %call26, i32 2792
  %49 = ptrtoint ptr %qfe_ent to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %qfe_slot.1, ptr %qfe_ent, align 4
  %arrayidx46 = getelementptr [4 x ptr], ptr %qp.0, i32 0, i32 %qfe_slot.1
  %50 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %call26, ptr %arrayidx46, align 4
  br label %if.end47

if.end47:                                         ; preds = %if.then44, %if.end36.if.end47_crit_edge
  %resource = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 47
  %51 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %resource, align 8
  %flags = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 0, i32 3
  %53 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %flags, align 4
  %and = and i32 %54, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp51.not = icmp eq i32 %and, 0
  br i1 %cmp51.not, label %if.end58, label %do.end55

do.end55:                                         ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #15
  %call57 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #18
  br label %err_out_clear_quattro

if.end58:                                         ; preds = %if.end47
  %call59 = tail call i32 @pci_request_regions(ptr noundef %pdev, ptr noundef nonnull @.str.1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %if.end67, label %do.end64

do.end64:                                         ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #15
  %call66 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #18
  br label %err_out_clear_quattro

if.end67:                                         ; preds = %if.end58
  %call68 = tail call ptr @ioremap(i32 noundef %52, i32 noundef 32768) #13
  %cmp69 = icmp eq ptr %call68, null
  br i1 %cmp69, label %do.end73, label %for.body79.preheader

for.body79.preheader:                             ; preds = %if.end67
  %55 = load i32, ptr @macaddr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %cmp81.not = icmp eq i32 %55, 0
  br i1 %cmp81.not, label %for.cond77, label %for.body79.preheader.for.body91.preheader_crit_edge

for.body79.preheader.for.body91.preheader_crit_edge: ; preds = %for.body79.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body91.preheader

do.end73:                                         ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #15
  %call75 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18) #18
  br label %err_out_free_res

for.cond77:                                       ; preds = %for.body79.preheader
  %56 = load i32, ptr getelementptr inbounds ([6 x i32], ptr @macaddr, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %cmp81.not.1 = icmp eq i32 %56, 0
  br i1 %cmp81.not.1, label %for.cond77.1, label %for.cond77.for.body91.preheader_crit_edge

for.cond77.for.body91.preheader_crit_edge:        ; preds = %for.cond77
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body91.preheader

for.cond77.1:                                     ; preds = %for.cond77
  %57 = load i32, ptr getelementptr inbounds ([6 x i32], ptr @macaddr, i32 0, i32 2), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %cmp81.not.2 = icmp eq i32 %57, 0
  br i1 %cmp81.not.2, label %for.cond77.2, label %for.cond77.1.for.body91.preheader_crit_edge

for.cond77.1.for.body91.preheader_crit_edge:      ; preds = %for.cond77.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body91.preheader

for.cond77.2:                                     ; preds = %for.cond77.1
  %58 = load i32, ptr getelementptr inbounds ([6 x i32], ptr @macaddr, i32 0, i32 3), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %cmp81.not.3 = icmp eq i32 %58, 0
  br i1 %cmp81.not.3, label %for.cond77.3, label %for.cond77.2.for.body91.preheader_crit_edge

for.cond77.2.for.body91.preheader_crit_edge:      ; preds = %for.cond77.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body91.preheader

for.cond77.3:                                     ; preds = %for.cond77.2
  %59 = load i32, ptr getelementptr inbounds ([6 x i32], ptr @macaddr, i32 0, i32 4), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %cmp81.not.4 = icmp eq i32 %59, 0
  br i1 %cmp81.not.4, label %for.cond77.4, label %for.cond77.3.for.body91.preheader_crit_edge

for.cond77.3.for.body91.preheader_crit_edge:      ; preds = %for.cond77.3
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body91.preheader

for.cond77.4:                                     ; preds = %for.cond77.3
  %60 = load i32, ptr getelementptr inbounds ([6 x i32], ptr @macaddr, i32 0, i32 5), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %cmp81.not.5 = icmp eq i32 %60, 0
  br i1 %cmp81.not.5, label %for.cond77.5, label %for.cond77.4.for.body91.preheader_crit_edge

for.cond77.4.for.body91.preheader_crit_edge:      ; preds = %for.cond77.4
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body91.preheader

for.cond77.5:                                     ; preds = %for.cond77.4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %addr100) #13
  %61 = getelementptr inbounds [6 x i8], ptr %addr100, i32 0, i32 1
  %62 = getelementptr inbounds [6 x i8], ptr %addr100, i32 0, i32 2
  %63 = getelementptr inbounds [6 x i8], ptr %addr100, i32 0, i32 3
  %64 = getelementptr inbounds [6 x i8], ptr %addr100, i32 0, i32 4
  %65 = getelementptr inbounds [6 x i8], ptr %addr100, i32 0, i32 5
  %66 = call ptr @memset(ptr %addr100, i32 255, i32 6)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %size.i) #13
  %67 = ptrtoint ptr %size.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 -1, ptr %size.i, align 4, !annotation !380
  %call.i = call ptr @pci_map_rom(ptr noundef %pdev, ptr noundef nonnull %size.i) #13
  %tobool.not.i362 = icmp eq ptr %call.i, null
  br i1 %tobool.not.i362, label %for.cond77.5.if.end21.i_crit_edge, label %if.then.i

for.cond77.5.if.end21.i_crit_edge:                ; preds = %for.cond77.5
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end21.i

for.body91.preheader:                             ; preds = %for.cond77.4.for.body91.preheader_crit_edge, %for.cond77.3.for.body91.preheader_crit_edge, %for.cond77.2.for.body91.preheader_crit_edge, %for.cond77.1.for.body91.preheader_crit_edge, %for.cond77.for.body91.preheader_crit_edge, %for.body79.preheader.for.body91.preheader_crit_edge
  %68 = load i32, ptr @macaddr, align 4
  %conv = trunc i32 %68 to i8
  %69 = ptrtoint ptr %addr to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %conv, ptr %addr, align 1
  %70 = load i32, ptr getelementptr inbounds ([6 x i32], ptr @macaddr, i32 0, i32 1), align 4
  %conv.1 = trunc i32 %70 to i8
  %71 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %conv.1, ptr %1, align 1
  %72 = load i32, ptr getelementptr inbounds ([6 x i32], ptr @macaddr, i32 0, i32 2), align 4
  %conv.2 = trunc i32 %72 to i8
  %73 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 %conv.2, ptr %2, align 1
  %74 = load i32, ptr getelementptr inbounds ([6 x i32], ptr @macaddr, i32 0, i32 3), align 4
  %conv.3 = trunc i32 %74 to i8
  %75 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 %conv.3, ptr %3, align 1
  %76 = load i32, ptr getelementptr inbounds ([6 x i32], ptr @macaddr, i32 0, i32 4), align 4
  %conv.4 = trunc i32 %76 to i8
  %77 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %conv.4, ptr %4, align 1
  %78 = load i32, ptr getelementptr inbounds ([6 x i32], ptr @macaddr, i32 0, i32 5), align 4
  %conv.5 = trunc i32 %78 to i8
  %79 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %conv.5, ptr %5, align 1
  call void @dev_addr_mod(ptr noundef nonnull %call26, i32 noundef 0, ptr noundef nonnull %addr, i32 noundef 6) #13
  %80 = load i32, ptr getelementptr inbounds ([6 x i32], ptr @macaddr, i32 0, i32 5), align 4
  %inc98 = add i32 %80, 1
  store i32 %inc98, ptr getelementptr inbounds ([6 x i32], ptr @macaddr, i32 0, i32 5), align 4
  br label %if.end103

if.then.i:                                        ; preds = %for.cond77.5
  %81 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %bus.i, align 8
  %self.i.i = getelementptr inbounds %struct.pci_bus, ptr %82, i32 0, i32 4
  %83 = ptrtoint ptr %self.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %self.i.i, align 4
  %cmp.i.i = icmp eq ptr %84, null
  br i1 %cmp.i.i, label %if.then.i.if.end.i364_crit_edge, label %lor.lhs.false.i.i

if.then.i.if.end.i364_crit_edge:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i364

lor.lhs.false.i.i:                                ; preds = %if.then.i
  %vendor.i.i = getelementptr inbounds %struct.pci_dev, ptr %84, i32 0, i32 7
  %85 = ptrtoint ptr %vendor.i.i to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %vendor.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 4113, i16 %86)
  %cmp1.not.i.i = icmp eq i16 %86, 4113
  br i1 %cmp1.not.i.i, label %lor.lhs.false3.i.i, label %lor.lhs.false.i.i.if.end.i364_crit_edge

lor.lhs.false.i.i.if.end.i364_crit_edge:          ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i364

lor.lhs.false3.i.i:                               ; preds = %lor.lhs.false.i.i
  %device.i.i = getelementptr inbounds %struct.pci_dev, ptr %84, i32 0, i32 8
  %87 = ptrtoint ptr %device.i.i to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %device.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 37, i16 %88)
  %cmp5.not.i.i = icmp eq i16 %88, 37
  br i1 %cmp5.not.i.i, label %if.end.i.i, label %lor.lhs.false3.i.i.if.end.i364_crit_edge

lor.lhs.false3.i.i.if.end.i364_crit_edge:         ; preds = %lor.lhs.false3.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i364

if.end.i.i:                                       ; preds = %lor.lhs.false3.i.i
  %devices.i.i = getelementptr inbounds %struct.pci_bus, ptr %82, i32 0, i32 3
  %89 = ptrtoint ptr %devices.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %this_pdev.041.i.i = load ptr, ptr %devices.i.i, align 4
  %cmp10.not42.i.i = icmp eq ptr %this_pdev.041.i.i, %devices.i.i
  br i1 %cmp10.not42.i.i, label %if.end.i.i.if.end.i364_crit_edge, label %if.end.i.i.for.body.i.i_crit_edge

if.end.i.i.for.body.i.i_crit_edge:                ; preds = %if.end.i.i
  br label %for.body.i.i

if.end.i.i.if.end.i364_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i364

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end.i.i.for.body.i.i_crit_edge
  %this_pdev.044.i.i = phi ptr [ %this_pdev.0.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %this_pdev.041.i.i, %if.end.i.i.for.body.i.i_crit_edge ]
  %n_hmes.043.i.i = phi i32 [ %n_hmes.1.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %if.end.i.i.for.body.i.i_crit_edge ]
  %vendor12.i.i = getelementptr inbounds %struct.pci_dev, ptr %this_pdev.044.i.i, i32 0, i32 7
  %90 = ptrtoint ptr %vendor12.i.i to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %vendor12.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 4238, i16 %91)
  %cmp14.i.i = icmp eq i16 %91, 4238
  br i1 %cmp14.i.i, label %land.lhs.true.i.i, label %for.body.i.i.for.inc.i.i_crit_edge

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %device16.i.i = getelementptr inbounds %struct.pci_dev, ptr %this_pdev.044.i.i, i32 0, i32 8
  %92 = ptrtoint ptr %device16.i.i to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %device16.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4097, i16 %93)
  %cmp18.i.i = icmp eq i16 %93, 4097
  %inc.i.i = zext i1 %cmp18.i.i to i32
  %spec.select.i.i = add i32 %n_hmes.043.i.i, %inc.i.i
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %land.lhs.true.i.i, %for.body.i.i.for.inc.i.i_crit_edge
  %n_hmes.1.i.i = phi i32 [ %n_hmes.043.i.i, %for.body.i.i.for.inc.i.i_crit_edge ], [ %spec.select.i.i, %land.lhs.true.i.i ]
  %94 = ptrtoint ptr %this_pdev.044.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %this_pdev.0.i.i = load ptr, ptr %this_pdev.044.i.i, align 4
  %cmp10.not.i.i = icmp eq ptr %this_pdev.0.i.i, %devices.i.i
  br i1 %cmp10.not.i.i, label %is_quattro_p.exit.i, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i.i

is_quattro_p.exit.i:                              ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %n_hmes.1.i.i)
  %cmp27.not.i.not.i = icmp eq i32 %n_hmes.1.i.i, 4
  br i1 %cmp27.not.i.not.i, label %if.then3.i, label %is_quattro_p.exit.i.if.end.i364_crit_edge

is_quattro_p.exit.i.if.end.i364_crit_edge:        ; preds = %is_quattro_p.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i364

if.then3.i:                                       ; preds = %is_quattro_p.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %devfn.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 6
  %95 = ptrtoint ptr %devfn.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %devfn.i, align 4
  %shr.i = lshr i32 %96, 3
  %and.i = and i32 %shr.i, 31
  br label %if.end.i364

if.end.i364:                                      ; preds = %if.then3.i, %is_quattro_p.exit.i.if.end.i364_crit_edge, %if.end.i.i.if.end.i364_crit_edge, %lor.lhs.false3.i.i.if.end.i364_crit_edge, %lor.lhs.false.i.i.if.end.i364_crit_edge, %if.then.i.if.end.i364_crit_edge
  %index.0.i = phi i32 [ %and.i, %if.then3.i ], [ 0, %is_quattro_p.exit.i.if.end.i364_crit_edge ], [ 0, %if.end.i.i.if.end.i364_crit_edge ], [ 0, %lor.lhs.false3.i.i.if.end.i364_crit_edge ], [ 0, %lor.lhs.false.i.i.if.end.i364_crit_edge ], [ 0, %if.then.i.if.end.i364_crit_edge ]
  %97 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %call.i) #13, !srcloc !381
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !382
  call void @__sanitizer_cov_trace_const_cmp1(i8 85, i8 %97)
  %cmp.i363 = icmp eq i8 %97, 85
  br i1 %cmp.i363, label %land.lhs.true.i366, label %if.end.i364.if.end21.sink.split.i_crit_edge

if.end.i364.if.end21.sink.split.i_crit_edge:      ; preds = %if.end.i364
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end21.sink.split.i

land.lhs.true.i366:                               ; preds = %if.end.i364
  %add.ptr.i365 = getelementptr i8, ptr %call.i, i32 1
  %98 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i365) #13, !srcloc !381
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !383
  call void @__sanitizer_cov_trace_const_cmp1(i8 -86, i8 %98)
  %cmp13.i = icmp eq i8 %98, -86
  br i1 %cmp13.i, label %land.lhs.true.i366.for.body.i41.i_crit_edge, label %land.lhs.true.i366.if.end21.sink.split.i_crit_edge

land.lhs.true.i366.if.end21.sink.split.i_crit_edge: ; preds = %land.lhs.true.i366
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end21.sink.split.i

land.lhs.true.i366.for.body.i41.i_crit_edge:      ; preds = %land.lhs.true.i366
  br label %for.body.i41.i

for.body.i41.i:                                   ; preds = %for.inc69.i.i.for.body.i41.i_crit_edge, %land.lhs.true.i366.for.body.i41.i_crit_edge
  %index.addr.08.i.i = phi i32 [ %index.addr.1.ph.i.i, %for.inc69.i.i.for.body.i41.i_crit_edge ], [ %index.0.i, %land.lhs.true.i366.for.body.i41.i_crit_edge ]
  %this_offset.07.i.i = phi i32 [ %inc70.i.i, %for.inc69.i.i.for.body.i41.i_crit_edge ], [ 32, %land.lhs.true.i366.for.body.i41.i_crit_edge ]
  %add.ptr.i.i = getelementptr i8, ptr %call.i, i32 %this_offset.07.i.i
  %99 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i) #13, !srcloc !381
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !384
  call void @__sanitizer_cov_trace_const_cmp1(i8 -112, i8 %99)
  %cmp3.not.i.i = icmp eq i8 %99, -112
  br i1 %cmp3.not.i.i, label %lor.lhs.false.i42.i, label %for.body.i41.i.for.inc69.i.i_crit_edge

for.body.i41.i.for.inc69.i.i_crit_edge:           ; preds = %for.body.i41.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc69.i.i

lor.lhs.false.i42.i:                              ; preds = %for.body.i41.i
  %add.ptr7.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 1
  %100 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr7.i.i) #13, !srcloc !381
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !385
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %100)
  %cmp12.not.i.i = icmp eq i8 %100, 0
  br i1 %cmp12.not.i.i, label %lor.lhs.false14.i.i, label %lor.lhs.false.i42.i.for.inc69.i.i_crit_edge

lor.lhs.false.i42.i.for.inc69.i.i_crit_edge:      ; preds = %lor.lhs.false.i42.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc69.i.i

lor.lhs.false14.i.i:                              ; preds = %lor.lhs.false.i42.i
  %add.ptr17.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 2
  %101 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr17.i.i) #13, !srcloc !381
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !386
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %101)
  %cmp22.not.i.i = icmp eq i8 %101, 9
  br i1 %cmp22.not.i.i, label %lor.lhs.false24.i.i, label %lor.lhs.false14.i.i.for.inc69.i.i_crit_edge

lor.lhs.false14.i.i.for.inc69.i.i_crit_edge:      ; preds = %lor.lhs.false14.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc69.i.i

lor.lhs.false24.i.i:                              ; preds = %lor.lhs.false14.i.i
  %add.ptr27.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 3
  %102 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr27.i.i) #13, !srcloc !381
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !387
  call void @__sanitizer_cov_trace_const_cmp1(i8 78, i8 %102)
  %cmp32.not.i.i = icmp eq i8 %102, 78
  br i1 %cmp32.not.i.i, label %lor.lhs.false34.i.i, label %lor.lhs.false24.i.i.for.inc69.i.i_crit_edge

lor.lhs.false24.i.i.for.inc69.i.i_crit_edge:      ; preds = %lor.lhs.false24.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc69.i.i

lor.lhs.false34.i.i:                              ; preds = %lor.lhs.false24.i.i
  %add.ptr37.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 4
  %103 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr37.i.i) #13, !srcloc !381
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !388
  call void @__sanitizer_cov_trace_const_cmp1(i8 65, i8 %103)
  %cmp42.not.i.i = icmp eq i8 %103, 65
  br i1 %cmp42.not.i.i, label %lor.lhs.false44.i.i, label %lor.lhs.false34.i.i.for.inc69.i.i_crit_edge

lor.lhs.false34.i.i.for.inc69.i.i_crit_edge:      ; preds = %lor.lhs.false34.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc69.i.i

lor.lhs.false44.i.i:                              ; preds = %lor.lhs.false34.i.i
  %add.ptr47.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 5
  %104 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr47.i.i) #13, !srcloc !381
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !389
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %104)
  %cmp52.not.i.i = icmp eq i8 %104, 6
  br i1 %cmp52.not.i.i, label %if.end.i43.i, label %lor.lhs.false44.i.i.for.inc69.i.i_crit_edge

lor.lhs.false44.i.i.for.inc69.i.i_crit_edge:      ; preds = %lor.lhs.false44.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc69.i.i

if.end.i43.i:                                     ; preds = %lor.lhs.false44.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %index.addr.08.i.i)
  %cmp55.i.i = icmp eq i32 %index.addr.08.i.i, 0
  br i1 %cmp55.i.i, label %find_eth_addr_in_vpd.exit.thread.i, label %if.end68.i.i

find_eth_addr_in_vpd.exit.thread.i:               ; preds = %if.end.i43.i
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr54.le.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 6
  %105 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr54.le.i.i) #13, !srcloc !381
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !390
  %106 = ptrtoint ptr %addr100 to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 %105, ptr %addr100, align 1
  %add.ptr64.1.i.i = getelementptr i8, ptr %add.ptr54.le.i.i, i32 1
  %107 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr64.1.i.i) #13, !srcloc !381
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !390
  %108 = ptrtoint ptr %61 to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 %107, ptr %61, align 1
  %add.ptr64.2.i.i = getelementptr i8, ptr %add.ptr54.le.i.i, i32 2
  %109 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr64.2.i.i) #13, !srcloc !381
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !390
  %110 = ptrtoint ptr %62 to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 %109, ptr %62, align 1
  %add.ptr64.3.i.i = getelementptr i8, ptr %add.ptr54.le.i.i, i32 3
  %111 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr64.3.i.i) #13, !srcloc !381
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !390
  %112 = ptrtoint ptr %63 to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 %111, ptr %63, align 1
  %add.ptr64.4.i.i = getelementptr i8, ptr %add.ptr54.le.i.i, i32 4
  %113 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr64.4.i.i) #13, !srcloc !381
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !390
  %114 = ptrtoint ptr %64 to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 %113, ptr %64, align 1
  %add.ptr64.5.i.i = getelementptr i8, ptr %add.ptr54.le.i.i, i32 5
  %115 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr64.5.i.i) #13, !srcloc !381
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !390
  %116 = ptrtoint ptr %65 to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 %115, ptr %65, align 1
  call void @pci_unmap_rom(ptr noundef %pdev, ptr noundef nonnull %call.i) #13
  br label %get_hme_mac_nonsparc.exit

if.end68.i.i:                                     ; preds = %if.end.i43.i
  call void @__sanitizer_cov_trace_pc() #15
  %add.i.i = add nsw i32 %this_offset.07.i.i, 6
  %dec.i.i = add i32 %index.addr.08.i.i, -1
  br label %for.inc69.i.i

for.inc69.i.i:                                    ; preds = %if.end68.i.i, %lor.lhs.false44.i.i.for.inc69.i.i_crit_edge, %lor.lhs.false34.i.i.for.inc69.i.i_crit_edge, %lor.lhs.false24.i.i.for.inc69.i.i_crit_edge, %lor.lhs.false14.i.i.for.inc69.i.i_crit_edge, %lor.lhs.false.i42.i.for.inc69.i.i_crit_edge, %for.body.i41.i.for.inc69.i.i_crit_edge
  %this_offset.1.ph.i.i = phi i32 [ %this_offset.07.i.i, %for.body.i41.i.for.inc69.i.i_crit_edge ], [ %this_offset.07.i.i, %lor.lhs.false.i42.i.for.inc69.i.i_crit_edge ], [ %this_offset.07.i.i, %lor.lhs.false14.i.i.for.inc69.i.i_crit_edge ], [ %this_offset.07.i.i, %lor.lhs.false24.i.i.for.inc69.i.i_crit_edge ], [ %this_offset.07.i.i, %lor.lhs.false34.i.i.for.inc69.i.i_crit_edge ], [ %this_offset.07.i.i, %lor.lhs.false44.i.i.for.inc69.i.i_crit_edge ], [ %add.i.i, %if.end68.i.i ]
  %index.addr.1.ph.i.i = phi i32 [ %index.addr.08.i.i, %for.body.i41.i.for.inc69.i.i_crit_edge ], [ %index.addr.08.i.i, %lor.lhs.false.i42.i.for.inc69.i.i_crit_edge ], [ %index.addr.08.i.i, %lor.lhs.false14.i.i.for.inc69.i.i_crit_edge ], [ %index.addr.08.i.i, %lor.lhs.false24.i.i.for.inc69.i.i_crit_edge ], [ %index.addr.08.i.i, %lor.lhs.false34.i.i.for.inc69.i.i_crit_edge ], [ %index.addr.08.i.i, %lor.lhs.false44.i.i.for.inc69.i.i_crit_edge ], [ %dec.i.i, %if.end68.i.i ]
  %inc70.i.i = add nsw i32 %this_offset.1.ph.i.i, 1
  %cmp.i44.i = icmp slt i32 %this_offset.1.ph.i.i, 65535
  br i1 %cmp.i44.i, label %for.inc69.i.i.for.body.i41.i_crit_edge, label %for.inc69.i.i.if.end21.sink.split.i_crit_edge

for.inc69.i.i.if.end21.sink.split.i_crit_edge:    ; preds = %for.inc69.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end21.sink.split.i

for.inc69.i.i.for.body.i41.i_crit_edge:           ; preds = %for.inc69.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i41.i

if.end21.sink.split.i:                            ; preds = %for.inc69.i.i.if.end21.sink.split.i_crit_edge, %land.lhs.true.i366.if.end21.sink.split.i_crit_edge, %if.end.i364.if.end21.sink.split.i_crit_edge
  call void @pci_unmap_rom(ptr noundef %pdev, ptr noundef nonnull %call.i) #13
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.end21.sink.split.i, %for.cond77.5.if.end21.i_crit_edge
  %117 = ptrtoint ptr %addr100 to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 8, ptr %addr100, align 1
  %118 = ptrtoint ptr %61 to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 0, ptr %61, align 1
  %119 = ptrtoint ptr %62 to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 32, ptr %62, align 1
  call void @get_random_bytes(ptr noundef %63, i32 noundef 3) #13
  br label %get_hme_mac_nonsparc.exit

get_hme_mac_nonsparc.exit:                        ; preds = %if.end21.i, %find_eth_addr_in_vpd.exit.thread.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %size.i) #13
  call void @dev_addr_mod(ptr noundef %call26, i32 noundef 0, ptr noundef nonnull %addr100, i32 noundef 6) #13
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr100) #13
  br label %if.end103

if.end103:                                        ; preds = %get_hme_mac_nonsparc.exit, %for.body91.preheader
  %120 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr %call68, ptr %add.ptr.i, align 4
  %add.ptr104 = getelementptr i8, ptr %call68, i32 8192
  %etxregs = getelementptr i8, ptr %call26, i32 2636
  %121 = ptrtoint ptr %etxregs to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr %add.ptr104, ptr %etxregs, align 4
  %add.ptr105 = getelementptr i8, ptr %call68, i32 16384
  %erxregs = getelementptr i8, ptr %call26, i32 2640
  %122 = ptrtoint ptr %erxregs to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr %add.ptr105, ptr %erxregs, align 4
  %add.ptr106 = getelementptr i8, ptr %call68, i32 24576
  %bigmacregs = getelementptr i8, ptr %call26, i32 2644
  %123 = ptrtoint ptr %bigmacregs to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr %add.ptr106, ptr %bigmacregs, align 4
  %add.ptr107 = getelementptr i8, ptr %call68, i32 28672
  %tcvregs = getelementptr i8, ptr %call26, i32 2648
  %124 = ptrtoint ptr %tcvregs to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr %add.ptr107, ptr %tcvregs, align 4
  %hm_revision = getelementptr i8, ptr %call26, i32 2676
  %125 = ptrtoint ptr %hm_revision to i32
  call void @__asan_store2_noabort(i32 %125)
  store i16 32, ptr %hm_revision, align 4
  %happy_flags = getelementptr i8, ptr %call26, i32 2656
  %or137 = select i1 %cmp43.not, i32 2178, i32 6274
  %126 = ptrtoint ptr %happy_flags to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 %or137, ptr %happy_flags, align 4
  %hblock_dvma = getelementptr i8, ptr %call26, i32 2652
  %call.i367 = call ptr @dma_alloc_attrs(ptr noundef %dev30, i32 noundef 4096, ptr noundef %hblock_dvma, i32 noundef 3264, i32 noundef 0) #13
  %happy_block = getelementptr i8, ptr %call26, i32 2308
  %127 = ptrtoint ptr %happy_block to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr %call.i367, ptr %happy_block, align 4
  %tobool141.not = icmp eq ptr %call.i367, null
  br i1 %tobool141.not, label %if.end103.err_out_iounmap_crit_edge, label %if.end143

if.end103.err_out_iounmap_crit_edge:              ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_out_iounmap

if.end143:                                        ; preds = %if.end103
  %linkcheck = getelementptr i8, ptr %call26, i32 2712
  %128 = ptrtoint ptr %linkcheck to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 0, ptr %linkcheck, align 4
  %timer_state = getelementptr i8, ptr %call26, i32 2776
  %129 = ptrtoint ptr %timer_state to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 3, ptr %timer_state, align 4
  %timer_ticks = getelementptr i8, ptr %call26, i32 2780
  %130 = ptrtoint ptr %timer_ticks to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 0, ptr %timer_ticks, align 4
  %happy_timer = getelementptr i8, ptr %call26, i32 2728
  call void @init_timer_key(ptr noundef %happy_timer, ptr noundef nonnull @happy_meal_timer, i32 noundef 0, ptr noundef nonnull @.str.21, ptr noundef nonnull @happy_meal_pci_probe.__key.20) #13
  %irq = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 46
  %131 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %irq, align 4
  %irq147 = getelementptr i8, ptr %call26, i32 2660
  %133 = ptrtoint ptr %irq147 to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 %132, ptr %irq147, align 4
  %dev148 = getelementptr i8, ptr %call26, i32 2784
  %134 = ptrtoint ptr %dev148 to i32
  call void @__asan_store4_noabort(i32 %134)
  store ptr %call26, ptr %dev148, align 4
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %call26, i32 0, i32 16
  %135 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %135)
  store ptr @hme_netdev_ops, ptr %netdev_ops, align 8
  %watchdog_timeo = getelementptr inbounds %struct.net_device, ptr %call26, i32 0, i32 115
  %136 = ptrtoint ptr %watchdog_timeo to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 500, ptr %watchdog_timeo, align 4
  %ethtool_ops = getelementptr inbounds %struct.net_device, ptr %call26, i32 0, i32 44
  %137 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_store4_noabort(i32 %137)
  store ptr @hme_ethtool_ops, ptr %ethtool_ops, align 16
  %hw_features = getelementptr inbounds %struct.net_device, ptr %call26, i32 0, i32 24
  %138 = ptrtoint ptr %hw_features to i32
  call void @__asan_store8_noabort(i32 %138)
  store i64 9, ptr %hw_features, align 8
  %features = getelementptr inbounds %struct.net_device, ptr %call26, i32 0, i32 23
  %139 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %139)
  %140 = load i64, ptr %features, align 16
  %or151 = or i64 %140, 1099511627785
  store i64 %or151, ptr %features, align 16
  call void @_raw_spin_lock_irq(ptr noundef %happy_lock) #13
  call fastcc void @happy_meal_set_initial_advertisement(ptr noundef %add.ptr.i)
  call void @_raw_spin_unlock_irq(ptr noundef %happy_lock) #13
  %141 = ptrtoint ptr %dev148 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %dev148, align 4
  %call155 = call i32 @register_netdev(ptr noundef %142) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call155)
  %tobool156.not = icmp eq i32 %call155, 0
  br i1 %tobool156.not, label %if.end163, label %do.end160

do.end160:                                        ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #15
  %call162 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23) #18
  %143 = ptrtoint ptr %dma_dev to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %dma_dev, align 4
  %145 = ptrtoint ptr %happy_block to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %happy_block, align 4
  %147 = ptrtoint ptr %hblock_dvma to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %hblock_dvma, align 4
  call void @dma_free_attrs(ptr noundef %144, i32 noundef 4096, ptr noundef %146, i32 noundef %148, i32 noundef 0) #13
  br label %err_out_iounmap

if.end163:                                        ; preds = %if.end143
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %149 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %149)
  store ptr %add.ptr.i, ptr %driver_data.i.i, align 4
  %150 = zext i32 %qfe_slot.1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %150, ptr @__sancov_gen_cov_switch_values)
  switch i32 %qfe_slot.1, label %if.end163.do.end217_crit_edge [
    i32 0, label %if.then165
    i32 -1, label %do.end225
  ]

if.end163.do.end217_crit_edge:                    ; preds = %if.end163
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end217

if.then165:                                       ; preds = %if.end163
  %quattro_dev = getelementptr inbounds %struct.quattro, ptr %qp.0, i32 0, i32 1
  %151 = ptrtoint ptr %quattro_dev to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %quattro_dev, align 4
  %153 = ptrtoint ptr %prom_name to i32
  call void @__asan_store1_noabort(i32 %153)
  store i8 0, ptr %prom_name, align 1
  %call168 = call i32 @strncmp(ptr noundef nonnull %call26, ptr noundef nonnull dereferenceable(4) @.str.25, i32 noundef 3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call168)
  %tobool169.not = icmp eq i32 %call168, 0
  br i1 %tobool169.not, label %if.then170, label %if.then165.do.end181_crit_edge

if.then165.do.end181_crit_edge:                   ; preds = %if.then165
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end181

if.then170:                                       ; preds = %if.then165
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr174 = getelementptr i8, ptr %call26, i32 3
  %call175 = call i32 @simple_strtoul(ptr noundef %add.ptr174, ptr noundef null, i32 noundef 10) #13
  %add = add i32 %call175, 3
  %call177 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %prom_name, ptr noundef nonnull @.str.26, i32 noundef %add)
  br label %do.end181

do.end181:                                        ; preds = %if.then170, %if.then165.do.end181_crit_edge
  %call186 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef nonnull %call26, ptr noundef nonnull %prom_name) #18
  %vendor = getelementptr inbounds %struct.pci_dev, ptr %152, i32 0, i32 7
  %154 = ptrtoint ptr %vendor to i32
  call void @__asan_load2_noabort(i32 %154)
  %155 = load i16, ptr %vendor, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 4113, i16 %155)
  %cmp188 = icmp eq i16 %155, 4113
  br i1 %cmp188, label %land.lhs.true190, label %do.end181.do.end203_crit_edge

do.end181.do.end203_crit_edge:                    ; preds = %do.end181
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end203

land.lhs.true190:                                 ; preds = %do.end181
  %device = getelementptr inbounds %struct.pci_dev, ptr %152, i32 0, i32 8
  %156 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %156)
  %157 = load i16, ptr %device, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 37, i16 %157)
  %cmp192 = icmp eq i16 %157, 37
  br i1 %cmp192, label %do.end197, label %land.lhs.true190.do.end203_crit_edge

land.lhs.true190.do.end203_crit_edge:             ; preds = %land.lhs.true190
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end203

do.end197:                                        ; preds = %land.lhs.true190
  call void @__sanitizer_cov_trace_pc() #15
  %call199 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31) #18
  br label %do.end217

do.end203:                                        ; preds = %land.lhs.true190.do.end203_crit_edge, %do.end181.do.end203_crit_edge
  %conv206 = zext i16 %155 to i32
  %device207 = getelementptr inbounds %struct.pci_dev, ptr %152, i32 0, i32 8
  %158 = ptrtoint ptr %device207 to i32
  call void @__asan_load2_noabort(i32 %158)
  %159 = load i16, ptr %device207, align 2
  %conv208 = zext i16 %159 to i32
  %call209 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, i32 noundef %conv206, i32 noundef %conv208) #18
  br label %do.end217

do.end217:                                        ; preds = %do.end203, %do.end197, %if.end163.do.end217_crit_edge
  %call221 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef nonnull %call26, i32 noundef %qfe_slot.1) #18
  br label %do.end233

do.end225:                                        ; preds = %if.end163
  call void @__sanitizer_cov_trace_pc() #15
  %call229 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef nonnull %call26) #18
  br label %do.end233

do.end233:                                        ; preds = %do.end225, %do.end217
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %call26, i32 0, i32 86
  %160 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %dev_addr, align 64
  %call235 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef %161) #18
  br label %cleanup

err_out_iounmap:                                  ; preds = %do.end160, %if.end103.err_out_iounmap_crit_edge
  %err.0 = phi i32 [ %call155, %do.end160 ], [ -19, %if.end103.err_out_iounmap_crit_edge ]
  %162 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %add.ptr.i, align 4
  call void @iounmap(ptr noundef %163) #13
  br label %err_out_free_res

err_out_free_res:                                 ; preds = %err_out_iounmap, %do.end73
  %err.1 = phi i32 [ -19, %do.end73 ], [ %err.0, %err_out_iounmap ]
  call void @pci_release_regions(ptr noundef %pdev) #13
  br label %err_out_clear_quattro

err_out_clear_quattro:                            ; preds = %err_out_free_res, %do.end64, %do.end55
  %err.2 = phi i32 [ -19, %do.end55 ], [ -19, %do.end64 ], [ %err.1, %err_out_free_res ]
  br i1 %cmp43.not, label %err_out_clear_quattro.if.end245_crit_edge, label %if.then242

err_out_clear_quattro.if.end245_crit_edge:        ; preds = %err_out_clear_quattro
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end245

if.then242:                                       ; preds = %err_out_clear_quattro
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx244 = getelementptr [4 x ptr], ptr %qp.0, i32 0, i32 %qfe_slot.1
  %164 = ptrtoint ptr %arrayidx244 to i32
  call void @__asan_store4_noabort(i32 %164)
  store ptr null, ptr %arrayidx244, align 4
  br label %if.end245

if.end245:                                        ; preds = %if.then242, %err_out_clear_quattro.if.end245_crit_edge
  call void @free_netdev(ptr noundef nonnull %call26) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end245, %do.end233, %if.end25.cleanup_crit_edge, %for.inc.2.cleanup_crit_edge, %for.end.i361.cleanup_crit_edge, %if.then14.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end233 ], [ -19, %if.end.cleanup_crit_edge ], [ %err.2, %if.end245 ], [ -12, %if.end25.cleanup_crit_edge ], [ -19, %if.then14.cleanup_crit_edge ], [ -19, %for.end.i361.cleanup_crit_edge ], [ -19, %for.inc.2.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr) #13
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %prom_name) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @happy_meal_pci_remove(ptr nocapture noundef readonly %pdev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev = getelementptr inbounds %struct.happy_meal, ptr %1, i32 0, i32 41
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void @unregister_netdev(ptr noundef %3) #13
  %dma_dev = getelementptr inbounds %struct.happy_meal, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %dma_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dma_dev, align 4
  %happy_block = getelementptr inbounds %struct.happy_meal, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %happy_block to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %happy_block, align 4
  %hblock_dvma = getelementptr inbounds %struct.happy_meal, ptr %1, i32 0, i32 15
  %8 = ptrtoint ptr %hblock_dvma to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %hblock_dvma, align 4
  tail call void @dma_free_attrs(ptr noundef %5, i32 noundef 4096, ptr noundef %7, i32 noundef %9, i32 noundef 0) #13
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  tail call void @iounmap(ptr noundef %11) #13
  %happy_dev = getelementptr inbounds %struct.happy_meal, ptr %1, i32 0, i32 2
  %12 = ptrtoint ptr %happy_dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %happy_dev, align 4
  tail call void @pci_release_regions(ptr noundef %13) #13
  tail call void @free_netdev(ptr noundef %3) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_etherdev_mqs(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_request_regions(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @happy_meal_timer(ptr noundef %t) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -424
  %tcvregs = getelementptr i8, ptr %t, i32 -80
  %0 = ptrtoint ptr %tcvregs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tcvregs, align 4
  %happy_lock = getelementptr i8, ptr %t, i32 -408
  tail call void @_raw_spin_lock_irq(ptr noundef %happy_lock) #13
  %timer_ticks = getelementptr i8, ptr %t, i32 52
  %2 = ptrtoint ptr %timer_ticks to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %timer_ticks, align 4
  %inc = add i32 %3, 1
  store i32 %inc, ptr %timer_ticks, align 4
  %timer_state = getelementptr i8, ptr %t, i32 48
  %4 = ptrtoint ptr %timer_state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %timer_state, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.213)
  switch i32 %5, label %do.end152 [
    i32 0, label %sw.bb
    i32 1, label %sw.bb31
    i32 2, label %sw.bb58
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %inc)
  %cmp = icmp ugt i32 %inc, 9
  br i1 %cmp, label %sw.bb.do_force_mode_crit_edge, label %if.else

sw.bb.do_force_mode_crit_edge:                    ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  br label %do_force_mode

do_force_mode:                                    ; preds = %if.then22.do_force_mode_crit_edge, %sw.bb.do_force_mode_crit_edge
  %call = tail call fastcc i32 @happy_meal_tcvr_read(ptr noundef %add.ptr, ptr noundef %1, i32 noundef 0)
  %conv = trunc i32 %call to i16
  %sw_bmcr = getelementptr i8, ptr %t, i32 -50
  %7 = ptrtoint ptr %sw_bmcr to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %conv, ptr %sw_bmcr, align 2
  %dev = getelementptr i8, ptr %t, i32 56
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, ptr noundef %9) #18
  %10 = ptrtoint ptr %sw_bmcr to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 8192, ptr %sw_bmcr, align 2
  tail call fastcc void @happy_meal_tcvr_write(ptr noundef %add.ptr, ptr noundef %1, i32 noundef 0, i16 noundef zeroext 8192)
  %11 = ptrtoint ptr %tcvregs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %tcvregs, align 4
  %call.i = tail call fastcc i32 @happy_meal_tcvr_read(ptr noundef %add.ptr, ptr noundef %12, i32 noundef 2) #13
  %call1.i = tail call fastcc i32 @happy_meal_tcvr_read(ptr noundef %add.ptr, ptr noundef %12, i32 noundef 3) #13
  %conv3.i = and i32 %call.i, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 384, i32 %conv3.i)
  %cmp.i = icmp ne i32 %conv3.i, 384
  %13 = and i32 %call1.i, 64512
  call void @__sanitizer_cov_trace_const_cmp4(i32 29696, i32 %13)
  %cmp7.i = icmp ne i32 %13, 29696
  %or.cond.i = select i1 %cmp.i, i1 true, i1 %cmp7.i
  br i1 %or.cond.i, label %if.then7, label %do_force_mode.if.end_crit_edge

do_force_mode.if.end_crit_edge:                   ; preds = %do_force_mode
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then7:                                         ; preds = %do_force_mode
  call void @__sanitizer_cov_trace_pc() #15
  %call8 = tail call fastcc i32 @happy_meal_tcvr_read(ptr noundef %add.ptr, ptr noundef %1, i32 noundef 23)
  %sw_csconfig = getelementptr i8, ptr %t, i32 -36
  %14 = trunc i32 %call8 to i16
  %conv12 = and i16 %14, -17
  %15 = ptrtoint ptr %sw_csconfig to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv12, ptr %sw_csconfig, align 4
  tail call fastcc void @happy_meal_tcvr_write(ptr noundef %add.ptr, ptr noundef %1, i32 noundef 23, i16 noundef zeroext %conv12)
  br label %if.end

if.end:                                           ; preds = %if.then7, %do_force_mode.if.end_crit_edge
  %16 = ptrtoint ptr %timer_state to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 2, ptr %timer_state, align 4
  %17 = ptrtoint ptr %timer_ticks to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %timer_ticks, align 4
  br label %if.then161

if.else:                                          ; preds = %sw.bb
  %call16 = tail call fastcc i32 @happy_meal_tcvr_read(ptr noundef %add.ptr, ptr noundef %1, i32 noundef 1)
  %conv17 = trunc i32 %call16 to i16
  %sw_bmsr = getelementptr i8, ptr %t, i32 -48
  %18 = ptrtoint ptr %sw_bmsr to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %conv17, ptr %sw_bmsr, align 4
  %and20 = and i32 %call16, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %if.else.if.then161_crit_edge, label %if.then22

if.else.if.then161_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then161

if.then22:                                        ; preds = %if.else
  %call23 = tail call fastcc i32 @set_happy_link_modes(ptr noundef %add.ptr, ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %cleanup.thread, label %if.then22.do_force_mode_crit_edge

if.then22.do_force_mode_crit_edge:                ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #15
  br label %do_force_mode

cleanup.thread:                                   ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #15
  %19 = ptrtoint ptr %timer_state to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1, ptr %timer_state, align 4
  br label %if.then161

sw.bb31:                                          ; preds = %entry
  %call32 = tail call fastcc i32 @happy_meal_tcvr_read(ptr noundef %add.ptr, ptr noundef %1, i32 noundef 1)
  %conv33 = trunc i32 %call32 to i16
  %sw_bmsr34 = getelementptr i8, ptr %t, i32 -48
  %20 = ptrtoint ptr %sw_bmsr34 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %conv33, ptr %sw_bmsr34, align 4
  %and37 = and i32 %call32, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  br i1 %tobool38.not, label %if.else41, label %if.then39

if.then39:                                        ; preds = %sw.bb31
  %dev.i = getelementptr i8, ptr %t, i32 56
  %21 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev.i, align 4
  %call.i251 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, ptr noundef %22) #18
  %tcvr_type.i = getelementptr i8, ptr %t, i32 -64
  %23 = ptrtoint ptr %tcvr_type.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %tcvr_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp.i252 = icmp eq i32 %24, 0
  %.str.66..str.69.i = select i1 %cmp.i252, ptr @.str.66, ptr @.str.69
  %call8.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.66..str.69.i) #18
  %call12.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.72) #18
  %call13.i = tail call fastcc i32 @happy_meal_tcvr_read(ptr noundef %add.ptr, ptr noundef %1, i32 noundef 5) #13
  %conv.i = trunc i32 %call13.i to i16
  %sw_lpa.i = getelementptr i8, ptr %t, i32 -40
  %25 = ptrtoint ptr %sw_lpa.i to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %conv.i, ptr %sw_lpa.i, align 4
  %and.i = and i32 %call13.i, 384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else32.i, label %if.then16.i

if.then16.i:                                      ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #15
  %and19.i = and i32 %call13.i, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19.i)
  %tobool20.not.i = icmp eq i32 %and19.i, 0
  %.str.78..str.75.i = select i1 %tobool20.not.i, ptr @.str.78, ptr @.str.75
  br label %display_link_mode.exit

if.else32.i:                                      ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #15
  %and35.i = and i32 %call13.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35.i)
  %tobool36.not.i = icmp eq i32 %and35.i, 0
  %.str.84..str.81.i = select i1 %tobool36.not.i, ptr @.str.84, ptr @.str.81
  br label %display_link_mode.exit

display_link_mode.exit:                           ; preds = %if.else32.i, %if.then16.i
  %.str.81.sink.i = phi ptr [ %.str.78..str.75.i, %if.then16.i ], [ %.str.84..str.81.i, %if.else32.i ]
  %call41.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.81.sink.i) #18
  %26 = ptrtoint ptr %timer_state to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 3, ptr %timer_state, align 4
  br label %out

if.else41:                                        ; preds = %sw.bb31
  %27 = ptrtoint ptr %timer_ticks to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %timer_ticks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %28)
  %cmp43 = icmp ugt i32 %28, 9
  br i1 %cmp43, label %do.end48, label %if.else41.if.then161_crit_edge

if.else41.if.then161_crit_edge:                   ; preds = %if.else41
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then161

do.end48:                                         ; preds = %if.else41
  call void @__sanitizer_cov_trace_pc() #15
  %dev50 = getelementptr i8, ptr %t, i32 56
  %29 = ptrtoint ptr %dev50 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev50, align 4
  %call53 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, ptr noundef %30) #18
  %31 = ptrtoint ptr %timer_ticks to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %timer_ticks, align 4
  br label %if.then161

sw.bb58:                                          ; preds = %entry
  %call59 = tail call fastcc i32 @happy_meal_tcvr_read(ptr noundef %add.ptr, ptr noundef %1, i32 noundef 1)
  %conv60 = trunc i32 %call59 to i16
  %sw_bmsr61 = getelementptr i8, ptr %t, i32 -48
  %32 = ptrtoint ptr %sw_bmsr61 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %conv60, ptr %sw_bmsr61, align 4
  %call62 = tail call fastcc i32 @happy_meal_tcvr_read(ptr noundef %add.ptr, ptr noundef %1, i32 noundef 23)
  %conv63 = trunc i32 %call62 to i16
  %sw_csconfig64 = getelementptr i8, ptr %t, i32 -36
  %33 = ptrtoint ptr %sw_csconfig64 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %conv63, ptr %sw_csconfig64, align 4
  %34 = ptrtoint ptr %timer_ticks to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %timer_ticks, align 4
  %36 = zext i32 %35 to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values.214)
  switch i32 %35, label %if.end91 [
    i32 1, label %if.then68
    i32 2, label %if.then81
  ]

if.then68:                                        ; preds = %sw.bb58
  %37 = ptrtoint ptr %tcvregs to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %tcvregs, align 4
  %call.i254 = tail call fastcc i32 @happy_meal_tcvr_read(ptr noundef %add.ptr, ptr noundef %38, i32 noundef 2) #13
  %call1.i255 = tail call fastcc i32 @happy_meal_tcvr_read(ptr noundef %add.ptr, ptr noundef %38, i32 noundef 3) #13
  %conv3.i256 = and i32 %call.i254, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 384, i32 %conv3.i256)
  %cmp.i257 = icmp ne i32 %conv3.i256, 384
  %39 = and i32 %call1.i255, 64512
  call void @__sanitizer_cov_trace_const_cmp4(i32 29696, i32 %39)
  %cmp7.i258 = icmp ne i32 %39, 29696
  %or.cond.i259 = select i1 %cmp.i257, i1 true, i1 %cmp7.i258
  br i1 %or.cond.i259, label %if.then71, label %if.then68.if.then161_crit_edge

if.then68.if.then161_crit_edge:                   ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then161

if.then71:                                        ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #15
  %40 = ptrtoint ptr %sw_csconfig64 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %sw_csconfig64, align 4
  %42 = or i16 %41, 16
  store i16 %42, ptr %sw_csconfig64, align 4
  tail call fastcc void @happy_meal_tcvr_write(ptr noundef %add.ptr, ptr noundef %1, i32 noundef 23, i16 noundef zeroext %42)
  br label %if.then161

if.then81:                                        ; preds = %sw.bb58
  %43 = ptrtoint ptr %tcvregs to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %tcvregs, align 4
  %call.i262 = tail call fastcc i32 @happy_meal_tcvr_read(ptr noundef %add.ptr, ptr noundef %44, i32 noundef 2) #13
  %call1.i263 = tail call fastcc i32 @happy_meal_tcvr_read(ptr noundef %add.ptr, ptr noundef %44, i32 noundef 3) #13
  %conv3.i264 = and i32 %call.i262, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 384, i32 %conv3.i264)
  %cmp.i265 = icmp ne i32 %conv3.i264, 384
  %45 = and i32 %call1.i263, 64512
  call void @__sanitizer_cov_trace_const_cmp4(i32 29696, i32 %45)
  %cmp7.i266 = icmp ne i32 %45, 29696
  %or.cond.i267 = select i1 %cmp.i265, i1 true, i1 %cmp7.i266
  br i1 %or.cond.i267, label %if.then84, label %if.then81.if.then161_crit_edge

if.then81.if.then161_crit_edge:                   ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then161

if.then84:                                        ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #15
  %46 = ptrtoint ptr %sw_csconfig64 to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %sw_csconfig64, align 4
  %48 = and i16 %47, -17
  store i16 %48, ptr %sw_csconfig64, align 4
  tail call fastcc void @happy_meal_tcvr_write(ptr noundef %add.ptr, ptr noundef %1, i32 noundef 23, i16 noundef zeroext %48)
  br label %if.then161

if.end91:                                         ; preds = %sw.bb58
  %49 = ptrtoint ptr %sw_bmsr61 to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %sw_bmsr61, align 4
  %51 = and i16 %50, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %51)
  %tobool95.not = icmp eq i16 %51, 0
  br i1 %tobool95.not, label %if.else99, label %if.then96

if.then96:                                        ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #15
  %dev.i269 = getelementptr i8, ptr %t, i32 56
  %52 = ptrtoint ptr %dev.i269 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev.i269, align 4
  %call.i270 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.86, ptr noundef %53) #18
  %tcvr_type.i271 = getelementptr i8, ptr %t, i32 -64
  %54 = ptrtoint ptr %tcvr_type.i271 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %tcvr_type.i271, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %cmp.i272 = icmp eq i32 %55, 0
  %.str.66..str.69.i273 = select i1 %cmp.i272, ptr @.str.66, ptr @.str.69
  %call8.i274 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.66..str.69.i273) #18
  %call12.i275 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.72) #18
  %call13.i276 = tail call fastcc i32 @happy_meal_tcvr_read(ptr noundef %add.ptr, ptr noundef %1, i32 noundef 0) #13
  %conv.i277 = trunc i32 %call13.i276 to i16
  %sw_bmcr.i = getelementptr i8, ptr %t, i32 -50
  %56 = ptrtoint ptr %sw_bmcr.i to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 %conv.i277, ptr %sw_bmcr.i, align 2
  %and.i278 = and i32 %call13.i276, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i278)
  %tobool.not.i279 = icmp eq i32 %and.i278, 0
  %.str.98.sink.i = select i1 %tobool.not.i279, ptr @.str.98, ptr @.str.95
  %call25.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.98.sink.i) #18
  %57 = ptrtoint ptr %sw_bmcr.i to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %sw_bmcr.i, align 2
  %59 = and i16 %58, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %59)
  %tobool30.not.i = icmp eq i16 %59, 0
  %.str.104.sink.i = select i1 %tobool30.not.i, ptr @.str.104, ptr @.str.101
  %call40.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.104.sink.i) #18
  %call97 = tail call fastcc i32 @set_happy_link_modes(ptr noundef %add.ptr, ptr noundef %1)
  %60 = ptrtoint ptr %timer_state to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 3, ptr %timer_state, align 4
  br label %out

if.else99:                                        ; preds = %if.end91
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %35)
  %cmp101 = icmp ugt i32 %35, 3
  br i1 %cmp101, label %if.then103, label %if.else99.if.then161_crit_edge

if.else99.if.then161_crit_edge:                   ; preds = %if.else99
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then161

if.then103:                                       ; preds = %if.else99
  %call.i280 = tail call fastcc i32 @happy_meal_tcvr_read(ptr noundef %add.ptr, ptr noundef %1, i32 noundef 0) #13
  %conv.i281 = trunc i32 %call.i280 to i16
  %sw_bmcr.i282 = getelementptr i8, ptr %t, i32 -50
  %61 = ptrtoint ptr %sw_bmcr.i282 to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 %conv.i281, ptr %sw_bmcr.i282, align 2
  %and.i283 = and i32 %call.i280, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i283)
  %tobool.not.i284 = icmp eq i32 %and.i283, 0
  br i1 %tobool.not.i284, label %if.end.i, label %if.then103.if.end129_crit_edge

if.then103.if.end129_crit_edge:                   ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end129

if.end.i:                                         ; preds = %if.then103
  %and10.i = and i32 %call.i280, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i)
  %tobool11.not.i = icmp eq i32 %and10.i, 0
  br i1 %tobool11.not.i, label %do.end111, label %if.end.i.if.end129_crit_edge

if.end.i.if.end129_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end129

do.end111:                                        ; preds = %if.end.i
  %dev113 = getelementptr i8, ptr %t, i32 56
  %62 = ptrtoint ptr %dev113 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dev113, align 4
  %call116 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, ptr noundef %63) #18
  %call117 = tail call fastcc i32 @happy_meal_init(ptr noundef %add.ptr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call117)
  %tobool118.not = icmp eq i32 %call117, 0
  br i1 %tobool118.not, label %do.end111.out_crit_edge, label %do.end122

do.end111.out_crit_edge:                          ; preds = %do.end111
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

do.end122:                                        ; preds = %do.end111
  call void @__sanitizer_cov_trace_pc() #15
  %64 = ptrtoint ptr %dev113 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %dev113, align 4
  %call127 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, ptr noundef %65) #18
  br label %out

if.end129:                                        ; preds = %if.end.i.if.end129_crit_edge, %if.then103.if.end129_crit_edge
  %.sink.i = phi i16 [ -257, %if.then103.if.end129_crit_edge ], [ -8193, %if.end.i.if.end129_crit_edge ]
  %conv6.i = and i16 %.sink.i, %conv.i281
  %66 = ptrtoint ptr %sw_bmcr.i282 to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 %conv6.i, ptr %sw_bmcr.i282, align 2
  tail call fastcc void @happy_meal_tcvr_write(ptr noundef %add.ptr, ptr noundef %1, i32 noundef 0, i16 noundef zeroext %conv6.i) #13
  %67 = ptrtoint ptr %tcvregs to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %tcvregs, align 4
  %call.i286 = tail call fastcc i32 @happy_meal_tcvr_read(ptr noundef %add.ptr, ptr noundef %68, i32 noundef 2) #13
  %call1.i287 = tail call fastcc i32 @happy_meal_tcvr_read(ptr noundef %add.ptr, ptr noundef %68, i32 noundef 3) #13
  %conv3.i288 = and i32 %call.i286, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 384, i32 %conv3.i288)
  %cmp.i289 = icmp ne i32 %conv3.i288, 384
  %69 = and i32 %call1.i287, 64512
  call void @__sanitizer_cov_trace_const_cmp4(i32 29696, i32 %69)
  %cmp7.i290 = icmp ne i32 %69, 29696
  %or.cond.i291 = select i1 %cmp.i289, i1 true, i1 %cmp7.i290
  br i1 %or.cond.i291, label %if.then132, label %if.end129.cleanup143_crit_edge

if.end129.cleanup143_crit_edge:                   ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup143

if.then132:                                       ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #15
  %call133 = tail call fastcc i32 @happy_meal_tcvr_read(ptr noundef %add.ptr, ptr noundef %1, i32 noundef 23)
  %70 = trunc i32 %call133 to i16
  %conv139 = or i16 %70, 16
  %71 = ptrtoint ptr %sw_csconfig64 to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 %conv139, ptr %sw_csconfig64, align 4
  tail call fastcc void @happy_meal_tcvr_write(ptr noundef %add.ptr, ptr noundef %1, i32 noundef 23, i16 noundef zeroext %conv139)
  br label %cleanup143

cleanup143:                                       ; preds = %if.then132, %if.end129.cleanup143_crit_edge
  %72 = ptrtoint ptr %timer_ticks to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 0, ptr %timer_ticks, align 4
  br label %if.then161

do.end152:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %dev154 = getelementptr i8, ptr %t, i32 56
  %73 = ptrtoint ptr %dev154 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %dev154, align 4
  %call157 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, ptr noundef %74) #18
  %75 = ptrtoint ptr %timer_ticks to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 0, ptr %timer_ticks, align 4
  %76 = ptrtoint ptr %timer_state to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 3, ptr %timer_state, align 4
  br label %out

if.then161:                                       ; preds = %cleanup143, %if.else99.if.then161_crit_edge, %if.then84, %if.then81.if.then161_crit_edge, %if.then71, %if.then68.if.then161_crit_edge, %do.end48, %if.else41.if.then161_crit_edge, %cleanup.thread, %if.else.if.then161_crit_edge, %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %77 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %77, 120
  %expires = getelementptr inbounds %struct.timer_list, ptr %t, i32 0, i32 1
  %78 = ptrtoint ptr %expires to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %add, ptr %expires, align 4
  tail call void @add_timer(ptr noundef %t) #13
  br label %out

out:                                              ; preds = %if.then161, %do.end152, %do.end122, %do.end111.out_crit_edge, %if.then96, %display_link_mode.exit
  tail call void @_raw_spin_unlock_irq(ptr noundef %happy_lock) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @happy_meal_set_initial_advertisement(ptr noundef %hp) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tcvregs = getelementptr inbounds %struct.happy_meal, ptr %hp, i32 0, i32 14
  %0 = ptrtoint ptr %tcvregs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tcvregs, align 4
  %bigmacregs = getelementptr inbounds %struct.happy_meal, ptr %hp, i32 0, i32 13
  %2 = ptrtoint ptr %bigmacregs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bigmacregs, align 4
  %4 = ptrtoint ptr %hp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hp, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !391
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 50331648) #13, !srcloc !392
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #13, !srcloc !393
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !394
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not1.i = icmp eq i32 %6, 0
  br i1 %tobool.not1.i, label %entry.happy_meal_stop.exit_crit_edge, label %entry.land.rhs.i_crit_edge

entry.land.rhs.i_crit_edge:                       ; preds = %entry
  br label %land.rhs.i

entry.happy_meal_stop.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %happy_meal_stop.exit

land.rhs.i:                                       ; preds = %while.body.i.land.rhs.i_crit_edge, %entry.land.rhs.i_crit_edge
  %tries.02.i = phi i32 [ %dec.i, %while.body.i.land.rhs.i_crit_edge ], [ 16, %entry.land.rhs.i_crit_edge ]
  %dec.i = add nsw i32 %tries.02.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %tobool3.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool3.not.i, label %do.end7.critedge.i, label %while.body.i

while.body.i:                                     ; preds = %land.rhs.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 4294960) #13
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #13, !srcloc !393
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !394
  %tobool.not.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i, label %while.body.i.happy_meal_stop.exit_crit_edge, label %while.body.i.land.rhs.i_crit_edge

while.body.i.land.rhs.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.rhs.i

while.body.i.happy_meal_stop.exit_crit_edge:      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %happy_meal_stop.exit

do.end7.critedge.i:                               ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  %call9.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.111) #18
  br label %happy_meal_stop.exit

happy_meal_stop.exit:                             ; preds = %do.end7.critedge.i, %while.body.i.happy_meal_stop.exit_crit_edge, %entry.happy_meal_stop.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !395
  tail call void @arm_heavy_mb() #13
  %add.ptr = getelementptr i8, ptr %1, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 -65536) #13, !srcloc !392
  %happy_flags = getelementptr inbounds %struct.happy_meal, ptr %hp, i32 0, i32 16
  %9 = ptrtoint ptr %happy_flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %happy_flags, align 4
  %and = and i32 %10, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13
  tail call void @arm_heavy_mb() #13
  %add.ptr14 = getelementptr i8, ptr %1, i32 16
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr14) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13
  br i1 %tobool.not, label %do.body9, label %do.body2

do.body2:                                         ; preds = %happy_meal_stop.exit
  call void @__sanitizer_cov_trace_pc() #15
  %12 = and i32 %11, -67108865
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14, i32 %12) #13, !srcloc !392
  br label %if.end

do.body9:                                         ; preds = %happy_meal_stop.exit
  call void @__sanitizer_cov_trace_pc() #15
  %13 = or i32 %11, 67108864
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14, i32 %13) #13, !srcloc !392
  br label %if.end

if.end:                                           ; preds = %do.body9, %do.body2
  tail call fastcc void @happy_meal_transceiver_check(ptr noundef %hp, ptr noundef %1)
  %tcvr_type = getelementptr inbounds %struct.happy_meal, ptr %hp, i32 0, i32 18
  %14 = ptrtoint ptr %tcvr_type to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tcvr_type, align 4
  %16 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.215)
  switch i32 %15, label %if.end.sw.epilog_crit_edge [
    i32 2, label %if.end.cleanup_crit_edge
    i32 1, label %do.body20
    i32 0, label %do.body25
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

do.body20:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !396
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 0) #13, !srcloc !392
  br label %sw.epilog

do.body25:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !397
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 134217728) #13, !srcloc !392
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.body25, %do.body20, %if.end.sw.epilog_crit_edge
  %call29 = tail call fastcc i32 @happy_meal_tcvr_reset(ptr noundef %hp, ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end32, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end32:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  %call33 = tail call fastcc i32 @happy_meal_tcvr_read(ptr noundef %hp, ptr noundef %1, i32 noundef 1)
  %conv = trunc i32 %call33 to i16
  %sw_bmsr = getelementptr inbounds %struct.happy_meal, ptr %hp, i32 0, i32 23
  %17 = ptrtoint ptr %sw_bmsr to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %conv, ptr %sw_bmsr, align 4
  %call34 = tail call fastcc i32 @happy_meal_tcvr_read(ptr noundef %hp, ptr noundef %1, i32 noundef 4)
  %conv35 = trunc i32 %call34 to i16
  %sw_advertise = getelementptr inbounds %struct.happy_meal, ptr %hp, i32 0, i32 26
  %18 = ptrtoint ptr %sw_bmsr to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %sw_bmsr, align 4
  %conv49 = and i16 %conv35, -481
  %20 = lshr i16 %19, 6
  %21 = and i16 %20, 32
  %storemerge = or i16 %21, %conv49
  %22 = and i16 %20, 64
  %storemerge134 = or i16 %storemerge, %22
  %23 = and i16 %20, 128
  %storemerge135 = or i16 %storemerge134, %23
  %24 = and i16 %20, 256
  %storemerge136 = or i16 %storemerge135, %24
  %25 = ptrtoint ptr %sw_advertise to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %storemerge136, ptr %sw_advertise, align 2
  tail call fastcc void @happy_meal_tcvr_write(ptr noundef %hp, ptr noundef %1, i32 noundef 4, i16 noundef zeroext %storemerge136)
  br label %cleanup

cleanup:                                          ; preds = %if.end32, %sw.epilog.cleanup_crit_edge, %if.end.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #0

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_strtoul(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_release_regions(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_map_rom(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unmap_rom(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @happy_meal_tcvr_read(ptr nocapture noundef readonly %hp, ptr noundef %tregs, i32 noundef %reg) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tcvr_type = getelementptr inbounds %struct.happy_meal, ptr %hp, i32 0, i32 18
  %0 = ptrtoint ptr %tcvr_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tcvr_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp eq i32 %1, 2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %happy_flags = getelementptr inbounds %struct.happy_meal, ptr %hp, i32 0, i32 16
  %2 = ptrtoint ptr %happy_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %happy_flags, align 4
  %and = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13
  tail call void @arm_heavy_mb() #13
  br i1 %tobool.not, label %if.then2, label %do.body

if.then2:                                         ; preds = %if.end
  %add.ptr.i = getelementptr i8, ptr %tregs, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 16777216) #13, !srcloc !392
  %add.ptr.i.i = getelementptr i8, ptr %tregs, i32 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then2
  %i.0108.i = phi i32 [ 0, %if.then2 ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !398
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 16777216) #13, !srcloc !392
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !399
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %tregs, i32 0) #13, !srcloc !392
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !400
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %tregs, i32 16777216) #13, !srcloc !392
  %inc.i = add nuw nsw i32 %i.0108.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 32
  br i1 %exitcond.not.i, label %for.end.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !398
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #13, !srcloc !392
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !399
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %tregs, i32 0) #13, !srcloc !392
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !400
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %tregs, i32 16777216) #13, !srcloc !392
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !398
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 16777216) #13, !srcloc !392
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !399
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %tregs, i32 0) #13, !srcloc !392
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !400
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %tregs, i32 16777216) #13, !srcloc !392
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !398
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 16777216) #13, !srcloc !392
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !399
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %tregs, i32 0) #13, !srcloc !392
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !400
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %tregs, i32 16777216) #13, !srcloc !392
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !398
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #13, !srcloc !392
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !399
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %tregs, i32 0) #13, !srcloc !392
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !400
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %tregs, i32 16777216) #13, !srcloc !392
  %paddr.i = getelementptr inbounds %struct.happy_meal, ptr %hp, i32 0, i32 20
  %4 = ptrtoint ptr %paddr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %paddr.i, align 4
  %and.i = and i32 %5, 255
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !398
  tail call void @arm_heavy_mb() #13
  %6 = shl nuw nsw i32 %and.i, 20
  %7 = and i32 %6, 16777216
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %7) #13, !srcloc !392
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !399
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %tregs, i32 0) #13, !srcloc !392
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !400
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %tregs, i32 16777216) #13, !srcloc !392
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !398
  tail call void @arm_heavy_mb() #13
  %8 = shl nuw nsw i32 %and.i, 21
  %9 = and i32 %8, 16777216
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %9) #13, !srcloc !392
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !399
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %tregs, i32 0) #13, !srcloc !392
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !400
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %tregs, i32 16777216) #13, !srcloc !392
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !398
  tail call void @arm_heavy_mb() #13
  %10 = shl nuw nsw i32 %and.i, 22
  %11 = and i32 %10, 16777216
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %11) #13, !srcloc !392
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !399
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %tregs, i32 0) #13, !srcloc !392
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !400
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %tregs, i32 16777216) #13, !srcloc !392
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !398
  tail call void @arm_heavy_mb() #13
  %12 = shl nuw nsw i32 %and.i, 23
  %13 = and i32 %12, 16777216
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %13) #13, !srcloc !392
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !399
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %tregs, i32 0) #13, !srcloc !392
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !400
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %tregs, i32 16777216) #13, !srcloc !392
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !398
  tail call void @arm_heavy_mb() #13
  %and5.4.i = shl i32 %5, 24
  %14 = and i32 %and5.4.i, 16777216
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %14) #13, !srcloc !392
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !399
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %tregs, i32 0) #13, !srcloc !392
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !400
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %tregs, i32 16777216) #13, !srcloc !392
  %and8.i = and i32 %reg, 255
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !398
  tail call void @arm_heavy_mb() #13
  %15 = shl nuw nsw i32 %and8.i, 20
  %16 = and i32 %15, 16777216
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %16) #13, !srcloc !392
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !399
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %tregs, i32 0) #13, !srcloc !392
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !400
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %tregs, i32 16777216) #13, !srcloc !392
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !398
  tail call void @arm_heavy_mb() #13
  %17 = shl nuw nsw i32 %and8.i, 21
  %18 = and i32 %17, 16777216
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %18) #13, !srcloc !392
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !399
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %tregs, i32 0) #13, !srcloc !392
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !400
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %tregs, i32 16777216) #13, !srcloc !392
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !398
  tail call void @arm_heavy_mb() #13
  %19 = shl nuw nsw i32 %and8.i, 22
  %20 = and i32 %19, 16777216
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %20) #13, !srcloc !392
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !399
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %tregs, i32 0) #13, !srcloc !392
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !400
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %tregs, i32 16777216) #13, !srcloc !392
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !398
  tail call void @arm_heavy_mb() #13
  %21 = shl nuw nsw i32 %and8.i, 23
  %22 = and i32 %21, 16777216
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %22) #13, !srcloc !392
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !399
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %tregs, i32 0) #13, !srcloc !392
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !400
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %tregs, i32 16777216) #13, !srcloc !392
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !398
  tail call void @arm_heavy_mb() #13
  %and13.4.i = shl i32 %reg, 24
  %23 = and i32 %and13.4.i, 16777216
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %23) #13, !srcloc !392
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !399
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %tregs, i32 0) #13, !srcloc !392
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !400
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %tregs, i32 16777216) #13, !srcloc !392
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !401
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #13, !srcloc !392
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !402
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %tregs, i32 0) #13, !srcloc !392
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %24(i32 noundef 214748) #13
  %add.ptr2.i.i = getelementptr i8, ptr %tregs, i32 16
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i) #13, !srcloc !393
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !403
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !404
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %tregs, i32 16777216) #13, !srcloc !392
  br label %for.body25.i

for.body25.i:                                     ; preds = %for.body25.i.for.body25.i_crit_edge, %for.end.i
  %i.3112.i = phi i32 [ 15, %for.end.i ], [ %dec31.i, %for.body25.i.for.body25.i_crit_edge ]
  %retval1.0111.i = phi i32 [ 0, %for.end.i ], [ %or.i, %for.body25.i.for.body25.i_crit_edge ]
  %26 = ptrtoint ptr %tcvr_type to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %tcvr_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %27)
  %cmp27.not.i = icmp eq i32 %27, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !402
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %tregs, i32 0) #13, !srcloc !392
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %28 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %28(i32 noundef 214748) #13
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i) #13, !srcloc !393
  %30 = lshr i32 %29, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !403
  %retval1.0.v.i94.i = select i1 %cmp27.not.i, i32 256, i32 512
  %retval1.0.i95.i = and i32 %30, %retval1.0.v.i94.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !404
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %tregs, i32 16777216) #13, !srcloc !392
  %or.i = or i32 %retval1.0.i95.i, %retval1.0111.i
  %dec31.i = add nsw i32 %i.3112.i, -1
  %cmp23.not.i = icmp eq i32 %i.3112.i, 0
  br i1 %cmp23.not.i, label %happy_meal_bb_read.exit, label %for.body25.i.for.body25.i_crit_edge

for.body25.i.for.body25.i_crit_edge:              ; preds = %for.body25.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body25.i

happy_meal_bb_read.exit:                          ; preds = %for.body25.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !402
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %tregs, i32 0) #13, !srcloc !392
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %31 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %31(i32 noundef 214748) #13
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i) #13, !srcloc !393
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !403
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !404
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %tregs, i32 16777216) #13, !srcloc !392
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !402
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %tregs, i32 0) #13, !srcloc !392
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %33 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %33(i32 noundef 214748) #13
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i) #13, !srcloc !393
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !403
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !404
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %tregs, i32 16777216) #13, !srcloc !392
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !402
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %tregs, i32 0) #13, !srcloc !392
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %35 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %35(i32 noundef 214748) #13
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i) #13, !srcloc !393
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !403
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !404
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %tregs, i32 16777216) #13, !srcloc !392
  br label %cleanup

do.body:                                          ; preds = %if.end
  %paddr = getelementptr inbounds %struct.happy_meal, ptr %hp, i32 0, i32 20
  %37 = ptrtoint ptr %paddr to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %paddr, align 4
  %shl = shl i32 %38, 23
  %and4 = shl i32 %reg, 18
  %shl5 = and i32 %and4, 66846720
  %or = or i32 %shl5, %shl
  %or6 = or i32 %or, 1610743808
  %39 = tail call i32 @llvm.bswap.i32(i32 %or6)
  %add.ptr = getelementptr i8, ptr %tregs, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %39) #13, !srcloc !392
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #13, !srcloc !393
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !405
  %41 = and i32 %40, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool11.not37 = icmp eq i32 %41, 0
  br i1 %tobool11.not37, label %do.body.land.rhs_crit_edge, label %do.body.if.end20_crit_edge

do.body.if.end20_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end20

do.body.land.rhs_crit_edge:                       ; preds = %do.body
  br label %land.rhs

land.rhs:                                         ; preds = %while.body.land.rhs_crit_edge, %do.body.land.rhs_crit_edge
  %tries.038 = phi i32 [ %dec, %while.body.land.rhs_crit_edge ], [ 16, %do.body.land.rhs_crit_edge ]
  %dec = add nsw i32 %tries.038, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool12.not = icmp eq i32 %dec, 0
  br i1 %tobool12.not, label %do.end17.critedge, label %while.body

while.body:                                       ; preds = %land.rhs
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %42 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %42(i32 noundef 4294960) #13
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #13, !srcloc !393
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !405
  %44 = and i32 %43, 256
  %tobool11.not = icmp eq i32 %44, 0
  br i1 %tobool11.not, label %while.body.land.rhs_crit_edge, label %while.body.if.end20_crit_edge

while.body.if.end20_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end20

while.body.land.rhs_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.rhs

do.end17.critedge:                                ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59) #18
  br label %cleanup

if.end20:                                         ; preds = %while.body.if.end20_crit_edge, %do.body.if.end20_crit_edge
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #13, !srcloc !393
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !406
  %46 = and i32 %45, -65536
  %47 = tail call i32 @llvm.bswap.i32(i32 %46)
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %do.end17.critedge, %happy_meal_bb_read.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %47, %if.end20 ], [ -2147483648, %do.end17.critedge ], [ %or.i, %happy_meal_bb_read.exit ], [ -2147483648, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @happy_meal_tcvr_write(ptr nocapture noundef readonly %hp, ptr noundef %tregs, i32 noundef %reg, i16 noundef zeroext %value) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %happy_flags = getelementptr inbounds %struct.happy_meal, ptr %hp, i32 0, i32 16
  %0 = ptrtoint ptr %happy_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %happy_flags, align 4
  %and = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13
  tail call void @arm_heavy_mb() #13
  br i1 %tobool.not, label %if.then, label %do.body

if.then:                                          ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %tregs, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 16777216) #13, !srcloc !392
  %add.ptr.i.i = getelementptr i8, ptr %tregs, i32 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then
  %i.069.i = phi i32 [ 0, %if.then ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !398
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 16777216) #13, !srcloc !392
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !399
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %tregs, i32 0) #13, !srcloc !392
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !400
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %tregs, i32 16777216) #13, !srcloc !392
  %inc.i = add nuw nsw i32 %i.069.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 32
  br i1 %exitcond.not.i, label %for.end.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !398
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #13, !srcloc !392
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !399
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %tregs, i32 0) #13, !srcloc !392
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !400
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %tregs, i32 16777216) #13, !srcloc !392
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !398
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 16777216) #13, !srcloc !392
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !399
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %tregs, i32 0) #13, !srcloc !392
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !400
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %tregs, i32 16777216) #13, !srcloc !392
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !398
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #13, !srcloc !392
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !399
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %tregs, i32 0) #13, !srcloc !392
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !400
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %tregs, i32 16777216) #13, !srcloc !392
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !398
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 16777216) #13, !srcloc !392
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !399
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %tregs, i32 0) #13, !srcloc !392
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !400
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %tregs, i32 16777216) #13, !srcloc !392
  %paddr.i = getelementptr inbounds %struct.happy_meal, ptr %hp, i32 0, i32 20
  %2 = ptrtoint ptr %paddr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %paddr.i, align 4
  %and.i = and i32 %3, 255
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !398
  tail call void @arm_heavy_mb() #13
  %4 = shl nuw nsw i32 %and.i, 20
  %5 = and i32 %4, 16777216
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %5) #13, !srcloc !392
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !399
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %tregs, i32 0) #13, !srcloc !392
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !400
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %tregs, i32 16777216) #13, !srcloc !392
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !398
  tail call void @arm_heavy_mb() #13
  %6 = shl nuw nsw i32 %and.i, 21
  %7 = and i32 %6, 16777216
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %7) #13, !srcloc !392
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !399
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %tregs, i32 0) #13, !srcloc !392
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !400
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %tregs, i32 16777216) #13, !srcloc !392
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !398
  tail call void @arm_heavy_mb() #13
  %8 = shl nuw nsw i32 %and.i, 22
  %9 = and i32 %8, 16777216
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %9) #13, !srcloc !392
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !399
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %tregs, i32 0) #13, !srcloc !392
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !400
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %tregs, i32 16777216) #13, !srcloc !392
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !398
  tail call void @arm_heavy_mb() #13
  %10 = shl nuw nsw i32 %and.i, 23
  %11 = and i32 %10, 16777216
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %11) #13, !srcloc !392
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !399
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %tregs, i32 0) #13, !srcloc !392
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !400
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %tregs, i32 16777216) #13, !srcloc !392
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !398
  tail call void @arm_heavy_mb() #13
  %and4.4.i = shl i32 %3, 24
  %12 = and i32 %and4.4.i, 16777216
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %12) #13, !srcloc !392
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !399
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %tregs, i32 0) #13, !srcloc !392
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !400
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %tregs, i32 16777216) #13, !srcloc !392
  %and7.i = and i32 %reg, 255
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !398
  tail call void @arm_heavy_mb() #13
  %13 = shl nuw nsw i32 %and7.i, 20
  %14 = and i32 %13, 16777216
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %14) #13, !srcloc !392
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !399
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %tregs, i32 0) #13, !srcloc !392
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !400
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %tregs, i32 16777216) #13, !srcloc !392
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !398
  tail call void @arm_heavy_mb() #13
  %15 = shl nuw nsw i32 %and7.i, 21
  %16 = and i32 %15, 16777216
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %16) #13, !srcloc !392
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !399
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %tregs, i32 0) #13, !srcloc !392
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !400
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %tregs, i32 16777216) #13, !srcloc !392
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !398
  tail call void @arm_heavy_mb() #13
  %17 = shl nuw nsw i32 %and7.i, 22
  %18 = and i32 %17, 16777216
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %18) #13, !srcloc !392
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !399
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %tregs, i32 0) #13, !srcloc !392
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !400
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %tregs, i32 16777216) #13, !srcloc !392
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !398
  tail call void @arm_heavy_mb() #13
  %19 = shl nuw nsw i32 %and7.i, 23
  %20 = and i32 %19, 16777216
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %20) #13, !srcloc !392
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !399
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %tregs, i32 0) #13, !srcloc !392
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !400
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %tregs, i32 16777216) #13, !srcloc !392
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !398
  tail call void @arm_heavy_mb() #13
  %and12.4.i = shl i32 %reg, 24
  %21 = and i32 %and12.4.i, 16777216
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %21) #13, !srcloc !392
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !399
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %tregs, i32 0) #13, !srcloc !392
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !400
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %tregs, i32 16777216) #13, !srcloc !392
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !398
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 16777216) #13, !srcloc !392
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !399
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %tregs, i32 0) #13, !srcloc !392
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !400
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %tregs, i32 16777216) #13, !srcloc !392
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !398
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #13, !srcloc !392
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !399
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %tregs, i32 0) #13, !srcloc !392
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !400
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %tregs, i32 16777216) #13, !srcloc !392
  %conv.i = zext i16 %value to i32
  br label %for.body18.i

for.body18.i:                                     ; preds = %for.body18.i.for.body18.i_crit_edge, %for.end.i
  %i.372.i = phi i32 [ 15, %for.end.i ], [ %dec22.i, %for.body18.i.for.body18.i_crit_edge ]
  %shr19.i = lshr i32 %conv.i, %i.372.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !398
  tail call void @arm_heavy_mb() #13
  %and20.i = shl i32 %shr19.i, 24
  %22 = and i32 %and20.i, 16777216
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %22) #13, !srcloc !392
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !399
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %tregs, i32 0) #13, !srcloc !392
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !400
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %tregs, i32 16777216) #13, !srcloc !392
  %dec22.i = add nsw i32 %i.372.i, -1
  %cmp17.not.i = icmp eq i32 %i.372.i, 0
  br i1 %cmp17.not.i, label %happy_meal_bb_write.exit, label %for.body18.i.for.body18.i_crit_edge

for.body18.i.for.body18.i_crit_edge:              ; preds = %for.body18.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body18.i

happy_meal_bb_write.exit:                         ; preds = %for.body18.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !407
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #13, !srcloc !392
  br label %cleanup

do.body:                                          ; preds = %entry
  %paddr = getelementptr inbounds %struct.happy_meal, ptr %hp, i32 0, i32 20
  %23 = ptrtoint ptr %paddr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %paddr, align 4
  %shl = shl i32 %24, 23
  %and1 = shl i32 %reg, 18
  %shl2 = and i32 %and1, 66846720
  %conv = zext i16 %value to i32
  %or = or i32 %shl2, %conv
  %or3 = or i32 %or, %shl
  %or5 = or i32 %or3, 1342308352
  %25 = tail call i32 @llvm.bswap.i32(i32 %or5)
  %add.ptr = getelementptr i8, ptr %tregs, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %25) #13, !srcloc !392
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #13, !srcloc !393
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !408
  %27 = and i32 %26, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool9.not26 = icmp eq i32 %27, 0
  br i1 %tobool9.not26, label %do.body.land.rhs_crit_edge, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.body.land.rhs_crit_edge:                       ; preds = %do.body
  br label %land.rhs

land.rhs:                                         ; preds = %while.body.land.rhs_crit_edge, %do.body.land.rhs_crit_edge
  %tries.027 = phi i32 [ %dec, %while.body.land.rhs_crit_edge ], [ 16, %do.body.land.rhs_crit_edge ]
  %dec = add nsw i32 %tries.027, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool10.not = icmp eq i32 %dec, 0
  br i1 %tobool10.not, label %do.end15.critedge, label %while.body

while.body:                                       ; preds = %land.rhs
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %28 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %28(i32 noundef 4294960) #13
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #13, !srcloc !393
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !408
  %30 = and i32 %29, 256
  %tobool9.not = icmp eq i32 %30, 0
  br i1 %tobool9.not, label %while.body.land.rhs_crit_edge, label %while.body.cleanup_crit_edge

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

while.body.land.rhs_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.rhs

do.end15.critedge:                                ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61) #18
  br label %cleanup

cleanup:                                          ; preds = %do.end15.critedge, %while.body.cleanup_crit_edge, %do.body.cleanup_crit_edge, %happy_meal_bb_write.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @set_happy_link_modes(ptr nocapture noundef %hp, ptr noundef %tregs) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %timer_state = getelementptr inbounds %struct.happy_meal, ptr %hp, i32 0, i32 39
  %0 = ptrtoint ptr %timer_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %timer_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.else24

if.then:                                          ; preds = %entry
  %call = tail call fastcc i32 @happy_meal_tcvr_read(ptr noundef %hp, ptr noundef %tregs, i32 noundef 5)
  %conv = trunc i32 %call to i16
  %sw_lpa = getelementptr inbounds %struct.happy_meal, ptr %hp, i32 0, i32 27
  %2 = ptrtoint ptr %sw_lpa to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %conv, ptr %sw_lpa, align 4
  %and = and i32 %call, 480
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %if.then
  %and6 = and i32 %call, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %if.else, label %if.end.do.body_crit_edge

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body

if.else:                                          ; preds = %if.end
  %and11 = and i32 %call, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.else14, label %if.else.do.body_crit_edge

if.else.do.body_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body

if.else14:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  %and17 = and i32 %call, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br label %do.body

if.else24:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call25 = tail call fastcc i32 @happy_meal_tcvr_read(ptr noundef %hp, ptr noundef %tregs, i32 noundef 0)
  %conv26 = trunc i32 %call25 to i16
  %sw_bmcr = getelementptr inbounds %struct.happy_meal, ptr %hp, i32 0, i32 22
  %3 = ptrtoint ptr %sw_bmcr to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %conv26, ptr %sw_bmcr, align 2
  %and29 = and i32 %call25, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br label %do.body

do.body:                                          ; preds = %if.else24, %if.else14, %if.else.do.body_crit_edge, %if.end.do.body_crit_edge
  %tobool49.not = phi i1 [ false, %if.end.do.body_crit_edge ], [ true, %if.else.do.body_crit_edge ], [ %tobool18.not, %if.else14 ], [ %tobool30.not, %if.else24 ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !409
  tail call void @arm_heavy_mb() #13
  %bigmacregs = getelementptr inbounds %struct.happy_meal, ptr %hp, i32 0, i32 13
  %4 = ptrtoint ptr %bigmacregs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bigmacregs, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 524
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #13, !srcloc !393
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !410
  %7 = and i32 %6, -16777217
  %8 = ptrtoint ptr %bigmacregs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bigmacregs, align 4
  %add.ptr39 = getelementptr i8, ptr %9, i32 524
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr39, i32 %7) #13, !srcloc !392
  %10 = ptrtoint ptr %bigmacregs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bigmacregs, align 4
  %add.ptr43116 = getelementptr i8, ptr %11, i32 524
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr43116) #13, !srcloc !393
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !411
  %13 = and i32 %12, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool48.not117 = icmp eq i32 %13, 0
  br i1 %tobool48.not117, label %do.body.while.end_crit_edge, label %do.body.while.body_crit_edge

do.body.while.body_crit_edge:                     ; preds = %do.body
  br label %while.body

do.body.while.end_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %do.body.while.body_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !412
  %14 = ptrtoint ptr %bigmacregs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bigmacregs, align 4
  %add.ptr43 = getelementptr i8, ptr %15, i32 524
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr43) #13, !srcloc !393
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !411
  %17 = and i32 %16, 16777216
  %tobool48.not = icmp eq i32 %17, 0
  br i1 %tobool48.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %do.body.while.end_crit_edge
  %happy_flags65 = getelementptr inbounds %struct.happy_meal, ptr %hp, i32 0, i32 16
  %18 = ptrtoint ptr %happy_flags65 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %happy_flags65, align 4
  br i1 %tobool49.not, label %if.else64, label %if.then50

if.then50:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #15
  %or = or i32 %19, 32
  %20 = ptrtoint ptr %happy_flags65 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %or, ptr %happy_flags65, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !413
  tail call void @arm_heavy_mb() #13
  %21 = ptrtoint ptr %bigmacregs to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %bigmacregs, align 4
  %add.ptr57 = getelementptr i8, ptr %22, i32 524
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr57) #13, !srcloc !393
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !414
  %24 = or i32 %23, 131072
  %25 = ptrtoint ptr %bigmacregs to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %bigmacregs, align 4
  %add.ptr63 = getelementptr i8, ptr %26, i32 524
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr63, i32 %24) #13, !srcloc !392
  br label %do.body81

if.else64:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #15
  %and66 = and i32 %19, -33
  %27 = ptrtoint ptr %happy_flags65 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %and66, ptr %happy_flags65, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !415
  tail call void @arm_heavy_mb() #13
  %28 = ptrtoint ptr %bigmacregs to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %bigmacregs, align 4
  %add.ptr73 = getelementptr i8, ptr %29, i32 524
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr73) #13, !srcloc !393
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !416
  %31 = and i32 %30, -131073
  %32 = ptrtoint ptr %bigmacregs to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %bigmacregs, align 4
  %add.ptr79 = getelementptr i8, ptr %33, i32 524
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr79, i32 %31) #13, !srcloc !392
  br label %do.body81

do.body81:                                        ; preds = %if.else64, %if.then50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !417
  tail call void @arm_heavy_mb() #13
  %34 = ptrtoint ptr %bigmacregs to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %bigmacregs, align 4
  %add.ptr87 = getelementptr i8, ptr %35, i32 524
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr87) #13, !srcloc !393
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !418
  %37 = or i32 %36, 16777216
  %38 = ptrtoint ptr %bigmacregs to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %bigmacregs, align 4
  %add.ptr93 = getelementptr i8, ptr %39, i32 524
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr93, i32 %37) #13, !srcloc !392
  br label %cleanup

cleanup:                                          ; preds = %do.body81, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body81 ], [ 1, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @happy_meal_init(ptr noundef %hp) unnamed_addr #3 align 64 {
entry:
  %hash_table = alloca [4 x i16], align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.happy_meal, ptr %hp, i32 0, i32 41
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 86
  %2 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_addr, align 64
  %4 = ptrtoint ptr %hp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hp, align 4
  %etxregs2 = getelementptr inbounds %struct.happy_meal, ptr %hp, i32 0, i32 11
  %6 = ptrtoint ptr %etxregs2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %etxregs2, align 4
  %erxregs3 = getelementptr inbounds %struct.happy_meal, ptr %hp, i32 0, i32 12
  %8 = ptrtoint ptr %erxregs3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %erxregs3, align 4
  %bigmacregs = getelementptr inbounds %struct.happy_meal, ptr %hp, i32 0, i32 13
  %10 = ptrtoint ptr %bigmacregs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bigmacregs, align 4
  %tcvregs = getelementptr inbounds %struct.happy_meal, ptr %hp, i32 0, i32 14
  %12 = ptrtoint ptr %tcvregs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %tcvregs, align 4
  %happy_timer = getelementptr inbounds %struct.happy_meal, ptr %hp, i32 0, i32 38
  %call = tail call i32 @del_timer(ptr noundef %happy_timer) #13
  %happy_flags = getelementptr inbounds %struct.happy_meal, ptr %hp, i32 0, i32 16
  %14 = ptrtoint ptr %happy_flags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %happy_flags, align 4
  %and = and i32 %15, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %or = or i32 %15, 512
  %16 = ptrtoint ptr %happy_flags to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %or, ptr %happy_flags, align 4
  tail call fastcc void @happy_meal_get_counters(ptr noundef %hp, ptr noundef %11)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %17 = ptrtoint ptr %happy_flags to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %happy_flags, align 4
  %and.i = and i32 %18, 129
  call void @__sanitizer_cov_trace_const_cmp4(i32 129, i32 %and.i)
  %cmp.not.i = icmp eq i32 %and.i, 129
  br i1 %cmp.not.i, label %do.body.i, label %if.end.happy_meal_poll_stop.exit_crit_edge

if.end.happy_meal_poll_stop.exit_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %happy_meal_poll_stop.exit

do.body.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !419
  tail call void @arm_heavy_mb() #13
  %add.ptr.i = getelementptr i8, ptr %13, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 -65536) #13, !srcloc !392
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !420
  tail call void @arm_heavy_mb() #13
  %add.ptr3.i = getelementptr i8, ptr %13, i32 16
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i) #13, !srcloc !393
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !421
  %20 = and i32 %19, -33554433
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %20) #13, !srcloc !392
  %21 = ptrtoint ptr %happy_flags to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %happy_flags, align 4
  %and8.i = and i32 %22, -2
  store i32 %and8.i, ptr %happy_flags, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %23(i32 noundef 42949600) #13
  br label %happy_meal_poll_stop.exit

happy_meal_poll_stop.exit:                        ; preds = %do.body.i, %if.end.happy_meal_poll_stop.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !391
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 50331648) #13, !srcloc !392
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #13, !srcloc !393
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !394
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.not1.i = icmp eq i32 %24, 0
  br i1 %tobool.not1.i, label %happy_meal_poll_stop.exit.happy_meal_stop.exit_crit_edge, label %happy_meal_poll_stop.exit.land.rhs.i_crit_edge

happy_meal_poll_stop.exit.land.rhs.i_crit_edge:   ; preds = %happy_meal_poll_stop.exit
  br label %land.rhs.i

happy_meal_poll_stop.exit.happy_meal_stop.exit_crit_edge: ; preds = %happy_meal_poll_stop.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %happy_meal_stop.exit

land.rhs.i:                                       ; preds = %while.body.i.land.rhs.i_crit_edge, %happy_meal_poll_stop.exit.land.rhs.i_crit_edge
  %tries.02.i = phi i32 [ %dec.i, %while.body.i.land.rhs.i_crit_edge ], [ 16, %happy_meal_poll_stop.exit.land.rhs.i_crit_edge ]
  %dec.i = add nsw i32 %tries.02.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %tobool3.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool3.not.i, label %do.end7.critedge.i, label %while.body.i

while.body.i:                                     ; preds = %land.rhs.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %25 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %25(i32 noundef 4294960) #13
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #13, !srcloc !393
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !394
  %tobool.not.i = icmp eq i32 %26, 0
  br i1 %tobool.not.i, label %while.body.i.happy_meal_stop.exit_crit_edge, label %while.body.i.land.rhs.i_crit_edge

while.body.i.land.rhs.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.rhs.i

while.body.i.happy_meal_stop.exit_crit_edge:      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %happy_meal_stop.exit

do.end7.critedge.i:                               ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  %call9.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.111) #18
  br label %happy_meal_stop.exit

happy_meal_stop.exit:                             ; preds = %do.end7.critedge.i, %while.body.i.happy_meal_stop.exit_crit_edge, %happy_meal_poll_stop.exit.happy_meal_stop.exit_crit_edge
  %happy_block.i = getelementptr inbounds %struct.happy_meal, ptr %hp, i32 0, i32 1
  %27 = ptrtoint ptr %happy_block.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %happy_block.i, align 4
  %rx_new.i = getelementptr inbounds %struct.happy_meal, ptr %hp, i32 0, i32 7
  %29 = call ptr @memset(ptr %rx_new.i, i32 0, i32 16)
  tail call fastcc void @happy_meal_clean_rings(ptr noundef %hp) #13
  %dma_dev.i = getelementptr inbounds %struct.happy_meal, ptr %hp, i32 0, i32 3
  br label %for.body.i

for.body.i:                                       ; preds = %cleanup.i.for.body.i_crit_edge, %happy_meal_stop.exit
  %i.0102.i = phi i32 [ 0, %happy_meal_stop.exit ], [ %inc.i, %cleanup.i.for.body.i_crit_edge ]
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef 1676, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #13
  %tobool.not.i455 = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i455, label %do.body.critedge.i, label %if.then.i

if.then.i:                                        ; preds = %for.body.i
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %30 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %data.i, align 4
  %32 = ptrtoint ptr %31 to i32
  %add.i = add i32 %32, 63
  %and.i456 = and i32 %add.i, -64
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i456, i32 %32)
  %tobool2.not.i = icmp eq i32 %and.i456, %32
  br i1 %tobool2.not.i, label %if.then.i.if.end9.i_crit_edge, label %if.then3.i

if.then.i.if.end9.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end9.i

if.then3.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  %sub.i = sub i32 %and.i456, %32
  %add.ptr.i.i = getelementptr i8, ptr %31, i32 %sub.i
  %33 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %add.ptr.i.i, ptr %data.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %34 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %tail.i.i, align 8
  %add.ptr1.i.i = getelementptr i8, ptr %35, i32 %sub.i
  store ptr %add.ptr1.i.i, ptr %tail.i.i, align 8
  br label %if.end9.i

do.body.critedge.i:                               ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx.i = getelementptr [256 x %struct.happy_meal_rxd], ptr %28, i32 0, i32 %i.0102.i
  %rx_addr.i = getelementptr [256 x %struct.happy_meal_rxd], ptr %28, i32 0, i32 %i.0102.i, i32 1
  %36 = ptrtoint ptr %rx_addr.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %rx_addr.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !422
  %37 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %arrayidx.i, align 4
  br label %cleanup.i

if.end9.i:                                        ; preds = %if.then3.i, %if.then.i.if.end9.i_crit_edge
  %arrayidx10.i = getelementptr %struct.happy_meal, ptr %hp, i32 0, i32 5, i32 %i.0102.i
  %38 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call.i.i, ptr %arrayidx10.i, align 4
  %call11.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 1520) #13
  %39 = ptrtoint ptr %dma_dev.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dma_dev.i, align 4
  %41 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %data.i, align 4
  %call.i89.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %42) #13
  br i1 %call.i89.i, label %land.rhs.i.i, label %dma_map_single_attrs.exit.i

land.rhs.i.i:                                     ; preds = %if.end9.i
  %.b1.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs.i.i.dma_map_single_attrs.exit.thread.i_crit_edge, label %if.then.i.i, !prof !423

land.rhs.i.i.dma_map_single_attrs.exit.thread.i_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dma_map_single_attrs.exit.thread.i

if.then.i.i:                                      ; preds = %land.rhs.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i = tail call ptr @dev_driver_string(ptr noundef %40) #13
  %init_name.i.i.i = getelementptr inbounds %struct.device, ptr %40, i32 0, i32 3
  %43 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %44, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.dev_name.exit.i.i_crit_edge

if.then.i.i.dev_name.exit.i.i_crit_edge:          ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dev_name.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %45 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %40, align 4
  br label %dev_name.exit.i.i

dev_name.exit.i.i:                                ; preds = %if.end.i.i.i, %if.then.i.i.dev_name.exit.i.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %46, %if.end.i.i.i ], [ %44, %if.then.i.i.dev_name.exit.i.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.113, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.114, ptr noundef %call16.i.i, ptr noundef %retval.0.i.i.i) #13
  br label %dma_map_single_attrs.exit.thread.i

dma_map_single_attrs.exit.thread.i:               ; preds = %dev_name.exit.i.i, %land.rhs.i.i.dma_map_single_attrs.exit.thread.i_crit_edge
  %47 = ptrtoint ptr %dma_dev.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dma_dev.i, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %48, i32 noundef -1) #13
  br label %if.then17.i

dma_map_single_attrs.exit.i:                      ; preds = %if.end9.i
  tail call void @debug_dma_map_single(ptr noundef %40, ptr noundef %42, i32 noundef 1612) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %49 = load ptr, ptr @mem_map, align 4
  %50 = ptrtoint ptr %42 to i32
  %sub.i.i = add i32 %50, 1073741824
  %shr.i.i = lshr i32 %sub.i.i, 12
  %add.ptr.i90.i = getelementptr %struct.page, ptr %49, i32 %shr.i.i
  %and.i.i = and i32 %50, 4095
  %call41.i.i = tail call i32 @dma_map_page_attrs(ptr noundef %40, ptr noundef %add.ptr.i90.i, i32 noundef %and.i.i, i32 noundef 1612, i32 noundef 2, i32 noundef 0) #13
  %51 = ptrtoint ptr %dma_dev.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dma_dev.i, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %52, i32 noundef %call41.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i.i)
  %cmp.i.i = icmp eq i32 %call41.i.i, -1
  br i1 %cmp.i.i, label %dma_map_single_attrs.exit.i.if.then17.i_crit_edge, label %do.body28.i

dma_map_single_attrs.exit.i.if.then17.i_crit_edge: ; preds = %dma_map_single_attrs.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then17.i

if.then17.i:                                      ; preds = %dma_map_single_attrs.exit.i.if.then17.i_crit_edge, %dma_map_single_attrs.exit.thread.i
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %call.i.i, i32 noundef 1) #13
  %arrayidx20.i = getelementptr [256 x %struct.happy_meal_rxd], ptr %28, i32 0, i32 %i.0102.i
  %rx_addr21.i = getelementptr [256 x %struct.happy_meal_rxd], ptr %28, i32 0, i32 %i.0102.i, i32 1
  %53 = ptrtoint ptr %rx_addr21.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 0, ptr %rx_addr21.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !424
  %54 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 0, ptr %arrayidx20.i, align 4
  br label %cleanup.i

do.body28.i:                                      ; preds = %dma_map_single_attrs.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %55 = tail call i32 @llvm.bswap.i32(i32 %call41.i.i) #13
  %arrayidx30.i = getelementptr [256 x %struct.happy_meal_rxd], ptr %28, i32 0, i32 %i.0102.i
  %rx_addr31.i = getelementptr [256 x %struct.happy_meal_rxd], ptr %28, i32 0, i32 %i.0102.i, i32 1
  %56 = ptrtoint ptr %rx_addr31.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %rx_addr31.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !425
  %57 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 19078, ptr %arrayidx30.i, align 4
  %58 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %data.i, align 4
  %add.ptr.i92.i = getelementptr i8, ptr %59, i32 2
  store ptr %add.ptr.i92.i, ptr %data.i, align 4
  %tail.i93.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %60 = ptrtoint ptr %tail.i93.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %tail.i93.i, align 8
  %add.ptr1.i94.i = getelementptr i8, ptr %61, i32 2
  store ptr %add.ptr1.i94.i, ptr %tail.i93.i, align 8
  br label %cleanup.i

cleanup.i:                                        ; preds = %do.body28.i, %if.then17.i, %do.body.critedge.i
  %inc.i = add nuw nsw i32 %i.0102.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 32
  br i1 %exitcond.not.i, label %cleanup.i.do.body41.i_crit_edge, label %cleanup.i.for.body.i_crit_edge

cleanup.i.for.body.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

cleanup.i.do.body41.i_crit_edge:                  ; preds = %cleanup.i
  br label %do.body41.i

do.body41.i:                                      ; preds = %do.body41.i.do.body41.i_crit_edge, %cleanup.i.do.body41.i_crit_edge
  %i.1104.i = phi i32 [ %inc48.i, %do.body41.i.do.body41.i_crit_edge ], [ 0, %cleanup.i.do.body41.i_crit_edge ]
  %arrayidx42.i = getelementptr %struct.hmeal_init_block, ptr %28, i32 0, i32 1, i32 %i.1104.i
  %tx_addr.i = getelementptr %struct.hmeal_init_block, ptr %28, i32 0, i32 1, i32 %i.1104.i, i32 1
  %62 = ptrtoint ptr %tx_addr.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 0, ptr %tx_addr.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !426
  %63 = ptrtoint ptr %arrayidx42.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 0, ptr %arrayidx42.i, align 4
  %inc48.i = add nuw nsw i32 %i.1104.i, 1
  %exitcond105.not.i = icmp eq i32 %inc48.i, 32
  br i1 %exitcond105.not.i, label %happy_meal_init_rings.exit, label %do.body41.i.do.body41.i_crit_edge

do.body41.i.do.body41.i_crit_edge:                ; preds = %do.body41.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body41.i

happy_meal_init_rings.exit:                       ; preds = %do.body41.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !427
  tail call void @arm_heavy_mb() #13
  %add.ptr = getelementptr i8, ptr %13, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 -65536) #13, !srcloc !392
  %64 = ptrtoint ptr %happy_flags to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %happy_flags, align 4
  %and6 = and i32 %65, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13
  tail call void @arm_heavy_mb() #13
  %add.ptr22 = getelementptr i8, ptr %13, i32 16
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr22) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13
  br i1 %tobool7.not, label %do.body17, label %do.body9

do.body9:                                         ; preds = %happy_meal_init_rings.exit
  call void @__sanitizer_cov_trace_pc() #15
  %67 = and i32 %66, -67108865
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22, i32 %67) #13, !srcloc !392
  br label %if.end28

do.body17:                                        ; preds = %happy_meal_init_rings.exit
  call void @__sanitizer_cov_trace_pc() #15
  %68 = or i32 %66, 67108864
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22, i32 %68) #13, !srcloc !392
  br label %if.end28

if.end28:                                         ; preds = %do.body17, %do.body9
  tail call fastcc void @happy_meal_transceiver_check(ptr noundef %hp, ptr noundef %13)
  %tcvr_type = getelementptr inbounds %struct.happy_meal, ptr %hp, i32 0, i32 18
  %69 = ptrtoint ptr %tcvr_type to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %tcvr_type, align 4
  %71 = zext i32 %70 to i64
  call void @__sanitizer_cov_trace_switch(i64 %71, ptr @__sancov_gen_cov_switch_values.216)
  switch i32 %70, label %if.end28.sw.epilog_crit_edge [
    i32 2, label %if.end28.cleanup_crit_edge
    i32 1, label %do.body30
    i32 0, label %do.body35
  ]

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end28.sw.epilog_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

do.body30:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !428
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 0) #13, !srcloc !392
  br label %sw.epilog

do.body35:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !429
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 134217728) #13, !srcloc !392
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.body35, %do.body30, %if.end28.sw.epilog_crit_edge
  %call39 = tail call fastcc i32 @happy_meal_tcvr_reset(ptr noundef %hp, ptr noundef %13)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.end42, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end42:                                         ; preds = %sw.epilog
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !430
  tail call void @arm_heavy_mb() #13
  %add.ptr.i457 = getelementptr i8, ptr %11, i32 520
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i457, i32 0) #13, !srcloc !392
  %72 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i457) #13, !srcloc !393
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !431
  %73 = and i32 %72, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %tobool.not1.i458 = icmp eq i32 %73, 0
  br i1 %tobool.not1.i458, label %if.end42.happy_meal_tx_reset.exit_crit_edge, label %if.end42.land.rhs.i462_crit_edge

if.end42.land.rhs.i462_crit_edge:                 ; preds = %if.end42
  br label %land.rhs.i462

if.end42.happy_meal_tx_reset.exit_crit_edge:      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #15
  br label %happy_meal_tx_reset.exit

land.rhs.i462:                                    ; preds = %while.body.i464.land.rhs.i462_crit_edge, %if.end42.land.rhs.i462_crit_edge
  %tries.02.i459 = phi i32 [ %dec.i460, %while.body.i464.land.rhs.i462_crit_edge ], [ 32, %if.end42.land.rhs.i462_crit_edge ]
  %dec.i460 = add nsw i32 %tries.02.i459, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i460)
  %tobool3.not.i461 = icmp eq i32 %dec.i460, 0
  br i1 %tobool3.not.i461, label %do.end7.critedge.i466, label %while.body.i464

while.body.i464:                                  ; preds = %land.rhs.i462
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %74 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %74(i32 noundef 4294960) #13
  %75 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i457) #13, !srcloc !393
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !431
  %76 = and i32 %75, 16777216
  %tobool.not.i463 = icmp eq i32 %76, 0
  br i1 %tobool.not.i463, label %while.body.i464.happy_meal_tx_reset.exit_crit_edge, label %while.body.i464.land.rhs.i462_crit_edge

while.body.i464.land.rhs.i462_crit_edge:          ; preds = %while.body.i464
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.rhs.i462

while.body.i464.happy_meal_tx_reset.exit_crit_edge: ; preds = %while.body.i464
  call void @__sanitizer_cov_trace_pc() #15
  br label %happy_meal_tx_reset.exit

do.end7.critedge.i466:                            ; preds = %land.rhs.i462
  call void @__sanitizer_cov_trace_pc() #15
  %call9.i465 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.117) #18
  br label %happy_meal_tx_reset.exit

happy_meal_tx_reset.exit:                         ; preds = %do.end7.critedge.i466, %while.body.i464.happy_meal_tx_reset.exit_crit_edge, %if.end42.happy_meal_tx_reset.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !432
  tail call void @arm_heavy_mb() #13
  %add.ptr.i467 = getelementptr i8, ptr %11, i32 776
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i467, i32 0) #13, !srcloc !392
  %77 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i467) #13, !srcloc !393
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !433
  %78 = and i32 %77, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %tobool.not1.i468 = icmp eq i32 %78, 0
  br i1 %tobool.not1.i468, label %happy_meal_tx_reset.exit.happy_meal_rx_reset.exit_crit_edge, label %happy_meal_tx_reset.exit.land.rhs.i472_crit_edge

happy_meal_tx_reset.exit.land.rhs.i472_crit_edge: ; preds = %happy_meal_tx_reset.exit
  br label %land.rhs.i472

happy_meal_tx_reset.exit.happy_meal_rx_reset.exit_crit_edge: ; preds = %happy_meal_tx_reset.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %happy_meal_rx_reset.exit

land.rhs.i472:                                    ; preds = %while.body.i474.land.rhs.i472_crit_edge, %happy_meal_tx_reset.exit.land.rhs.i472_crit_edge
  %tries.02.i469 = phi i32 [ %dec.i470, %while.body.i474.land.rhs.i472_crit_edge ], [ 32, %happy_meal_tx_reset.exit.land.rhs.i472_crit_edge ]
  %dec.i470 = add nsw i32 %tries.02.i469, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i470)
  %tobool3.not.i471 = icmp eq i32 %dec.i470, 0
  br i1 %tobool3.not.i471, label %do.end7.critedge.i476, label %while.body.i474

while.body.i474:                                  ; preds = %land.rhs.i472
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %79 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %79(i32 noundef 4294960) #13
  %80 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i467) #13, !srcloc !393
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !433
  %81 = and i32 %80, 16777216
  %tobool.not.i473 = icmp eq i32 %81, 0
  br i1 %tobool.not.i473, label %while.body.i474.happy_meal_rx_reset.exit_crit_edge, label %while.body.i474.land.rhs.i472_crit_edge

while.body.i474.land.rhs.i472_crit_edge:          ; preds = %while.body.i474
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.rhs.i472

while.body.i474.happy_meal_rx_reset.exit_crit_edge: ; preds = %while.body.i474
  call void @__sanitizer_cov_trace_pc() #15
  br label %happy_meal_rx_reset.exit

do.end7.critedge.i476:                            ; preds = %land.rhs.i472
  call void @__sanitizer_cov_trace_pc() #15
  %call9.i475 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.119) #18
  br label %happy_meal_rx_reset.exit

happy_meal_rx_reset.exit:                         ; preds = %do.end7.critedge.i476, %while.body.i474.happy_meal_rx_reset.exit_crit_edge, %happy_meal_tx_reset.exit.happy_meal_rx_reset.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !434
  tail call void @arm_heavy_mb() #13
  %add.ptr46 = getelementptr i8, ptr %11, i32 556
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr46, i32 67108864) #13, !srcloc !392
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !435
  tail call void @arm_heavy_mb() #13
  %add.ptr50 = getelementptr i8, ptr %11, i32 528
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr50, i32 134217728) #13, !srcloc !392
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !436
  tail call void @arm_heavy_mb() #13
  %add.ptr54 = getelementptr i8, ptr %11, i32 532
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr54, i32 67108864) #13, !srcloc !392
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !437
  tail call void @arm_heavy_mb() #13
  %arrayidx58 = getelementptr i8, ptr %3, i32 5
  %82 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %arrayidx58, align 1
  %conv = zext i8 %83 to i32
  %arrayidx59 = getelementptr i8, ptr %3, i32 4
  %84 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %arrayidx59, align 1
  %conv60 = zext i8 %85 to i32
  %shl = shl nuw nsw i32 %conv60, 8
  %shl.masked = and i32 %shl, 768
  %and62 = or i32 %shl.masked, %conv
  %86 = tail call i32 @llvm.bswap.i32(i32 %and62)
  %add.ptr63 = getelementptr i8, ptr %11, i32 592
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr63, i32 %86) #13, !srcloc !392
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !438
  tail call void @arm_heavy_mb() #13
  %87 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %arrayidx59, align 1
  %conv68 = zext i8 %88 to i32
  %shl69 = shl nuw nsw i32 %conv68, 8
  %89 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %arrayidx58, align 1
  %conv71 = zext i8 %90 to i32
  %or72 = or i32 %shl69, %conv71
  %91 = tail call i32 @llvm.bswap.i32(i32 %or72)
  %add.ptr73 = getelementptr i8, ptr %11, i32 792
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr73, i32 %91) #13, !srcloc !392
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !439
  tail call void @arm_heavy_mb() #13
  %arrayidx77 = getelementptr i8, ptr %3, i32 2
  %92 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %arrayidx77, align 1
  %conv78 = zext i8 %93 to i32
  %shl79 = shl nuw nsw i32 %conv78, 8
  %arrayidx80 = getelementptr i8, ptr %3, i32 3
  %94 = ptrtoint ptr %arrayidx80 to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %arrayidx80, align 1
  %conv81 = zext i8 %95 to i32
  %or82 = or i32 %shl79, %conv81
  %96 = tail call i32 @llvm.bswap.i32(i32 %or82)
  %add.ptr83 = getelementptr i8, ptr %11, i32 796
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr83, i32 %96) #13, !srcloc !392
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !440
  tail call void @arm_heavy_mb() #13
  %97 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %3, align 1
  %conv88 = zext i8 %98 to i32
  %shl89 = shl nuw nsw i32 %conv88, 8
  %arrayidx90 = getelementptr i8, ptr %3, i32 1
  %99 = ptrtoint ptr %arrayidx90 to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %arrayidx90, align 1
  %conv91 = zext i8 %100 to i32
  %or92 = or i32 %shl89, %conv91
  %101 = tail call i32 @llvm.bswap.i32(i32 %or92)
  %add.ptr93 = getelementptr i8, ptr %11, i32 800
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr93, i32 %101) #13, !srcloc !392
  %102 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %dev, align 4
  %flags = getelementptr inbounds %struct.net_device, ptr %103, i32 0, i32 14
  %104 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %flags, align 8
  %and95 = and i32 %105, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and95)
  %tobool96.not = icmp eq i32 %and95, 0
  br i1 %tobool96.not, label %lor.lhs.false, label %happy_meal_rx_reset.exit.do.body100_crit_edge

happy_meal_rx_reset.exit.do.body100_crit_edge:    ; preds = %happy_meal_rx_reset.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body100

lor.lhs.false:                                    ; preds = %happy_meal_rx_reset.exit
  %count = getelementptr inbounds %struct.net_device, ptr %103, i32 0, i32 66, i32 1
  %106 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %107)
  %cmp = icmp sgt i32 %107, 64
  br i1 %cmp, label %lor.lhs.false.do.body100_crit_edge, label %if.else116

lor.lhs.false.do.body100_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body100

do.body100:                                       ; preds = %lor.lhs.false.do.body100_crit_edge, %happy_meal_rx_reset.exit.do.body100_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !441
  tail call void @arm_heavy_mb() #13
  %add.ptr103 = getelementptr i8, ptr %11, i32 844
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr103, i32 -65536) #13, !srcloc !392
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !442
  tail call void @arm_heavy_mb() #13
  %add.ptr107 = getelementptr i8, ptr %11, i32 840
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr107, i32 -65536) #13, !srcloc !392
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !443
  tail call void @arm_heavy_mb() #13
  %add.ptr111 = getelementptr i8, ptr %11, i32 836
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr111, i32 -65536) #13, !srcloc !392
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !444
  tail call void @arm_heavy_mb() #13
  %add.ptr115 = getelementptr i8, ptr %11, i32 832
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr115, i32 -65536) #13, !srcloc !392
  br label %do.body190

if.else116:                                       ; preds = %lor.lhs.false
  %and119 = and i32 %105, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and119)
  %cmp120 = icmp eq i32 %and119, 0
  br i1 %cmp120, label %if.then122, label %do.body172

if.then122:                                       ; preds = %if.else116
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %hash_table) #13
  %108 = getelementptr inbounds [4 x i16], ptr %hash_table, i32 0, i32 1
  %109 = getelementptr inbounds [4 x i16], ptr %hash_table, i32 0, i32 2
  %110 = getelementptr inbounds [4 x i16], ptr %hash_table, i32 0, i32 3
  %111 = ptrtoint ptr %hash_table to i32
  call void @__asan_store8_noabort(i32 %111)
  store i64 0, ptr %hash_table, align 8
  %mc124 = getelementptr inbounds %struct.net_device, ptr %103, i32 0, i32 66
  %112 = ptrtoint ptr %mc124 to i32
  call void @__asan_load4_noabort(i32 %112)
  %ha.0477 = load ptr, ptr %mc124, align 4
  %cmp131.not478 = icmp eq ptr %ha.0477, %mc124
  br i1 %cmp131.not478, label %if.then122.do.body147_crit_edge, label %if.then122.for.body_crit_edge

if.then122.for.body_crit_edge:                    ; preds = %if.then122
  br label %for.body

if.then122.do.body147_crit_edge:                  ; preds = %if.then122
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body147

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.then122.for.body_crit_edge
  %ha.0479 = phi ptr [ %ha.0, %for.body.for.body_crit_edge ], [ %ha.0477, %if.then122.for.body_crit_edge ]
  %addr = getelementptr inbounds %struct.netdev_hw_addr, ptr %ha.0479, i32 0, i32 2
  %call134 = tail call i32 @crc32_le(i32 noundef -1, ptr noundef %addr, i32 noundef 6) #19
  %shr = lshr i32 %call134, 26
  %and135 = and i32 %shr, 15
  %shl136 = shl nuw nsw i32 1, %and135
  %shr137 = lshr i32 %call134, 30
  %arrayidx138 = getelementptr [4 x i16], ptr %hash_table, i32 0, i32 %shr137
  %113 = ptrtoint ptr %arrayidx138 to i32
  call void @__asan_load2_noabort(i32 %113)
  %114 = load i16, ptr %arrayidx138, align 2
  %115 = trunc i32 %shl136 to i16
  %conv141 = or i16 %114, %115
  store i16 %conv141, ptr %arrayidx138, align 2
  %116 = ptrtoint ptr %ha.0479 to i32
  call void @__asan_load4_noabort(i32 %116)
  %ha.0 = load ptr, ptr %ha.0479, align 4
  %cmp131.not = icmp eq ptr %ha.0, %mc124
  br i1 %cmp131.not, label %for.body.do.body147_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.body.do.body147_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body147

do.body147:                                       ; preds = %for.body.do.body147_crit_edge, %if.then122.do.body147_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !445
  tail call void @arm_heavy_mb() #13
  %117 = ptrtoint ptr %hash_table to i32
  call void @__asan_load2_noabort(i32 %117)
  %118 = load i16, ptr %hash_table, align 8
  %conv151 = zext i16 %118 to i32
  %119 = tail call i32 @llvm.bswap.i32(i32 %conv151)
  %add.ptr152 = getelementptr i8, ptr %11, i32 844
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr152, i32 %119) #13, !srcloc !392
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !446
  tail call void @arm_heavy_mb() #13
  %120 = ptrtoint ptr %108 to i32
  call void @__asan_load2_noabort(i32 %120)
  %121 = load i16, ptr %108, align 2
  %conv157 = zext i16 %121 to i32
  %122 = tail call i32 @llvm.bswap.i32(i32 %conv157)
  %add.ptr158 = getelementptr i8, ptr %11, i32 840
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr158, i32 %122) #13, !srcloc !392
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !447
  tail call void @arm_heavy_mb() #13
  %123 = ptrtoint ptr %109 to i32
  call void @__asan_load2_noabort(i32 %123)
  %124 = load i16, ptr %109, align 4
  %conv163 = zext i16 %124 to i32
  %125 = tail call i32 @llvm.bswap.i32(i32 %conv163)
  %add.ptr164 = getelementptr i8, ptr %11, i32 836
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr164, i32 %125) #13, !srcloc !392
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !448
  tail call void @arm_heavy_mb() #13
  %126 = ptrtoint ptr %110 to i32
  call void @__asan_load2_noabort(i32 %126)
  %127 = load i16, ptr %110, align 2
  %conv169 = zext i16 %127 to i32
  %128 = tail call i32 @llvm.bswap.i32(i32 %conv169)
  %add.ptr170 = getelementptr i8, ptr %11, i32 832
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr170, i32 %128) #13, !srcloc !392
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %hash_table) #13
  br label %do.body190

do.body172:                                       ; preds = %if.else116
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !449
  tail call void @arm_heavy_mb() #13
  %add.ptr175 = getelementptr i8, ptr %11, i32 832
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr175, i32 0) #13, !srcloc !392
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !450
  tail call void @arm_heavy_mb() #13
  %add.ptr179 = getelementptr i8, ptr %11, i32 836
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr179, i32 0) #13, !srcloc !392
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !451
  tail call void @arm_heavy_mb() #13
  %add.ptr183 = getelementptr i8, ptr %11, i32 840
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr183, i32 0) #13, !srcloc !392
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !452
  tail call void @arm_heavy_mb() #13
  %add.ptr187 = getelementptr i8, ptr %11, i32 844
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr187, i32 0) #13, !srcloc !392
  br label %do.body190

do.body190:                                       ; preds = %do.body172, %do.body147, %do.body100
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !453
  tail call void @arm_heavy_mb() #13
  %hblock_dvma = getelementptr inbounds %struct.happy_meal, ptr %hp, i32 0, i32 15
  %129 = ptrtoint ptr %hblock_dvma to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %hblock_dvma, align 4
  %131 = tail call i32 @llvm.bswap.i32(i32 %130)
  %add.ptr193 = getelementptr i8, ptr %9, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr193, i32 %131) #13, !srcloc !392
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !454
  tail call void @arm_heavy_mb() #13
  %132 = ptrtoint ptr %hblock_dvma to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %hblock_dvma, align 4
  %add198 = add i32 %133, 2048
  %134 = tail call i32 @llvm.bswap.i32(i32 %add198)
  %add.ptr199 = getelementptr i8, ptr %7, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr199, i32 %134) #13, !srcloc !392
  %135 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr193) #13, !srcloc !393
  %136 = tail call i32 @llvm.bswap.i32(i32 %135)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !455
  %137 = ptrtoint ptr %hblock_dvma to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %hblock_dvma, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %136, i32 %138)
  %cmp208.not = icmp eq i32 %136, %138
  br i1 %cmp208.not, label %do.body190.do.body219_crit_edge, label %do.body211

do.body190.do.body219_crit_edge:                  ; preds = %do.body190
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body219

do.body211:                                       ; preds = %do.body190
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !456
  tail call void @arm_heavy_mb() #13
  %139 = ptrtoint ptr %hblock_dvma to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %hblock_dvma, align 4
  %or216 = or i32 %140, 4
  %141 = tail call i32 @llvm.bswap.i32(i32 %or216)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr193, i32 %141) #13, !srcloc !392
  br label %do.body219

do.body219:                                       ; preds = %do.body211, %do.body190.do.body219_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !457
  tail call void @arm_heavy_mb() #13
  %add.ptr222 = getelementptr i8, ptr %5, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr222, i32 33554432) #13, !srcloc !392
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !458
  tail call void @arm_heavy_mb() #13
  %add.ptr226 = getelementptr i8, ptr %5, i32 260
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr226, i32 50397200) #13, !srcloc !392
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !459
  tail call void @arm_heavy_mb() #13
  %add.ptr230 = getelementptr i8, ptr %7, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr230, i32 16777216) #13, !srcloc !392
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !460
  tail call void @arm_heavy_mb() #13
  %add.ptr236 = getelementptr i8, ptr %7, i32 4
  %142 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr236) #13, !srcloc !393
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !461
  %143 = or i32 %142, 16777216
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr236, i32 %143) #13, !srcloc !392
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !462
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 285214464) #13, !srcloc !392
  %144 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #13, !srcloc !393
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !463
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !464
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 285214464) #13, !srcloc !392
  %145 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #13, !srcloc !393
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !465
  call void @__sanitizer_cov_trace_const_cmp4(i32 285214464, i32 %145)
  %cmp262.not = icmp eq i32 %145, 285214464
  br i1 %cmp262.not, label %do.body219.if.end275_crit_edge, label %do.end267

do.body219.if.end275_crit_edge:                   ; preds = %do.body219
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end275

do.end267:                                        ; preds = %do.body219
  call void @__sanitizer_cov_trace_pc() #15
  %146 = tail call i32 @llvm.bswap.i32(i32 %144)
  %call269 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.106) #18
  %call274 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.109, i32 noundef 458769, i32 noundef %146) #18
  br label %if.end275

if.end275:                                        ; preds = %do.end267, %do.body219.if.end275_crit_edge
  %147 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %dev, align 4
  %flags277 = getelementptr inbounds %struct.net_device, ptr %148, i32 0, i32 14
  %149 = ptrtoint ptr %flags277 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %flags277, align 8
  %and278 = and i32 %150, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and278)
  %tobool279.not = icmp eq i32 %and278, 0
  %spec.select = select i1 %tobool279.not, i32 2560, i32 2624
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !466
  tail call void @arm_heavy_mb() #13
  %151 = tail call i32 @llvm.bswap.i32(i32 %spec.select)
  %add.ptr286 = getelementptr i8, ptr %11, i32 780
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr286, i32 %151) #13, !srcloc !392
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %152 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %152(i32 noundef 2147480) #13
  %153 = ptrtoint ptr %happy_flags to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %happy_flags, align 4
  %and288 = shl i32 %154, 12
  %155 = and i32 %and288, 131072
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !467
  tail call void @arm_heavy_mb() #13
  %add.ptr296 = getelementptr i8, ptr %11, i32 524
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr296, i32 %155) #13, !srcloc !392
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !468
  tail call void @arm_heavy_mb() #13
  %add.ptr300 = getelementptr i8, ptr %11, i32 536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr300, i32 268435456) #13, !srcloc !392
  %156 = ptrtoint ptr %happy_flags to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %happy_flags, align 4
  %and302 = and i32 %157, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and302)
  %tobool303.not = icmp eq i32 %and302, 0
  %regtmp.1 = select i1 %tobool303.not, i32 1, i32 529
  %158 = ptrtoint ptr %tcvr_type to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %tcvr_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %159)
  %cmp308 = icmp eq i32 %159, 0
  %or311 = or i32 %regtmp.1, 8
  %regtmp.2 = select i1 %cmp308, i32 %or311, i32 %regtmp.1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !469
  tail call void @arm_heavy_mb() #13
  %160 = tail call i32 @llvm.bswap.i32(i32 %regtmp.2)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %160) #13, !srcloc !392
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !470
  tail call void @arm_heavy_mb() #13
  %add.ptr320 = getelementptr i8, ptr %11, i32 560
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr320, i32 -234553344) #13, !srcloc !392
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !471
  tail call void @arm_heavy_mb() #13
  %add.ptr324 = getelementptr i8, ptr %11, i32 784
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr324, i32 -234553344) #13, !srcloc !392
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !472
  tail call void @arm_heavy_mb() #13
  %161 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr296) #13, !srcloc !393
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !473
  %162 = or i32 %161, 16777216
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr296, i32 %162) #13, !srcloc !392
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !474
  tail call void @arm_heavy_mb() #13
  %163 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr286) #13, !srcloc !393
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !475
  %164 = or i32 %163, 16777216
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr286, i32 %164) #13, !srcloc !392
  tail call fastcc void @happy_meal_begin_auto_negotiation(ptr noundef %hp, ptr noundef %13, ptr noundef null)
  br label %cleanup

cleanup:                                          ; preds = %if.end275, %sw.epilog.cleanup_crit_edge, %if.end28.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end275 ], [ -11, %if.end28.cleanup_crit_edge ], [ -11, %sw.epilog.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_timer(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @happy_meal_get_counters(ptr nocapture noundef readonly %hp, ptr noundef %bregs) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.happy_meal, ptr %hp, i32 0, i32 41
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %add.ptr = getelementptr i8, ptr %bregs, i32 816
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #13, !srcloc !393
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !476
  %rx_crc_errors = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 12
  %4 = ptrtoint ptr %rx_crc_errors to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rx_crc_errors, align 4
  %add = add i32 %5, %3
  store i32 %add, ptr %rx_crc_errors, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !477
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #13, !srcloc !392
  %add.ptr6 = getelementptr i8, ptr %bregs, i32 812
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6) #13, !srcloc !393
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !478
  %rx_frame_errors = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 13
  %8 = ptrtoint ptr %rx_frame_errors to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rx_frame_errors, align 4
  %add10 = add i32 %9, %7
  store i32 %add10, ptr %rx_frame_errors, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !479
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 0) #13, !srcloc !392
  %add.ptr17 = getelementptr i8, ptr %bregs, i32 808
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr17) #13, !srcloc !393
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !480
  %rx_length_errors = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 10
  %12 = ptrtoint ptr %rx_length_errors to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rx_length_errors, align 4
  %add21 = add i32 %13, %11
  store i32 %add21, ptr %rx_length_errors, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !481
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17, i32 0) #13, !srcloc !392
  %add.ptr28 = getelementptr i8, ptr %bregs, i32 584
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr28) #13, !srcloc !393
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !482
  %tx_aborted_errors = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 16
  %16 = ptrtoint ptr %tx_aborted_errors to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tx_aborted_errors, align 4
  %add32 = add i32 %17, %15
  store i32 %add32, ptr %tx_aborted_errors, align 4
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr28) #13, !srcloc !393
  %19 = tail call i32 @llvm.bswap.i32(i32 %18)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !483
  %add.ptr41 = getelementptr i8, ptr %bregs, i32 588
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr41) #13, !srcloc !393
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !484
  %add45 = add i32 %21, %19
  %collisions = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 9
  %22 = ptrtoint ptr %collisions to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %collisions, align 4
  %add46 = add i32 %add45, %23
  store i32 %add46, ptr %collisions, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !485
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr28, i32 0) #13, !srcloc !392
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !486
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr41, i32 0) #13, !srcloc !392
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @happy_meal_transceiver_check(ptr nocapture noundef %hp, ptr noundef %tregs) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %tregs, i32 16
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #13, !srcloc !393
  %1 = tail call i32 @llvm.bswap.i32(i32 %0)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !487
  %happy_flags = getelementptr inbounds %struct.happy_meal, ptr %hp, i32 0, i32 16
  %2 = ptrtoint ptr %happy_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %happy_flags, align 4
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else37, label %if.then

if.then:                                          ; preds = %entry
  %tcvr_type = getelementptr inbounds %struct.happy_meal, ptr %hp, i32 0, i32 18
  %4 = ptrtoint ptr %tcvr_type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tcvr_type, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.217)
  switch i32 %5, label %if.then.if.end74_crit_edge [
    i32 1, label %if.then2
    i32 0, label %if.then11
  ]

if.then.if.end74_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end74

if.then2:                                         ; preds = %if.then
  %and3 = and i32 %1, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %if.then2.if.end74_crit_edge, label %if.then5

if.then2.if.end74_crit_edge:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end74

if.then5:                                         ; preds = %if.then2
  %and.i = and i32 %3, 129
  call void @__sanitizer_cov_trace_const_cmp4(i32 129, i32 %and.i)
  %cmp.not.i = icmp eq i32 %and.i, 129
  br i1 %cmp.not.i, label %do.body.i, label %if.then5.happy_meal_poll_stop.exit_crit_edge

if.then5.happy_meal_poll_stop.exit_crit_edge:     ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #15
  br label %happy_meal_poll_stop.exit

do.body.i:                                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !419
  tail call void @arm_heavy_mb() #13
  %add.ptr.i = getelementptr i8, ptr %tregs, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 -65536) #13, !srcloc !392
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !420
  tail call void @arm_heavy_mb() #13
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #13, !srcloc !393
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !421
  %8 = and i32 %7, -33554433
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %8) #13, !srcloc !392
  %9 = ptrtoint ptr %happy_flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %happy_flags, align 4
  %and8.i = and i32 %10, -2
  store i32 %and8.i, ptr %happy_flags, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 42949600) #13
  br label %happy_meal_poll_stop.exit

happy_meal_poll_stop.exit:                        ; preds = %do.body.i, %if.then5.happy_meal_poll_stop.exit_crit_edge
  %paddr = getelementptr inbounds %struct.happy_meal, ptr %hp, i32 0, i32 20
  %12 = ptrtoint ptr %paddr to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %paddr, align 4
  %13 = ptrtoint ptr %tcvr_type to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %tcvr_type, align 4
  %and7 = and i32 %1, -4
  %or = or i32 %and7, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !488
  tail call void @arm_heavy_mb() #13
  %14 = tail call i32 @llvm.bswap.i32(i32 %or)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %14) #13, !srcloc !392
  br label %if.end74

if.then11:                                        ; preds = %if.then
  %add.ptr14 = getelementptr i8, ptr %tregs, i32 24
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr14) #13, !srcloc !393
  %16 = tail call i32 @llvm.bswap.i32(i32 %15)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !489
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %16)
  %tobool18.not = icmp ult i32 %16, 65536
  br i1 %tobool18.not, label %if.then19, label %if.then11.if.end74_crit_edge

if.then11.if.end74_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end74

if.then19:                                        ; preds = %if.then11
  %17 = ptrtoint ptr %happy_flags to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %happy_flags, align 4
  %and.i104 = and i32 %18, 129
  call void @__sanitizer_cov_trace_const_cmp4(i32 129, i32 %and.i104)
  %cmp.not.i105 = icmp eq i32 %and.i104, 129
  br i1 %cmp.not.i105, label %do.body.i109, label %if.then19.happy_meal_poll_stop.exit110_crit_edge

if.then19.happy_meal_poll_stop.exit110_crit_edge: ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #15
  br label %happy_meal_poll_stop.exit110

do.body.i109:                                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !419
  tail call void @arm_heavy_mb() #13
  %add.ptr.i106 = getelementptr i8, ptr %tregs, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i106, i32 -65536) #13, !srcloc !392
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !420
  tail call void @arm_heavy_mb() #13
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #13, !srcloc !393
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !421
  %20 = and i32 %19, -33554433
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %20) #13, !srcloc !392
  %21 = ptrtoint ptr %happy_flags to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %happy_flags, align 4
  %and8.i108 = and i32 %22, -2
  store i32 %and8.i108, ptr %happy_flags, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %23(i32 noundef 42949600) #13
  br label %happy_meal_poll_stop.exit110

happy_meal_poll_stop.exit110:                     ; preds = %do.body.i109, %if.then19.happy_meal_poll_stop.exit110_crit_edge
  %paddr20 = getelementptr inbounds %struct.happy_meal, ptr %hp, i32 0, i32 20
  %24 = ptrtoint ptr %paddr20 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1, ptr %paddr20, align 4
  %25 = ptrtoint ptr %tcvr_type to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 1, ptr %tcvr_type, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !490
  tail call void @arm_heavy_mb() #13
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #13, !srcloc !393
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !491
  %27 = and i32 %26, -16777217
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %27) #13, !srcloc !392
  br label %if.end74

if.else37:                                        ; preds = %entry
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #13, !srcloc !393
  %29 = tail call i32 @llvm.bswap.i32(i32 %28)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !492
  %and44 = and i32 %29, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44)
  %tobool45.not = icmp eq i32 %and44, 0
  br i1 %tobool45.not, label %if.else54, label %do.body47

do.body47:                                        ; preds = %if.else37
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !493
  tail call void @arm_heavy_mb() #13
  %or50 = or i32 %1, 1
  %30 = tail call i32 @llvm.bswap.i32(i32 %or50)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %30) #13, !srcloc !392
  %paddr52 = getelementptr inbounds %struct.happy_meal, ptr %hp, i32 0, i32 20
  %31 = ptrtoint ptr %paddr52 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %paddr52, align 4
  %tcvr_type53 = getelementptr inbounds %struct.happy_meal, ptr %hp, i32 0, i32 18
  %32 = ptrtoint ptr %tcvr_type53 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %tcvr_type53, align 4
  br label %if.end74

if.else54:                                        ; preds = %if.else37
  %and55 = and i32 %29, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55)
  %tobool56.not = icmp eq i32 %and55, 0
  br i1 %tobool56.not, label %do.end68, label %do.body58

do.body58:                                        ; preds = %if.else54
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !494
  tail call void @arm_heavy_mb() #13
  %and61 = and i32 %1, -2
  %33 = tail call i32 @llvm.bswap.i32(i32 %and61)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %33) #13, !srcloc !392
  %paddr63 = getelementptr inbounds %struct.happy_meal, ptr %hp, i32 0, i32 20
  %34 = ptrtoint ptr %paddr63 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 1, ptr %paddr63, align 4
  %tcvr_type64 = getelementptr inbounds %struct.happy_meal, ptr %hp, i32 0, i32 18
  %35 = ptrtoint ptr %tcvr_type64 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 1, ptr %tcvr_type64, align 4
  br label %if.end74

do.end68:                                         ; preds = %if.else54
  call void @__sanitizer_cov_trace_pc() #15
  %call70 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.115) #18
  %tcvr_type71 = getelementptr inbounds %struct.happy_meal, ptr %hp, i32 0, i32 18
  %36 = ptrtoint ptr %tcvr_type71 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 2, ptr %tcvr_type71, align 4
  br label %if.end74

if.end74:                                         ; preds = %do.end68, %do.body58, %do.body47, %happy_meal_poll_stop.exit110, %if.then11.if.end74_crit_edge, %happy_meal_poll_stop.exit, %if.then2.if.end74_crit_edge, %if.then.if.end74_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @happy_meal_tcvr_reset(ptr noundef %hp, ptr noundef %tregs) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %tregs, i32 16
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #13, !srcloc !393
  %1 = tail call i32 @llvm.bswap.i32(i32 %0)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !495
  %tcvr_type = getelementptr inbounds %struct.happy_meal, ptr %hp, i32 0, i32 18
  %2 = ptrtoint ptr %tcvr_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tcvr_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %do.body, label %if.else

do.body:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !496
  tail call void @arm_heavy_mb() #13
  %and = and i32 %1, -2
  %4 = tail call i32 @llvm.bswap.i32(i32 %and)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %4) #13, !srcloc !392
  %5 = ptrtoint ptr %tcvr_type to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %tcvr_type, align 4
  %paddr = getelementptr inbounds %struct.happy_meal, ptr %hp, i32 0, i32 20
  %6 = ptrtoint ptr %paddr to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %paddr, align 4
  tail call fastcc void @happy_meal_tcvr_write(ptr noundef %hp, ptr noundef %tregs, i32 noundef 0, i16 noundef zeroext 19456)
  %call4 = tail call fastcc i32 @happy_meal_tcvr_read(ptr noundef %hp, ptr noundef %tregs, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483648, i32 %call4)
  %cmp5 = icmp eq i32 %call4, -2147483648
  br i1 %cmp5, label %do.body.cleanup_crit_edge, label %do.body7

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.body7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !497
  tail call void @arm_heavy_mb() #13
  %or = or i32 %1, 1
  %7 = tail call i32 @llvm.bswap.i32(i32 %or)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %7) #13, !srcloc !392
  %8 = ptrtoint ptr %tcvr_type to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %tcvr_type, align 4
  %9 = ptrtoint ptr %paddr to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %paddr, align 4
  br label %if.end32

if.else:                                          ; preds = %entry
  %and13 = and i32 %1, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool.not = icmp eq i32 %and13, 0
  br i1 %tobool.not, label %if.else.if.end32_crit_edge, label %do.body15

if.else.if.end32_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end32

do.body15:                                        ; preds = %if.else
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !498
  tail call void @arm_heavy_mb() #13
  %or18 = or i32 %1, 1
  %10 = tail call i32 @llvm.bswap.i32(i32 %or18)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %10) #13, !srcloc !392
  tail call fastcc void @happy_meal_tcvr_write(ptr noundef %hp, ptr noundef %tregs, i32 noundef 0, i16 noundef zeroext 19456)
  %call20 = tail call fastcc i32 @happy_meal_tcvr_read(ptr noundef %hp, ptr noundef %tregs, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483648, i32 %call20)
  %cmp21 = icmp eq i32 %call20, -2147483648
  br i1 %cmp21, label %do.body15.cleanup_crit_edge, label %do.body24

do.body15.cleanup_crit_edge:                      ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.body24:                                        ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !499
  tail call void @arm_heavy_mb() #13
  %and27 = and i32 %1, -2
  %11 = tail call i32 @llvm.bswap.i32(i32 %and27)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %11) #13, !srcloc !392
  %12 = ptrtoint ptr %tcvr_type to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %tcvr_type, align 4
  %paddr30 = getelementptr inbounds %struct.happy_meal, ptr %hp, i32 0, i32 20
  %13 = ptrtoint ptr %paddr30 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %paddr30, align 4
  br label %if.end32

if.end32:                                         ; preds = %do.body24, %if.else.if.end32_crit_edge, %do.body7
  tail call fastcc void @happy_meal_tcvr_write(ptr noundef %hp, ptr noundef %tregs, i32 noundef 0, i16 noundef zeroext -32768)
  %sw_bmcr = getelementptr inbounds %struct.happy_meal, ptr %hp, i32 0, i32 22
  br label %while.body

while.body:                                       ; preds = %if.end41.while.body_crit_edge, %if.end32
  %dec145 = phi i32 [ 15, %if.end32 ], [ %dec, %if.end41.while.body_crit_edge ]
  %call34 = tail call fastcc i32 @happy_meal_tcvr_read(ptr noundef %hp, ptr noundef %tregs, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483648, i32 %call34)
  %cmp35 = icmp eq i32 %call34, -2147483648
  br i1 %cmp35, label %while.body.cleanup_crit_edge, label %if.end37

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end37:                                         ; preds = %while.body
  %conv = trunc i32 %call34 to i16
  %14 = ptrtoint ptr %sw_bmcr to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %conv, ptr %sw_bmcr, align 2
  %and38 = and i32 %call34, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  br i1 %tobool39.not, label %if.end44, label %if.end41

if.end41:                                         ; preds = %if.end37
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 4294960) #13
  %dec = add nsw i32 %dec145, -1
  %tobool33.not = icmp eq i32 %dec, 0
  br i1 %tobool33.not, label %if.end41.cleanup_crit_edge, label %if.end41.while.body_crit_edge

if.end41.while.body_crit_edge:                    ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

if.end41.cleanup_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end44:                                         ; preds = %if.end37
  %call45 = tail call fastcc i32 @happy_meal_tcvr_read(ptr noundef %hp, ptr noundef %tregs, i32 noundef 1)
  %conv46 = trunc i32 %call45 to i16
  %sw_bmsr = getelementptr inbounds %struct.happy_meal, ptr %hp, i32 0, i32 23
  %16 = ptrtoint ptr %sw_bmsr to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %conv46, ptr %sw_bmsr, align 4
  %call47 = tail call fastcc i32 @happy_meal_tcvr_read(ptr noundef %hp, ptr noundef %tregs, i32 noundef 2)
  %conv48 = trunc i32 %call47 to i16
  %sw_physid1 = getelementptr inbounds %struct.happy_meal, ptr %hp, i32 0, i32 24
  %17 = ptrtoint ptr %sw_physid1 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %conv48, ptr %sw_physid1, align 2
  %call49 = tail call fastcc i32 @happy_meal_tcvr_read(ptr noundef %hp, ptr noundef %tregs, i32 noundef 3)
  %conv50 = trunc i32 %call49 to i16
  %sw_physid2 = getelementptr inbounds %struct.happy_meal, ptr %hp, i32 0, i32 25
  %18 = ptrtoint ptr %sw_physid2 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %conv50, ptr %sw_physid2, align 4
  %call51 = tail call fastcc i32 @happy_meal_tcvr_read(ptr noundef %hp, ptr noundef %tregs, i32 noundef 4)
  %conv52 = trunc i32 %call51 to i16
  %sw_advertise = getelementptr inbounds %struct.happy_meal, ptr %hp, i32 0, i32 26
  %19 = ptrtoint ptr %sw_advertise to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %conv52, ptr %sw_advertise, align 2
  %20 = ptrtoint ptr %sw_bmcr to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %sw_bmcr, align 2
  %22 = and i16 %21, -1025
  store i16 %22, ptr %sw_bmcr, align 2
  tail call fastcc void @happy_meal_tcvr_write(ptr noundef %hp, ptr noundef %tregs, i32 noundef 0, i16 noundef zeroext %22)
  br label %while.body61

while.body61:                                     ; preds = %if.end70.while.body61_crit_edge, %if.end44
  %dec59146 = phi i32 [ 31, %if.end44 ], [ %dec59, %if.end70.while.body61_crit_edge ]
  %call62 = tail call fastcc i32 @happy_meal_tcvr_read(ptr noundef %hp, ptr noundef %tregs, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483648, i32 %call62)
  %cmp63 = icmp eq i32 %call62, -2147483648
  br i1 %cmp63, label %while.body61.cleanup_crit_edge, label %if.end66

while.body61.cleanup_crit_edge:                   ; preds = %while.body61
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end66:                                         ; preds = %while.body61
  %and67 = and i32 %call62, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and67)
  %tobool68.not = icmp eq i32 %and67, 0
  br i1 %tobool68.not, label %if.end74, label %if.end70

if.end70:                                         ; preds = %if.end66
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %23(i32 noundef 4294960) #13
  %dec59 = add nsw i32 %dec59146, -1
  %tobool60.not = icmp eq i32 %dec59, 0
  br i1 %tobool60.not, label %if.end70.cleanup_crit_edge, label %if.end70.while.body61_crit_edge

if.end70.while.body61_crit_edge:                  ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body61

if.end70.cleanup_crit_edge:                       ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end74:                                         ; preds = %if.end66
  %tcvregs.i = getelementptr inbounds %struct.happy_meal, ptr %hp, i32 0, i32 14
  %24 = ptrtoint ptr %tcvregs.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %tcvregs.i, align 4
  %call.i = tail call fastcc i32 @happy_meal_tcvr_read(ptr noundef %hp, ptr noundef %25, i32 noundef 2) #13
  %call1.i = tail call fastcc i32 @happy_meal_tcvr_read(ptr noundef %hp, ptr noundef %25, i32 noundef 3) #13
  %conv3.i = and i32 %call.i, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 384, i32 %conv3.i)
  %cmp.i = icmp ne i32 %conv3.i, 384
  %26 = and i32 %call1.i, 64512
  call void @__sanitizer_cov_trace_const_cmp4(i32 29696, i32 %26)
  %cmp7.i = icmp ne i32 %26, 29696
  %or.cond.i = select i1 %cmp.i, i1 true, i1 %cmp7.i
  br i1 %or.cond.i, label %if.then77, label %if.end74.cleanup_crit_edge

if.end74.cleanup_crit_edge:                       ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then77:                                        ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #15
  %call78 = tail call fastcc i32 @happy_meal_tcvr_read(ptr noundef %hp, ptr noundef %tregs, i32 noundef 23)
  %27 = trunc i32 %call78 to i16
  %conv80 = or i16 %27, 32
  tail call fastcc void @happy_meal_tcvr_write(ptr noundef %hp, ptr noundef %tregs, i32 noundef 23, i16 noundef zeroext %conv80)
  br label %cleanup

cleanup:                                          ; preds = %if.then77, %if.end74.cleanup_crit_edge, %if.end70.cleanup_crit_edge, %while.body61.cleanup_crit_edge, %if.end41.cleanup_crit_edge, %while.body.cleanup_crit_edge, %do.body15.cleanup_crit_edge, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %do.body.cleanup_crit_edge ], [ -1, %do.body15.cleanup_crit_edge ], [ 0, %if.then77 ], [ 0, %if.end74.cleanup_crit_edge ], [ -1, %while.body61.cleanup_crit_edge ], [ -1, %if.end70.cleanup_crit_edge ], [ -1, %while.body.cleanup_crit_edge ], [ -1, %if.end41.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_le(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @happy_meal_begin_auto_negotiation(ptr noundef %hp, ptr noundef %tregs, ptr noundef readonly %ep) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @happy_meal_tcvr_read(ptr noundef %hp, ptr noundef %tregs, i32 noundef 1)
  %conv = trunc i32 %call to i16
  %sw_bmsr = getelementptr inbounds %struct.happy_meal, ptr %hp, i32 0, i32 23
  %0 = ptrtoint ptr %sw_bmsr to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 %conv, ptr %sw_bmsr, align 4
  %call1 = tail call fastcc i32 @happy_meal_tcvr_read(ptr noundef %hp, ptr noundef %tregs, i32 noundef 0)
  %conv2 = trunc i32 %call1 to i16
  %sw_bmcr = getelementptr inbounds %struct.happy_meal, ptr %hp, i32 0, i32 22
  %1 = ptrtoint ptr %sw_bmcr to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 %conv2, ptr %sw_bmcr, align 2
  %call3 = tail call fastcc i32 @happy_meal_tcvr_read(ptr noundef %hp, ptr noundef %tregs, i32 noundef 2)
  %conv4 = trunc i32 %call3 to i16
  %sw_physid1 = getelementptr inbounds %struct.happy_meal, ptr %hp, i32 0, i32 24
  %2 = ptrtoint ptr %sw_physid1 to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %conv4, ptr %sw_physid1, align 2
  %call5 = tail call fastcc i32 @happy_meal_tcvr_read(ptr noundef %hp, ptr noundef %tregs, i32 noundef 3)
  %conv6 = trunc i32 %call5 to i16
  %sw_physid2 = getelementptr inbounds %struct.happy_meal, ptr %hp, i32 0, i32 25
  %3 = ptrtoint ptr %sw_physid2 to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %conv6, ptr %sw_physid2, align 4
  %call7 = tail call fastcc i32 @happy_meal_tcvr_read(ptr noundef %hp, ptr noundef %tregs, i32 noundef 4)
  %conv8 = trunc i32 %call7 to i16
  %sw_advertise = getelementptr inbounds %struct.happy_meal, ptr %hp, i32 0, i32 26
  %4 = ptrtoint ptr %sw_advertise to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %conv8, ptr %sw_advertise, align 2
  %tobool.not = icmp eq ptr %ep, null
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %autoneg = getelementptr inbounds %struct.ethtool_link_settings, ptr %ep, i32 0, i32 5
  %5 = ptrtoint ptr %autoneg to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %autoneg, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %6)
  %cmp = icmp eq i8 %6, 1
  br i1 %cmp, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false.lor.lhs.false105_crit_edge

lor.lhs.false.lor.lhs.false105_crit_edge:         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.lhs.false105

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %7 = ptrtoint ptr %sw_bmsr to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %sw_bmsr, align 4
  %9 = and i16 %conv8, -481
  %10 = lshr i16 %8, 6
  %11 = and i16 %10, 32
  %storemerge = or i16 %11, %9
  %12 = and i16 %10, 64
  %storemerge217 = or i16 %storemerge, %12
  %13 = and i16 %10, 128
  %storemerge218 = or i16 %storemerge217, %13
  %14 = and i16 %10, 256
  %storemerge219 = or i16 %storemerge218, %14
  %15 = ptrtoint ptr %sw_advertise to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %storemerge219, ptr %sw_advertise, align 2
  tail call fastcc void @happy_meal_tcvr_write(ptr noundef %hp, ptr noundef %tregs, i32 noundef 4, i16 noundef zeroext %storemerge219)
  %16 = ptrtoint ptr %sw_bmcr to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %sw_bmcr, align 2
  %18 = or i16 %17, 4096
  store i16 %18, ptr %sw_bmcr, align 2
  tail call fastcc void @happy_meal_tcvr_write(ptr noundef %hp, ptr noundef %tregs, i32 noundef 0, i16 noundef zeroext %18)
  %19 = ptrtoint ptr %sw_bmcr to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %sw_bmcr, align 2
  %21 = or i16 %20, 512
  store i16 %21, ptr %sw_bmcr, align 2
  tail call fastcc void @happy_meal_tcvr_write(ptr noundef %hp, ptr noundef %tregs, i32 noundef 0, i16 noundef zeroext %21)
  br label %while.body

while.body:                                       ; preds = %if.end87.while.body_crit_edge, %if.then
  %dec221 = phi i32 [ 63, %if.then ], [ %dec, %if.end87.while.body_crit_edge ]
  %call79 = tail call fastcc i32 @happy_meal_tcvr_read(ptr noundef %hp, ptr noundef %tregs, i32 noundef 0)
  %conv80 = trunc i32 %call79 to i16
  %22 = ptrtoint ptr %sw_bmcr to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %conv80, ptr %sw_bmcr, align 2
  %and84 = and i32 %call79, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and84)
  %tobool85.not = icmp eq i32 %and84, 0
  br i1 %tobool85.not, label %while.body.if.end146_crit_edge, label %if.end87

while.body.if.end146_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end146

if.end87:                                         ; preds = %while.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %23(i32 noundef 2147480) #13
  %dec = add nsw i32 %dec221, -1
  %tobool78.not = icmp eq i32 %dec, 0
  br i1 %tobool78.not, label %do.end.critedge, label %if.end87.while.body_crit_edge

if.end87.while.body_crit_edge:                    ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

do.end.critedge:                                  ; preds = %if.end87
  %dev = getelementptr inbounds %struct.happy_meal, ptr %hp, i32 0, i32 41
  %24 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev, align 4
  %26 = ptrtoint ptr %sw_bmcr to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %sw_bmcr, align 2
  %conv91 = zext i16 %27 to i32
  %call92 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.121, ptr noundef %25, i32 noundef %conv91) #18
  %28 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev, align 4
  %call100 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.124, ptr noundef %29) #18
  br i1 %tobool.not, label %do.end.critedge.if.end132.sink.split_crit_edge, label %do.end.critedge.lor.lhs.false105_crit_edge

do.end.critedge.lor.lhs.false105_crit_edge:       ; preds = %do.end.critedge
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.lhs.false105

do.end.critedge.if.end132.sink.split_crit_edge:   ; preds = %do.end.critedge
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end132.sink.split

lor.lhs.false105:                                 ; preds = %do.end.critedge.lor.lhs.false105_crit_edge, %lor.lhs.false.lor.lhs.false105_crit_edge
  %autoneg107 = getelementptr inbounds %struct.ethtool_link_settings, ptr %ep, i32 0, i32 5
  %30 = ptrtoint ptr %autoneg107 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %autoneg107, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %31)
  %cmp109 = icmp eq i8 %31, 1
  br i1 %cmp109, label %lor.lhs.false105.if.end132.sink.split_crit_edge, label %if.else113

lor.lhs.false105.if.end132.sink.split_crit_edge:  ; preds = %lor.lhs.false105
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end132.sink.split

if.else113:                                       ; preds = %lor.lhs.false105
  %speed = getelementptr inbounds %struct.ethtool_link_settings, ptr %ep, i32 0, i32 1
  %32 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %speed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %33)
  %cmp115 = icmp eq i32 %33, 100
  %. = select i1 %cmp115, i16 8192, i16 0
  %34 = ptrtoint ptr %sw_bmcr to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %., ptr %sw_bmcr, align 2
  %duplex = getelementptr inbounds %struct.ethtool_link_settings, ptr %ep, i32 0, i32 2
  %35 = ptrtoint ptr %duplex to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %duplex, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %36)
  %cmp124 = icmp eq i8 %36, 1
  br i1 %cmp124, label %if.then126, label %if.else113.if.end132_crit_edge

if.else113.if.end132_crit_edge:                   ; preds = %if.else113
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end132

if.then126:                                       ; preds = %if.else113
  call void @__sanitizer_cov_trace_pc() #15
  %37 = or i16 %., 256
  br label %if.end132.sink.split

if.end132.sink.split:                             ; preds = %if.then126, %lor.lhs.false105.if.end132.sink.split_crit_edge, %do.end.critedge.if.end132.sink.split_crit_edge
  %.sink = phi i16 [ %37, %if.then126 ], [ 8192, %lor.lhs.false105.if.end132.sink.split_crit_edge ], [ 8192, %do.end.critedge.if.end132.sink.split_crit_edge ]
  %38 = ptrtoint ptr %sw_bmcr to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %.sink, ptr %sw_bmcr, align 2
  br label %if.end132

if.end132:                                        ; preds = %if.end132.sink.split, %if.else113.if.end132_crit_edge
  %39 = ptrtoint ptr %sw_bmcr to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %sw_bmcr, align 2
  tail call fastcc void @happy_meal_tcvr_write(ptr noundef %hp, ptr noundef %tregs, i32 noundef 0, i16 noundef zeroext %40)
  %tcvregs.i = getelementptr inbounds %struct.happy_meal, ptr %hp, i32 0, i32 14
  %41 = ptrtoint ptr %tcvregs.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %tcvregs.i, align 4
  %call.i = tail call fastcc i32 @happy_meal_tcvr_read(ptr noundef %hp, ptr noundef %42, i32 noundef 2) #13
  %call1.i = tail call fastcc i32 @happy_meal_tcvr_read(ptr noundef %hp, ptr noundef %42, i32 noundef 3) #13
  %conv3.i = and i32 %call.i, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 384, i32 %conv3.i)
  %cmp.i = icmp ne i32 %conv3.i, 384
  %43 = and i32 %call1.i, 64512
  call void @__sanitizer_cov_trace_const_cmp4(i32 29696, i32 %43)
  %cmp7.i = icmp ne i32 %43, 29696
  %or.cond.i = select i1 %cmp.i, i1 true, i1 %cmp7.i
  br i1 %or.cond.i, label %if.then136, label %if.end132.if.end146_crit_edge

if.end132.if.end146_crit_edge:                    ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end146

if.then136:                                       ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #15
  %call137 = tail call fastcc i32 @happy_meal_tcvr_read(ptr noundef %hp, ptr noundef %tregs, i32 noundef 23)
  %sw_csconfig = getelementptr inbounds %struct.happy_meal, ptr %hp, i32 0, i32 29
  %44 = trunc i32 %call137 to i16
  %conv142 = and i16 %44, -17
  %45 = ptrtoint ptr %sw_csconfig to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %conv142, ptr %sw_csconfig, align 4
  tail call fastcc void @happy_meal_tcvr_write(ptr noundef %hp, ptr noundef %tregs, i32 noundef 23, i16 noundef zeroext %conv142)
  br label %if.end146

if.end146:                                        ; preds = %if.then136, %if.end132.if.end146_crit_edge, %while.body.if.end146_crit_edge
  %.sink222 = phi i32 [ 2, %if.then136 ], [ 2, %if.end132.if.end146_crit_edge ], [ 0, %while.body.if.end146_crit_edge ]
  %timer_state145 = getelementptr inbounds %struct.happy_meal, ptr %hp, i32 0, i32 39
  %46 = ptrtoint ptr %timer_state145 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %.sink222, ptr %timer_state145, align 4
  %timer_ticks = getelementptr inbounds %struct.happy_meal, ptr %hp, i32 0, i32 40
  %47 = ptrtoint ptr %timer_ticks to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %timer_ticks, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %48 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %48, 120
  %happy_timer = getelementptr inbounds %struct.happy_meal, ptr %hp, i32 0, i32 38
  %expires = getelementptr inbounds %struct.happy_meal, ptr %hp, i32 0, i32 38, i32 1
  %49 = ptrtoint ptr %expires to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %add, ptr %expires, align 4
  tail call void @add_timer(ptr noundef %happy_timer) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @happy_meal_clean_rings(ptr nocapture noundef %hp) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %happy_block = getelementptr inbounds %struct.happy_meal, ptr %hp, i32 0, i32 1
  %dma_dev = getelementptr inbounds %struct.happy_meal, ptr %hp, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.086 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.happy_meal, ptr %hp, i32 0, i32 5, i32 %i.086
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %cmp1.not = icmp eq ptr %1, null
  br i1 %cmp1.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %2 = ptrtoint ptr %happy_block to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %happy_block, align 4
  %rx_addr = getelementptr [256 x %struct.happy_meal_rxd], ptr %3, i32 0, i32 %i.086, i32 1
  %4 = ptrtoint ptr %rx_addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rx_addr, align 4
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #13
  %7 = ptrtoint ptr %dma_dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dma_dev, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %8, i32 noundef %6, i32 noundef 1612, i32 noundef 2, i32 noundef 0) #13
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %1, i32 noundef 1) #13
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.086, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.inc.for.body9_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.inc.for.body9_crit_edge:                      ; preds = %for.inc
  br label %for.body9

for.body9:                                        ; preds = %for.inc47.for.body9_crit_edge, %for.inc.for.body9_crit_edge
  %i.192 = phi i32 [ %inc48, %for.inc47.for.body9_crit_edge ], [ 0, %for.inc.for.body9_crit_edge ]
  %arrayidx10 = getelementptr %struct.happy_meal, ptr %hp, i32 0, i32 6, i32 %i.192
  %10 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx10, align 4
  %cmp11.not = icmp eq ptr %11, null
  br i1 %cmp11.not, label %for.body9.for.inc47_crit_edge, label %if.end34.peel

for.body9.for.inc47_crit_edge:                    ; preds = %for.body9
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc47

if.end34.peel:                                    ; preds = %for.body9
  %12 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %arrayidx10, align 4
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %11, i32 0, i32 17
  %13 = ptrtoint ptr %happy_block to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %happy_block, align 4
  %tx_addr.peel = getelementptr %struct.hmeal_init_block, ptr %14, i32 0, i32 1, i32 %i.192, i32 1
  %15 = ptrtoint ptr %tx_addr.peel to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %tx_addr.peel, align 4
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #13
  %arrayidx25.peel = getelementptr %struct.hmeal_init_block, ptr %14, i32 0, i32 1, i32 %i.192
  %18 = ptrtoint ptr %dma_dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dma_dev, align 4
  %20 = ptrtoint ptr %arrayidx25.peel to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx25.peel, align 4
  %22 = and i32 %21, -12648448
  %23 = tail call i32 @llvm.bswap.i32(i32 %22)
  tail call void @dma_unmap_page_attrs(ptr noundef %19, i32 noundef %17, i32 noundef %23, i32 noundef 1, i32 noundef 0) #13
  %24 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %end.i, align 4
  %nr_frags36.peel = getelementptr inbounds %struct.skb_shared_info, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %nr_frags36.peel to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %nr_frags36.peel, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %cmp38.not.peel = icmp ne i8 %27, 0
  %inc41.peel = zext i1 %cmp38.not.peel to i32
  %spec.select.peel = add nsw i32 %i.192, %inc41.peel
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %cmp21.not.peel = icmp eq i8 %27, 0
  br i1 %cmp21.not.peel, label %if.end34.peel.for.end45_crit_edge, label %if.end34.peel.if.end34_crit_edge

if.end34.peel.if.end34_crit_edge:                 ; preds = %if.end34.peel
  br label %if.end34

if.end34.peel.for.end45_crit_edge:                ; preds = %if.end34.peel
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end45

if.end34:                                         ; preds = %if.end34.if.end34_crit_edge, %if.end34.peel.if.end34_crit_edge
  %frag.091 = phi i32 [ %inc44, %if.end34.if.end34_crit_edge ], [ 1, %if.end34.peel.if.end34_crit_edge ]
  %i.290 = phi i32 [ %spec.select, %if.end34.if.end34_crit_edge ], [ %spec.select.peel, %if.end34.peel.if.end34_crit_edge ]
  %28 = ptrtoint ptr %happy_block to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %happy_block, align 4
  %tx_addr = getelementptr %struct.hmeal_init_block, ptr %29, i32 0, i32 1, i32 %i.290, i32 1
  %30 = ptrtoint ptr %tx_addr to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %tx_addr, align 4
  %32 = tail call i32 @llvm.bswap.i32(i32 %31) #13
  %arrayidx25 = getelementptr %struct.hmeal_init_block, ptr %29, i32 0, i32 1, i32 %i.290
  %33 = ptrtoint ptr %dma_dev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dma_dev, align 4
  %35 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx25, align 4
  %37 = and i32 %36, -12648448
  %38 = tail call i32 @llvm.bswap.i32(i32 %37)
  tail call void @dma_unmap_page_attrs(ptr noundef %34, i32 noundef %32, i32 noundef %38, i32 noundef 1, i32 noundef 0) #13
  %39 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %end.i, align 4
  %nr_frags36 = getelementptr inbounds %struct.skb_shared_info, ptr %40, i32 0, i32 2
  %41 = ptrtoint ptr %nr_frags36 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %nr_frags36, align 2
  %conv37 = zext i8 %42 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %frag.091, i32 %conv37)
  %cmp38.not = icmp ne i32 %frag.091, %conv37
  %inc41 = zext i1 %cmp38.not to i32
  %spec.select = add i32 %i.290, %inc41
  %inc44 = add nuw nsw i32 %frag.091, 1
  %cmp21.not.not = icmp ult i32 %frag.091, %conv37
  br i1 %cmp21.not.not, label %if.end34.if.end34_crit_edge, label %if.end34.for.end45_crit_edge, !llvm.loop !500

if.end34.for.end45_crit_edge:                     ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end45

if.end34.if.end34_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end34

for.end45:                                        ; preds = %if.end34.for.end45_crit_edge, %if.end34.peel.for.end45_crit_edge
  %spec.select.lcssa = phi i32 [ %spec.select.peel, %if.end34.peel.for.end45_crit_edge ], [ %spec.select, %if.end34.for.end45_crit_edge ]
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %11, i32 noundef 1) #13
  br label %for.inc47

for.inc47:                                        ; preds = %for.end45, %for.body9.for.inc47_crit_edge
  %i.4 = phi i32 [ %spec.select.lcssa, %for.end45 ], [ %i.192, %for.body9.for.inc47_crit_edge ]
  %inc48 = add i32 %i.4, 1
  %cmp8 = icmp slt i32 %inc48, 32
  br i1 %cmp8, label %for.inc47.for.body9_crit_edge, label %for.end49

for.inc47.for.body9_crit_edge:                    ; preds = %for.inc47
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body9

for.end49:                                        ; preds = %for.inc47
  call void @__sanitizer_cov_trace_pc() #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @happy_meal_open(ptr noundef %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %happy_flags = getelementptr i8, ptr %dev, i32 2656
  %0 = ptrtoint ptr %happy_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %happy_flags, align 4
  %and = and i32 %1, 6144
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %and)
  %cmp.not = icmp eq i32 %and, 4096
  br i1 %cmp.not, label %entry.if.end5_crit_edge, label %if.then

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end5

if.then:                                          ; preds = %entry
  %irq = getelementptr i8, ptr %dev, i32 2660
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %3, ptr noundef nonnull @happy_meal_interrupt, ptr noundef null, i32 noundef 128, ptr noundef %dev, ptr noundef %dev) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.then.if.end5_crit_edge, label %do.end

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end5

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq, align 4
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.126, i32 noundef %5) #18
  br label %cleanup

if.end5:                                          ; preds = %if.then.if.end5_crit_edge, %entry.if.end5_crit_edge
  %happy_lock = getelementptr i8, ptr %dev, i32 2320
  tail call void @_raw_spin_lock_irq(ptr noundef %happy_lock) #13
  %call6 = tail call fastcc i32 @happy_meal_init(ptr noundef %add.ptr.i)
  tail call void @_raw_spin_unlock_irq(ptr noundef %happy_lock) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool8.not = icmp eq i32 %call6, 0
  br i1 %tobool8.not, label %if.end5.cleanup_crit_edge, label %land.lhs.true

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end5
  %6 = ptrtoint ptr %happy_flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %happy_flags, align 4
  %and10 = and i32 %7, 6144
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %and10)
  %cmp11.not = icmp eq i32 %and10, 4096
  br i1 %cmp11.not, label %land.lhs.true.cleanup_crit_edge, label %if.then12

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then12:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %irq13 = getelementptr i8, ptr %dev, i32 2660
  %8 = ptrtoint ptr %irq13 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %irq13, align 4
  %call14 = tail call ptr @free_irq(i32 noundef %9, ptr noundef %dev) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then12, %land.lhs.true.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -11, %do.end ], [ %call6, %if.then12 ], [ %call6, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @happy_meal_close(ptr noundef %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %happy_lock = getelementptr i8, ptr %dev, i32 2320
  tail call void @_raw_spin_lock_irq(ptr noundef %happy_lock) #13
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !391
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 50331648) #13, !srcloc !392
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #13, !srcloc !393
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !394
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not1.i = icmp eq i32 %2, 0
  br i1 %tobool.not1.i, label %entry.happy_meal_stop.exit_crit_edge, label %entry.land.rhs.i_crit_edge

entry.land.rhs.i_crit_edge:                       ; preds = %entry
  br label %land.rhs.i

entry.happy_meal_stop.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %happy_meal_stop.exit

land.rhs.i:                                       ; preds = %while.body.i.land.rhs.i_crit_edge, %entry.land.rhs.i_crit_edge
  %tries.02.i = phi i32 [ %dec.i, %while.body.i.land.rhs.i_crit_edge ], [ 16, %entry.land.rhs.i_crit_edge ]
  %dec.i = add nsw i32 %tries.02.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %tobool3.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool3.not.i, label %do.end7.critedge.i, label %while.body.i

while.body.i:                                     ; preds = %land.rhs.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %3(i32 noundef 4294960) #13
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #13, !srcloc !393
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !394
  %tobool.not.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i, label %while.body.i.happy_meal_stop.exit_crit_edge, label %while.body.i.land.rhs.i_crit_edge

while.body.i.land.rhs.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.rhs.i

while.body.i.happy_meal_stop.exit_crit_edge:      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %happy_meal_stop.exit

do.end7.critedge.i:                               ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  %call9.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.111) #18
  br label %happy_meal_stop.exit

happy_meal_stop.exit:                             ; preds = %do.end7.critedge.i, %while.body.i.happy_meal_stop.exit_crit_edge, %entry.happy_meal_stop.exit_crit_edge
  tail call fastcc void @happy_meal_clean_rings(ptr noundef %add.ptr.i)
  %happy_timer = getelementptr i8, ptr %dev, i32 2728
  %call1 = tail call i32 @del_timer(ptr noundef %happy_timer) #13
  tail call void @_raw_spin_unlock_irq(ptr noundef %happy_lock) #13
  %happy_flags = getelementptr i8, ptr %dev, i32 2656
  %5 = ptrtoint ptr %happy_flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %happy_flags, align 4
  %and = and i32 %6, 6144
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %and)
  %cmp.not = icmp eq i32 %and, 4096
  br i1 %cmp.not, label %happy_meal_stop.exit.if.end_crit_edge, label %if.then

happy_meal_stop.exit.if.end_crit_edge:            ; preds = %happy_meal_stop.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %happy_meal_stop.exit
  call void @__sanitizer_cov_trace_pc() #15
  %irq = getelementptr i8, ptr %dev, i32 2660
  %7 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %irq, align 4
  %call3 = tail call ptr @free_irq(i32 noundef %8, ptr noundef %dev) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %happy_meal_stop.exit.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @happy_meal_start_xmit(ptr noundef %skb, ptr noundef %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %ip_summed = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %0 = ptrtoint ptr %ip_summed to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %ip_summed, align 8
  %1 = and i16 %bf.load, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1536, i16 %1)
  %cmp = icmp eq i16 %1, 1536
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
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
  %csum_offset = getelementptr inbounds %struct.anon.53, ptr %2, i32 0, i32 1
  %9 = ptrtoint ptr %csum_offset to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %csum_offset, align 2
  %conv4 = zext i16 %10 to i32
  %add = add i32 %sub.i, %conv4
  %shl = shl i32 %sub.i, 14
  %and = and i32 %shl, 1032192
  %shl5 = shl i32 %add, 20
  %and6 = and i32 %shl5, 267386880
  %or = or i32 %and, %and6
  %or7 = or i32 %or, -1879048192
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %tx_flags.0 = phi i32 [ %or7, %if.then ], [ -2147483648, %entry.if.end_crit_edge ]
  %happy_lock = getelementptr i8, ptr %dev, i32 2320
  tail call void @_raw_spin_lock_irq(ptr noundef %happy_lock) #13
  %tx_old = getelementptr i8, ptr %dev, i32 2632
  %11 = ptrtoint ptr %tx_old to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %tx_old, align 4
  %tx_new = getelementptr i8, ptr %dev, i32 2624
  %13 = ptrtoint ptr %tx_new to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tx_new, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %14)
  %cmp8.not = icmp sgt i32 %12, %14
  %add11 = add i32 %12, 31
  %sub = sub i32 %add11, %14
  %15 = xor i32 %14, -1
  %sub16 = add i32 %12, %15
  %cond = select i1 %cmp8.not, i32 %sub16, i32 %sub
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %16 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %end.i, align 4
  %nr_frags = getelementptr inbounds %struct.skb_shared_info, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %nr_frags to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %nr_frags, align 2
  %conv18 = zext i8 %19 to i32
  %add19 = add nuw nsw i32 %conv18, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %cond, i32 %add19)
  %cmp20.not = icmp sgt i32 %cond, %add19
  br i1 %cmp20.not, label %if.end25, label %if.then22

if.then22:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %20 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %21, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #13
  tail call void @_raw_spin_unlock_irq(ptr noundef %happy_lock) #13
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.205, ptr noundef %dev) #18
  br label %cleanup179

if.end25:                                         ; preds = %if.end
  %arrayidx = getelementptr %struct.happy_meal, ptr %add.ptr.i, i32 0, i32 6, i32 %14
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %skb, ptr %arrayidx, align 4
  %23 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %end.i, align 4
  %nr_frags28 = getelementptr inbounds %struct.skb_shared_info, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %nr_frags28 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %nr_frags28, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %cmp30 = icmp eq i8 %26, 0
  %len33 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %27 = ptrtoint ptr %len33 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %len33, align 4
  br i1 %cmp30, label %if.then32, label %if.else

if.then32:                                        ; preds = %if.end25
  %dma_dev = getelementptr i8, ptr %dev, i32 2316
  %29 = ptrtoint ptr %dma_dev to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dma_dev, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %31 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %data, align 4
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %32) #13
  br i1 %call.i, label %land.rhs.i, label %dma_map_single_attrs.exit

land.rhs.i:                                       ; preds = %if.then32
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge, label %if.then.i, !prof !423

land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dma_map_single_attrs.exit.thread

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %30) #13
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %30, i32 0, i32 3
  %33 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %34, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  %35 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %30, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %36, %if.end.i.i ], [ %34, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.113, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.114, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #13
  br label %dma_map_single_attrs.exit.thread

dma_map_single_attrs.exit.thread:                 ; preds = %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge
  %37 = ptrtoint ptr %dma_dev to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dma_dev, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %38, i32 noundef -1) #13
  br label %out_dma_error

dma_map_single_attrs.exit:                        ; preds = %if.then32
  tail call void @debug_dma_map_single(ptr noundef %30, ptr noundef %32, i32 noundef %28) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %39 = load ptr, ptr @mem_map, align 4
  %40 = ptrtoint ptr %32 to i32
  %sub.i271 = add i32 %40, 1073741824
  %shr.i = lshr i32 %sub.i271, 12
  %add.ptr.i272 = getelementptr %struct.page, ptr %39, i32 %shr.i
  %and.i = and i32 %40, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %30, ptr noundef %add.ptr.i272, i32 noundef %and.i, i32 noundef %28, i32 noundef 1, i32 noundef 0) #13
  %41 = ptrtoint ptr %dma_dev to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dma_dev, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %42, i32 noundef %call41.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i)
  %cmp.i = icmp eq i32 %call41.i, -1
  br i1 %cmp.i, label %dma_map_single_attrs.exit.out_dma_error_crit_edge, label %cleanup

dma_map_single_attrs.exit.out_dma_error_crit_edge: ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_dma_error

cleanup:                                          ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #15
  %43 = tail call i32 @llvm.bswap.i32(i32 %call41.i)
  %happy_block = getelementptr i8, ptr %dev, i32 2308
  %44 = ptrtoint ptr %happy_block to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %happy_block, align 4
  %tx_addr = getelementptr %struct.hmeal_init_block, ptr %45, i32 0, i32 1, i32 %14, i32 1
  %46 = ptrtoint ptr %tx_addr to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %43, ptr %tx_addr, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !502
  %and44 = and i32 %28, 16383
  %or41 = or i32 %tx_flags.0, %and44
  %or45 = or i32 %or41, 1610612736
  %47 = tail call i32 @llvm.bswap.i32(i32 %or45)
  %48 = ptrtoint ptr %happy_block to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %happy_block, align 4
  %arrayidx48 = getelementptr %struct.hmeal_init_block, ptr %49, i32 0, i32 1, i32 %14
  %50 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %47, ptr %arrayidx48, align 4
  %add52 = add i32 %14, 1
  %and53 = and i32 %add52, 31
  br label %if.end145

if.else:                                          ; preds = %if.end25
  %data_len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %51 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %data_len.i, align 8
  %sub.i273 = sub i32 %28, %52
  %dma_dev56 = getelementptr i8, ptr %dev, i32 2316
  %53 = ptrtoint ptr %dma_dev56 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dma_dev56, align 4
  %data57 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %55 = ptrtoint ptr %data57 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %data57, align 4
  %call.i274 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %56) #13
  br i1 %call.i274, label %land.rhs.i276, label %dma_map_single_attrs.exit291

land.rhs.i276:                                    ; preds = %if.else
  %.b1.i275 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i275, label %land.rhs.i276.dma_map_single_attrs.exit291.thread_crit_edge, label %if.then.i280, !prof !423

land.rhs.i276.dma_map_single_attrs.exit291.thread_crit_edge: ; preds = %land.rhs.i276
  call void @__sanitizer_cov_trace_pc() #15
  br label %dma_map_single_attrs.exit291.thread

if.then.i280:                                     ; preds = %land.rhs.i276
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i277 = tail call ptr @dev_driver_string(ptr noundef %54) #13
  %init_name.i.i278 = getelementptr inbounds %struct.device, ptr %54, i32 0, i32 3
  %57 = ptrtoint ptr %init_name.i.i278 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %init_name.i.i278, align 8
  %tobool.not.i.i279 = icmp eq ptr %58, null
  br i1 %tobool.not.i.i279, label %if.end.i.i281, label %if.then.i280.dev_name.exit.i283_crit_edge

if.then.i280.dev_name.exit.i283_crit_edge:        ; preds = %if.then.i280
  call void @__sanitizer_cov_trace_pc() #15
  br label %dev_name.exit.i283

if.end.i.i281:                                    ; preds = %if.then.i280
  call void @__sanitizer_cov_trace_pc() #15
  %59 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %54, align 4
  br label %dev_name.exit.i283

dev_name.exit.i283:                               ; preds = %if.end.i.i281, %if.then.i280.dev_name.exit.i283_crit_edge
  %retval.0.i.i282 = phi ptr [ %60, %if.end.i.i281 ], [ %58, %if.then.i280.dev_name.exit.i283_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.113, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.114, ptr noundef %call16.i277, ptr noundef %retval.0.i.i282) #13
  br label %dma_map_single_attrs.exit291.thread

dma_map_single_attrs.exit291.thread:              ; preds = %dev_name.exit.i283, %land.rhs.i276.dma_map_single_attrs.exit291.thread_crit_edge
  %61 = ptrtoint ptr %dma_dev56 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %dma_dev56, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %62, i32 noundef -1) #13
  br label %out_dma_error

dma_map_single_attrs.exit291:                     ; preds = %if.else
  tail call void @debug_dma_map_single(ptr noundef %54, ptr noundef %56, i32 noundef %sub.i273) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %63 = load ptr, ptr @mem_map, align 4
  %64 = ptrtoint ptr %56 to i32
  %sub.i284 = add i32 %64, 1073741824
  %shr.i285 = lshr i32 %sub.i284, 12
  %add.ptr.i286 = getelementptr %struct.page, ptr %63, i32 %shr.i285
  %and.i287 = and i32 %64, 4095
  %call41.i288 = tail call i32 @dma_map_page_attrs(ptr noundef %54, ptr noundef %add.ptr.i286, i32 noundef %and.i287, i32 noundef %sub.i273, i32 noundef 1, i32 noundef 0) #13
  %65 = ptrtoint ptr %dma_dev56 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %dma_dev56, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %66, i32 noundef %call41.i288) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i288)
  %cmp.i292 = icmp eq i32 %call41.i288, -1
  br i1 %cmp.i292, label %dma_map_single_attrs.exit291.out_dma_error_crit_edge, label %for.cond.preheader

dma_map_single_attrs.exit291.out_dma_error_crit_edge: ; preds = %dma_map_single_attrs.exit291
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_dma_error

for.cond.preheader:                               ; preds = %dma_map_single_attrs.exit291
  %entry1.1.in325 = add i32 %14, 1
  %entry1.1326 = and i32 %entry1.1.in325, 31
  %67 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %end.i, align 4
  %nr_frags73327 = getelementptr inbounds %struct.skb_shared_info, ptr %68, i32 0, i32 2
  %69 = ptrtoint ptr %nr_frags73327 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %nr_frags73327, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %70)
  %cmp75329.not = icmp eq i8 %70, 0
  br i1 %cmp75329.not, label %for.cond.preheader.cleanup139_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup139_crit_edge:          ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup139

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %or102 = or i32 %tx_flags.0, 536870912
  %happy_block105 = getelementptr i8, ptr %dev, i32 2308
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %71 = phi ptr [ %68, %for.body.lr.ph ], [ %95, %for.inc.for.body_crit_edge ]
  %entry1.1331 = phi i32 [ %entry1.1326, %for.body.lr.ph ], [ %entry1.1, %for.inc.for.body_crit_edge ]
  %frag.0330 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx78 = getelementptr %struct.skb_shared_info, ptr %71, i32 0, i32 12, i32 %frag.0330
  %bv_len.i = getelementptr %struct.skb_shared_info, ptr %71, i32 0, i32 12, i32 %frag.0330, i32 1
  %72 = ptrtoint ptr %bv_len.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %bv_len.i, align 4
  %74 = ptrtoint ptr %dma_dev56 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %dma_dev56, align 4
  %76 = ptrtoint ptr %arrayidx78 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %arrayidx78, align 4
  %bv_offset.i.i = getelementptr %struct.skb_shared_info, ptr %71, i32 0, i32 12, i32 %frag.0330, i32 2
  %78 = ptrtoint ptr %bv_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %bv_offset.i.i, align 4
  %call2.i = tail call i32 @dma_map_page_attrs(ptr noundef %75, ptr noundef %77, i32 noundef %79, i32 noundef %73, i32 noundef 1, i32 noundef 0) #13
  %80 = ptrtoint ptr %dma_dev56 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %dma_dev56, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %81, i32 noundef %call2.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call2.i)
  %cmp.i296.not = icmp eq i32 %call2.i, -1
  br i1 %cmp.i296.not, label %cleanup119, label %for.inc, !prof !503

cleanup119:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @unmap_partial_tx_skb(ptr noundef %add.ptr.i, i32 noundef %call41.i288, i32 noundef %sub.i273, i32 noundef %14, i32 noundef %entry1.1331)
  br label %out_dma_error

for.inc:                                          ; preds = %for.body
  %82 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %end.i, align 4
  %nr_frags96 = getelementptr inbounds %struct.skb_shared_info, ptr %83, i32 0, i32 2
  %84 = ptrtoint ptr %nr_frags96 to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %nr_frags96, align 2
  %conv97 = zext i8 %85 to i32
  %sub98 = add nsw i32 %conv97, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %frag.0330, i32 %sub98)
  %cmp99 = icmp eq i32 %frag.0330, %sub98
  %spec.select = select i1 %cmp99, i32 %or102, i32 %tx_flags.0
  %86 = tail call i32 @llvm.bswap.i32(i32 %call2.i)
  %87 = ptrtoint ptr %happy_block105 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %happy_block105, align 4
  %tx_addr108 = getelementptr %struct.hmeal_init_block, ptr %88, i32 0, i32 1, i32 %entry1.1331, i32 1
  %89 = ptrtoint ptr %tx_addr108 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %86, ptr %tx_addr108, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !504
  %and109 = and i32 %73, 16383
  %or110 = or i32 %spec.select, %and109
  %90 = tail call i32 @llvm.bswap.i32(i32 %or110)
  %91 = ptrtoint ptr %happy_block105 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %happy_block105, align 4
  %arrayidx113 = getelementptr %struct.hmeal_init_block, ptr %92, i32 0, i32 1, i32 %entry1.1331
  %93 = ptrtoint ptr %arrayidx113 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %90, ptr %arrayidx113, align 4
  %inc = add nuw nsw i32 %frag.0330, 1
  %entry1.1.in = add nuw nsw i32 %entry1.1331, 1
  %entry1.1 = and i32 %entry1.1.in, 31
  %94 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %end.i, align 4
  %nr_frags73 = getelementptr inbounds %struct.skb_shared_info, ptr %95, i32 0, i32 2
  %96 = ptrtoint ptr %nr_frags73 to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %nr_frags73, align 2
  %conv74 = zext i8 %97 to i32
  %cmp75 = icmp ult i32 %inc, %conv74
  br i1 %cmp75, label %for.inc.for.body_crit_edge, label %for.inc.cleanup139_crit_edge

for.inc.cleanup139_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup139

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

cleanup139:                                       ; preds = %for.inc.cleanup139_crit_edge, %for.cond.preheader.cleanup139_crit_edge
  %entry1.1.lcssa = phi i32 [ %entry1.1326, %for.cond.preheader.cleanup139_crit_edge ], [ %entry1.1, %for.inc.cleanup139_crit_edge ]
  %98 = tail call i32 @llvm.bswap.i32(i32 %call41.i288)
  %happy_block126 = getelementptr i8, ptr %dev, i32 2308
  %99 = ptrtoint ptr %happy_block126 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %happy_block126, align 4
  %tx_addr129 = getelementptr %struct.hmeal_init_block, ptr %100, i32 0, i32 1, i32 %14, i32 1
  %101 = ptrtoint ptr %tx_addr129 to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %98, ptr %tx_addr129, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !505
  %and131 = and i32 %sub.i273, 16383
  %or130 = or i32 %tx_flags.0, %and131
  %or132 = or i32 %or130, 1073741824
  %102 = tail call i32 @llvm.bswap.i32(i32 %or132)
  %103 = ptrtoint ptr %happy_block126 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %happy_block126, align 4
  %arrayidx135 = getelementptr %struct.hmeal_init_block, ptr %104, i32 0, i32 1, i32 %14
  %105 = ptrtoint ptr %arrayidx135 to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %102, ptr %arrayidx135, align 4
  br label %if.end145

if.end145:                                        ; preds = %cleanup139, %cleanup
  %entry1.4 = phi i32 [ %and53, %cleanup ], [ %entry1.1.lcssa, %cleanup139 ]
  %106 = ptrtoint ptr %tx_new to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %entry1.4, ptr %tx_new, align 4
  %107 = ptrtoint ptr %tx_old to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %tx_old, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %108, i32 %entry1.4)
  %cmp149.not = icmp sgt i32 %108, %entry1.4
  %add153 = sub nuw nsw i32 31, %entry1.4
  %109 = xor i32 %entry1.4, -1
  %cond162.v = select i1 %cmp149.not, i32 %109, i32 %add153
  %cond162 = add i32 %108, %cond162.v
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %cond162)
  %cmp163 = icmp ult i32 %cond162, 19
  br i1 %cmp163, label %if.then165, label %if.end145.do.body167_crit_edge

if.end145.do.body167_crit_edge:                   ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body167

if.then165:                                       ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #15
  %_tx.i.i299 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %110 = ptrtoint ptr %_tx.i.i299 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %_tx.i.i299, align 128
  %state.i.i300 = getelementptr inbounds %struct.netdev_queue, ptr %111, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i300) #13
  br label %do.body167

do.body167:                                       ; preds = %if.then165, %if.end145.do.body167_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !506
  tail call void @arm_heavy_mb() #13
  %etxregs = getelementptr i8, ptr %dev, i32 2636
  %112 = ptrtoint ptr %etxregs to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %etxregs, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %113, i32 16777216) #13, !srcloc !392
  tail call void @_raw_spin_unlock_irq(ptr noundef %happy_lock) #13
  br label %cleanup179

out_dma_error:                                    ; preds = %cleanup119, %dma_map_single_attrs.exit291.out_dma_error_crit_edge, %dma_map_single_attrs.exit291.thread, %dma_map_single_attrs.exit.out_dma_error_crit_edge, %dma_map_single_attrs.exit.thread
  %114 = ptrtoint ptr %tx_new to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %tx_new, align 4
  %arrayidx176 = getelementptr %struct.happy_meal, ptr %add.ptr.i, i32 0, i32 6, i32 %115
  %116 = ptrtoint ptr %arrayidx176 to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr null, ptr %arrayidx176, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %happy_lock) #13
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #13
  %tx_dropped = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 7
  %117 = ptrtoint ptr %tx_dropped to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %tx_dropped, align 4
  %inc178 = add i32 %118, 1
  store i32 %inc178, ptr %tx_dropped, align 4
  br label %cleanup179

cleanup179:                                       ; preds = %out_dma_error, %do.body167, %if.then22
  %retval.0 = phi i32 [ 16, %if.then22 ], [ 0, %out_dma_error ], [ 0, %do.body167 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @happy_meal_set_multicast(ptr noundef %dev) #3 align 64 {
entry:
  %hash_table = alloca [4 x i16], align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %bigmacregs = getelementptr i8, ptr %dev, i32 2644
  %0 = ptrtoint ptr %bigmacregs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bigmacregs, align 4
  %happy_lock = getelementptr i8, ptr %dev, i32 2320
  tail call void @_raw_spin_lock_irq(ptr noundef %happy_lock) #13
  %flags = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 14
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 8
  %and = and i32 %3, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body

lor.lhs.false:                                    ; preds = %entry
  %mc = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 66
  %count = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 66, i32 1
  %4 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %5)
  %cmp = icmp sgt i32 %5, 64
  br i1 %cmp, label %lor.lhs.false.do.body_crit_edge, label %if.else

lor.lhs.false.do.body_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body

do.body:                                          ; preds = %lor.lhs.false.do.body_crit_edge, %entry.do.body_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !507
  tail call void @arm_heavy_mb() #13
  %add.ptr = getelementptr i8, ptr %1, i32 844
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 -65536) #13, !srcloc !392
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !508
  tail call void @arm_heavy_mb() #13
  %add.ptr4 = getelementptr i8, ptr %1, i32 840
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 -65536) #13, !srcloc !392
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !509
  tail call void @arm_heavy_mb() #13
  %add.ptr8 = getelementptr i8, ptr %1, i32 836
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 -65536) #13, !srcloc !392
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !510
  tail call void @arm_heavy_mb() #13
  %add.ptr12 = getelementptr i8, ptr %1, i32 832
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12, i32 -65536) #13, !srcloc !392
  br label %if.end67

if.else:                                          ; preds = %lor.lhs.false
  %and14 = and i32 %3, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %if.else24, label %do.body17

do.body17:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !511
  tail call void @arm_heavy_mb() #13
  %add.ptr20 = getelementptr i8, ptr %1, i32 780
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20) #13, !srcloc !393
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !512
  %7 = or i32 %6, 1073741824
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20, i32 %7) #13, !srcloc !392
  br label %if.end67

if.else24:                                        ; preds = %if.else
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %hash_table) #13
  %8 = getelementptr inbounds [4 x i16], ptr %hash_table, i32 0, i32 1
  %9 = getelementptr inbounds [4 x i16], ptr %hash_table, i32 0, i32 2
  %10 = getelementptr inbounds [4 x i16], ptr %hash_table, i32 0, i32 3
  %11 = ptrtoint ptr %hash_table to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 0, ptr %hash_table, align 8
  %12 = ptrtoint ptr %mc to i32
  call void @__asan_load4_noabort(i32 %12)
  %ha.089 = load ptr, ptr %mc, align 4
  %cmp31.not90 = icmp eq ptr %ha.089, %mc
  br i1 %cmp31.not90, label %if.else24.do.body43_crit_edge, label %if.else24.for.body_crit_edge

if.else24.for.body_crit_edge:                     ; preds = %if.else24
  br label %for.body

if.else24.do.body43_crit_edge:                    ; preds = %if.else24
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body43

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.else24.for.body_crit_edge
  %ha.091 = phi ptr [ %ha.0, %for.body.for.body_crit_edge ], [ %ha.089, %if.else24.for.body_crit_edge ]
  %addr = getelementptr inbounds %struct.netdev_hw_addr, ptr %ha.091, i32 0, i32 2
  %call33 = tail call i32 @crc32_le(i32 noundef -1, ptr noundef %addr, i32 noundef 6) #19
  %shr = lshr i32 %call33, 26
  %and34 = and i32 %shr, 15
  %shl = shl nuw nsw i32 1, %and34
  %shr35 = lshr i32 %call33, 30
  %arrayidx = getelementptr [4 x i16], ptr %hash_table, i32 0, i32 %shr35
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %arrayidx, align 2
  %15 = trunc i32 %shl to i16
  %conv37 = or i16 %14, %15
  store i16 %conv37, ptr %arrayidx, align 2
  %16 = ptrtoint ptr %ha.091 to i32
  call void @__asan_load4_noabort(i32 %16)
  %ha.0 = load ptr, ptr %ha.091, align 4
  %cmp31.not = icmp eq ptr %ha.0, %mc
  br i1 %cmp31.not, label %for.body.do.body43_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.body.do.body43_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body43

do.body43:                                        ; preds = %for.body.do.body43_crit_edge, %if.else24.do.body43_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !513
  tail call void @arm_heavy_mb() #13
  %17 = ptrtoint ptr %hash_table to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %hash_table, align 8
  %conv47 = zext i16 %18 to i32
  %19 = tail call i32 @llvm.bswap.i32(i32 %conv47)
  %add.ptr48 = getelementptr i8, ptr %1, i32 844
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr48, i32 %19) #13, !srcloc !392
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !514
  tail call void @arm_heavy_mb() #13
  %20 = ptrtoint ptr %8 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %8, align 2
  %conv53 = zext i16 %21 to i32
  %22 = tail call i32 @llvm.bswap.i32(i32 %conv53)
  %add.ptr54 = getelementptr i8, ptr %1, i32 840
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr54, i32 %22) #13, !srcloc !392
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !515
  tail call void @arm_heavy_mb() #13
  %23 = ptrtoint ptr %9 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %9, align 4
  %conv59 = zext i16 %24 to i32
  %25 = tail call i32 @llvm.bswap.i32(i32 %conv59)
  %add.ptr60 = getelementptr i8, ptr %1, i32 836
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr60, i32 %25) #13, !srcloc !392
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !516
  tail call void @arm_heavy_mb() #13
  %26 = ptrtoint ptr %10 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %10, align 2
  %conv65 = zext i16 %27 to i32
  %28 = tail call i32 @llvm.bswap.i32(i32 %conv65)
  %add.ptr66 = getelementptr i8, ptr %1, i32 832
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr66, i32 %28) #13, !srcloc !392
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %hash_table) #13
  br label %if.end67

if.end67:                                         ; preds = %do.body43, %do.body17, %do.body
  tail call void @_raw_spin_unlock_irq(ptr noundef %happy_lock) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_mac_addr(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_validate_addr(ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @happy_meal_tx_timeout(ptr noundef %dev, i32 noundef %txqueue) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.207, ptr noundef %dev) #18
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 256
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #13, !srcloc !393
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !517
  %etxregs = getelementptr i8, ptr %dev, i32 2636
  %4 = ptrtoint ptr %etxregs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %etxregs, align 4
  %add.ptr16 = getelementptr i8, ptr %5, i32 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr16) #13, !srcloc !393
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !518
  %bigmacregs = getelementptr i8, ptr %dev, i32 2644
  %8 = ptrtoint ptr %bigmacregs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bigmacregs, align 4
  %add.ptr22 = getelementptr i8, ptr %9, i32 524
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr22) #13, !srcloc !393
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !519
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.210, ptr noundef %dev, i32 noundef %3, i32 noundef %7, i32 noundef %11) #18
  %happy_lock = getelementptr i8, ptr %dev, i32 2320
  tail call void @_raw_spin_lock_irq(ptr noundef %happy_lock) #13
  %call27 = tail call fastcc i32 @happy_meal_init(ptr noundef %add.ptr.i)
  tail call void @_raw_spin_unlock_irq(ptr noundef %happy_lock) #13
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %12 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %_tx.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %13) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @happy_meal_get_stats(ptr noundef %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %happy_lock = getelementptr i8, ptr %dev, i32 2320
  tail call void @_raw_spin_lock_irq(ptr noundef %happy_lock) #13
  %bigmacregs = getelementptr i8, ptr %dev, i32 2644
  %0 = ptrtoint ptr %bigmacregs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bigmacregs, align 4
  tail call fastcc void @happy_meal_get_counters(ptr noundef %add.ptr.i, ptr noundef %1)
  tail call void @_raw_spin_unlock_irq(ptr noundef %happy_lock) #13
  %stats = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36
  ret ptr %stats
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @happy_meal_interrupt(i32 noundef %irq, ptr noundef %dev_id) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev_id, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 256
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #13, !srcloc !393
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !520
  %happy_lock = getelementptr i8, ptr %dev_id, i32 2320
  tail call void @_raw_spin_lock(ptr noundef %happy_lock) #13
  %and = and i32 %3, -58786052
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end6_crit_edge, label %if.then

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %.pre = and i32 %3, 8388608
  br label %if.end6

if.then:                                          ; preds = %entry
  %and.i = and i32 %3, -51116416
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.if.end.i_crit_edge, label %do.end.i

if.then.if.end.i_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %dev.i = getelementptr i8, ptr %dev_id, i32 2784
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.128, ptr noundef %5, i32 noundef %3) #18
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.then.if.end.i_crit_edge
  %and1.i = and i32 %3, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.not.i = icmp eq i32 %and1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end12.i_crit_edge, label %do.end6.i

if.end.i.if.end12.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end12.i

do.end6.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %dev8.i = getelementptr i8, ptr %dev_id, i32 2784
  %6 = ptrtoint ptr %dev8.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev8.i, align 4
  %call11.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.131, ptr noundef %7) #18
  br label %if.end12.i

if.end12.i:                                       ; preds = %do.end6.i, %if.end.i.if.end12.i_crit_edge
  %and13.i = and i32 %3, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i)
  %tobool14.not.i = icmp eq i32 %and13.i, 0
  br i1 %tobool14.not.i, label %if.end12.i.if.end24.i_crit_edge, label %do.end18.i

if.end12.i.if.end24.i_crit_edge:                  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end24.i

do.end18.i:                                       ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #15
  %dev20.i = getelementptr i8, ptr %dev_id, i32 2784
  %8 = ptrtoint ptr %dev20.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev20.i, align 4
  %call23.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.134, ptr noundef %9) #18
  br label %if.end24.i

if.end24.i:                                       ; preds = %do.end18.i, %if.end12.i.if.end24.i_crit_edge
  %reset.0.i = phi i32 [ 1, %do.end18.i ], [ 0, %if.end12.i.if.end24.i_crit_edge ]
  %and25.i = and i32 %3, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i)
  %tobool26.not.i = icmp eq i32 %and25.i, 0
  br i1 %tobool26.not.i, label %if.end24.i.if.end36.i_crit_edge, label %do.end30.i

if.end24.i.if.end36.i_crit_edge:                  ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end36.i

do.end30.i:                                       ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #15
  %dev32.i = getelementptr i8, ptr %dev_id, i32 2784
  %10 = ptrtoint ptr %dev32.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev32.i, align 4
  %call35.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.137, ptr noundef %11) #18
  br label %if.end36.i

if.end36.i:                                       ; preds = %do.end30.i, %if.end24.i.if.end36.i_crit_edge
  %reset.1.i = phi i32 [ 1, %do.end30.i ], [ %reset.0.i, %if.end24.i.if.end36.i_crit_edge ]
  %and37.i = and i32 %3, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37.i)
  %tobool38.not.i = icmp eq i32 %and37.i, 0
  br i1 %tobool38.not.i, label %if.end36.i.if.end48.i_crit_edge, label %do.end42.i

if.end36.i.if.end48.i_crit_edge:                  ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end48.i

do.end42.i:                                       ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #15
  %dev44.i = getelementptr i8, ptr %dev_id, i32 2784
  %12 = ptrtoint ptr %dev44.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev44.i, align 4
  %call47.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.140, ptr noundef %13) #18
  br label %if.end48.i

if.end48.i:                                       ; preds = %do.end42.i, %if.end36.i.if.end48.i_crit_edge
  %reset.2.i = phi i32 [ 1, %do.end42.i ], [ %reset.1.i, %if.end36.i.if.end48.i_crit_edge ]
  %and49.i = and i32 %3, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49.i)
  %tobool50.not.i = icmp eq i32 %and49.i, 0
  br i1 %tobool50.not.i, label %if.end48.i.if.end60.i_crit_edge, label %do.end54.i

if.end48.i.if.end60.i_crit_edge:                  ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end60.i

do.end54.i:                                       ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #15
  %dev56.i = getelementptr i8, ptr %dev_id, i32 2784
  %14 = ptrtoint ptr %dev56.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev56.i, align 4
  %call59.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.143, ptr noundef %15) #18
  br label %if.end60.i

if.end60.i:                                       ; preds = %do.end54.i, %if.end48.i.if.end60.i_crit_edge
  %and61.i = and i32 %3, 3407872
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61.i)
  %tobool62.not.i = icmp eq i32 %and61.i, 0
  br i1 %tobool62.not.i, label %if.end60.i.if.end104.i_crit_edge, label %do.end66.i

if.end60.i.if.end104.i_crit_edge:                 ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end104.i

do.end66.i:                                       ; preds = %if.end60.i
  %dev68.i = getelementptr i8, ptr %dev_id, i32 2784
  %16 = ptrtoint ptr %dev68.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev68.i, align 4
  %call71.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.146, ptr noundef %17) #18
  %and72.i = and i32 %3, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and72.i)
  %tobool73.not.i = icmp eq i32 %and72.i, 0
  br i1 %tobool73.not.i, label %do.end66.i.if.end80.i_crit_edge, label %do.end77.i

do.end66.i.if.end80.i_crit_edge:                  ; preds = %do.end66.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end80.i

do.end77.i:                                       ; preds = %do.end66.i
  call void @__sanitizer_cov_trace_pc() #15
  %call79.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.149) #18
  br label %if.end80.i

if.end80.i:                                       ; preds = %do.end77.i, %do.end66.i.if.end80.i_crit_edge
  %and81.i = and i32 %3, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and81.i)
  %tobool82.not.i = icmp eq i32 %and81.i, 0
  br i1 %tobool82.not.i, label %if.end80.i.if.end89.i_crit_edge, label %do.end86.i

if.end80.i.if.end89.i_crit_edge:                  ; preds = %if.end80.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end89.i

do.end86.i:                                       ; preds = %if.end80.i
  call void @__sanitizer_cov_trace_pc() #15
  %call88.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.152) #18
  br label %if.end89.i

if.end89.i:                                       ; preds = %do.end86.i, %if.end80.i.if.end89.i_crit_edge
  %and90.i = and i32 %3, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and90.i)
  %tobool91.not.i = icmp eq i32 %and90.i, 0
  br i1 %tobool91.not.i, label %if.end89.i.do.end101.i_crit_edge, label %do.end95.i

if.end89.i.do.end101.i_crit_edge:                 ; preds = %if.end89.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end101.i

do.end95.i:                                       ; preds = %if.end89.i
  call void @__sanitizer_cov_trace_pc() #15
  %call97.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.155) #18
  br label %do.end101.i

do.end101.i:                                      ; preds = %do.end95.i, %if.end89.i.do.end101.i_crit_edge
  %call103.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.158) #18
  br label %if.end104.i

if.end104.i:                                      ; preds = %do.end101.i, %if.end60.i.if.end104.i_crit_edge
  %reset.3.i = phi i32 [ 1, %do.end101.i ], [ %reset.2.i, %if.end60.i.if.end104.i_crit_edge ]
  %and105.i = and i32 %3, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and105.i)
  %tobool106.not.i = icmp eq i32 %and105.i, 0
  br i1 %tobool106.not.i, label %if.end104.i.if.end116.i_crit_edge, label %do.end110.i

if.end104.i.if.end116.i_crit_edge:                ; preds = %if.end104.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end116.i

do.end110.i:                                      ; preds = %if.end104.i
  call void @__sanitizer_cov_trace_pc() #15
  %dev112.i = getelementptr i8, ptr %dev_id, i32 2784
  %18 = ptrtoint ptr %dev112.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev112.i, align 4
  %call115.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.161, ptr noundef %19) #18
  br label %if.end116.i

if.end116.i:                                      ; preds = %do.end110.i, %if.end104.i.if.end116.i_crit_edge
  %reset.4.i = phi i32 [ 1, %do.end110.i ], [ %reset.3.i, %if.end104.i.if.end116.i_crit_edge ]
  %and117.i = and i32 %3, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and117.i)
  %tobool118.not.i = icmp eq i32 %and117.i, 0
  br i1 %tobool118.not.i, label %if.end116.i.if.end128.i_crit_edge, label %do.end122.i

if.end116.i.if.end128.i_crit_edge:                ; preds = %if.end116.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end128.i

do.end122.i:                                      ; preds = %if.end116.i
  call void @__sanitizer_cov_trace_pc() #15
  %dev124.i = getelementptr i8, ptr %dev_id, i32 2784
  %20 = ptrtoint ptr %dev124.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev124.i, align 4
  %call127.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.164, ptr noundef %21) #18
  br label %if.end128.i

if.end128.i:                                      ; preds = %do.end122.i, %if.end116.i.if.end128.i_crit_edge
  %and129.i = and i32 %3, 1006632960
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and129.i)
  %tobool130.not.i = icmp eq i32 %and129.i, 0
  br i1 %tobool130.not.i, label %if.end181.i, label %do.end134.i

do.end134.i:                                      ; preds = %if.end128.i
  %dev136.i = getelementptr i8, ptr %dev_id, i32 2784
  %22 = ptrtoint ptr %dev136.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev136.i, align 4
  %call139.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.167, ptr noundef %23) #18
  %and140.i = and i32 %3, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and140.i)
  %tobool141.not.i = icmp eq i32 %and140.i, 0
  br i1 %tobool141.not.i, label %do.end134.i.if.end148.i_crit_edge, label %do.end145.i

do.end134.i.if.end148.i_crit_edge:                ; preds = %do.end134.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end148.i

do.end145.i:                                      ; preds = %do.end134.i
  call void @__sanitizer_cov_trace_pc() #15
  %call147.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.149) #18
  br label %if.end148.i

if.end148.i:                                      ; preds = %do.end145.i, %do.end134.i.if.end148.i_crit_edge
  %and149.i = and i32 %3, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and149.i)
  %tobool150.not.i = icmp eq i32 %and149.i, 0
  br i1 %tobool150.not.i, label %if.end148.i.if.end157.i_crit_edge, label %do.end154.i

if.end148.i.if.end157.i_crit_edge:                ; preds = %if.end148.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end157.i

do.end154.i:                                      ; preds = %if.end148.i
  call void @__sanitizer_cov_trace_pc() #15
  %call156.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.172) #18
  br label %if.end157.i

if.end157.i:                                      ; preds = %do.end154.i, %if.end148.i.if.end157.i_crit_edge
  %and158.i = and i32 %3, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and158.i)
  %tobool159.not.i = icmp eq i32 %and158.i, 0
  br i1 %tobool159.not.i, label %if.end157.i.if.end166.i_crit_edge, label %do.end163.i

if.end157.i.if.end166.i_crit_edge:                ; preds = %if.end157.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end166.i

do.end163.i:                                      ; preds = %if.end157.i
  call void @__sanitizer_cov_trace_pc() #15
  %call165.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.152) #18
  br label %if.end166.i

if.end166.i:                                      ; preds = %do.end163.i, %if.end157.i.if.end166.i_crit_edge
  %and167.i = and i32 %3, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and167.i)
  %tobool168.not.i = icmp eq i32 %and167.i, 0
  br i1 %tobool168.not.i, label %if.end166.i.if.end181.thread.i_crit_edge, label %do.end172.i

if.end166.i.if.end181.thread.i_crit_edge:         ; preds = %if.end166.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end181.thread.i

do.end172.i:                                      ; preds = %if.end166.i
  call void @__sanitizer_cov_trace_pc() #15
  %call174.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.177) #18
  br label %if.end181.thread.i

if.end181.i:                                      ; preds = %if.end128.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %3)
  %tobool183.not.i = icmp ult i32 %3, 1073741824
  br i1 %tobool183.not.i, label %if.end195.i, label %if.end181.i.if.end195.thread.i_crit_edge

if.end181.i.if.end195.thread.i_crit_edge:         ; preds = %if.end181.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end195.thread.i

if.end181.thread.i:                               ; preds = %do.end172.i, %if.end166.i.if.end181.thread.i_crit_edge
  %call180.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.158) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %3)
  %tobool183.not242.i = icmp ult i32 %3, 1073741824
  br i1 %tobool183.not242.i, label %if.end181.thread.i.happy_meal_is_not_so_happy.exit_crit_edge, label %if.end181.thread.i.if.end195.thread.i_crit_edge

if.end181.thread.i.if.end195.thread.i_crit_edge:  ; preds = %if.end181.thread.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end195.thread.i

if.end181.thread.i.happy_meal_is_not_so_happy.exit_crit_edge: ; preds = %if.end181.thread.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %happy_meal_is_not_so_happy.exit

if.end195.thread.i:                               ; preds = %if.end181.thread.i.if.end195.thread.i_crit_edge, %if.end181.i.if.end195.thread.i_crit_edge
  %dev189.i = getelementptr i8, ptr %dev_id, i32 2784
  %24 = ptrtoint ptr %dev189.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev189.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %tobool193.not.i = icmp sgt i32 %3, -1
  %cond.i = select i1 %tobool193.not.i, ptr @.str.185, ptr @.str.184
  %call194.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.182, ptr noundef %25, ptr noundef nonnull %cond.i) #18
  br label %happy_meal_is_not_so_happy.exit

if.end195.i:                                      ; preds = %if.end181.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %reset.4.i)
  %tobool196.not.i = icmp eq i32 %reset.4.i, 0
  br i1 %tobool196.not.i, label %if.end195.i.if.end6_crit_edge, label %if.end195.i.happy_meal_is_not_so_happy.exit_crit_edge

if.end195.i.happy_meal_is_not_so_happy.exit_crit_edge: ; preds = %if.end195.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %happy_meal_is_not_so_happy.exit

if.end195.i.if.end6_crit_edge:                    ; preds = %if.end195.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end6

happy_meal_is_not_so_happy.exit:                  ; preds = %if.end195.i.happy_meal_is_not_so_happy.exit_crit_edge, %if.end195.thread.i, %if.end181.thread.i.happy_meal_is_not_so_happy.exit_crit_edge
  %dev202.i = getelementptr i8, ptr %dev_id, i32 2784
  %26 = ptrtoint ptr %dev202.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev202.i, align 4
  %call205.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.187, ptr noundef %27) #18
  %call206.i = tail call fastcc i32 @happy_meal_init(ptr noundef %add.ptr.i) #13
  br label %out

if.end6:                                          ; preds = %if.end195.i.if.end6_crit_edge, %entry.if.end6_crit_edge
  %and7.pre-phi = phi i32 [ %.pre, %entry.if.end6_crit_edge ], [ %and117.i, %if.end195.i.if.end6_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.pre-phi)
  %tobool8.not = icmp eq i32 %and7.pre-phi, 0
  br i1 %tobool8.not, label %if.end6.if.end10_crit_edge, label %if.then9

if.end6.if.end10_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end10

if.then9:                                         ; preds = %if.end6
  %tcvregs.i = getelementptr i8, ptr %dev_id, i32 2648
  %28 = ptrtoint ptr %tcvregs.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %tcvregs.i, align 4
  %dev.i31 = getelementptr i8, ptr %dev_id, i32 2784
  %30 = ptrtoint ptr %dev.i31 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev.i31, align 4
  %call.i32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.189, ptr noundef %31) #18
  %call1.i = tail call fastcc i32 @happy_meal_tcvr_read(ptr noundef %add.ptr.i, ptr noundef %29, i32 noundef 0) #13
  %conv.i = trunc i32 %call1.i to i16
  %sw_bmcr.i = getelementptr i8, ptr %dev_id, i32 2678
  %32 = ptrtoint ptr %sw_bmcr.i to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %conv.i, ptr %sw_bmcr.i, align 2
  %call2.i = tail call fastcc i32 @happy_meal_tcvr_read(ptr noundef %add.ptr.i, ptr noundef %29, i32 noundef 5) #13
  %conv3.i = trunc i32 %call2.i to i16
  %sw_lpa.i = getelementptr i8, ptr %dev_id, i32 2688
  %33 = ptrtoint ptr %sw_lpa.i to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %conv3.i, ptr %sw_lpa.i, align 4
  %and.i33 = and i32 %call2.i, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i33)
  %tobool.not.i34 = icmp eq i32 %and.i33, 0
  br i1 %tobool.not.i34, label %if.else.i, label %do.end8.i

do.end8.i:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #15
  %34 = ptrtoint ptr %dev.i31 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev.i31, align 4
  %call13.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.192, ptr noundef %35) #18
  %36 = ptrtoint ptr %sw_bmcr.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %sw_bmcr.i, align 2
  %38 = or i16 %37, 8448
  store i16 %38, ptr %sw_bmcr.i, align 2
  br label %if.end62.i

if.else.i:                                        ; preds = %if.then9
  %and19.i = and i32 %call2.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19.i)
  %tobool20.not.i = icmp eq i32 %and19.i, 0
  br i1 %tobool20.not.i, label %if.else34.i, label %do.end24.i

do.end24.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  %39 = ptrtoint ptr %dev.i31 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev.i31, align 4
  %call29.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.195, ptr noundef %40) #18
  %41 = ptrtoint ptr %sw_bmcr.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %sw_bmcr.i, align 2
  %43 = or i16 %42, 8192
  store i16 %43, ptr %sw_bmcr.i, align 2
  br label %if.end62.i

if.else34.i:                                      ; preds = %if.else.i
  %and37.i35 = and i32 %call2.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37.i35)
  %tobool38.not.i36 = icmp eq i32 %and37.i35, 0
  %44 = ptrtoint ptr %dev.i31 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev.i31, align 4
  br i1 %tobool38.not.i36, label %do.end55.i, label %do.end42.i38

do.end42.i38:                                     ; preds = %if.else34.i
  call void @__sanitizer_cov_trace_pc() #15
  %call47.i37 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.198, ptr noundef %45) #18
  %46 = ptrtoint ptr %sw_bmcr.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %sw_bmcr.i, align 2
  %48 = or i16 %47, 256
  store i16 %48, ptr %sw_bmcr.i, align 2
  br label %if.end62.i

do.end55.i:                                       ; preds = %if.else34.i
  call void @__sanitizer_cov_trace_pc() #15
  %call60.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.201, ptr noundef %45) #18
  br label %if.end62.i

if.end62.i:                                       ; preds = %do.end55.i, %do.end42.i38, %do.end24.i, %do.end8.i
  %49 = ptrtoint ptr %sw_bmcr.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %sw_bmcr.i, align 2
  tail call fastcc void @happy_meal_tcvr_write(ptr noundef %add.ptr.i, ptr noundef %29, i32 noundef 0, i16 noundef zeroext %50) #13
  %happy_flags.i.i = getelementptr i8, ptr %dev_id, i32 2656
  %51 = ptrtoint ptr %happy_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %happy_flags.i.i, align 4
  %and.i.i = and i32 %52, 129
  call void @__sanitizer_cov_trace_const_cmp4(i32 129, i32 %and.i.i)
  %cmp.not.i.i = icmp eq i32 %and.i.i, 129
  br i1 %cmp.not.i.i, label %do.body.i.i, label %if.end62.i.if.end10_crit_edge

if.end62.i.if.end10_crit_edge:                    ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end10

do.body.i.i:                                      ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !419
  tail call void @arm_heavy_mb() #13
  %add.ptr.i.i = getelementptr i8, ptr %29, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 -65536) #13, !srcloc !392
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !420
  tail call void @arm_heavy_mb() #13
  %add.ptr3.i.i = getelementptr i8, ptr %29, i32 16
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i.i) #13, !srcloc !393
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !421
  %54 = and i32 %53, -33554433
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i.i, i32 %54) #13, !srcloc !392
  %55 = ptrtoint ptr %happy_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %happy_flags.i.i, align 4
  %and8.i.i = and i32 %56, -2
  store i32 %and8.i.i, ptr %happy_flags.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %57 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %57(i32 noundef 42949600) #13
  br label %if.end10

if.end10:                                         ; preds = %do.body.i.i, %if.end62.i.if.end10_crit_edge, %if.end6.if.end10_crit_edge
  %and11 = and i32 %3, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.end10.if.end14_crit_edge, label %if.then13

if.end10.if.end14_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end14

if.then13:                                        ; preds = %if.end10
  %happy_block.i = getelementptr i8, ptr %dev_id, i32 2308
  %58 = ptrtoint ptr %happy_block.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %happy_block.i, align 4
  %happy_meal_txd.i = getelementptr inbounds %struct.hmeal_init_block, ptr %59, i32 0, i32 1
  %dev1.i = getelementptr i8, ptr %dev_id, i32 2784
  %60 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dev1.i, align 4
  %tx_old.i = getelementptr i8, ptr %dev_id, i32 2632
  %62 = ptrtoint ptr %tx_old.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %tx_old.i, align 4
  %tx_new.i = getelementptr i8, ptr %dev_id, i32 2624
  %tx_bytes.i = getelementptr inbounds %struct.net_device, ptr %61, i32 0, i32 36, i32 3
  %dma_dev32.i = getelementptr i8, ptr %dev_id, i32 2316
  %tx_packets.i = getelementptr inbounds %struct.net_device, ptr %61, i32 0, i32 36, i32 1
  %64 = ptrtoint ptr %tx_new.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %tx_new.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %63, i32 %65)
  %cmp.not.i63 = icmp eq i32 %63, %65
  br i1 %cmp.not.i63, label %if.then13.while.end.i_crit_edge, label %while.body.i.preheader

if.then13.while.end.i_crit_edge:                  ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end.i

while.body.i.preheader:                           ; preds = %if.then13
  %arrayidx2.i71 = getelementptr %struct.happy_meal_txd, ptr %happy_meal_txd.i, i32 %63
  %66 = ptrtoint ptr %arrayidx2.i71 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %arrayidx2.i71, align 4
  %.mask.i72 = and i32 %67, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask.i72)
  %tobool.not.i3973 = icmp eq i32 %.mask.i72, 0
  br i1 %tobool.not.i3973, label %while.body.i.preheader.if.end.i40_crit_edge, label %while.body.i.preheader.while.end.i_crit_edge

while.body.i.preheader.while.end.i_crit_edge:     ; preds = %while.body.i.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end.i

while.body.i.preheader.if.end.i40_crit_edge:      ; preds = %while.body.i.preheader
  br label %if.end.i40

while.body.i:                                     ; preds = %cleanup39.i
  %arrayidx2.i = getelementptr %struct.happy_meal_txd, ptr %happy_meal_txd.i, i32 %and35.lcssa.i
  %68 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %arrayidx2.i, align 4
  %.mask.i = and i32 %69, 128
  %tobool.not.i39 = icmp eq i32 %.mask.i, 0
  br i1 %tobool.not.i39, label %while.body.i.if.end.i40_crit_edge, label %while.body.i.while.end.i_crit_edge

while.body.i.while.end.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end.i

while.body.i.if.end.i40_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i40

if.end.i40:                                       ; preds = %while.body.i.if.end.i40_crit_edge, %while.body.i.preheader.if.end.i40_crit_edge
  %arrayidx2.i76 = phi ptr [ %arrayidx2.i, %while.body.i.if.end.i40_crit_edge ], [ %arrayidx2.i71, %while.body.i.preheader.if.end.i40_crit_edge ]
  %elem.0.i6474 = phi i32 [ %and35.lcssa.i, %while.body.i.if.end.i40_crit_edge ], [ %63, %while.body.i.preheader.if.end.i40_crit_edge ]
  %70 = phi i32 [ %113, %while.body.i.if.end.i40_crit_edge ], [ %65, %while.body.i.preheader.if.end.i40_crit_edge ]
  %arrayidx3.i = getelementptr %struct.happy_meal, ptr %add.ptr.i, i32 0, i32 6, i32 %elem.0.i6474
  %71 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %arrayidx3.i, align 4
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %72, i32 0, i32 17
  %73 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %end.i.i, align 4
  %nr_frags.i = getelementptr inbounds %struct.skb_shared_info, ptr %74, i32 0, i32 2
  %75 = ptrtoint ptr %nr_frags.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %nr_frags.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %76)
  %tobool5.not.i = icmp eq i8 %76, 0
  br i1 %tobool5.not.i, label %if.end.i40.if.end33.peel.i_crit_edge, label %if.then6.i

if.end.i40.if.end33.peel.i_crit_edge:             ; preds = %if.end.i40
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end33.peel.i

if.then6.i:                                       ; preds = %if.end.i40
  %conv.i41 = zext i8 %76 to i32
  %add.i = add i32 %elem.0.i6474, %conv.i41
  %and9.i = and i32 %add.i, 31
  %arrayidx10.i = getelementptr %struct.happy_meal_txd, ptr %happy_meal_txd.i, i32 %and9.i
  %77 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %arrayidx10.i, align 4
  %.mask117.i = and i32 %78, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask117.i)
  %tobool14.not.i42 = icmp eq i32 %.mask117.i, 0
  br i1 %tobool14.not.i42, label %if.then6.i.if.end33.peel.i_crit_edge, label %if.then6.i.while.end.i_crit_edge

if.then6.i.while.end.i_crit_edge:                 ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end.i

if.then6.i.if.end33.peel.i_crit_edge:             ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end33.peel.i

if.end33.peel.i:                                  ; preds = %if.then6.i.if.end33.peel.i_crit_edge, %if.end.i40.if.end33.peel.i_crit_edge
  %79 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr null, ptr %arrayidx3.i, align 4
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %72, i32 0, i32 6
  %80 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %len.i, align 4
  %82 = ptrtoint ptr %tx_bytes.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %tx_bytes.i, align 4
  %add20.i = add i32 %83, %81
  store i32 %add20.i, ptr %tx_bytes.i, align 4
  %84 = ptrtoint ptr %arrayidx2.i76 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %arrayidx2.i76, align 4
  %86 = and i32 %85, -12648448
  %87 = tail call i32 @llvm.bswap.i32(i32 %86) #13
  %tx_addr.peel.i = getelementptr %struct.happy_meal_txd, ptr %happy_meal_txd.i, i32 %elem.0.i6474, i32 1
  %88 = ptrtoint ptr %tx_addr.peel.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %tx_addr.peel.i, align 4
  %90 = tail call i32 @llvm.bswap.i32(i32 %89) #13
  %91 = ptrtoint ptr %dma_dev32.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %dma_dev32.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %92, i32 noundef %90, i32 noundef %87, i32 noundef 1, i32 noundef 0) #13
  %add34.peel.i = add i32 %elem.0.i6474, 1
  %and35.peel.i = and i32 %add34.peel.i, 31
  %93 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %end.i.i, align 4
  %nr_frags22.peel.i = getelementptr inbounds %struct.skb_shared_info, ptr %94, i32 0, i32 2
  %95 = ptrtoint ptr %nr_frags22.peel.i to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %nr_frags22.peel.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %96)
  %cmp24.not.peel.i = icmp eq i8 %96, 0
  br i1 %cmp24.not.peel.i, label %if.end33.peel.i.cleanup39.i_crit_edge, label %if.end33.peel.i.if.end33.i_crit_edge

if.end33.peel.i.if.end33.i_crit_edge:             ; preds = %if.end33.peel.i
  br label %if.end33.i

if.end33.peel.i.cleanup39.i_crit_edge:            ; preds = %if.end33.peel.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup39.i

if.end33.i:                                       ; preds = %if.end33.i.if.end33.i_crit_edge, %if.end33.peel.i.if.end33.i_crit_edge
  %frag.0122.i = phi i32 [ %inc.i, %if.end33.i.if.end33.i_crit_edge ], [ 1, %if.end33.peel.i.if.end33.i_crit_edge ]
  %elem.1121.i = phi i32 [ %and35.i, %if.end33.i.if.end33.i_crit_edge ], [ %and35.peel.i, %if.end33.peel.i.if.end33.i_crit_edge ]
  %this.0120.i = getelementptr %struct.happy_meal_txd, ptr %happy_meal_txd.i, i32 %elem.1121.i
  %97 = ptrtoint ptr %this.0120.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %this.0120.i, align 4
  %99 = and i32 %98, -12648448
  %100 = tail call i32 @llvm.bswap.i32(i32 %99) #13
  %tx_addr.i = getelementptr %struct.happy_meal_txd, ptr %happy_meal_txd.i, i32 %elem.1121.i, i32 1
  %101 = ptrtoint ptr %tx_addr.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %tx_addr.i, align 4
  %103 = tail call i32 @llvm.bswap.i32(i32 %102) #13
  %104 = ptrtoint ptr %dma_dev32.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %dma_dev32.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %105, i32 noundef %103, i32 noundef %100, i32 noundef 1, i32 noundef 0) #13
  %add34.i = add nuw nsw i32 %elem.1121.i, 1
  %and35.i = and i32 %add34.i, 31
  %inc.i = add nuw nsw i32 %frag.0122.i, 1
  %106 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %end.i.i, align 4
  %nr_frags22.i = getelementptr inbounds %struct.skb_shared_info, ptr %107, i32 0, i32 2
  %108 = ptrtoint ptr %nr_frags22.i to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %nr_frags22.i, align 2
  %conv23.i = zext i8 %109 to i32
  %cmp24.not.not.i = icmp ult i32 %frag.0122.i, %conv23.i
  br i1 %cmp24.not.not.i, label %if.end33.i.if.end33.i_crit_edge, label %if.end33.i.cleanup39.i_crit_edge, !llvm.loop !521

if.end33.i.cleanup39.i_crit_edge:                 ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup39.i

if.end33.i.if.end33.i_crit_edge:                  ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end33.i

cleanup39.i:                                      ; preds = %if.end33.i.cleanup39.i_crit_edge, %if.end33.peel.i.cleanup39.i_crit_edge
  %and35.lcssa.i = phi i32 [ %and35.peel.i, %if.end33.peel.i.cleanup39.i_crit_edge ], [ %and35.i, %if.end33.i.cleanup39.i_crit_edge ]
  tail call void @__dev_kfree_skb_irq(ptr noundef %72, i32 noundef 0) #13
  %110 = ptrtoint ptr %tx_packets.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %tx_packets.i, align 4
  %inc38.i = add i32 %111, 1
  store i32 %inc38.i, ptr %tx_packets.i, align 4
  %112 = ptrtoint ptr %tx_new.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %tx_new.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and35.lcssa.i, i32 %113)
  %cmp.not.i = icmp eq i32 %and35.lcssa.i, %113
  br i1 %cmp.not.i, label %cleanup39.i.while.end.i_crit_edge, label %while.body.i

cleanup39.i.while.end.i_crit_edge:                ; preds = %cleanup39.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end.i

while.end.i:                                      ; preds = %cleanup39.i.while.end.i_crit_edge, %if.then6.i.while.end.i_crit_edge, %while.body.i.while.end.i_crit_edge, %while.body.i.preheader.while.end.i_crit_edge, %if.then13.while.end.i_crit_edge
  %elem.0.i.lcssa = phi i32 [ %63, %if.then13.while.end.i_crit_edge ], [ %63, %while.body.i.preheader.while.end.i_crit_edge ], [ %and35.lcssa.i, %cleanup39.i.while.end.i_crit_edge ], [ %and35.lcssa.i, %while.body.i.while.end.i_crit_edge ], [ %elem.0.i6474, %if.then6.i.while.end.i_crit_edge ]
  %.lcssa = phi i32 [ %63, %if.then13.while.end.i_crit_edge ], [ %65, %while.body.i.preheader.while.end.i_crit_edge ], [ %and35.lcssa.i, %cleanup39.i.while.end.i_crit_edge ], [ %113, %while.body.i.while.end.i_crit_edge ], [ %70, %if.then6.i.while.end.i_crit_edge ]
  %114 = ptrtoint ptr %tx_old.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %elem.0.i.lcssa, ptr %tx_old.i, align 4
  %_tx.i.i.i = getelementptr inbounds %struct.net_device, ptr %61, i32 0, i32 103
  %115 = ptrtoint ptr %_tx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %_tx.i.i.i, align 128
  %state.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %116, i32 0, i32 13
  %117 = ptrtoint ptr %state.i.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load volatile i32, ptr %state.i.i.i, align 4
  %and1.i.i.i.i = and i32 %118, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i)
  %tobool.i.i.not.i = icmp eq i32 %and1.i.i.i.i, 0
  br i1 %tobool.i.i.not.i, label %while.end.i.if.end14_crit_edge, label %land.lhs.true.i

while.end.i.if.end14_crit_edge:                   ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end14

land.lhs.true.i:                                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_cmp4(i32 %elem.0.i.lcssa, i32 %.lcssa)
  %cmp51.not.i = icmp sgt i32 %elem.0.i.lcssa, %.lcssa
  %add54.i = add i32 %elem.0.i.lcssa, 31
  %sub.i = sub i32 %add54.i, %.lcssa
  %119 = xor i32 %.lcssa, -1
  %sub59.i = add i32 %elem.0.i.lcssa, %119
  %cond.i43 = select i1 %cmp51.not.i, i32 %sub59.i, i32 %sub.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %cond.i43)
  %cmp60.i = icmp ugt i32 %cond.i43, 18
  br i1 %cmp60.i, label %if.then62.i, label %land.lhs.true.i.if.end14_crit_edge

land.lhs.true.i.if.end14_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end14

if.then62.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @netif_tx_wake_queue(ptr noundef %116) #13
  br label %if.end14

if.end14:                                         ; preds = %if.then62.i, %land.lhs.true.i.if.end14_crit_edge, %while.end.i.if.end14_crit_edge, %if.end10.if.end14_crit_edge
  %and15 = and i32 %3, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.end14.out_crit_edge, label %if.then17

if.end14.out_crit_edge:                           ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.then17:                                        ; preds = %if.end14
  %happy_block.i44 = getelementptr i8, ptr %dev_id, i32 2308
  %120 = ptrtoint ptr %happy_block.i44 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %happy_block.i44, align 4
  %rx_new.i = getelementptr i8, ptr %dev_id, i32 2620
  %122 = ptrtoint ptr %rx_new.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %rx_new.i, align 4
  %this.0207.i = getelementptr %struct.happy_meal_rxd, ptr %121, i32 %123
  %124 = ptrtoint ptr %this.0207.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %this.0207.i, align 4
  %126 = tail call i32 @llvm.bswap.i32(i32 %125) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %126)
  %tobool.not208.i = icmp sgt i32 %126, -1
  br i1 %tobool.not208.i, label %while.body.lr.ph.i, label %if.then17.out_crit_edge

if.then17.out_crit_edge:                          ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

while.body.lr.ph.i:                               ; preds = %if.then17
  %rx_errors.i = getelementptr inbounds %struct.net_device, ptr %dev_id, i32 0, i32 36, i32 4
  %rx_length_errors.i = getelementptr inbounds %struct.net_device, ptr %dev_id, i32 0, i32 36, i32 10
  %rx_over_errors.i = getelementptr inbounds %struct.net_device, ptr %dev_id, i32 0, i32 36, i32 11
  %rx_fifo_errors.i = getelementptr inbounds %struct.net_device, ptr %dev_id, i32 0, i32 36, i32 14
  %dma_dev72.i = getelementptr i8, ptr %dev_id, i32 2316
  %stats89.i = getelementptr inbounds %struct.net_device, ptr %dev_id, i32 0, i32 36
  %rx_bytes.i = getelementptr inbounds %struct.net_device, ptr %dev_id, i32 0, i32 36, i32 2
  %rx_dropped.i = getelementptr inbounds %struct.net_device, ptr %dev_id, i32 0, i32 36, i32 6
  br label %while.body.i46

while.body.i46:                                   ; preds = %next.i.while.body.i46_crit_edge, %while.body.lr.ph.i
  %127 = phi i32 [ %126, %while.body.lr.ph.i ], [ %200, %next.i.while.body.i46_crit_edge ]
  %this.0214.i = phi ptr [ %this.0207.i, %while.body.lr.ph.i ], [ %this.0.i, %next.i.while.body.i46_crit_edge ]
  %drops.0212.i = phi i32 [ 0, %while.body.lr.ph.i ], [ %drops.5.i, %next.i.while.body.i46_crit_edge ]
  %elem.0209.i = phi i32 [ %123, %while.body.lr.ph.i ], [ %and94.i, %next.i.while.body.i46_crit_edge ]
  %shr.i = lshr i32 %127, 16
  %rx_addr.i = getelementptr %struct.happy_meal_rxd, ptr %121, i32 %elem.0209.i, i32 1
  %128 = ptrtoint ptr %rx_addr.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %rx_addr.i, align 4
  %130 = tail call i32 @llvm.bswap.i32(i32 %129) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 3932160, i32 %127)
  %cmp.i = icmp ult i32 %127, 3932160
  %cmp.not.i45 = xor i1 %cmp.i, true
  %and5.i = and i32 %127, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %tobool6.not.i = icmp eq i32 %and5.i, 0
  %or.cond.i = and i1 %tobool6.not.i, %cmp.not.i45
  br i1 %or.cond.i, label %if.end24.i49, label %if.then.i

if.then.i:                                        ; preds = %while.body.i46
  %131 = ptrtoint ptr %rx_errors.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %rx_errors.i, align 8
  %inc.i47 = add i32 %132, 1
  store i32 %inc.i47, ptr %rx_errors.i, align 8
  br i1 %cmp.i, label %if.then9.i, label %if.then.i.if.end.i48_crit_edge

if.then.i.if.end.i48_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i48

if.then9.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  %133 = ptrtoint ptr %rx_length_errors.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %rx_length_errors.i, align 8
  %inc11.i = add i32 %134, 1
  store i32 %inc11.i, ptr %rx_length_errors.i, align 8
  br label %if.end.i48

if.end.i48:                                       ; preds = %if.then9.i, %if.then.i.if.end.i48_crit_edge
  br i1 %tobool6.not.i, label %if.end.i48.drop_it.i_crit_edge, label %if.then14.i

if.end.i48.drop_it.i_crit_edge:                   ; preds = %if.end.i48
  call void @__sanitizer_cov_trace_pc() #15
  br label %drop_it.i

if.then14.i:                                      ; preds = %if.end.i48
  call void @__sanitizer_cov_trace_pc() #15
  %135 = ptrtoint ptr %rx_over_errors.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %rx_over_errors.i, align 4
  %inc16.i = add i32 %136, 1
  store i32 %inc16.i, ptr %rx_over_errors.i, align 4
  %137 = ptrtoint ptr %rx_fifo_errors.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %rx_fifo_errors.i, align 8
  %inc18.i = add i32 %138, 1
  store i32 %inc18.i, ptr %rx_fifo_errors.i, align 8
  br label %drop_it.i

drop_it.i:                                        ; preds = %cleanup80.i, %if.then52.i, %if.then40.i, %if.then14.i, %if.end.i48.drop_it.i_crit_edge
  %drops.1.i = phi i32 [ %drops.0212.i, %if.then14.i ], [ %drops.0212.i, %if.end.i48.drop_it.i_crit_edge ], [ %inc69.i, %cleanup80.i ], [ %inc53.i, %if.then52.i ], [ %inc41.i, %if.then40.i ]
  %139 = ptrtoint ptr %rx_dropped.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %rx_dropped.i, align 8
  %inc21.i = add i32 %140, 1
  store i32 %inc21.i, ptr %rx_dropped.i, align 8
  %141 = ptrtoint ptr %rx_addr.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 %129, ptr %rx_addr.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !522
  %142 = ptrtoint ptr %this.0214.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 19078, ptr %this.0214.i, align 4
  br label %next.i

if.end24.i49:                                     ; preds = %while.body.i46
  %arrayidx25.i = getelementptr %struct.happy_meal, ptr %add.ptr.i, i32 0, i32 5, i32 %elem.0209.i
  %143 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %arrayidx25.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16842751, i32 %127)
  %cmp26.i = icmp ugt i32 %127, 16842751
  br i1 %cmp26.i, label %if.then28.i, label %if.else.i55

if.then28.i:                                      ; preds = %if.end24.i49
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef 1676, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #13
  %cond.i50 = icmp eq ptr %call.i.i, null
  br i1 %cond.i50, label %if.then40.i, label %if.then31.i

if.then31.i:                                      ; preds = %if.then28.i
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %145 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %data.i, align 4
  %147 = ptrtoint ptr %146 to i32
  %add.i51 = add i32 %147, 63
  %and32.i = and i32 %add.i51, -64
  call void @__sanitizer_cov_trace_cmp4(i32 %and32.i, i32 %147)
  %tobool34.not.i = icmp eq i32 %and32.i, %147
  br i1 %tobool34.not.i, label %if.then31.i.if.end42.i_crit_edge, label %if.then35.i

if.then31.i.if.end42.i_crit_edge:                 ; preds = %if.then31.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end42.i

if.then35.i:                                      ; preds = %if.then31.i
  call void @__sanitizer_cov_trace_pc() #15
  %sub.i52 = sub i32 %and32.i, %147
  %add.ptr.i.i53 = getelementptr i8, ptr %146, i32 %sub.i52
  %148 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %148)
  store ptr %add.ptr.i.i53, ptr %data.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %149 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %tail.i.i, align 8
  %add.ptr1.i.i = getelementptr i8, ptr %150, i32 %sub.i52
  store ptr %add.ptr1.i.i, ptr %tail.i.i, align 8
  br label %if.end42.i

if.then40.i:                                      ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #15
  %inc41.i = add i32 %drops.0212.i, 1
  br label %drop_it.i

if.end42.i:                                       ; preds = %if.then35.i, %if.then31.i.if.end42.i_crit_edge
  %call43.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 1520) #13
  %151 = ptrtoint ptr %dma_dev72.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %dma_dev72.i, align 4
  %153 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %data.i, align 4
  %call.i181.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %154) #13
  br i1 %call.i181.i, label %land.rhs.i.i, label %dma_map_single_attrs.exit.i

land.rhs.i.i:                                     ; preds = %if.end42.i
  %.b1.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs.i.i.dma_map_single_attrs.exit.thread.i_crit_edge, label %if.then.i.i, !prof !423

land.rhs.i.i.dma_map_single_attrs.exit.thread.i_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dma_map_single_attrs.exit.thread.i

if.then.i.i:                                      ; preds = %land.rhs.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i = tail call ptr @dev_driver_string(ptr noundef %152) #13
  %init_name.i.i.i = getelementptr inbounds %struct.device, ptr %152, i32 0, i32 3
  %155 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %156, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.dev_name.exit.i.i_crit_edge

if.then.i.i.dev_name.exit.i.i_crit_edge:          ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dev_name.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %157 = ptrtoint ptr %152 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %152, align 4
  br label %dev_name.exit.i.i

dev_name.exit.i.i:                                ; preds = %if.end.i.i.i, %if.then.i.i.dev_name.exit.i.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %158, %if.end.i.i.i ], [ %156, %if.then.i.i.dev_name.exit.i.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.113, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.114, ptr noundef %call16.i.i, ptr noundef %retval.0.i.i.i) #13
  br label %dma_map_single_attrs.exit.thread.i

dma_map_single_attrs.exit.thread.i:               ; preds = %dev_name.exit.i.i, %land.rhs.i.i.dma_map_single_attrs.exit.thread.i_crit_edge
  %159 = ptrtoint ptr %dma_dev72.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %dma_dev72.i, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %160, i32 noundef -1) #13
  br label %if.then52.i

dma_map_single_attrs.exit.i:                      ; preds = %if.end42.i
  tail call void @debug_dma_map_single(ptr noundef %152, ptr noundef %154, i32 noundef 1612) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %161 = load ptr, ptr @mem_map, align 4
  %162 = ptrtoint ptr %154 to i32
  %sub.i.i = add i32 %162, 1073741824
  %shr.i.i = lshr i32 %sub.i.i, 12
  %add.ptr.i182.i = getelementptr %struct.page, ptr %161, i32 %shr.i.i
  %and.i.i54 = and i32 %162, 4095
  %call41.i.i = tail call i32 @dma_map_page_attrs(ptr noundef %152, ptr noundef %add.ptr.i182.i, i32 noundef %and.i.i54, i32 noundef 1612, i32 noundef 2, i32 noundef 0) #13
  %163 = ptrtoint ptr %dma_dev72.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %dma_dev72.i, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %164, i32 noundef %call41.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i.i)
  %cmp.i.i = icmp eq i32 %call41.i.i, -1
  br i1 %cmp.i.i, label %dma_map_single_attrs.exit.i.if.then52.i_crit_edge, label %cleanup.i

dma_map_single_attrs.exit.i.if.then52.i_crit_edge: ; preds = %dma_map_single_attrs.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then52.i

if.then52.i:                                      ; preds = %dma_map_single_attrs.exit.i.if.then52.i_crit_edge, %dma_map_single_attrs.exit.thread.i
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %call.i.i, i32 noundef 1) #13
  %inc53.i = add i32 %drops.0212.i, 1
  br label %drop_it.i

cleanup.i:                                        ; preds = %dma_map_single_attrs.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %165 = ptrtoint ptr %dma_dev72.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %dma_dev72.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %166, i32 noundef %130, i32 noundef 1612, i32 noundef 2, i32 noundef 0) #13
  %167 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_store4_noabort(i32 %167)
  store ptr %call.i.i, ptr %arrayidx25.i, align 4
  %168 = tail call i32 @llvm.bswap.i32(i32 %call41.i.i) #13
  %169 = ptrtoint ptr %rx_addr.i to i32
  call void @__asan_store4_noabort(i32 %169)
  store i32 %168, ptr %rx_addr.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !523
  %170 = ptrtoint ptr %this.0214.i to i32
  call void @__asan_store4_noabort(i32 %170)
  store i32 19078, ptr %this.0214.i, align 4
  %171 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %data.i, align 4
  %add.ptr.i184.i = getelementptr i8, ptr %172, i32 2
  store ptr %add.ptr.i184.i, ptr %data.i, align 4
  %tail.i185.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %173 = ptrtoint ptr %tail.i185.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %tail.i185.i, align 8
  %add.ptr1.i186.i = getelementptr i8, ptr %174, i32 2
  store ptr %add.ptr1.i186.i, ptr %tail.i185.i, align 8
  tail call void @skb_trim(ptr noundef %144, i32 noundef %shr.i) #13
  br label %if.end83.i

if.else.i55:                                      ; preds = %if.end24.i49
  %add64.i = add nuw nsw i32 %shr.i, 2
  %call.i187.i = tail call ptr @__netdev_alloc_skb(ptr noundef %dev_id, i32 noundef %add64.i, i32 noundef 2592) #13
  %cmp66.i = icmp eq ptr %call.i187.i, null
  br i1 %cmp66.i, label %cleanup80.i, label %cleanup80.thread.i

cleanup80.thread.i:                               ; preds = %if.else.i55
  call void @__sanitizer_cov_trace_pc() #15
  %data.i188.i = getelementptr inbounds %struct.sk_buff, ptr %call.i187.i, i32 0, i32 19
  %175 = ptrtoint ptr %data.i188.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %data.i188.i, align 4
  %add.ptr.i189.i = getelementptr i8, ptr %176, i32 2
  store ptr %add.ptr.i189.i, ptr %data.i188.i, align 4
  %tail.i190.i = getelementptr inbounds %struct.sk_buff, ptr %call.i187.i, i32 0, i32 16
  %177 = ptrtoint ptr %tail.i190.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %tail.i190.i, align 8
  %add.ptr1.i191.i = getelementptr i8, ptr %178, i32 2
  store ptr %add.ptr1.i191.i, ptr %tail.i190.i, align 8
  %call71.i56 = tail call ptr @skb_put(ptr noundef nonnull %call.i187.i, i32 noundef %shr.i) #13
  %179 = ptrtoint ptr %dma_dev72.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %dma_dev72.i, align 4
  tail call void @dma_sync_single_for_cpu(ptr noundef %180, i32 noundef %130, i32 noundef %shr.i, i32 noundef 2) #13
  %181 = ptrtoint ptr %data.i188.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %data.i188.i, align 4
  %data.i192.i = getelementptr inbounds %struct.sk_buff, ptr %144, i32 0, i32 19
  %183 = ptrtoint ptr %data.i192.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %data.i192.i, align 4
  %185 = call ptr @memcpy(ptr %182, ptr %184, i32 %shr.i)
  %186 = ptrtoint ptr %dma_dev72.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %dma_dev72.i, align 4
  tail call void @dma_sync_single_for_device(ptr noundef %187, i32 noundef %130, i32 noundef %shr.i, i32 noundef 2) #13
  %188 = ptrtoint ptr %rx_addr.i to i32
  call void @__asan_store4_noabort(i32 %188)
  store i32 %129, ptr %rx_addr.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !524
  %189 = ptrtoint ptr %this.0214.i to i32
  call void @__asan_store4_noabort(i32 %189)
  store i32 19078, ptr %this.0214.i, align 4
  br label %if.end83.i

cleanup80.i:                                      ; preds = %if.else.i55
  call void @__sanitizer_cov_trace_pc() #15
  %inc69.i = add i32 %drops.0212.i, 1
  br label %drop_it.i

if.end83.i:                                       ; preds = %cleanup80.thread.i, %cleanup.i
  %skb.1.i = phi ptr [ %144, %cleanup.i ], [ %call.i187.i, %cleanup80.thread.i ]
  %conv85.i = and i32 %127, 65535
  %conv.i.i = xor i32 %conv85.i, 65535
  %190 = getelementptr inbounds %struct.sk_buff, ptr %skb.1.i, i32 0, i32 15, i32 0, i32 5
  %191 = ptrtoint ptr %190 to i32
  call void @__asan_store4_noabort(i32 %191)
  store i32 %conv.i.i, ptr %190, align 8
  %ip_summed.i = getelementptr inbounds %struct.sk_buff, ptr %skb.1.i, i32 0, i32 15
  %192 = ptrtoint ptr %ip_summed.i to i32
  call void @__asan_load2_noabort(i32 %192)
  %bf.load.i = load i16, ptr %ip_summed.i, align 8
  %bf.clear.i = and i16 %bf.load.i, -1537
  %bf.set.i = or i16 %bf.clear.i, 1024
  store i16 %bf.set.i, ptr %ip_summed.i, align 8
  %call87.i = tail call zeroext i16 @eth_type_trans(ptr noundef %skb.1.i, ptr noundef %dev_id) #13
  %protocol.i = getelementptr inbounds %struct.sk_buff, ptr %skb.1.i, i32 0, i32 15, i32 0, i32 18
  %193 = ptrtoint ptr %protocol.i to i32
  call void @__asan_store2_noabort(i32 %193)
  store i16 %call87.i, ptr %protocol.i, align 8
  %call88.i57 = tail call i32 @netif_rx(ptr noundef %skb.1.i) #13
  %194 = ptrtoint ptr %stats89.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %stats89.i, align 8
  %inc90.i = add i32 %195, 1
  store i32 %inc90.i, ptr %stats89.i, align 8
  %196 = ptrtoint ptr %rx_bytes.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %rx_bytes.i, align 8
  %add92.i = add i32 %197, %shr.i
  store i32 %add92.i, ptr %rx_bytes.i, align 8
  br label %next.i

next.i:                                           ; preds = %if.end83.i, %drop_it.i
  %drops.5.i = phi i32 [ %drops.1.i, %drop_it.i ], [ %drops.0212.i, %if.end83.i ]
  %add93.i = add i32 %elem.0209.i, 1
  %and94.i = and i32 %add93.i, 31
  %this.0.i = getelementptr %struct.happy_meal_rxd, ptr %121, i32 %and94.i
  %198 = ptrtoint ptr %this.0.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %this.0.i, align 4
  %200 = tail call i32 @llvm.bswap.i32(i32 %199) #13
  %tobool.not.i58 = icmp sgt i32 %200, -1
  br i1 %tobool.not.i58, label %next.i.while.body.i46_crit_edge, label %while.end.i59

next.i.while.body.i46_crit_edge:                  ; preds = %next.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i46

while.end.i59:                                    ; preds = %next.i
  %201 = ptrtoint ptr %rx_new.i to i32
  call void @__asan_store4_noabort(i32 %201)
  store i32 %and94.i, ptr %rx_new.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %drops.5.i)
  %tobool97.not.i = icmp eq i32 %drops.5.i, 0
  br i1 %tobool97.not.i, label %while.end.i59.out_crit_edge, label %do.end101.i60

while.end.i59.out_crit_edge:                      ; preds = %while.end.i59
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

do.end101.i60:                                    ; preds = %while.end.i59
  call void @__sanitizer_cov_trace_pc() #15
  %dev103.i = getelementptr i8, ptr %dev_id, i32 2784
  %202 = ptrtoint ptr %dev103.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %dev103.i, align 4
  %call104.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.203, ptr noundef %203) #18
  br label %out

out:                                              ; preds = %do.end101.i60, %while.end.i59.out_crit_edge, %if.then17.out_crit_edge, %if.end14.out_crit_edge, %happy_meal_is_not_so_happy.exit
  tail call void @_raw_spin_unlock(ptr noundef %happy_lock) #13
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_irq(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_cpu(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @eth_type_trans(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_rx(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @unmap_partial_tx_skb(ptr nocapture noundef readonly %hp, i32 noundef %first_mapping, i32 noundef %first_len, i32 noundef %first_entry, i32 noundef %entry1) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %happy_block = getelementptr inbounds %struct.happy_meal, ptr %hp, i32 0, i32 1
  %0 = ptrtoint ptr %happy_block to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %happy_block, align 4
  %dma_dev = getelementptr inbounds %struct.happy_meal, ptr %hp, i32 0, i32 3
  %2 = ptrtoint ptr %dma_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dma_dev, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %3, i32 noundef %first_mapping, i32 noundef %first_len, i32 noundef 1, i32 noundef 0) #13
  %add = add i32 %first_entry, 1
  %and = and i32 %add, 31
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %entry1)
  %cmp.not = icmp eq i32 %and, %entry1
  br i1 %cmp.not, label %while.end, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %entry
  %happy_meal_txd = getelementptr inbounds %struct.hmeal_init_block, ptr %1, i32 0, i32 1
  %arrayidx2 = getelementptr %struct.happy_meal_txd, ptr %happy_meal_txd, i32 %and
  %tx_addr = getelementptr %struct.happy_meal_txd, ptr %happy_meal_txd, i32 %and, i32 1
  br label %while.body

while.body:                                       ; preds = %while.body, %while.body.lr.ph
  %4 = ptrtoint ptr %tx_addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tx_addr, align 4
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #13
  %7 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx2, align 4
  %9 = and i32 %8, -12648448
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  %11 = ptrtoint ptr %dma_dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dma_dev, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %12, i32 noundef %6, i32 noundef %10, i32 noundef 1, i32 noundef 0) #13
  br label %while.body

while.end:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hme_get_drvinfo(ptr nocapture noundef readonly %dev, ptr noundef %info) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 1
  %call1 = tail call i32 @strlcpy(ptr noundef %driver, ptr noundef nonnull @.str.1, i32 noundef 32) #13
  %version = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 2
  %call3 = tail call i32 @strlcpy(ptr noundef %version, ptr noundef nonnull @.str.212, i32 noundef 32) #13
  %happy_flags = getelementptr i8, ptr %dev, i32 2656
  %0 = ptrtoint ptr %happy_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %happy_flags, align 4
  %and = and i32 %1, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  %happy_dev = getelementptr i8, ptr %dev, i32 2312
  %2 = ptrtoint ptr %happy_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %happy_dev, align 4
  %bus_info = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 4
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44, i32 3
  %4 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.pci_name.exit_crit_edge

if.then.pci_name.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %6 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %if.then.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %7, %if.end.i.i ], [ %5, %if.then.pci_name.exit_crit_edge ]
  %call6 = tail call i32 @strlcpy(ptr noundef %bus_info, ptr noundef %retval.0.i.i, i32 noundef 32) #13
  br label %if.end

if.end:                                           ; preds = %pci_name.exit, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hme_get_link(ptr noundef %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %happy_lock = getelementptr i8, ptr %dev, i32 2320
  tail call void @_raw_spin_lock_irq(ptr noundef %happy_lock) #13
  %tcvregs = getelementptr i8, ptr %dev, i32 2648
  %0 = ptrtoint ptr %tcvregs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tcvregs, align 4
  %call1 = tail call fastcc i32 @happy_meal_tcvr_read(ptr noundef %add.ptr.i, ptr noundef %1, i32 noundef 0)
  %conv = trunc i32 %call1 to i16
  %sw_bmcr = getelementptr i8, ptr %dev, i32 2678
  %2 = ptrtoint ptr %sw_bmcr to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %conv, ptr %sw_bmcr, align 2
  tail call void @_raw_spin_unlock_irq(ptr noundef %happy_lock) #13
  %sw_bmsr = getelementptr i8, ptr %dev, i32 2680
  %3 = ptrtoint ptr %sw_bmsr to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %sw_bmsr, align 4
  %5 = and i16 %4, 4
  %and = zext i16 %5 to i32
  ret i32 %and
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hme_get_link_ksettings(ptr noundef %dev, ptr noundef %cmd) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %port = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 3
  %0 = ptrtoint ptr %port to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %port, align 1
  %phy_address = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 4
  %1 = ptrtoint ptr %phy_address to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %phy_address, align 2
  %happy_lock = getelementptr i8, ptr %dev, i32 2320
  tail call void @_raw_spin_lock_irq(ptr noundef %happy_lock) #13
  %tcvregs = getelementptr i8, ptr %dev, i32 2648
  %2 = ptrtoint ptr %tcvregs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tcvregs, align 4
  %call2 = tail call fastcc i32 @happy_meal_tcvr_read(ptr noundef %add.ptr.i, ptr noundef %3, i32 noundef 0)
  %conv = trunc i32 %call2 to i16
  %sw_bmcr = getelementptr i8, ptr %dev, i32 2678
  %4 = ptrtoint ptr %sw_bmcr to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %conv, ptr %sw_bmcr, align 2
  %5 = ptrtoint ptr %tcvregs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %tcvregs, align 4
  %call4 = tail call fastcc i32 @happy_meal_tcvr_read(ptr noundef %add.ptr.i, ptr noundef %6, i32 noundef 5)
  %conv5 = trunc i32 %call4 to i16
  %sw_lpa = getelementptr i8, ptr %dev, i32 2688
  %7 = ptrtoint ptr %sw_lpa to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %conv5, ptr %sw_lpa, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %happy_lock) #13
  %8 = ptrtoint ptr %sw_bmcr to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %sw_bmcr, align 2
  %10 = and i16 %9, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %tobool.not = icmp eq i16 %10, 0
  %autoneg33 = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 5
  br i1 %tobool.not, label %if.else31, label %if.then

if.then:                                          ; preds = %entry
  %11 = ptrtoint ptr %autoneg33 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %autoneg33, align 1
  %12 = ptrtoint ptr %sw_lpa to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %sw_lpa, align 4
  %14 = and i16 %13, 384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %tobool13.not = icmp eq i16 %14, 0
  br i1 %tobool13.not, label %if.else, label %if.then15

if.then15:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %and18 = lshr i16 %13, 8
  %15 = trunc i16 %and18 to i8
  br label %if.end47

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %16 = trunc i16 %13 to i8
  %17 = lshr i8 %16, 6
  br label %if.end47

if.else31:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %18 = ptrtoint ptr %autoneg33 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %autoneg33, align 1
  %19 = ptrtoint ptr %sw_bmcr to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %sw_bmcr, align 2
  %21 = and i16 %20, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %21)
  %tobool37.not = icmp eq i16 %21, 0
  %cond38 = select i1 %tobool37.not, i32 10, i32 100
  %and41 = lshr i16 %20, 8
  %22 = trunc i16 %and41 to i8
  br label %if.end47

if.end47:                                         ; preds = %if.else31, %if.else, %if.then15
  %.sink73 = phi i8 [ %15, %if.then15 ], [ %17, %if.else ], [ %22, %if.else31 ]
  %speed.0 = phi i32 [ 100, %if.then15 ], [ 10, %if.else ], [ %cond38, %if.else31 ]
  %23 = and i8 %.sink73, 1
  %duplex = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 2
  %24 = ptrtoint ptr %duplex to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %duplex, align 4
  %speed49 = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 1
  %25 = ptrtoint ptr %speed49 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %speed.0, ptr %speed49, align 4
  %link_modes = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %cmd, i32 0, i32 1
  tail call void @ethtool_convert_legacy_u32_to_link_mode(ptr noundef %link_modes, i32 noundef 719) #13
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hme_set_link_ksettings(ptr noundef %dev, ptr noundef %cmd) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %autoneg = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 5
  %0 = ptrtoint ptr %autoneg to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %autoneg, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %1)
  %switch = icmp ult i8 %1, 2
  br i1 %switch, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp10 = icmp eq i8 %1, 0
  br i1 %cmp10, label %land.lhs.true12, label %if.end.if.end32_crit_edge

if.end.if.end32_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end32

land.lhs.true12:                                  ; preds = %if.end
  %speed = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 1
  %2 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %speed, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.218)
  switch i32 %3, label %land.lhs.true12.cleanup_crit_edge [
    i32 100, label %land.lhs.true12.lor.lhs.false_crit_edge
    i32 10, label %land.lhs.true12.lor.lhs.false_crit_edge47
  ]

land.lhs.true12.lor.lhs.false_crit_edge47:        ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.lhs.false

land.lhs.true12.lor.lhs.false_crit_edge:          ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.lhs.false

land.lhs.true12.cleanup_crit_edge:                ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false:                                    ; preds = %land.lhs.true12.lor.lhs.false_crit_edge, %land.lhs.true12.lor.lhs.false_crit_edge47
  %duplex = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 2
  %5 = ptrtoint ptr %duplex to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %duplex, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %6)
  %switch46 = icmp ult i8 %6, 2
  br i1 %switch46, label %lor.lhs.false.if.end32_crit_edge, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false.if.end32_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end32

if.end32:                                         ; preds = %lor.lhs.false.if.end32_crit_edge, %if.end.if.end32_crit_edge
  %happy_lock = getelementptr i8, ptr %dev, i32 2320
  tail call void @_raw_spin_lock_irq(ptr noundef %happy_lock) #13
  %happy_timer = getelementptr i8, ptr %dev, i32 2728
  %call33 = tail call i32 @del_timer(ptr noundef %happy_timer) #13
  %tcvregs = getelementptr i8, ptr %dev, i32 2648
  %7 = ptrtoint ptr %tcvregs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tcvregs, align 4
  tail call fastcc void @happy_meal_begin_auto_negotiation(ptr noundef %add.ptr.i, ptr noundef %8, ptr noundef %cmd)
  tail call void @_raw_spin_unlock_irq(ptr noundef %happy_lock) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end32, %lor.lhs.false.cleanup_crit_edge, %land.lhs.true12.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end32 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %land.lhs.true12.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @ethtool_convert_legacy_u32_to_link_mode(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #12

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

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
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 185)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 185)
  ret void
}

attributes #0 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { argmemonly nofree nounwind readonly willreturn }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { nobuiltin }
attributes #17 = { nounwind allocsize(2) }
attributes #18 = { cold nounwind }
attributes #19 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !12, !13, !15, !16, !18, !20, !22, !23, !24, !26, !28, !30, !32, !34, !36, !38, !40, !41, !42, !43, !44, !46, !47, !49, !50, !51, !53, !54, !55, !57, !58, !59, !61, !62, !64, !65, !66, !68, !70, !72, !73, !74, !76, !77, !78, !80, !81, !82, !84, !85, !86, !88, !89, !90, !92, !93, !94, !96, !98, !100, !101, !102, !103, !105, !106, !107, !109, !110, !111, !113, !114, !115, !117, !118, !119, !121, !122, !123, !124, !126, !127, !128, !129, !131, !132, !133, !134, !136, !137, !138, !140, !141, !142, !144, !145, !146, !148, !149, !150, !152, !153, !154, !156, !157, !158, !160, !161, !162, !164, !165, !166, !167, !169, !170, !172, !173, !175, !176, !178, !179, !180, !182, !183, !184, !186, !187, !188, !190, !191, !192, !194, !195, !196, !197, !199, !200, !201, !203, !204, !205, !206, !208, !209, !210, !212, !213, !214, !215, !217, !218, !219, !220, !222, !223, !224, !225, !227, !228, !229, !230, !232, !233, !234, !236, !238, !239, !240, !241, !243, !244, !245, !246, !248, !249, !250, !252, !253, !254, !256, !257, !258, !260, !261, !262, !264, !265, !266, !268, !269, !270, !272, !273, !274, !276, !277, !278, !280, !281, !282, !284, !285, !286, !288, !289, !290, !292, !293, !294, !296, !297, !298, !300, !301, !303, !304, !305, !307, !308, !310, !311, !312, !314, !315, !317, !318, !319, !320, !321, !323, !324, !325, !327, !328, !329, !330, !332, !333, !334, !336, !337, !338, !340, !341, !342, !344, !345, !346, !348, !349, !350, !351, !353, !354, !355, !356, !358, !359, !360, !361, !363, !364, !365, !367, !369}
!llvm.module.flags = !{!371, !372, !373, !374, !375, !376, !377, !378}
!llvm.ident = !{!379}

!0 = !{ptr @__UNIQUE_ID_version341, !1, !"__UNIQUE_ID_version341", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/sun/sunhme.c", i32 71, i32 1}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @__modver_attr, !1, !"__modver_attr", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_author342, !7, !"__UNIQUE_ID_author342", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/sun/sunhme.c", i32 72, i32 1}
!8 = !{ptr @__UNIQUE_ID_description343, !9, !"__UNIQUE_ID_description343", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/sun/sunhme.c", i32 73, i32 1}
!10 = !{ptr @__UNIQUE_ID_file344, !11, !"__UNIQUE_ID_file344", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/sun/sunhme.c", i32 74, i32 1}
!12 = !{ptr @__UNIQUE_ID_license345, !11, !"__UNIQUE_ID_license345", i1 false, i1 false}
!13 = !{ptr @__param_macaddr, !14, !"__param_macaddr", i1 false, i1 false}
!14 = !{!"../drivers/net/ethernet/sun/sunhme.c", i32 79, i32 1}
!15 = !{ptr @__UNIQUE_ID_macaddrtype346, !14, !"__UNIQUE_ID_macaddrtype346", i1 false, i1 false}
!16 = !{ptr @__UNIQUE_ID_macaddr347, !17, !"__UNIQUE_ID_macaddr347", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/sun/sunhme.c", i32 80, i32 1}
!18 = !{ptr @__initcall__kmod_sunhme__348_3380_happy_meal_probe6, !19, !"__initcall__kmod_sunhme__348_3380_happy_meal_probe6", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/sun/sunhme.c", i32 3380, i32 1}
!20 = !{ptr @__exitcall_happy_meal_exit, !21, !"__exitcall_happy_meal_exit", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/sun/sunhme.c", i32 3381, i32 1}
!22 = !{ptr @__param_str_macaddr, !14, !"__param_str_macaddr", i1 false, i1 false}
!23 = !{ptr @__param_arr_macaddr, !14, !"__param_arr_macaddr", i1 false, i1 false}
!24 = !{ptr @macaddr, !25, !"macaddr", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/sun/sunhme.c", i32 76, i32 12}
!26 = !{ptr @.str.3, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/ethernet/sun/sunhme.c", i32 3225, i32 11}
!28 = !{ptr @hme_pci_driver, !29, !"hme_pci_driver", i1 false, i1 false}
!29 = !{!"../drivers/net/ethernet/sun/sunhme.c", i32 3224, i32 26}
!30 = !{ptr @happymeal_pci_ids, !31, !"happymeal_pci_ids", i1 false, i1 false}
!31 = !{!"../drivers/net/ethernet/sun/sunhme.c", i32 3217, i32 35}
!32 = !{ptr @.str.4, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/ethernet/sun/sunhme.c", i32 2983, i32 21}
!34 = !{ptr @.str.5, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/ethernet/sun/sunhme.c", i32 2985, i32 21}
!36 = !{ptr @.str.6, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/ethernet/sun/sunhme.c", i32 2994, i32 59}
!38 = !{ptr @.str.7, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/ethernet/sun/sunhme.c", i32 3012, i32 3}
!40 = !{ptr @.str.8, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.9, !39, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @happy_meal_pci_probe._entry, !39, !"_entry", i1 false, i1 false}
!43 = !{ptr @happy_meal_pci_probe._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @happy_meal_pci_probe.__key, !45, !"__key", i1 false, i1 false}
!45 = !{!"../drivers/net/ethernet/sun/sunhme.c", i32 3019, i32 2}
!46 = !{ptr @.str.10, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.12, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/ethernet/sun/sunhme.c", i32 3030, i32 3}
!49 = !{ptr @happy_meal_pci_probe._entry.11, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @happy_meal_pci_probe._entry_ptr.13, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.15, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/ethernet/sun/sunhme.c", i32 3034, i32 3}
!53 = !{ptr @happy_meal_pci_probe._entry.14, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @happy_meal_pci_probe._entry_ptr.16, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.18, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/net/ethernet/sun/sunhme.c", i32 3040, i32 3}
!57 = !{ptr @happy_meal_pci_probe._entry.17, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @happy_meal_pci_probe._entry_ptr.19, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @happy_meal_pci_probe.__key.20, !60, !"__key", i1 false, i1 false}
!60 = !{!"../drivers/net/ethernet/sun/sunhme.c", i32 3117, i32 2}
!61 = !{ptr @.str.21, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @.str.23, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/ethernet/sun/sunhme.c", i32 3147, i32 3}
!64 = !{ptr @happy_meal_pci_probe._entry.22, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @happy_meal_pci_probe._entry_ptr.24, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.25, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/ethernet/sun/sunhme.c", i32 3158, i32 27}
!68 = !{ptr @.str.26, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/ethernet/sun/sunhme.c", i32 3160, i32 23}
!70 = !{ptr @.str.28, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/ethernet/sun/sunhme.c", i32 3162, i32 3}
!72 = !{ptr @happy_meal_pci_probe._entry.27, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @happy_meal_pci_probe._entry_ptr.29, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.31, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/net/ethernet/sun/sunhme.c", i32 3165, i32 4}
!76 = !{ptr @happy_meal_pci_probe._entry.30, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @happy_meal_pci_probe._entry_ptr.32, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.34, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/net/ethernet/sun/sunhme.c", i32 3167, i32 4}
!80 = !{ptr @happy_meal_pci_probe._entry.33, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @happy_meal_pci_probe._entry_ptr.35, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.37, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/net/ethernet/sun/sunhme.c", i32 3172, i32 3}
!84 = !{ptr @happy_meal_pci_probe._entry.36, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @happy_meal_pci_probe._entry_ptr.38, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.40, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/net/ethernet/sun/sunhme.c", i32 3175, i32 3}
!88 = !{ptr @happy_meal_pci_probe._entry.39, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @happy_meal_pci_probe._entry_ptr.41, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.43, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/net/ethernet/sun/sunhme.c", i32 3178, i32 2}
!92 = !{ptr @happy_meal_pci_probe._entry.42, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @happy_meal_pci_probe._entry_ptr.44, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @hme_version_printed, !95, !"hme_version_printed", i1 false, i1 false}
!95 = !{!"../drivers/net/ethernet/sun/sunhme.c", i32 2526, i32 12}
!96 = !{ptr @version, !97, !"version", i1 false, i1 false}
!97 = !{!"../drivers/net/ethernet/sun/sunhme.c", i32 68, i32 13}
!98 = !{ptr @.str.45, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/net/ethernet/sun/sunhme.c", i32 682, i32 4}
!100 = !{ptr @.str.46, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @happy_meal_timer._entry, !99, !"_entry", i1 false, i1 false}
!102 = !{ptr @happy_meal_timer._entry_ptr, !99, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.48, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/net/ethernet/sun/sunhme.c", i32 742, i32 5}
!105 = !{ptr @happy_meal_timer._entry.47, !104, !"_entry", i1 false, i1 false}
!106 = !{ptr @happy_meal_timer._entry_ptr.49, !104, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.51, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/net/ethernet/sun/sunhme.c", i32 798, i32 6}
!109 = !{ptr @happy_meal_timer._entry.50, !108, !"_entry", i1 false, i1 false}
!110 = !{ptr @happy_meal_timer._entry_ptr.52, !108, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.54, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/net/ethernet/sun/sunhme.c", i32 804, i32 7}
!113 = !{ptr @happy_meal_timer._entry.53, !112, !"_entry", i1 false, i1 false}
!114 = !{ptr @happy_meal_timer._entry_ptr.55, !112, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.57, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/net/ethernet/sun/sunhme.c", i32 827, i32 3}
!117 = !{ptr @happy_meal_timer._entry.56, !116, !"_entry", i1 false, i1 false}
!118 = !{ptr @happy_meal_timer._entry_ptr.58, !116, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.59, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/net/ethernet/sun/sunhme.c", i32 452, i32 3}
!121 = !{ptr @.str.60, !120, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @happy_meal_tcvr_read._entry, !120, !"_entry", i1 false, i1 false}
!123 = !{ptr @happy_meal_tcvr_read._entry_ptr, !120, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @.str.61, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/net/ethernet/sun/sunhme.c", i32 485, i32 3}
!126 = !{ptr @.str.62, !125, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @happy_meal_tcvr_write._entry, !125, !"_entry", i1 false, i1 false}
!128 = !{ptr @happy_meal_tcvr_write._entry_ptr, !125, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @.str.63, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/net/ethernet/sun/sunhme.c", i32 548, i32 2}
!131 = !{ptr @.str.64, !130, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @display_link_mode._entry, !130, !"_entry", i1 false, i1 false}
!133 = !{ptr @display_link_mode._entry_ptr, !130, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @.str.66, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/net/ethernet/sun/sunhme.c", i32 550, i32 3}
!136 = !{ptr @display_link_mode._entry.65, !135, !"_entry", i1 false, i1 false}
!137 = !{ptr @display_link_mode._entry_ptr.67, !135, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @.str.69, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/net/ethernet/sun/sunhme.c", i32 552, i32 3}
!140 = !{ptr @display_link_mode._entry.68, !139, !"_entry", i1 false, i1 false}
!141 = !{ptr @display_link_mode._entry_ptr.70, !139, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @.str.72, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/net/ethernet/sun/sunhme.c", i32 553, i32 2}
!144 = !{ptr @display_link_mode._entry.71, !143, !"_entry", i1 false, i1 false}
!145 = !{ptr @display_link_mode._entry_ptr.73, !143, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @.str.75, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/net/ethernet/sun/sunhme.c", i32 557, i32 4}
!148 = !{ptr @display_link_mode._entry.74, !147, !"_entry", i1 false, i1 false}
!149 = !{ptr @display_link_mode._entry_ptr.76, !147, !"_entry_ptr", i1 false, i1 false}
!150 = !{ptr @.str.78, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/net/ethernet/sun/sunhme.c", i32 559, i32 4}
!152 = !{ptr @display_link_mode._entry.77, !151, !"_entry", i1 false, i1 false}
!153 = !{ptr @display_link_mode._entry_ptr.79, !151, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @.str.81, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/net/ethernet/sun/sunhme.c", i32 562, i32 4}
!156 = !{ptr @display_link_mode._entry.80, !155, !"_entry", i1 false, i1 false}
!157 = !{ptr @display_link_mode._entry_ptr.82, !155, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @.str.84, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/net/ethernet/sun/sunhme.c", i32 564, i32 4}
!160 = !{ptr @display_link_mode._entry.83, !159, !"_entry", i1 false, i1 false}
!161 = !{ptr @display_link_mode._entry_ptr.85, !159, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @.str.86, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/net/ethernet/sun/sunhme.c", i32 570, i32 2}
!164 = !{ptr @.str.87, !163, !"<string literal>", i1 false, i1 false}
!165 = !{ptr @display_forced_link_mode._entry, !163, !"_entry", i1 false, i1 false}
!166 = !{ptr @display_forced_link_mode._entry_ptr, !163, !"_entry_ptr", i1 false, i1 false}
!167 = !{ptr @display_forced_link_mode._entry.88, !168, !"_entry", i1 false, i1 false}
!168 = !{!"../drivers/net/ethernet/sun/sunhme.c", i32 572, i32 3}
!169 = !{ptr @display_forced_link_mode._entry_ptr.89, !168, !"_entry_ptr", i1 false, i1 false}
!170 = !{ptr @display_forced_link_mode._entry.90, !171, !"_entry", i1 false, i1 false}
!171 = !{!"../drivers/net/ethernet/sun/sunhme.c", i32 574, i32 3}
!172 = !{ptr @display_forced_link_mode._entry_ptr.91, !171, !"_entry_ptr", i1 false, i1 false}
!173 = !{ptr @display_forced_link_mode._entry.92, !174, !"_entry", i1 false, i1 false}
!174 = !{!"../drivers/net/ethernet/sun/sunhme.c", i32 575, i32 2}
!175 = !{ptr @display_forced_link_mode._entry_ptr.93, !174, !"_entry_ptr", i1 false, i1 false}
!176 = !{ptr @.str.95, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/net/ethernet/sun/sunhme.c", i32 578, i32 3}
!178 = !{ptr @display_forced_link_mode._entry.94, !177, !"_entry", i1 false, i1 false}
!179 = !{ptr @display_forced_link_mode._entry_ptr.96, !177, !"_entry_ptr", i1 false, i1 false}
!180 = !{ptr @.str.98, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/net/ethernet/sun/sunhme.c", i32 580, i32 3}
!182 = !{ptr @display_forced_link_mode._entry.97, !181, !"_entry", i1 false, i1 false}
!183 = !{ptr @display_forced_link_mode._entry_ptr.99, !181, !"_entry_ptr", i1 false, i1 false}
!184 = !{ptr @.str.101, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/net/ethernet/sun/sunhme.c", i32 582, i32 3}
!186 = !{ptr @display_forced_link_mode._entry.100, !185, !"_entry", i1 false, i1 false}
!187 = !{ptr @display_forced_link_mode._entry_ptr.102, !185, !"_entry_ptr", i1 false, i1 false}
!188 = !{ptr @.str.104, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/net/ethernet/sun/sunhme.c", i32 584, i32 3}
!190 = !{ptr @display_forced_link_mode._entry.103, !189, !"_entry", i1 false, i1 false}
!191 = !{ptr @display_forced_link_mode._entry_ptr.105, !189, !"_entry_ptr", i1 false, i1 false}
!192 = !{ptr @.str.106, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/net/ethernet/sun/sunhme.c", i32 1618, i32 3}
!194 = !{ptr @.str.107, !193, !"<string literal>", i1 false, i1 false}
!195 = !{ptr @happy_meal_init._entry, !193, !"_entry", i1 false, i1 false}
!196 = !{ptr @happy_meal_init._entry_ptr, !193, !"_entry_ptr", i1 false, i1 false}
!197 = !{ptr @.str.109, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/net/ethernet/sun/sunhme.c", i32 1619, i32 3}
!199 = !{ptr @happy_meal_init._entry.108, !198, !"_entry", i1 false, i1 false}
!200 = !{ptr @happy_meal_init._entry_ptr.110, !198, !"_entry_ptr", i1 false, i1 false}
!201 = !{ptr @.str.111, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/net/ethernet/sun/sunhme.c", i32 903, i32 3}
!203 = !{ptr @.str.112, !202, !"<string literal>", i1 false, i1 false}
!204 = !{ptr @happy_meal_stop._entry, !202, !"_entry", i1 false, i1 false}
!205 = !{ptr @happy_meal_stop._entry_ptr, !202, !"_entry_ptr", i1 false, i1 false}
!206 = distinct !{null, !207, !"__already_done", i1 false, i1 false}
!207 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!208 = !{ptr @.str.113, !207, !"<string literal>", i1 false, i1 false}
!209 = !{ptr @.str.114, !207, !"<string literal>", i1 false, i1 false}
!210 = !{ptr @.str.115, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/net/ethernet/sun/sunhme.c", i32 1121, i32 5}
!212 = !{ptr @.str.116, !211, !"<string literal>", i1 false, i1 false}
!213 = !{ptr @happy_meal_transceiver_check._entry, !211, !"_entry", i1 false, i1 false}
!214 = !{ptr @happy_meal_transceiver_check._entry_ptr, !211, !"_entry_ptr", i1 false, i1 false}
!215 = !{ptr @.str.117, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/net/ethernet/sun/sunhme.c", i32 861, i32 3}
!217 = !{ptr @.str.118, !216, !"<string literal>", i1 false, i1 false}
!218 = !{ptr @happy_meal_tx_reset._entry, !216, !"_entry", i1 false, i1 false}
!219 = !{ptr @happy_meal_tx_reset._entry_ptr, !216, !"_entry_ptr", i1 false, i1 false}
!220 = !{ptr @.str.119, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/net/ethernet/sun/sunhme.c", i32 881, i32 3}
!222 = !{ptr @.str.120, !221, !"<string literal>", i1 false, i1 false}
!223 = !{ptr @happy_meal_rx_reset._entry, !221, !"_entry", i1 false, i1 false}
!224 = !{ptr @happy_meal_rx_reset._entry_ptr, !221, !"_entry_ptr", i1 false, i1 false}
!225 = !{ptr @.str.121, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/net/ethernet/sun/sunhme.c", i32 1346, i32 4}
!227 = !{ptr @.str.122, !226, !"<string literal>", i1 false, i1 false}
!228 = !{ptr @happy_meal_begin_auto_negotiation._entry, !226, !"_entry", i1 false, i1 false}
!229 = !{ptr @happy_meal_begin_auto_negotiation._entry_ptr, !226, !"_entry_ptr", i1 false, i1 false}
!230 = !{ptr @.str.124, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/net/ethernet/sun/sunhme.c", i32 1348, i32 4}
!232 = !{ptr @happy_meal_begin_auto_negotiation._entry.123, !231, !"_entry", i1 false, i1 false}
!233 = !{ptr @happy_meal_begin_auto_negotiation._entry_ptr.125, !231, !"_entry_ptr", i1 false, i1 false}
!234 = !{ptr @hme_netdev_ops, !235, !"hme_netdev_ops", i1 false, i1 false}
!235 = !{!"../drivers/net/ethernet/sun/sunhme.c", i32 2645, i32 36}
!236 = !{ptr @.str.126, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/net/ethernet/sun/sunhme.c", i32 2177, i32 4}
!238 = !{ptr @.str.127, !237, !"<string literal>", i1 false, i1 false}
!239 = !{ptr @happy_meal_open._entry, !237, !"_entry", i1 false, i1 false}
!240 = !{ptr @happy_meal_open._entry_ptr, !237, !"_entry_ptr", i1 false, i1 false}
!241 = !{ptr @.str.128, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/net/ethernet/sun/sunhme.c", i32 1757, i32 3}
!243 = !{ptr @.str.129, !242, !"<string literal>", i1 false, i1 false}
!244 = !{ptr @happy_meal_is_not_so_happy._entry, !242, !"_entry", i1 false, i1 false}
!245 = !{ptr @happy_meal_is_not_so_happy._entry_ptr, !242, !"_entry_ptr", i1 false, i1 false}
!246 = !{ptr @.str.131, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/net/ethernet/sun/sunhme.c", i32 1763, i32 3}
!248 = !{ptr @happy_meal_is_not_so_happy._entry.130, !247, !"_entry", i1 false, i1 false}
!249 = !{ptr @happy_meal_is_not_so_happy._entry_ptr.132, !247, !"_entry_ptr", i1 false, i1 false}
!250 = !{ptr @.str.134, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../drivers/net/ethernet/sun/sunhme.c", i32 1768, i32 3}
!252 = !{ptr @happy_meal_is_not_so_happy._entry.133, !251, !"_entry", i1 false, i1 false}
!253 = !{ptr @happy_meal_is_not_so_happy._entry_ptr.135, !251, !"_entry_ptr", i1 false, i1 false}
!254 = !{ptr @.str.137, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../drivers/net/ethernet/sun/sunhme.c", i32 1774, i32 3}
!256 = !{ptr @happy_meal_is_not_so_happy._entry.136, !255, !"_entry", i1 false, i1 false}
!257 = !{ptr @happy_meal_is_not_so_happy._entry_ptr.138, !255, !"_entry_ptr", i1 false, i1 false}
!258 = !{ptr @.str.140, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../drivers/net/ethernet/sun/sunhme.c", i32 1783, i32 3}
!260 = !{ptr @happy_meal_is_not_so_happy._entry.139, !259, !"_entry", i1 false, i1 false}
!261 = !{ptr @happy_meal_is_not_so_happy._entry_ptr.141, !259, !"_entry_ptr", i1 false, i1 false}
!262 = !{ptr @.str.143, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../drivers/net/ethernet/sun/sunhme.c", i32 1793, i32 3}
!264 = !{ptr @happy_meal_is_not_so_happy._entry.142, !263, !"_entry", i1 false, i1 false}
!265 = !{ptr @happy_meal_is_not_so_happy._entry_ptr.144, !263, !"_entry_ptr", i1 false, i1 false}
!266 = !{ptr @.str.146, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../drivers/net/ethernet/sun/sunhme.c", i32 1800, i32 3}
!268 = !{ptr @happy_meal_is_not_so_happy._entry.145, !267, !"_entry", i1 false, i1 false}
!269 = !{ptr @happy_meal_is_not_so_happy._entry_ptr.147, !267, !"_entry_ptr", i1 false, i1 false}
!270 = !{ptr @.str.149, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../drivers/net/ethernet/sun/sunhme.c", i32 1802, i32 4}
!272 = !{ptr @happy_meal_is_not_so_happy._entry.148, !271, !"_entry", i1 false, i1 false}
!273 = !{ptr @happy_meal_is_not_so_happy._entry_ptr.150, !271, !"_entry_ptr", i1 false, i1 false}
!274 = !{ptr @.str.152, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../drivers/net/ethernet/sun/sunhme.c", i32 1804, i32 4}
!276 = !{ptr @happy_meal_is_not_so_happy._entry.151, !275, !"_entry", i1 false, i1 false}
!277 = !{ptr @happy_meal_is_not_so_happy._entry_ptr.153, !275, !"_entry_ptr", i1 false, i1 false}
!278 = !{ptr @.str.155, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../drivers/net/ethernet/sun/sunhme.c", i32 1806, i32 4}
!280 = !{ptr @happy_meal_is_not_so_happy._entry.154, !279, !"_entry", i1 false, i1 false}
!281 = !{ptr @happy_meal_is_not_so_happy._entry_ptr.156, !279, !"_entry_ptr", i1 false, i1 false}
!282 = !{ptr @.str.158, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../drivers/net/ethernet/sun/sunhme.c", i32 1807, i32 3}
!284 = !{ptr @happy_meal_is_not_so_happy._entry.157, !283, !"_entry", i1 false, i1 false}
!285 = !{ptr @happy_meal_is_not_so_happy._entry_ptr.159, !283, !"_entry_ptr", i1 false, i1 false}
!286 = !{ptr @.str.161, !287, !"<string literal>", i1 false, i1 false}
!287 = !{!"../drivers/net/ethernet/sun/sunhme.c", i32 1815, i32 3}
!288 = !{ptr @happy_meal_is_not_so_happy._entry.160, !287, !"_entry", i1 false, i1 false}
!289 = !{ptr @happy_meal_is_not_so_happy._entry_ptr.162, !287, !"_entry_ptr", i1 false, i1 false}
!290 = !{ptr @.str.164, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../drivers/net/ethernet/sun/sunhme.c", i32 1822, i32 3}
!292 = !{ptr @happy_meal_is_not_so_happy._entry.163, !291, !"_entry", i1 false, i1 false}
!293 = !{ptr @happy_meal_is_not_so_happy._entry_ptr.165, !291, !"_entry_ptr", i1 false, i1 false}
!294 = !{ptr @.str.167, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../drivers/net/ethernet/sun/sunhme.c", i32 1828, i32 3}
!296 = !{ptr @happy_meal_is_not_so_happy._entry.166, !295, !"_entry", i1 false, i1 false}
!297 = !{ptr @happy_meal_is_not_so_happy._entry_ptr.168, !295, !"_entry_ptr", i1 false, i1 false}
!298 = !{ptr @happy_meal_is_not_so_happy._entry.169, !299, !"_entry", i1 false, i1 false}
!299 = !{!"../drivers/net/ethernet/sun/sunhme.c", i32 1830, i32 4}
!300 = !{ptr @happy_meal_is_not_so_happy._entry_ptr.170, !299, !"_entry_ptr", i1 false, i1 false}
!301 = !{ptr @.str.172, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../drivers/net/ethernet/sun/sunhme.c", i32 1832, i32 4}
!303 = !{ptr @happy_meal_is_not_so_happy._entry.171, !302, !"_entry", i1 false, i1 false}
!304 = !{ptr @happy_meal_is_not_so_happy._entry_ptr.173, !302, !"_entry_ptr", i1 false, i1 false}
!305 = !{ptr @happy_meal_is_not_so_happy._entry.174, !306, !"_entry", i1 false, i1 false}
!306 = !{!"../drivers/net/ethernet/sun/sunhme.c", i32 1834, i32 4}
!307 = !{ptr @happy_meal_is_not_so_happy._entry_ptr.175, !306, !"_entry_ptr", i1 false, i1 false}
!308 = !{ptr @.str.177, !309, !"<string literal>", i1 false, i1 false}
!309 = !{!"../drivers/net/ethernet/sun/sunhme.c", i32 1836, i32 4}
!310 = !{ptr @happy_meal_is_not_so_happy._entry.176, !309, !"_entry", i1 false, i1 false}
!311 = !{ptr @happy_meal_is_not_so_happy._entry_ptr.178, !309, !"_entry_ptr", i1 false, i1 false}
!312 = !{ptr @happy_meal_is_not_so_happy._entry.179, !313, !"_entry", i1 false, i1 false}
!313 = !{!"../drivers/net/ethernet/sun/sunhme.c", i32 1837, i32 3}
!314 = !{ptr @happy_meal_is_not_so_happy._entry_ptr.180, !313, !"_entry_ptr", i1 false, i1 false}
!315 = !{ptr @.str.182, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"../drivers/net/ethernet/sun/sunhme.c", i32 1845, i32 3}
!317 = !{ptr @happy_meal_is_not_so_happy._entry.181, !316, !"_entry", i1 false, i1 false}
!318 = !{ptr @happy_meal_is_not_so_happy._entry_ptr.183, !316, !"_entry_ptr", i1 false, i1 false}
!319 = !{ptr @.str.184, !316, !"<string literal>", i1 false, i1 false}
!320 = !{ptr @.str.185, !316, !"<string literal>", i1 false, i1 false}
!321 = !{ptr @.str.187, !322, !"<string literal>", i1 false, i1 false}
!322 = !{!"../drivers/net/ethernet/sun/sunhme.c", i32 1852, i32 3}
!323 = !{ptr @happy_meal_is_not_so_happy._entry.186, !322, !"_entry", i1 false, i1 false}
!324 = !{ptr @happy_meal_is_not_so_happy._entry_ptr.188, !322, !"_entry_ptr", i1 false, i1 false}
!325 = !{ptr @.str.189, !326, !"<string literal>", i1 false, i1 false}
!326 = !{!"../drivers/net/ethernet/sun/sunhme.c", i32 1864, i32 2}
!327 = !{ptr @.str.190, !326, !"<string literal>", i1 false, i1 false}
!328 = !{ptr @happy_meal_mif_interrupt._entry, !326, !"_entry", i1 false, i1 false}
!329 = !{ptr @happy_meal_mif_interrupt._entry_ptr, !326, !"_entry_ptr", i1 false, i1 false}
!330 = !{ptr @.str.192, !331, !"<string literal>", i1 false, i1 false}
!331 = !{!"../drivers/net/ethernet/sun/sunhme.c", i32 1870, i32 3}
!332 = !{ptr @happy_meal_mif_interrupt._entry.191, !331, !"_entry", i1 false, i1 false}
!333 = !{ptr @happy_meal_mif_interrupt._entry_ptr.193, !331, !"_entry_ptr", i1 false, i1 false}
!334 = !{ptr @.str.195, !335, !"<string literal>", i1 false, i1 false}
!335 = !{!"../drivers/net/ethernet/sun/sunhme.c", i32 1873, i32 3}
!336 = !{ptr @happy_meal_mif_interrupt._entry.194, !335, !"_entry", i1 false, i1 false}
!337 = !{ptr @happy_meal_mif_interrupt._entry_ptr.196, !335, !"_entry_ptr", i1 false, i1 false}
!338 = !{ptr @.str.198, !339, !"<string literal>", i1 false, i1 false}
!339 = !{!"../drivers/net/ethernet/sun/sunhme.c", i32 1876, i32 3}
!340 = !{ptr @happy_meal_mif_interrupt._entry.197, !339, !"_entry", i1 false, i1 false}
!341 = !{ptr @happy_meal_mif_interrupt._entry_ptr.199, !339, !"_entry_ptr", i1 false, i1 false}
!342 = !{ptr @.str.201, !343, !"<string literal>", i1 false, i1 false}
!343 = !{!"../drivers/net/ethernet/sun/sunhme.c", i32 1879, i32 3}
!344 = !{ptr @happy_meal_mif_interrupt._entry.200, !343, !"_entry", i1 false, i1 false}
!345 = !{ptr @happy_meal_mif_interrupt._entry_ptr.202, !343, !"_entry_ptr", i1 false, i1 false}
!346 = !{ptr @.str.203, !347, !"<string literal>", i1 false, i1 false}
!347 = !{!"../drivers/net/ethernet/sun/sunhme.c", i32 2069, i32 3}
!348 = !{ptr @.str.204, !347, !"<string literal>", i1 false, i1 false}
!349 = !{ptr @happy_meal_rx._entry, !347, !"_entry", i1 false, i1 false}
!350 = !{ptr @happy_meal_rx._entry_ptr, !347, !"_entry_ptr", i1 false, i1 false}
!351 = !{ptr @.str.205, !352, !"<string literal>", i1 false, i1 false}
!352 = !{!"../drivers/net/ethernet/sun/sunhme.c", i32 2283, i32 3}
!353 = !{ptr @.str.206, !352, !"<string literal>", i1 false, i1 false}
!354 = !{ptr @happy_meal_start_xmit._entry, !352, !"_entry", i1 false, i1 false}
!355 = !{ptr @happy_meal_start_xmit._entry_ptr, !352, !"_entry_ptr", i1 false, i1 false}
!356 = !{ptr @.str.207, !357, !"<string literal>", i1 false, i1 false}
!357 = !{!"../drivers/net/ethernet/sun/sunhme.c", i32 2228, i32 2}
!358 = !{ptr @.str.208, !357, !"<string literal>", i1 false, i1 false}
!359 = !{ptr @happy_meal_tx_timeout._entry, !357, !"_entry", i1 false, i1 false}
!360 = !{ptr @happy_meal_tx_timeout._entry_ptr, !357, !"_entry_ptr", i1 false, i1 false}
!361 = !{ptr @.str.210, !362, !"<string literal>", i1 false, i1 false}
!362 = !{!"../drivers/net/ethernet/sun/sunhme.c", i32 2230, i32 2}
!363 = !{ptr @happy_meal_tx_timeout._entry.209, !362, !"_entry", i1 false, i1 false}
!364 = !{ptr @happy_meal_tx_timeout._entry_ptr.211, !362, !"_entry_ptr", i1 false, i1 false}
!365 = !{ptr @hme_ethtool_ops, !366, !"hme_ethtool_ops", i1 false, i1 false}
!366 = !{!"../drivers/net/ethernet/sun/sunhme.c", i32 2519, i32 33}
!367 = !{ptr @.str.212, !368, !"<string literal>", i1 false, i1 false}
!368 = !{!"../drivers/net/ethernet/sun/sunhme.c", i32 2490, i32 25}
!369 = !{ptr @qfe_pci_list, !370, !"qfe_pci_list", i1 false, i1 false}
!370 = !{!"../drivers/net/ethernet/sun/sunhme.c", i32 87, i32 24}
!371 = !{i32 1, !"wchar_size", i32 2}
!372 = !{i32 1, !"min_enum_size", i32 4}
!373 = !{i32 8, !"branch-target-enforcement", i32 0}
!374 = !{i32 8, !"sign-return-address", i32 0}
!375 = !{i32 8, !"sign-return-address-all", i32 0}
!376 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!377 = !{i32 7, !"uwtable", i32 1}
!378 = !{i32 7, !"frame-pointer", i32 2}
!379 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!380 = !{!"auto-init"}
!381 = !{i64 4720853}
!382 = !{i64 2156839165}
!383 = !{i64 2156839373}
!384 = !{i64 2156837681}
!385 = !{i64 2156837889}
!386 = !{i64 2156838097}
!387 = !{i64 2156838305}
!388 = !{i64 2156838513}
!389 = !{i64 2156838721}
!390 = !{i64 2156838929}
!391 = !{i64 2156685228}
!392 = !{i64 4720655}
!393 = !{i64 4721073}
!394 = !{i64 2156685935}
!395 = !{i64 2156756592}
!396 = !{i64 2156761593}
!397 = !{i64 2156762078}
!398 = !{i64 2156625999}
!399 = !{i64 2156626453}
!400 = !{i64 2156626901}
!401 = !{i64 2156629760}
!402 = !{i64 2156627349}
!403 = !{i64 2156628576}
!404 = !{i64 2156628864}
!405 = !{i64 2156632106}
!406 = !{i64 2156634736}
!407 = !{i64 2156630656}
!408 = !{i64 2156636123}
!409 = !{i64 2156660584}
!410 = !{i64 2156661569}
!411 = !{i64 2156662167}
!412 = !{i64 2156662262}
!413 = !{i64 2156663617}
!414 = !{i64 2156664580}
!415 = !{i64 2156666032}
!416 = !{i64 2156667019}
!417 = !{i64 2156668448}
!418 = !{i64 2156669411}
!419 = !{i64 2156693547}
!420 = !{i64 2156695052}
!421 = !{i64 2156695985}
!422 = !{i64 2156709322}
!423 = !{!"branch_weights", i32 2000, i32 1}
!424 = !{i64 2156709922}
!425 = !{i64 2156710502}
!426 = !{i64 2156711076}
!427 = !{i64 2156715477}
!428 = !{i64 2156720481}
!429 = !{i64 2156720966}
!430 = !{i64 2156679207}
!431 = !{i64 2156679905}
!432 = !{i64 2156682221}
!433 = !{i64 2156682919}
!434 = !{i64 2156721451}
!435 = !{i64 2156721905}
!436 = !{i64 2156722359}
!437 = !{i64 2156722857}
!438 = !{i64 2156723416}
!439 = !{i64 2156723963}
!440 = !{i64 2156724510}
!441 = !{i64 2156725118}
!442 = !{i64 2156725595}
!443 = !{i64 2156726072}
!444 = !{i64 2156726549}
!445 = !{i64 2156730588}
!446 = !{i64 2156731100}
!447 = !{i64 2156731612}
!448 = !{i64 2156732124}
!449 = !{i64 2156732612}
!450 = !{i64 2156733064}
!451 = !{i64 2156733516}
!452 = !{i64 2156733968}
!453 = !{i64 2156734739}
!454 = !{i64 2156735850}
!455 = !{i64 2156736892}
!456 = !{i64 2156737598}
!457 = !{i64 2156738440}
!458 = !{i64 2156739049}
!459 = !{i64 2156739691}
!460 = !{i64 2156741233}
!461 = !{i64 2156742164}
!462 = !{i64 2156742646}
!463 = !{i64 2156743499}
!464 = !{i64 2156743954}
!465 = !{i64 2156744807}
!466 = !{i64 2156748573}
!467 = !{i64 2156749611}
!468 = !{i64 2156750080}
!469 = !{i64 2156750595}
!470 = !{i64 2156751082}
!471 = !{i64 2156751574}
!472 = !{i64 2156753087}
!473 = !{i64 2156754014}
!474 = !{i64 2156755350}
!475 = !{i64 2156756277}
!476 = !{i64 2156688392}
!477 = !{i64 2156688661}
!478 = !{i64 2156689359}
!479 = !{i64 2156689628}
!480 = !{i64 2156690326}
!481 = !{i64 2156690595}
!482 = !{i64 2156691293}
!483 = !{i64 2156691808}
!484 = !{i64 2156692323}
!485 = !{i64 2156692592}
!486 = !{i64 2156693044}
!487 = !{i64 2156701183}
!488 = !{i64 2156701507}
!489 = !{i64 2156702216}
!490 = !{i64 2156703546}
!491 = !{i64 2156704499}
!492 = !{i64 2156705050}
!493 = !{i64 2156705376}
!494 = !{i64 2156705953}
!495 = !{i64 2156697088}
!496 = !{i64 2156697413}
!497 = !{i64 2156698026}
!498 = !{i64 2156698599}
!499 = !{i64 2156699218}
!500 = distinct !{!500, !501}
!501 = !{!"llvm.loop.peeled.count", i32 1}
!502 = !{i64 2156819736}
!503 = !{!"branch_weights", i32 1, i32 2000}
!504 = !{i64 2156820859}
!505 = !{i64 2156821604}
!506 = !{i64 2156822358}
!507 = !{i64 2156822961}
!508 = !{i64 2156823438}
!509 = !{i64 2156823915}
!510 = !{i64 2156824392}
!511 = !{i64 2156825911}
!512 = !{i64 2156826838}
!513 = !{i64 2156830622}
!514 = !{i64 2156831134}
!515 = !{i64 2156831646}
!516 = !{i64 2156832158}
!517 = !{i64 2156815890}
!518 = !{i64 2156816429}
!519 = !{i64 2156816989}
!520 = !{i64 2156806280}
!521 = distinct !{!521, !501}
!522 = !{i64 2156801687}
!523 = !{i64 2156803269}
!524 = !{i64 2156803913}
