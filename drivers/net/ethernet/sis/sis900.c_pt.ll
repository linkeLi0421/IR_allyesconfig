; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/sis/sis900.c_pt.bc'
source_filename = "../drivers/net/ethernet/sis/sis900.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

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
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.mii_chip_info = type { ptr, i16, i16, i8 }
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
%struct.mii_phy = type { ptr, i32, i16, i16, i16, i8 }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.sis900_private = type { ptr, %struct.spinlock, ptr, ptr, i32, %struct.mii_if_info, ptr, %struct.timer_list, i8, i32, i32, i32, i32, i32, [16 x ptr], [16 x ptr], ptr, ptr, i32, i32, i32, i8, i8, i32 }
%struct.mii_if_info = type { i32, i32, i32, i32, i8, ptr, ptr, ptr }
%struct._BufferDesc = type { i32, i32, i32 }
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
%struct.netdev_hw_addr = type { %struct.list_head, %struct.rb_node, [32 x i8], i8, i8, i32, i32, i32, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.ifreq = type { %union.anon.104, %union.anon.105 }
%union.anon.104 = type { [16 x i8] }
%union.anon.105 = type { %struct.ifmap }
%struct.ifmap = type { i32, i32, i16, i8, i8, i8 }
%struct.mii_ioctl_data = type { i16, i16, i16, i16 }
%struct.ethtool_drvinfo = type { i32, [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8], [12 x i8], i32, i32, i32, i32, i32 }
%struct.ethtool_wolinfo = type { i32, i32, i32, [6 x i8] }
%struct.ethtool_eeprom = type { i32, i32, i32, i32, [0 x i8] }

@__UNIQUE_ID_author341 = internal constant [75 x i8] c"sis900.author=Jim Huang <cmhuang@sis.com.tw>, Ollie Lho <ollie@sis.com.tw>\00", section ".modinfo", align 1
@__UNIQUE_ID_description342 = internal constant [52 x i8] c"sis900.description=SiS 900 PCI Fast Ethernet driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file343 = internal constant [44 x i8] c"sis900.file=drivers/net/ethernet/sis/sis900\00", section ".modinfo", align 1
@__UNIQUE_ID_license344 = internal constant [19 x i8] c"sis900.license=GPL\00", section ".modinfo", align 1
@__param_str_multicast_filter_limit = internal constant [30 x i8] c"sis900.multicast_filter_limit\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@multicast_filter_limit = internal global { i32, [28 x i8] } { i32 128, [28 x i8] zeroinitializer }, align 32
@__param_multicast_filter_limit = internal constant %struct.kernel_param { ptr @__param_str_multicast_filter_limit, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.97 { ptr @multicast_filter_limit } }, section "__param", align 4
@__UNIQUE_ID_multicast_filter_limittype345 = internal constant [43 x i8] c"sis900.parmtype=multicast_filter_limit:int\00", section ".modinfo", align 1
@__param_str_max_interrupt_work = internal constant [26 x i8] c"sis900.max_interrupt_work\00", align 1
@max_interrupt_work = internal global { i32, [28 x i8] } { i32 40, [28 x i8] zeroinitializer }, align 32
@__param_max_interrupt_work = internal constant %struct.kernel_param { ptr @__param_str_max_interrupt_work, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.97 { ptr @max_interrupt_work } }, section "__param", align 4
@__UNIQUE_ID_max_interrupt_worktype346 = internal constant [39 x i8] c"sis900.parmtype=max_interrupt_work:int\00", section ".modinfo", align 1
@__param_str_sis900_debug = internal constant [20 x i8] c"sis900.sis900_debug\00", align 1
@sis900_debug = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@__param_sis900_debug = internal constant %struct.kernel_param { ptr @__param_str_sis900_debug, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.97 { ptr @sis900_debug } }, section "__param", align 4
@__UNIQUE_ID_sis900_debugtype347 = internal constant [33 x i8] c"sis900.parmtype=sis900_debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_multicast_filter_limit348 = internal constant [95 x i8] c"sis900.parm=multicast_filter_limit:SiS 900/7016 maximum number of filtered multicast addresses\00", section ".modinfo", align 1
@__UNIQUE_ID_max_interrupt_work349 = internal constant [81 x i8] c"sis900.parm=max_interrupt_work:SiS 900/7016 maximum events handled per interrupt\00", section ".modinfo", align 1
@__UNIQUE_ID_sis900_debug350 = internal constant [72 x i8] c"sis900.parm=sis900_debug:SiS 900/7016 bitmapped debugging message level\00", section ".modinfo", align 1
@sis900_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @sis900_pci_tbl, ptr @sis900_probe, ptr @sis900_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sis900_pm_ops, ptr null, ptr null }, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__initcall__kmod_sis900__351_2584_sis900_init_module6 = internal global ptr @sis900_init_module, section ".initcall6.init", align 4
@__exitcall_sis900_cleanup_module = internal global ptr @sis900_cleanup_module, section ".exitcall.exit", align 4
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"sis900\00", [25 x i8] zeroinitializer }, align 32
@sis900_pci_tbl = internal constant { [3 x %struct.pci_device_id], [32 x i8] } { [3 x %struct.pci_device_id] [%struct.pci_device_id { i32 4153, i32 2304, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4153, i32 28694, i32 -1, i32 -1, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@sis900_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @sis900_suspend, ptr @sis900_resume, ptr @sis900_suspend, ptr @sis900_resume, ptr @sis900_suspend, ptr @sis900_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@card_names = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.22, ptr @.str.23], [24 x i8] zeroinitializer }, align 32
@sis900_probe.printed_version = internal global { i32, [28 x i8] } zeroinitializer, align 32
@sis900_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr null, ptr @.str.1, ptr @.str.2, i32 449, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sis900_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/net/ethernet/sis/sis900.c\00", [62 x i8] zeroinitializer }, align 32
@sis900_probe._entry_ptr = internal global ptr @sis900_probe._entry, section ".printk_index", align 4
@version = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\016sis900.c: v1.08.10 Apr. 2 2006\0A\00", [62 x i8] zeroinitializer }, align 32
@sis900_probe._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 459, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\013sis900.c: architecture does not support 32bit PCI busmaster DMA\0A\00", [61 x i8] zeroinitializer }, align 32
@sis900_probe._entry_ptr.5 = internal global ptr @sis900_probe._entry.3, section ".printk_index", align 4
@sis900_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&sis_priv->lock\00", [16 x i8] zeroinitializer }, align 32
@sis900_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @sis900_open, ptr @sis900_close, ptr @sis900_start_xmit, ptr null, ptr null, ptr null, ptr @set_rx_mode, ptr @eth_mac_addr, ptr @eth_validate_addr, ptr null, ptr @mii_ioctl, ptr null, ptr null, ptr null, ptr @sis900_set_config, ptr null, ptr null, ptr @sis900_tx_timeout, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sis900_poll, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@sis900_ethtool_ops = internal constant { %struct.ethtool_ops, [68 x i8] } { %struct.ethtool_ops { i8 0, i32 0, i32 0, ptr @sis900_get_drvinfo, ptr null, ptr null, ptr @sis900_get_wol, ptr @sis900_set_wol, ptr @sis900_get_msglevel, ptr @sis900_set_msglevel, ptr @sis900_nway_reset, ptr @sis900_get_link, ptr null, ptr @sis900_get_eeprom_len, ptr @sis900_get_eeprom, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sis900_get_link_ksettings, ptr @sis900_set_link_ksettings, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [68 x i8] zeroinitializer }, align 32
@sis900_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.1, ptr @.str.2, i32 530, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\017%s: detected revision %2.2x, trying to get MAC address...\0A\00", [35 x i8] zeroinitializer }, align 32
@sis900_probe._entry_ptr.9 = internal global ptr @sis900_probe._entry.7, section ".printk_index", align 4
@sis900_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.1, ptr @.str.2, i32 545, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\014%s: Unreadable or invalid MAC address,using random generated one\0A\00", [60 x i8] zeroinitializer }, align 32
@sis900_probe._entry_ptr.12 = internal global ptr @sis900_probe._entry.10, section ".printk_index", align 4
@sis900_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.1, ptr @.str.2, i32 555, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\014%s: Error probing MII device.\0A\00", [63 x i8] zeroinitializer }, align 32
@sis900_probe._entry_ptr.15 = internal global ptr @sis900_probe._entry.13, section ".printk_index", align 4
@sis900_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.1, ptr @.str.2, i32 574, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\016%s: %s at 0x%p, IRQ %d, %pM\0A\00", [33 x i8] zeroinitializer }, align 32
@sis900_probe._entry_ptr.18 = internal global ptr @sis900_probe._entry.16, section ".printk_index", align 4
@sis900_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.1, ptr @.str.2, i32 579, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\016%s: Wake on LAN only available from suspend to RAM.\00", [42 x i8] zeroinitializer }, align 32
@sis900_probe._entry_ptr.21 = internal global ptr @sis900_probe._entry.19, section ".printk_index", align 4
@.str.22 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"SiS 900 PCI Fast Ethernet\00", [38 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"SiS 7016 PCI Fast Ethernet\00", [37 x i8] zeroinitializer }, align 32
@sis900_open.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.24 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"(&sis_priv->timer)\00", [45 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@sis900_interrupt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.2, i32 1709, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016%s: Abnormal interrupt, status %#8.8x.\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sis900_interrupt\00", [47 x i8] zeroinitializer }, align 32
@sis900_interrupt._entry_ptr = internal global ptr @sis900_interrupt._entry, section ".printk_index", align 4
@sis900_interrupt._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.26, ptr @.str.2, i32 1716, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\016%s: Too much work at interrupt, interrupt status = %#8.8x.\0A\00", [34 x i8] zeroinitializer }, align 32
@sis900_interrupt._entry_ptr.29 = internal global ptr @sis900_interrupt._entry.27, section ".printk_index", align 4
@sis900_interrupt._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.26, ptr @.str.2, i32 1724, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\017%s: exiting interrupt, interrupt status = %#8.8x\0A\00", [44 x i8] zeroinitializer }, align 32
@sis900_interrupt._entry_ptr.32 = internal global ptr @sis900_interrupt._entry.30, section ".printk_index", align 4
@sis900_rx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.2, i32 1751, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\017sis900_rx, cur_rx:%4.4d, dirty_rx:%4.4d status:0x%8.8x\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sis900_rx\00", [22 x i8] zeroinitializer }, align 32
@sis900_rx._entry_ptr = internal global ptr @sis900_rx._entry, section ".printk_index", align 4
@sis900_rx._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.34, ptr @.str.2, i32 1775, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\017%s: Corrupted packet received, buffer status = 0x%8.8x/%d.\0A\00", [34 x i8] zeroinitializer }, align 32
@sis900_rx._entry_ptr.37 = internal global ptr @sis900_rx._entry.35, section ".printk_index", align 4
@sis900_rx._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.34, ptr @.str.2, i32 1818, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"\014%s: NULL pointer encountered in Rx ring\0Acur_rx:%4.4d, dirty_rx:%4.4d\0A\00", [56 x i8] zeroinitializer }, align 32
@sis900_rx._entry_ptr.40 = internal global ptr @sis900_rx._entry.38, section ".printk_index", align 4
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.41 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@sis900_finish_xmit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.2, i32 1925, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\017%s: Transmit error, Tx status %8.8x.\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sis900_finish_xmit\00", [45 x i8] zeroinitializer }, align 32
@sis900_finish_xmit._entry_ptr = internal global ptr @sis900_finish_xmit._entry, section ".printk_index", align 4
@sis900_init_rxfilter._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.2, i32 1115, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\017%s: Receive Filter Address[%d]=%x\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sis900_init_rxfilter\00", [43 x i8] zeroinitializer }, align 32
@sis900_init_rxfilter._entry_ptr = internal global ptr @sis900_init_rxfilter._entry, section ".printk_index", align 4
@sis900_init_tx_ring._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.2, i32 1153, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\017%s: TX descriptor register loaded with: %8.8x\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sis900_init_tx_ring\00", [44 x i8] zeroinitializer }, align 32
@sis900_init_tx_ring._entry_ptr = internal global ptr @sis900_init_tx_ring._entry, section ".printk_index", align 4
@sis900_init_rx_ring._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.50, ptr @.str.2, i32 1214, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\017%s: RX descriptor register loaded with: %8.8x\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sis900_init_rx_ring\00", [44 x i8] zeroinitializer }, align 32
@sis900_init_rx_ring._entry_ptr = internal global ptr @sis900_init_rx_ring._entry, section ".printk_index", align 4
@sis900_auto_negotiate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.52, ptr @.str.2, i32 1469, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\016%s: Media Link Off\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"sis900_auto_negotiate\00", [42 x i8] zeroinitializer }, align 32
@sis900_auto_negotiate._entry_ptr = internal global ptr @sis900_auto_negotiate._entry, section ".printk_index", align 4
@sis900_timer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.53, ptr @.str.2, i32 1349, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sis900_timer\00", [19 x i8] zeroinitializer }, align 32
@sis900_timer._entry_ptr = internal global ptr @sis900_timer._entry, section ".printk_index", align 4
@sis900_default_phy._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.55, ptr @.str.2, i32 769, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\016%s: Using transceiver found at address %d as default\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sis900_default_phy\00", [45 x i8] zeroinitializer }, align 32
@sis900_default_phy._entry_ptr = internal global ptr @sis900_default_phy._entry, section ".printk_index", align 4
@sis900_read_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.57, ptr @.str.2, i32 1537, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\016%s: Media Link On %s %s-duplex\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sis900_read_mode\00", [47 x i8] zeroinitializer }, align 32
@sis900_read_mode._entry_ptr = internal global ptr @sis900_read_mode._entry, section ".printk_index", align 4
@.str.58 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"100mbps\00", [24 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"10mbps\00", [25 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"full\00", [27 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"half\00", [27 x i8] zeroinitializer }, align 32
@sis900_start_xmit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.63, ptr @.str.2, i32 1663, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\017%s: Queued Tx packet at %p size %d to slot %d.\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sis900_start_xmit\00", [46 x i8] zeroinitializer }, align 32
@sis900_start_xmit._entry_ptr = internal global ptr @sis900_start_xmit._entry, section ".printk_index", align 4
@byte_rev_table = external dso_local local_unnamed_addr constant [256 x i8], align 1
@sis900_tx_timeout._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.65, ptr @.str.2, i32 1558, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\016%s: Transmit timeout, status %8.8x %8.8x\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sis900_tx_timeout\00", [46 x i8] zeroinitializer }, align 32
@sis900_tx_timeout._entry_ptr = internal global ptr @sis900_tx_timeout._entry, section ".printk_index", align 4
@.str.66 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"v1.08.10 Apr. 2 2006\00", [43 x i8] zeroinitializer }, align 32
@sis900_set_wol._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.68, ptr @.str.2, i32 2104, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\017%s: Wake on LAN disabled\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sis900_set_wol\00", [17 x i8] zeroinitializer }, align 32
@sis900_set_wol._entry_ptr = internal global ptr @sis900_set_wol._entry, section ".printk_index", align 4
@sis900_set_wol._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.68, ptr @.str.2, i32 2123, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\017%s: Wake on LAN enabled\0A\00", [37 x i8] zeroinitializer }, align 32
@sis900_set_wol._entry_ptr.71 = internal global ptr @sis900_set_wol._entry.69, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@sis630e_get_mac_addr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.73, ptr @.str.2, i32 304, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\014%s: Can not find ISA bridge\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sis630e_get_mac_addr\00", [43 x i8] zeroinitializer }, align 32
@sis630e_get_mac_addr._entry_ptr = internal global ptr @sis630e_get_mac_addr._entry, section ".printk_index", align 4
@sis900_get_mac_addr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.75, ptr @.str.2, i32 269, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\014%s: Error EEPROM read %x\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sis900_get_mac_addr\00", [44 x i8] zeroinitializer }, align 32
@sis900_get_mac_addr._entry_ptr = internal global ptr @sis900_get_mac_addr._entry, section ".printk_index", align 4
@sis900_mii_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.77, ptr @.str.2, i32 629, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\017%s: MII at address %d not accessible\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sis900_mii_probe\00", [47 x i8] zeroinitializer }, align 32
@sis900_mii_probe._entry_ptr = internal global ptr @sis900_mii_probe._entry, section ".printk_index", align 4
@mii_chip_table = internal constant { [14 x %struct.mii_chip_info], [56 x i8] } { [14 x %struct.mii_chip_info] [%struct.mii_chip_info { ptr @.str.90, i16 29, i16 -32768, i8 2 }, %struct.mii_chip_info { ptr @.str.91, i16 22, i16 -2000, i8 2 }, %struct.mii_chip_info { ptr @.str.92, i16 323, i16 -17296, i8 2 }, %struct.mii_chip_info { ptr @.str.93, i16 34, i16 21792, i8 2 }, %struct.mii_chip_info { ptr @.str.94, i16 46, i16 -13216, i8 2 }, %struct.mii_chip_info { ptr @.str.95, i16 0, i16 27504, i8 2 }, %struct.mii_chip_info { ptr @.str.96, i16 0, i16 27536, i8 1 }, %struct.mii_chip_info { ptr @.str.97, i16 21, i16 -3008, i8 2 }, %struct.mii_chip_info { ptr @.str.97, i16 323, i16 -17296, i8 2 }, %struct.mii_chip_info { ptr @.str.98, i16 8192, i16 23584, i8 3 }, %struct.mii_chip_info { ptr @.str.99, i16 8192, i16 23600, i8 3 }, %struct.mii_chip_info { ptr @.str.100, i16 0, i16 -32256, i8 2 }, %struct.mii_chip_info { ptr @.str.101, i16 257, i16 -28896, i8 2 }, %struct.mii_chip_info zeroinitializer], [56 x i8] zeroinitializer }, align 32
@sis900_mii_probe._entry.78 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.77, ptr @.str.2, i32 663, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016%s: %s transceiver found at address %d.\0A\00", [53 x i8] zeroinitializer }, align 32
@sis900_mii_probe._entry_ptr.80 = internal global ptr @sis900_mii_probe._entry.78, section ".printk_index", align 4
@sis900_mii_probe._entry.81 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.77, ptr @.str.2, i32 669, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\016%s: Unknown PHY transceiver found at address %d.\0A\00", [44 x i8] zeroinitializer }, align 32
@sis900_mii_probe._entry_ptr.83 = internal global ptr @sis900_mii_probe._entry.81, section ".printk_index", align 4
@sis900_mii_probe._entry.84 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.77, ptr @.str.2, i32 675, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\016%s: No MII transceivers found!\0A\00", [62 x i8] zeroinitializer }, align 32
@sis900_mii_probe._entry_ptr.86 = internal global ptr @sis900_mii_probe._entry.84, section ".printk_index", align 4
@sis900_mii_probe._entry.87 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.77, ptr @.str.2, i32 700, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\014%s: reset phy and link down now\0A\00", [61 x i8] zeroinitializer }, align 32
@sis900_mii_probe._entry_ptr.89 = internal global ptr @sis900_mii_probe._entry.87, section ".printk_index", align 4
@.str.90 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"SiS 900 Internal MII PHY\00", [39 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"SiS 7014 Physical Layer Solution\00", [63 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"SiS 900 on Foxconn 661 7MI\00", [37 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Altimata AC101LF PHY\00", [43 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ADM 7001 LAN PHY\00", [47 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"AMD 79C901 10BASE-T PHY\00", [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"AMD 79C901 HomePNA PHY\00", [41 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ICS LAN PHY\00", [20 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"NS 83851 PHY\00", [19 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"NS 83847 PHY\00", [19 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Realtek RTL8201 PHY\00", [44 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"VIA 6103 PHY\00", [19 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 65535]
@__sancov_gen_cov_switch_values.102 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 65535]
@__sancov_gen_cov_switch_values.103 = internal global [5 x i64] [i64 3, i64 32, i64 35143, i64 35144, i64 35145]
@__sancov_gen_cov_switch_values.104 = internal global [9 x i64] [i64 7, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.105 = internal global [6 x i64] [i64 4, i64 8, i64 128, i64 129, i64 131, i64 132]
@__sancov_gen_cov_switch_values.106 = internal global [6 x i64] [i64 4, i64 8, i64 128, i64 129, i64 131, i64 132]
@__sancov_gen_cov_switch_values.107 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.108 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 65535]
@___asan_gen_.109 = private unnamed_addr constant [23 x i8] c"multicast_filter_limit\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 88, i32 12 }
@___asan_gen_.112 = private unnamed_addr constant [19 x i8] c"max_interrupt_work\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 87, i32 12 }
@___asan_gen_.115 = private unnamed_addr constant [13 x i8] c"sis900_debug\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 90, i32 12 }
@___asan_gen_.118 = private unnamed_addr constant [18 x i8] c"sis900_pci_driver\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 2561, i32 26 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 2562, i32 11 }
@___asan_gen_.124 = private unnamed_addr constant [15 x i8] c"sis900_pci_tbl\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 110, i32 35 }
@___asan_gen_.127 = private unnamed_addr constant [14 x i8] c"sis900_pm_ops\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 2559, i32 8 }
@___asan_gen_.130 = private unnamed_addr constant [11 x i8] c"card_names\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 105, i32 21 }
@___asan_gen_.133 = private unnamed_addr constant [16 x i8] c"printed_version\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 447, i32 13 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 449, i32 3 }
@___asan_gen_.145 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 84, i32 19 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 458, i32 3 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 485, i32 2 }
@___asan_gen_.160 = private unnamed_addr constant [18 x i8] c"sis900_netdev_ops\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 406, i32 36 }
@___asan_gen_.163 = private unnamed_addr constant [19 x i8] c"sis900_ethtool_ops\00", align 1
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 2205, i32 33 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 528, i32 3 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 544, i32 3 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 554, i32 3 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 572, i32 2 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 579, i32 3 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 106, i32 2 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 107, i32 2 }
@___asan_gen_.202 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 1078, i32 2 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 1708, i32 5 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 1714, i32 5 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 1722, i32 3 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 1749, i32 3 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 1773, i32 5 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 1814, i32 6 }
@___asan_gen_.254 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 326, i32 6 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 1923, i32 5 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 1114, i32 4 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 1152, i32 3 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 1213, i32 3 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 1469, i32 4 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 1349, i32 5 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 768, i32 3 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 1532, i32 3 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 1661, i32 3 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 1557, i32 3 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 2031, i32 25 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 2104, i32 4 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 2123, i32 3 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 303, i32 3 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 268, i32 3 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 627, i32 5 }
@___asan_gen_.400 = private unnamed_addr constant [15 x i8] c"mii_chip_table\00", align 1
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 130, i32 3 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 659, i32 5 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 668, i32 4 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 675, i32 3 }
@___asan_gen_.421 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 699, i32 5 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 131, i32 4 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 132, i32 4 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 133, i32 4 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 134, i32 4 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 135, i32 4 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 136, i32 4 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 137, i32 4 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 138, i32 4 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 140, i32 4 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 141, i32 4 }
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 142, i32 4 }
@___asan_gen_.460 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.461 = private constant [37 x i8] c"../drivers/net/ethernet/sis/sis900.c\00", align 1
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 143, i32 4 }
@llvm.compiler.used = appending global [166 x ptr] [ptr @__UNIQUE_ID_author341, ptr @__UNIQUE_ID_description342, ptr @__UNIQUE_ID_file343, ptr @__UNIQUE_ID_license344, ptr @__UNIQUE_ID_max_interrupt_work349, ptr @__UNIQUE_ID_max_interrupt_worktype346, ptr @__UNIQUE_ID_multicast_filter_limit348, ptr @__UNIQUE_ID_multicast_filter_limittype345, ptr @__UNIQUE_ID_sis900_debug350, ptr @__UNIQUE_ID_sis900_debugtype347, ptr @__exitcall_sis900_cleanup_module, ptr @__initcall__kmod_sis900__351_2584_sis900_init_module6, ptr @__param_max_interrupt_work, ptr @__param_multicast_filter_limit, ptr @__param_sis900_debug, ptr @sis630e_get_mac_addr._entry, ptr @sis630e_get_mac_addr._entry_ptr, ptr @sis900_auto_negotiate._entry, ptr @sis900_auto_negotiate._entry_ptr, ptr @sis900_cleanup_module, ptr @sis900_default_phy._entry, ptr @sis900_default_phy._entry_ptr, ptr @sis900_finish_xmit._entry, ptr @sis900_finish_xmit._entry_ptr, ptr @sis900_get_mac_addr._entry, ptr @sis900_get_mac_addr._entry_ptr, ptr @sis900_init_rx_ring._entry, ptr @sis900_init_rx_ring._entry_ptr, ptr @sis900_init_rxfilter._entry, ptr @sis900_init_rxfilter._entry_ptr, ptr @sis900_init_tx_ring._entry, ptr @sis900_init_tx_ring._entry_ptr, ptr @sis900_interrupt._entry, ptr @sis900_interrupt._entry.27, ptr @sis900_interrupt._entry.30, ptr @sis900_interrupt._entry_ptr, ptr @sis900_interrupt._entry_ptr.29, ptr @sis900_interrupt._entry_ptr.32, ptr @sis900_mii_probe._entry, ptr @sis900_mii_probe._entry.78, ptr @sis900_mii_probe._entry.81, ptr @sis900_mii_probe._entry.84, ptr @sis900_mii_probe._entry.87, ptr @sis900_mii_probe._entry_ptr, ptr @sis900_mii_probe._entry_ptr.80, ptr @sis900_mii_probe._entry_ptr.83, ptr @sis900_mii_probe._entry_ptr.86, ptr @sis900_mii_probe._entry_ptr.89, ptr @sis900_probe._entry, ptr @sis900_probe._entry.10, ptr @sis900_probe._entry.13, ptr @sis900_probe._entry.16, ptr @sis900_probe._entry.19, ptr @sis900_probe._entry.3, ptr @sis900_probe._entry.7, ptr @sis900_probe._entry_ptr, ptr @sis900_probe._entry_ptr.12, ptr @sis900_probe._entry_ptr.15, ptr @sis900_probe._entry_ptr.18, ptr @sis900_probe._entry_ptr.21, ptr @sis900_probe._entry_ptr.5, ptr @sis900_probe._entry_ptr.9, ptr @sis900_read_mode._entry, ptr @sis900_read_mode._entry_ptr, ptr @sis900_rx._entry, ptr @sis900_rx._entry.35, ptr @sis900_rx._entry.38, ptr @sis900_rx._entry_ptr, ptr @sis900_rx._entry_ptr.37, ptr @sis900_rx._entry_ptr.40, ptr @sis900_set_wol._entry, ptr @sis900_set_wol._entry.69, ptr @sis900_set_wol._entry_ptr, ptr @sis900_set_wol._entry_ptr.71, ptr @sis900_start_xmit._entry, ptr @sis900_start_xmit._entry_ptr, ptr @sis900_timer._entry, ptr @sis900_timer._entry_ptr, ptr @sis900_tx_timeout._entry, ptr @sis900_tx_timeout._entry_ptr, ptr @multicast_filter_limit, ptr @max_interrupt_work, ptr @sis900_debug, ptr @sis900_pci_driver, ptr @.str, ptr @sis900_pci_tbl, ptr @sis900_pm_ops, ptr @card_names, ptr @sis900_probe.printed_version, ptr @.str.1, ptr @.str.2, ptr @version, ptr @.str.4, ptr @sis900_probe.__key, ptr @.str.6, ptr @sis900_netdev_ops, ptr @sis900_ethtool_ops, ptr @.str.8, ptr @.str.11, ptr @.str.14, ptr @.str.17, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @sis900_open.__key, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.28, ptr @.str.31, ptr @.str.33, ptr @.str.34, ptr @.str.36, ptr @.str.39, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.70, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @mii_chip_table, ptr @.str.79, ptr @.str.82, ptr @.str.85, ptr @.str.88, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101], section "llvm.metadata"
@0 = internal global [118 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @multicast_filter_limit to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max_interrupt_work to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sis900_debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sis900_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sis900_pci_tbl to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sis900_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @card_names to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sis900_probe.printed_version to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sis900_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @version to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sis900_probe._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sis900_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sis900_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sis900_ethtool_ops to i32), i32 284, i32 352, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sis900_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sis900_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sis900_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sis900_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sis900_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sis900_open.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sis900_interrupt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sis900_interrupt._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sis900_interrupt._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sis900_rx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sis900_rx._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sis900_rx._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sis900_finish_xmit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sis900_init_rxfilter._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sis900_init_tx_ring._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sis900_init_rx_ring._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sis900_auto_negotiate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sis900_timer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sis900_default_phy._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sis900_read_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sis900_start_xmit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sis900_tx_timeout._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sis900_set_wol._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sis900_set_wol._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sis630e_get_mac_addr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sis900_get_mac_addr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sis900_mii_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mii_chip_table to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sis900_mii_probe._entry.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sis900_mii_probe._entry.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sis900_mii_probe._entry.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sis900_mii_probe._entry.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sis900_cleanup_module() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @pci_unregister_driver(ptr noundef nonnull @sis900_pci_driver) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sis900_init_module() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @sis900_pci_driver, ptr noundef null, ptr noundef nonnull @.str) #14
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sis900_probe(ptr noundef %pci_dev, ptr nocapture noundef readonly %pci_id) #2 align 64 {
entry:
  %ring_dma = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ring_dma) #14
  %0 = ptrtoint ptr %ring_dma to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %ring_dma, align 4, !annotation !254
  %driver_data = getelementptr inbounds %struct.pci_device_id, ptr %pci_id, i32 0, i32 6
  %1 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %driver_data, align 4
  %arrayidx = getelementptr [2 x ptr], ptr @card_names, i32 0, i32 %2
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %pci_dev, i32 0, i32 44, i32 3
  %5 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %6, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %entry.pci_name.exit_crit_edge

entry.pci_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %pci_dev, i32 0, i32 44
  %7 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev.i, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %entry.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %8, %if.end.i.i ], [ %6, %entry.pci_name.exit_crit_edge ]
  %9 = load i32, ptr @sis900_probe.printed_version, align 4
  %inc = add i32 %9, 1
  store i32 %inc, ptr @sis900_probe.printed_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %do.end, label %pci_name.exit.if.end3_crit_edge

pci_name.exit.if.end3_crit_edge:                  ; preds = %pci_name.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end3

do.end:                                           ; preds = %pci_name.exit
  call void @__sanitizer_cov_trace_pc() #16
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @version) #17
  br label %if.end3

if.end3:                                          ; preds = %do.end, %pci_name.exit.if.end3_crit_edge
  %call4 = tail call i32 @pcim_enable_device(ptr noundef %pci_dev) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end7:                                          ; preds = %if.end3
  %dev8 = getelementptr inbounds %struct.pci_dev, ptr %pci_dev, i32 0, i32 44
  %call9 = tail call i32 @dma_set_mask(ptr noundef %dev8, i64 noundef 4294967295) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end17, label %do.end14

do.end14:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #16
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #17
  br label %cleanup

if.end17:                                         ; preds = %if.end7
  tail call void @pci_set_master(ptr noundef %pci_dev) #14
  %call18 = tail call ptr @alloc_etherdev_mqs(i32 noundef 324, i32 noundef 1, i32 noundef 1) #14
  %tobool19.not = icmp eq ptr %call18, null
  br i1 %tobool19.not, label %if.end17.cleanup_crit_edge, label %if.end21

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end21:                                         ; preds = %if.end17
  %parent = getelementptr inbounds %struct.net_device, ptr %call18, i32 0, i32 133, i32 1
  %10 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %dev8, ptr %parent, align 8
  %call24 = tail call i32 @pci_request_regions(ptr noundef %pci_dev, ptr noundef nonnull @.str) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end27, label %if.end21.err_out_crit_edge

if.end21.err_out_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_out

if.end27:                                         ; preds = %if.end21
  %call28 = tail call ptr @pci_iomap(ptr noundef %pci_dev, i32 noundef 0, i32 noundef 0) #14
  %tobool29.not = icmp eq ptr %call28, null
  br i1 %tobool29.not, label %if.end27.err_out_crit_edge, label %if.end31

if.end27.err_out_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_out

if.end31:                                         ; preds = %if.end27
  %add.ptr.i = getelementptr i8, ptr %call18, i32 2304
  %ioaddr33 = getelementptr i8, ptr %call18, i32 2396
  %11 = ptrtoint ptr %ioaddr33 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call28, ptr %ioaddr33, align 4
  %12 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %pci_dev, ptr %add.ptr.i, align 4
  %lock = getelementptr i8, ptr %call18, i32 2308
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.6, ptr noundef nonnull @sis900_probe.__key, i16 noundef signext 3) #14
  %eeprom_size = getelementptr i8, ptr %call18, i32 2624
  %13 = ptrtoint ptr %eeprom_size to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 24, ptr %eeprom_size, align 4
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pci_dev, i32 0, i32 44, i32 8
  %14 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call18, ptr %driver_data.i.i, align 4
  %call.i = call ptr @dma_alloc_attrs(ptr noundef %dev8, i32 noundef 192, ptr noundef nonnull %ring_dma, i32 noundef 3264, i32 noundef 0) #14
  %tobool41.not = icmp eq ptr %call.i, null
  br i1 %tobool41.not, label %if.end31.err_out_unmap_crit_edge, label %if.end43

if.end31.err_out_unmap_crit_edge:                 ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_out_unmap

if.end43:                                         ; preds = %if.end31
  %tx_ring = getelementptr i8, ptr %call18, i32 2600
  %15 = ptrtoint ptr %tx_ring to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call.i, ptr %tx_ring, align 4
  %16 = ptrtoint ptr %ring_dma to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ring_dma, align 4
  %tx_ring_dma = getelementptr i8, ptr %call18, i32 2608
  %18 = ptrtoint ptr %tx_ring_dma to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %tx_ring_dma, align 4
  %call.i259 = call ptr @dma_alloc_attrs(ptr noundef %dev8, i32 noundef 192, ptr noundef nonnull %ring_dma, i32 noundef 3264, i32 noundef 0) #14
  %tobool46.not = icmp eq ptr %call.i259, null
  br i1 %tobool46.not, label %if.end43.err_unmap_tx_crit_edge, label %if.end48

if.end43.err_unmap_tx_crit_edge:                  ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_unmap_tx

if.end48:                                         ; preds = %if.end43
  %rx_ring = getelementptr i8, ptr %call18, i32 2604
  %19 = ptrtoint ptr %rx_ring to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call.i259, ptr %rx_ring, align 4
  %20 = ptrtoint ptr %ring_dma to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %ring_dma, align 4
  %rx_ring_dma = getelementptr i8, ptr %call18, i32 2612
  %22 = ptrtoint ptr %rx_ring_dma to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %rx_ring_dma, align 4
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %call18, i32 0, i32 16
  %23 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @sis900_netdev_ops, ptr %netdev_ops, align 8
  %watchdog_timeo = getelementptr inbounds %struct.net_device, ptr %call18, i32 0, i32 115
  %24 = ptrtoint ptr %watchdog_timeo to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 400, ptr %watchdog_timeo, align 4
  %ethtool_ops = getelementptr inbounds %struct.net_device, ptr %call18, i32 0, i32 44
  %25 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @sis900_ethtool_ops, ptr %ethtool_ops, align 16
  %26 = load i32, ptr @sis900_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp = icmp sgt i32 %26, 0
  %spec.select = select i1 %cmp, i32 %26, i32 197
  %27 = getelementptr i8, ptr %call18, i32 2452
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %spec.select, ptr %27, align 4
  %dev52 = getelementptr i8, ptr %call18, i32 2384
  %29 = ptrtoint ptr %dev52 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call18, ptr %dev52, align 4
  %mdio_read = getelementptr i8, ptr %call18, i32 2388
  %30 = ptrtoint ptr %mdio_read to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @mdio_read, ptr %mdio_read, align 4
  %mdio_write = getelementptr i8, ptr %call18, i32 2392
  %31 = ptrtoint ptr %mdio_write to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @mdio_write, ptr %mdio_write, align 4
  %phy_id_mask = getelementptr i8, ptr %call18, i32 2372
  %32 = ptrtoint ptr %phy_id_mask to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 31, ptr %phy_id_mask, align 4
  %reg_num_mask = getelementptr i8, ptr %call18, i32 2376
  %33 = ptrtoint ptr %reg_num_mask to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 31, ptr %reg_num_mask, align 4
  %revision = getelementptr inbounds %struct.pci_dev, ptr %pci_dev, i32 0, i32 12
  %34 = ptrtoint ptr %revision to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %revision, align 4
  %chipset_rev = getelementptr i8, ptr %call18, i32 2621
  %36 = ptrtoint ptr %chipset_rev to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %35, ptr %chipset_rev, align 1
  %and = and i32 %spec.select, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool58.not = icmp eq i32 %and, 0
  br i1 %tobool58.not, label %if.end48.if.end66_crit_edge, label %do.end62

if.end48.if.end66_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end66

do.end62:                                         ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #16
  %conv = zext i8 %35 to i32
  %call65 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %retval.0.i.i, i32 noundef %conv) #17
  %37 = ptrtoint ptr %chipset_rev to i32
  call void @__asan_load1_noabort(i32 %37)
  %.pr = load i8, ptr %chipset_rev, align 1
  br label %if.end66

if.end66:                                         ; preds = %do.end62, %if.end48.if.end66_crit_edge
  %38 = phi i8 [ %.pr, %do.end62 ], [ %35, %if.end48.if.end66_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 -127, i8 %38)
  %cmp69 = icmp eq i8 %38, -127
  br i1 %cmp69, label %if.then71, label %if.else73

if.then71:                                        ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #16
  %call72 = call fastcc i32 @sis630e_get_mac_addr(ptr noundef %pci_dev, ptr noundef nonnull %call18)
  br label %if.end95

if.else73:                                        ; preds = %if.end66
  %39 = add i8 %38, 126
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %39)
  %40 = icmp ult i8 %39, 15
  br i1 %40, label %if.end95.thread, label %if.else84

if.end95.thread:                                  ; preds = %if.else73
  call void @__sanitizer_cov_trace_pc() #16
  call fastcc void @sis635_get_mac_addr(ptr noundef nonnull %call18)
  br label %lor.lhs.false

if.else84:                                        ; preds = %if.else73
  call void @__sanitizer_cov_trace_const_cmp1(i8 -111, i8 %38)
  %cmp87 = icmp eq i8 %38, -111
  br i1 %cmp87, label %if.then89, label %if.else91

if.then89:                                        ; preds = %if.else84
  call void @__sanitizer_cov_trace_pc() #16
  %call90 = call fastcc i32 @sis96x_get_mac_addr(ptr noundef nonnull %call18)
  br label %if.end95

if.else91:                                        ; preds = %if.else84
  call void @__sanitizer_cov_trace_pc() #16
  %call92 = call fastcc i32 @sis900_get_mac_addr(ptr noundef %pci_dev, ptr noundef nonnull %call18)
  br label %if.end95

if.end95:                                         ; preds = %if.else91, %if.then89, %if.then71
  %ret.0 = phi i32 [ %call72, %if.then71 ], [ %call90, %if.then89 ], [ %call92, %if.else91 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool96.not = icmp eq i32 %ret.0, 0
  br i1 %tobool96.not, label %if.end95.if.then98_crit_edge, label %if.end95.lor.lhs.false_crit_edge

if.end95.lor.lhs.false_crit_edge:                 ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #16
  br label %lor.lhs.false

if.end95.if.then98_crit_edge:                     ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then98

lor.lhs.false:                                    ; preds = %if.end95.lor.lhs.false_crit_edge, %if.end95.thread
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %call18, i32 0, i32 86
  %41 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev_addr, align 64
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %42, align 4
  %45 = and i32 %44, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool.i.not.i = icmp eq i32 %45, 0
  br i1 %tobool.i.not.i, label %is_valid_ether_addr.exit, label %lor.lhs.false.if.then98_crit_edge

lor.lhs.false.if.then98_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then98

is_valid_ether_addr.exit:                         ; preds = %lor.lhs.false
  %add.ptr.i.i = getelementptr i8, ptr %42, i32 4
  %46 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %add.ptr.i.i, align 2
  %conv.i.i = zext i16 %47 to i32
  %or.i.i = or i32 %44, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i.not = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i.not, label %is_valid_ether_addr.exit.if.then98_crit_edge, label %is_valid_ether_addr.exit.if.end104_crit_edge

is_valid_ether_addr.exit.if.end104_crit_edge:     ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end104

is_valid_ether_addr.exit.if.then98_crit_edge:     ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then98

if.then98:                                        ; preds = %is_valid_ether_addr.exit.if.then98_crit_edge, %lor.lhs.false.if.then98_crit_edge, %if.end95.if.then98_crit_edge
  call fastcc void @eth_hw_addr_random(ptr noundef nonnull %call18)
  %call103 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %retval.0.i.i) #17
  br label %if.end104

if.end104:                                        ; preds = %if.then98, %is_valid_ether_addr.exit.if.end104_crit_edge
  %48 = ptrtoint ptr %chipset_rev to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %chipset_rev, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -124, i8 %49)
  %cmp107 = icmp eq i8 %49, -124
  br i1 %cmp107, label %if.then109, label %if.end104.if.end112_crit_edge

if.end104.if.end112_crit_edge:                    ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end112

if.then109:                                       ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #16
  %50 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %call28) #14, !srcloc !255
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !256
  %51 = or i32 %50, 131072
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !257
  call void @arm_heavy_mb() #14
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %call28, i32 %51) #14, !srcloc !258
  br label %if.end112

if.end112:                                        ; preds = %if.then109, %if.end104.if.end112_crit_edge
  %52 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %add.ptr.i, align 4
  %init_name.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %53, i32 0, i32 44, i32 3
  %54 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %55, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.end112.pci_name.exit.i_crit_edge

if.end112.pci_name.exit.i_crit_edge:              ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #16
  br label %pci_name.exit.i

if.end.i.i.i:                                     ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #16
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %53, i32 0, i32 44
  %56 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev.i.i, align 4
  br label %pci_name.exit.i

pci_name.exit.i:                                  ; preds = %if.end.i.i.i, %if.end112.pci_name.exit.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %57, %if.end.i.i.i ], [ %55, %if.end112.pci_name.exit.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %58 = load volatile i32, ptr @jiffies, align 128
  %mii.i = getelementptr i8, ptr %call18, i32 2352
  %59 = ptrtoint ptr %mii.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr null, ptr %mii.i, align 4
  %first_mii30.i = getelementptr i8, ptr %call18, i32 2356
  br label %for.cond2.preheader.i

for.cond2.preheader.i:                            ; preds = %for.inc88.i.for.cond2.preheader.i_crit_edge, %pci_name.exit.i
  %phy_addr.0259.i = phi i32 [ 0, %pci_name.exit.i ], [ %inc89.i, %for.inc88.i.for.cond2.preheader.i_crit_edge ]
  %call5.i = call i32 @mdio_read(ptr noundef %call18, i32 noundef %phy_addr.0259.i, i32 noundef 1) #14
  %call5.1.i = call i32 @mdio_read(ptr noundef %call18, i32 noundef %phy_addr.0259.i, i32 noundef 1) #14
  %conv.le.i = trunc i32 %call5.1.i to i16
  %60 = zext i16 %conv.le.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %60, ptr @__sancov_gen_cov_switch_values)
  switch i16 %conv.le.i, label %if.end14.i [
    i16 -1, label %for.cond2.preheader.i.if.then.i_crit_edge
    i16 0, label %for.cond2.preheader.i.if.then.i_crit_edge265
  ]

for.cond2.preheader.i.if.then.i_crit_edge265:     ; preds = %for.cond2.preheader.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i

for.cond2.preheader.i.if.then.i_crit_edge:        ; preds = %for.cond2.preheader.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i

if.then.i:                                        ; preds = %for.cond2.preheader.i.if.then.i_crit_edge, %for.cond2.preheader.i.if.then.i_crit_edge265
  %61 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %27, align 4
  %and.i = and i32 %62, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.i.for.inc88.i_crit_edge, label %do.end.i

if.then.i.for.inc88.i_crit_edge:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc88.i

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  %call13.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.76, ptr noundef %retval.0.i.i.i, i32 noundef %phy_addr.0259.i) #17
  br label %for.inc88.i

if.end14.i:                                       ; preds = %for.cond2.preheader.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %63 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %63, i32 noundef 3264, i32 noundef 16) #18
  %cmp16.i = icmp eq ptr %call7.i.i, null
  br i1 %cmp16.i, label %if.then18.i, label %if.end20.i

if.then18.i:                                      ; preds = %if.end14.i
  %64 = ptrtoint ptr %first_mii30.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %first_mii30.i, align 4
  %tobool19.not261.i = icmp eq ptr %65, null
  br i1 %tobool19.not261.i, label %if.then18.i.do.end119_crit_edge, label %if.then18.i.while.body.i_crit_edge

if.then18.i.while.body.i_crit_edge:               ; preds = %if.then18.i
  br label %while.body.i

if.then18.i.do.end119_crit_edge:                  ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end119

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.then18.i.while.body.i_crit_edge
  %mii_phy.0262.i = phi ptr [ %67, %while.body.i.while.body.i_crit_edge ], [ %65, %if.then18.i.while.body.i_crit_edge ]
  %66 = ptrtoint ptr %mii_phy.0262.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %mii_phy.0262.i, align 4
  call void @kfree(ptr noundef nonnull %mii_phy.0262.i) #14
  %tobool19.not.i = icmp eq ptr %67, null
  br i1 %tobool19.not.i, label %while.body.i.do.end119_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i

while.body.i.do.end119_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end119

if.end20.i:                                       ; preds = %if.end14.i
  %call21.i = call i32 @mdio_read(ptr noundef %call18, i32 noundef %phy_addr.0259.i, i32 noundef 2) #14
  %conv22.i = trunc i32 %call21.i to i16
  %phy_id0.i = getelementptr inbounds %struct.mii_phy, ptr %call7.i.i, i32 0, i32 2
  %68 = ptrtoint ptr %phy_id0.i to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 %conv22.i, ptr %phy_id0.i, align 8
  %call23.i = call i32 @mdio_read(ptr noundef %call18, i32 noundef %phy_addr.0259.i, i32 noundef 3) #14
  %conv24.i = trunc i32 %call23.i to i16
  %phy_id1.i = getelementptr inbounds %struct.mii_phy, ptr %call7.i.i, i32 0, i32 3
  %69 = ptrtoint ptr %phy_id1.i to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 %conv24.i, ptr %phy_id1.i, align 2
  %phy_addr25.i = getelementptr inbounds %struct.mii_phy, ptr %call7.i.i, i32 0, i32 1
  %70 = ptrtoint ptr %phy_addr25.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %phy_addr.0259.i, ptr %phy_addr25.i, align 4
  %status26.i = getelementptr inbounds %struct.mii_phy, ptr %call7.i.i, i32 0, i32 4
  %71 = ptrtoint ptr %status26.i to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 %conv.le.i, ptr %status26.i, align 4
  %72 = ptrtoint ptr %mii.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %mii.i, align 4
  %74 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %73, ptr %call7.i.i, align 8
  store ptr %call7.i.i, ptr %mii.i, align 4
  %75 = ptrtoint ptr %first_mii30.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %call7.i.i, ptr %first_mii30.i, align 4
  %76 = ptrtoint ptr %phy_id0.i to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %phy_id0.i, align 8
  %78 = and i16 %conv24.i, -16
  call void @__sanitizer_cov_trace_const_cmp2(i16 29, i16 %77)
  %cmp40.i = icmp eq i16 %77, 29
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %78)
  %cmp48.i = icmp eq i16 %78, -32768
  %or.cond.i = select i1 %cmp40.i, i1 %cmp48.i, i1 false
  br i1 %or.cond.i, label %if.end20.i.for.end74.i_crit_edge, label %for.inc72.i

if.end20.i.for.end74.i_crit_edge:                 ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end74.i

for.inc72.i:                                      ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 22, i16 %77)
  %cmp40.1.i = icmp eq i16 %77, 22
  call void @__sanitizer_cov_trace_const_cmp2(i16 -2000, i16 %78)
  %cmp48.1.i = icmp eq i16 %78, -2000
  %or.cond.1.i = select i1 %cmp40.1.i, i1 %cmp48.1.i, i1 false
  br i1 %or.cond.1.i, label %for.inc72.i.for.end74.i_crit_edge, label %for.inc72.1.i

for.inc72.i.for.end74.i_crit_edge:                ; preds = %for.inc72.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end74.i

for.inc72.1.i:                                    ; preds = %for.inc72.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 323, i16 %77)
  %cmp40.2.i = icmp eq i16 %77, 323
  call void @__sanitizer_cov_trace_const_cmp2(i16 -17296, i16 %78)
  %cmp48.2.i = icmp eq i16 %78, -17296
  %or.cond.2.i = select i1 %cmp40.2.i, i1 %cmp48.2.i, i1 false
  br i1 %or.cond.2.i, label %for.inc72.1.i.for.end74.i_crit_edge, label %for.inc72.2.i

for.inc72.1.i.for.end74.i_crit_edge:              ; preds = %for.inc72.1.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end74.i

for.inc72.2.i:                                    ; preds = %for.inc72.1.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 34, i16 %77)
  %cmp40.3.i = icmp eq i16 %77, 34
  call void @__sanitizer_cov_trace_const_cmp2(i16 21792, i16 %78)
  %cmp48.3.i = icmp eq i16 %78, 21792
  %or.cond.3.i = select i1 %cmp40.3.i, i1 %cmp48.3.i, i1 false
  br i1 %or.cond.3.i, label %for.inc72.2.i.for.end74.i_crit_edge, label %for.inc72.3.i

for.inc72.2.i.for.end74.i_crit_edge:              ; preds = %for.inc72.2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end74.i

for.inc72.3.i:                                    ; preds = %for.inc72.2.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 46, i16 %77)
  %cmp40.4.i = icmp eq i16 %77, 46
  call void @__sanitizer_cov_trace_const_cmp2(i16 -13216, i16 %78)
  %cmp48.4.i = icmp eq i16 %78, -13216
  %or.cond.4.i = select i1 %cmp40.4.i, i1 %cmp48.4.i, i1 false
  br i1 %or.cond.4.i, label %for.inc72.3.i.for.end74.i_crit_edge, label %for.inc72.4.i

for.inc72.3.i.for.end74.i_crit_edge:              ; preds = %for.inc72.3.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end74.i

for.inc72.4.i:                                    ; preds = %for.inc72.3.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %77)
  %cmp40.5.i = icmp eq i16 %77, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 27504, i16 %78)
  %cmp48.5.i = icmp eq i16 %78, 27504
  %or.cond.5.i = select i1 %cmp40.5.i, i1 %cmp48.5.i, i1 false
  br i1 %or.cond.5.i, label %for.inc72.4.i.for.end74.i_crit_edge, label %for.inc72.5.i

for.inc72.4.i.for.end74.i_crit_edge:              ; preds = %for.inc72.4.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end74.i

for.inc72.5.i:                                    ; preds = %for.inc72.4.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 27536, i16 %78)
  %cmp48.6.i = icmp eq i16 %78, 27536
  %or.cond.6.i = select i1 %cmp40.5.i, i1 %cmp48.6.i, i1 false
  br i1 %or.cond.6.i, label %for.inc72.5.i.for.end74.i_crit_edge, label %for.inc72.6.i

for.inc72.5.i.for.end74.i_crit_edge:              ; preds = %for.inc72.5.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end74.i

for.inc72.6.i:                                    ; preds = %for.inc72.5.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 21, i16 %77)
  %cmp40.7.i = icmp eq i16 %77, 21
  call void @__sanitizer_cov_trace_const_cmp2(i16 -3008, i16 %78)
  %cmp48.7.i = icmp eq i16 %78, -3008
  %or.cond.7.i = select i1 %cmp40.7.i, i1 %cmp48.7.i, i1 false
  br i1 %or.cond.7.i, label %for.inc72.6.i.for.end74.i_crit_edge, label %for.inc72.8.i

for.inc72.6.i.for.end74.i_crit_edge:              ; preds = %for.inc72.6.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end74.i

for.inc72.8.i:                                    ; preds = %for.inc72.6.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %77)
  %cmp40.9.i = icmp eq i16 %77, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 23584, i16 %78)
  %cmp48.9.i = icmp eq i16 %78, 23584
  %or.cond.9.i = select i1 %cmp40.9.i, i1 %cmp48.9.i, i1 false
  br i1 %or.cond.9.i, label %for.inc72.8.i.for.end74.i_crit_edge, label %for.inc72.9.i

for.inc72.8.i.for.end74.i_crit_edge:              ; preds = %for.inc72.8.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end74.i

for.inc72.9.i:                                    ; preds = %for.inc72.8.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 23600, i16 %78)
  %cmp48.10.i = icmp eq i16 %78, 23600
  %or.cond.10.i = select i1 %cmp40.9.i, i1 %cmp48.10.i, i1 false
  br i1 %or.cond.10.i, label %for.inc72.9.i.for.end74.i_crit_edge, label %for.inc72.10.i

for.inc72.9.i.for.end74.i_crit_edge:              ; preds = %for.inc72.9.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end74.i

for.inc72.10.i:                                   ; preds = %for.inc72.9.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32256, i16 %78)
  %cmp48.11.i = icmp eq i16 %78, -32256
  %or.cond.11.i = select i1 %cmp40.5.i, i1 %cmp48.11.i, i1 false
  br i1 %or.cond.11.i, label %for.inc72.10.i.for.end74.i_crit_edge, label %for.inc72.11.i

for.inc72.10.i.for.end74.i_crit_edge:             ; preds = %for.inc72.10.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end74.i

for.inc72.11.i:                                   ; preds = %for.inc72.10.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 257, i16 %77)
  %cmp40.12.i = icmp eq i16 %77, 257
  call void @__sanitizer_cov_trace_const_cmp2(i16 -28896, i16 %78)
  %cmp48.12.i = icmp eq i16 %78, -28896
  %or.cond.12.i = select i1 %cmp40.12.i, i1 %cmp48.12.i, i1 false
  br i1 %or.cond.12.i, label %for.inc72.11.i.for.end74.i_crit_edge, label %for.inc72.12.i

for.inc72.11.i.for.end74.i_crit_edge:             ; preds = %for.inc72.11.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end74.i

for.inc72.12.i:                                   ; preds = %for.inc72.11.i
  call void @__sanitizer_cov_trace_pc() #16
  %call83.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.82, ptr noundef %retval.0.i.i.i, i32 noundef %phy_addr.0259.i) #17
  %phy_types84.i = getelementptr inbounds %struct.mii_phy, ptr %call7.i.i, i32 0, i32 5
  %79 = ptrtoint ptr %phy_types84.i to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 0, ptr %phy_types84.i, align 2
  br label %for.inc88.i

for.end74.i:                                      ; preds = %for.inc72.11.i.for.end74.i_crit_edge, %for.inc72.10.i.for.end74.i_crit_edge, %for.inc72.9.i.for.end74.i_crit_edge, %for.inc72.8.i.for.end74.i_crit_edge, %for.inc72.6.i.for.end74.i_crit_edge, %for.inc72.5.i.for.end74.i_crit_edge, %for.inc72.4.i.for.end74.i_crit_edge, %for.inc72.3.i.for.end74.i_crit_edge, %for.inc72.2.i.for.end74.i_crit_edge, %for.inc72.1.i.for.end74.i_crit_edge, %for.inc72.i.for.end74.i_crit_edge, %if.end20.i.for.end74.i_crit_edge
  %.lcssa.i = phi i32 [ 0, %if.end20.i.for.end74.i_crit_edge ], [ 1, %for.inc72.i.for.end74.i_crit_edge ], [ 2, %for.inc72.1.i.for.end74.i_crit_edge ], [ 3, %for.inc72.2.i.for.end74.i_crit_edge ], [ 4, %for.inc72.3.i.for.end74.i_crit_edge ], [ 5, %for.inc72.4.i.for.end74.i_crit_edge ], [ 6, %for.inc72.5.i.for.end74.i_crit_edge ], [ 7, %for.inc72.6.i.for.end74.i_crit_edge ], [ 9, %for.inc72.8.i.for.end74.i_crit_edge ], [ 10, %for.inc72.9.i.for.end74.i_crit_edge ], [ 11, %for.inc72.10.i.for.end74.i_crit_edge ], [ 12, %for.inc72.11.i.for.end74.i_crit_edge ]
  %arrayidx.le.i = getelementptr [14 x %struct.mii_chip_info], ptr @mii_chip_table, i32 0, i32 %.lcssa.i
  %phy_types.i = getelementptr [14 x %struct.mii_chip_info], ptr @mii_chip_table, i32 0, i32 %.lcssa.i, i32 3
  %80 = ptrtoint ptr %phy_types.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %phy_types.i, align 4
  %phy_types52.i = getelementptr inbounds %struct.mii_phy, ptr %call7.i.i, i32 0, i32 5
  %82 = add nsw i32 %.lcssa.i, -9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %82)
  %83 = icmp ult i32 %82, 2
  %84 = and i16 %conv.le.i, 24576
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %84)
  %tobool61.not.i = icmp eq i16 %84, 0
  %conv62.i = select i1 %tobool61.not.i, i8 1, i8 2
  %storemerge.i = select i1 %83, i8 %conv62.i, i8 %81
  %85 = ptrtoint ptr %phy_types52.i to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 %storemerge.i, ptr %phy_types52.i, align 2
  %86 = ptrtoint ptr %arrayidx.le.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %arrayidx.le.i, align 4
  %call70.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.79, ptr noundef %retval.0.i.i.i, ptr noundef %87, i32 noundef %phy_addr.0259.i) #17
  br label %for.inc88.i

for.inc88.i:                                      ; preds = %for.end74.i, %for.inc72.12.i, %do.end.i, %if.then.i.for.inc88.i_crit_edge
  %inc89.i = add nuw nsw i32 %phy_addr.0259.i, 1
  %exitcond.not.i = icmp eq i32 %inc89.i, 32
  br i1 %exitcond.not.i, label %for.end90.i, label %for.inc88.i.for.cond2.preheader.i_crit_edge

for.inc88.i.for.cond2.preheader.i_crit_edge:      ; preds = %for.inc88.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond2.preheader.i

for.end90.i:                                      ; preds = %for.inc88.i
  %88 = ptrtoint ptr %mii.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %mii.i, align 4
  %cmp92.i = icmp eq ptr %89, null
  br i1 %cmp92.i, label %do.end97.i, label %if.end100.i

do.end97.i:                                       ; preds = %for.end90.i
  call void @__sanitizer_cov_trace_pc() #16
  %call99.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.85, ptr noundef %retval.0.i.i.i) #17
  br label %do.end119

if.end100.i:                                      ; preds = %for.end90.i
  %90 = ptrtoint ptr %mii.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr null, ptr %mii.i, align 4
  %call102.i = call fastcc zeroext i16 @sis900_default_phy(ptr noundef %call18) #14
  %91 = ptrtoint ptr %mii.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %mii.i, align 4
  %phy_id0104.i = getelementptr inbounds %struct.mii_phy, ptr %92, i32 0, i32 2
  %93 = ptrtoint ptr %phy_id0104.i to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %phy_id0104.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 29, i16 %94)
  %cmp106.i = icmp eq i16 %94, 29
  br i1 %cmp106.i, label %land.lhs.true108.i, label %if.end100.i.if.end117.i_crit_edge

if.end100.i.if.end117.i_crit_edge:                ; preds = %if.end100.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end117.i

land.lhs.true108.i:                               ; preds = %if.end100.i
  %phy_id1110.i = getelementptr inbounds %struct.mii_phy, ptr %92, i32 0, i32 3
  %95 = ptrtoint ptr %phy_id1110.i to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %phy_id1110.i, align 2
  %97 = and i16 %96, -16
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %97)
  %cmp113.i = icmp eq i16 %97, -32768
  br i1 %cmp113.i, label %if.then115.i, label %land.lhs.true108.i.if.end117.i_crit_edge

land.lhs.true108.i.if.end117.i_crit_edge:         ; preds = %land.lhs.true108.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end117.i

if.then115.i:                                     ; preds = %land.lhs.true108.i
  call void @__sanitizer_cov_trace_pc() #16
  %cur_phy.i = getelementptr i8, ptr %call18, i32 2360
  %98 = ptrtoint ptr %cur_phy.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %cur_phy.i, align 4
  %call.i.i = call i32 @mdio_read(ptr noundef %call18, i32 noundef %99, i32 noundef 1) #14
  %call.1.i.i = call i32 @mdio_read(ptr noundef %call18, i32 noundef %99, i32 noundef 1) #14
  call void @mdio_write(ptr noundef %call18, i32 noundef %99, i32 noundef 0, i32 noundef 32768) #14
  %100 = and i32 %call.1.i.i, 4
  br label %if.end117.i

if.end117.i:                                      ; preds = %if.then115.i, %land.lhs.true108.i.if.end117.i_crit_edge, %if.end100.i.if.end117.i_crit_edge
  %status.0.i = phi i32 [ %100, %if.then115.i ], [ 0, %land.lhs.true108.i.if.end117.i_crit_edge ], [ 0, %if.end100.i.if.end117.i_crit_edge ]
  %101 = ptrtoint ptr %mii.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %mii.i, align 4
  %phy_id0119.i = getelementptr inbounds %struct.mii_phy, ptr %102, i32 0, i32 2
  %103 = ptrtoint ptr %phy_id0119.i to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %phy_id0119.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 21, i16 %104)
  %cmp121.i = icmp eq i16 %104, 21
  br i1 %cmp121.i, label %land.lhs.true123.i, label %if.end117.i.if.end132.i_crit_edge

if.end117.i.if.end132.i_crit_edge:                ; preds = %if.end117.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end132.i

land.lhs.true123.i:                               ; preds = %if.end117.i
  %phy_id1125.i = getelementptr inbounds %struct.mii_phy, ptr %102, i32 0, i32 3
  %105 = ptrtoint ptr %phy_id1125.i to i32
  call void @__asan_load2_noabort(i32 %105)
  %106 = load i16, ptr %phy_id1125.i, align 2
  %107 = and i16 %106, -16
  call void @__sanitizer_cov_trace_const_cmp2(i16 -3008, i16 %107)
  %cmp128.i = icmp eq i16 %107, -3008
  br i1 %cmp128.i, label %if.then130.i, label %land.lhs.true123.i.if.end132.i_crit_edge

land.lhs.true123.i.if.end132.i_crit_edge:         ; preds = %land.lhs.true123.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end132.i

if.then130.i:                                     ; preds = %land.lhs.true123.i
  call void @__sanitizer_cov_trace_pc() #16
  %cur_phy131.i = getelementptr i8, ptr %call18, i32 2360
  %108 = ptrtoint ptr %cur_phy131.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %cur_phy131.i, align 4
  call void @mdio_write(ptr noundef %call18, i32 noundef %109, i32 noundef 24, i32 noundef 53760) #14
  br label %if.end132.i

if.end132.i:                                      ; preds = %if.then130.i, %land.lhs.true123.i.if.end132.i_crit_edge, %if.end117.i.if.end132.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status.0.i)
  %tobool135.not.i = icmp eq i32 %status.0.i, 0
  br i1 %tobool135.not.i, label %if.end132.i.if.end156.i_crit_edge, label %while.cond137.preheader.i

if.end132.i.if.end156.i_crit_edge:                ; preds = %if.end132.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end156.i

while.cond137.preheader.i:                        ; preds = %if.end132.i
  %cur_phy140.i = getelementptr i8, ptr %call18, i32 2360
  %add.neg.i = sub i32 -500, %58
  br label %while.cond137.i

while.cond137.i:                                  ; preds = %while.body139.i.while.cond137.i_crit_edge, %while.cond137.preheader.i
  %poll_bit.0.i = phi i16 [ %conv145.i, %while.body139.i.while.cond137.i_crit_edge ], [ 4, %while.cond137.preheader.i ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %poll_bit.0.i)
  %tobool138.not.i = icmp eq i16 %poll_bit.0.i, 0
  br i1 %tobool138.not.i, label %while.cond137.i.if.end156.i_crit_edge, label %while.body139.i

while.cond137.i.if.end156.i_crit_edge:            ; preds = %while.cond137.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end156.i

while.body139.i:                                  ; preds = %while.cond137.i
  call void @yield() #14
  %110 = ptrtoint ptr %cur_phy140.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %cur_phy140.i, align 4
  %call141.i = call i32 @mdio_read(ptr noundef %call18, i32 noundef %111, i32 noundef 1) #14
  %112 = trunc i32 %call141.i to i16
  %113 = xor i16 %112, -1
  %conv145.i = and i16 %poll_bit.0.i, %113
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %114 = load volatile i32, ptr @jiffies, align 128
  %sub.i = add i32 %add.neg.i, %114
  %cmp146.i = icmp sgt i32 %sub.i, -1
  br i1 %cmp146.i, label %do.end151.i, label %while.body139.i.while.cond137.i_crit_edge

while.body139.i.while.cond137.i_crit_edge:        ; preds = %while.body139.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond137.i

do.end151.i:                                      ; preds = %while.body139.i
  call void @__sanitizer_cov_trace_pc() #16
  %call153.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.88, ptr noundef %retval.0.i.i.i) #17
  br label %if.end122

if.end156.i:                                      ; preds = %while.cond137.i.if.end156.i_crit_edge, %if.end132.i.if.end156.i_crit_edge
  %115 = ptrtoint ptr %chipset_rev to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %chipset_rev, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -127, i8 %116)
  %cmp158.i = icmp eq i8 %116, -127
  br i1 %cmp158.i, label %if.then160.i, label %if.end156.i.if.end165.i_crit_edge

if.end156.i.if.end165.i_crit_edge:                ; preds = %if.end156.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end165.i

if.then160.i:                                     ; preds = %if.end156.i
  call void @__sanitizer_cov_trace_pc() #16
  %cur_phy161.i = getelementptr i8, ptr %call18, i32 2360
  %117 = ptrtoint ptr %cur_phy161.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %cur_phy161.i, align 4
  call void @mdio_write(ptr noundef %call18, i32 noundef %118, i32 noundef 4, i32 noundef 1505) #14
  %119 = ptrtoint ptr %cur_phy161.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %cur_phy161.i, align 4
  call void @mdio_write(ptr noundef %call18, i32 noundef %120, i32 noundef 16, i32 noundef 34) #14
  %121 = ptrtoint ptr %cur_phy161.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %cur_phy161.i, align 4
  call void @mdio_write(ptr noundef %call18, i32 noundef %122, i32 noundef 17, i32 noundef 65280) #14
  %123 = ptrtoint ptr %cur_phy161.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %cur_phy161.i, align 4
  call void @mdio_write(ptr noundef %call18, i32 noundef %124, i32 noundef 19, i32 noundef 65472) #14
  br label %if.end165.i

if.end165.i:                                      ; preds = %if.then160.i, %if.end156.i.if.end165.i_crit_edge
  %125 = ptrtoint ptr %mii.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %mii.i, align 4
  %status167.i = getelementptr inbounds %struct.mii_phy, ptr %126, i32 0, i32 4
  %127 = ptrtoint ptr %status167.i to i32
  call void @__asan_load2_noabort(i32 %127)
  %128 = load i16, ptr %status167.i, align 4
  %129 = and i16 %128, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %129)
  %tobool170.not.i = icmp eq i16 %129, 0
  br i1 %tobool170.not.i, label %if.else.i, label %if.then171.i

if.then171.i:                                     ; preds = %if.end165.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @netif_carrier_on(ptr noundef %call18) #14
  br label %if.end122

if.else.i:                                        ; preds = %if.end165.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @netif_carrier_off(ptr noundef %call18) #14
  br label %if.end122

do.end119:                                        ; preds = %do.end97.i, %while.body.i.do.end119_crit_edge, %if.then18.i.do.end119_crit_edge
  %call121 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef %retval.0.i.i) #17
  br label %err_unmap_rx

if.end122:                                        ; preds = %if.else.i, %if.then171.i, %do.end151.i
  %call123 = call ptr @pci_get_device(i32 noundef 4153, i32 noundef 1584, ptr noundef null) #14
  %tobool124.not = icmp eq ptr %call123, null
  br i1 %tobool124.not, label %if.end122.if.end127_crit_edge, label %if.then125

if.end122.if.end127_crit_edge:                    ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end127

if.then125:                                       ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #16
  %revision126 = getelementptr inbounds %struct.pci_dev, ptr %call123, i32 0, i32 12
  %130 = ptrtoint ptr %revision126 to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %revision126, align 4
  %host_bridge_rev = getelementptr i8, ptr %call18, i32 2620
  %132 = ptrtoint ptr %host_bridge_rev to i32
  call void @__asan_store1_noabort(i32 %132)
  store i8 %131, ptr %host_bridge_rev, align 4
  call void @pci_dev_put(ptr noundef nonnull %call123) #14
  br label %if.end127

if.end127:                                        ; preds = %if.then125, %if.end122.if.end127_crit_edge
  %call128 = call i32 @register_netdev(ptr noundef nonnull %call18) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call128)
  %tobool129.not = icmp eq i32 %call128, 0
  br i1 %tobool129.not, label %do.end134, label %if.end127.err_unmap_rx_crit_edge

if.end127.err_unmap_rx_crit_edge:                 ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_unmap_rx

do.end134:                                        ; preds = %if.end127
  %irq = getelementptr inbounds %struct.pci_dev, ptr %pci_dev, i32 0, i32 46
  %133 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %irq, align 4
  %dev_addr136 = getelementptr inbounds %struct.net_device, ptr %call18, i32 0, i32 86
  %135 = ptrtoint ptr %dev_addr136 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %dev_addr136, align 64
  %call137 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull %call18, ptr noundef %4, ptr noundef nonnull %call28, i32 noundef %134, ptr noundef %136) #17
  %add.ptr138 = getelementptr i8, ptr %call28, i32 64
  %137 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr138) #14, !srcloc !255
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !256
  %138 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %27, align 4
  %and142 = and i32 %139, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and142)
  %tobool143.not = icmp ne i32 %and142, 0
  %.mask = and i32 %137, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask)
  %cmp146 = icmp eq i32 %.mask, 0
  %or.cond258 = select i1 %tobool143.not, i1 %cmp146, i1 false
  br i1 %or.cond258, label %do.end151, label %do.end134.cleanup_crit_edge

do.end134.cleanup_crit_edge:                      ; preds = %do.end134
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.end151:                                        ; preds = %do.end134
  call void @__sanitizer_cov_trace_pc() #16
  %call155 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull %call18) #17
  br label %cleanup

err_unmap_rx:                                     ; preds = %if.end127.err_unmap_rx_crit_edge, %do.end119
  %ret.1 = phi i32 [ -19, %do.end119 ], [ %call128, %if.end127.err_unmap_rx_crit_edge ]
  %140 = ptrtoint ptr %rx_ring to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %rx_ring, align 4
  %142 = ptrtoint ptr %rx_ring_dma to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %rx_ring_dma, align 4
  call void @dma_free_attrs(ptr noundef %dev8, i32 noundef 192, ptr noundef %141, i32 noundef %143, i32 noundef 0) #14
  br label %err_unmap_tx

err_unmap_tx:                                     ; preds = %err_unmap_rx, %if.end43.err_unmap_tx_crit_edge
  %ret.2 = phi i32 [ %ret.1, %err_unmap_rx ], [ -12, %if.end43.err_unmap_tx_crit_edge ]
  %144 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %tx_ring, align 4
  %146 = ptrtoint ptr %tx_ring_dma to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %tx_ring_dma, align 4
  call void @dma_free_attrs(ptr noundef %dev8, i32 noundef 192, ptr noundef %145, i32 noundef %147, i32 noundef 0) #14
  br label %err_out_unmap

err_out_unmap:                                    ; preds = %err_unmap_tx, %if.end31.err_out_unmap_crit_edge
  %ret.3 = phi i32 [ %ret.2, %err_unmap_tx ], [ -12, %if.end31.err_out_unmap_crit_edge ]
  call void @pci_iounmap(ptr noundef %pci_dev, ptr noundef nonnull %call28) #14
  br label %err_out

err_out:                                          ; preds = %err_out_unmap, %if.end27.err_out_crit_edge, %if.end21.err_out_crit_edge
  %ret.4 = phi i32 [ %call24, %if.end21.err_out_crit_edge ], [ %ret.3, %err_out_unmap ], [ -12, %if.end27.err_out_crit_edge ]
  call void @free_netdev(ptr noundef nonnull %call18) #14
  br label %cleanup

cleanup:                                          ; preds = %err_out, %do.end151, %do.end134.cleanup_crit_edge, %if.end17.cleanup_crit_edge, %do.end14, %if.end3.cleanup_crit_edge
  %retval.0 = phi i32 [ %call9, %do.end14 ], [ %ret.4, %err_out ], [ %call4, %if.end3.cleanup_crit_edge ], [ -12, %if.end17.cleanup_crit_edge ], [ 0, %do.end151 ], [ 0, %do.end134.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ring_dma) #14
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sis900_remove(ptr noundef %pci_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pci_dev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @unregister_netdev(ptr noundef %1) #14
  %first_mii = getelementptr i8, ptr %1, i32 2356
  %2 = ptrtoint ptr %first_mii to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %first_mii, align 4
  %tobool.not18 = icmp eq ptr %3, null
  br i1 %tobool.not18, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  %4 = phi ptr [ %9, %while.body.while.body_crit_edge ], [ %3, %entry.while.body_crit_edge ]
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %7 = ptrtoint ptr %first_mii to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %first_mii, align 4
  tail call void @kfree(ptr noundef nonnull %4) #14
  %8 = ptrtoint ptr %first_mii to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %first_mii, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pci_dev, i32 0, i32 44
  %rx_ring = getelementptr i8, ptr %1, i32 2604
  %10 = ptrtoint ptr %rx_ring to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rx_ring, align 4
  %rx_ring_dma = getelementptr i8, ptr %1, i32 2612
  %12 = ptrtoint ptr %rx_ring_dma to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rx_ring_dma, align 4
  tail call void @dma_free_attrs(ptr noundef %dev, i32 noundef 192, ptr noundef %11, i32 noundef %13, i32 noundef 0) #14
  %tx_ring = getelementptr i8, ptr %1, i32 2600
  %14 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %tx_ring, align 4
  %tx_ring_dma = getelementptr i8, ptr %1, i32 2608
  %16 = ptrtoint ptr %tx_ring_dma to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tx_ring_dma, align 4
  tail call void @dma_free_attrs(ptr noundef %dev, i32 noundef 192, ptr noundef %15, i32 noundef %17, i32 noundef 0) #14
  %ioaddr = getelementptr i8, ptr %1, i32 2396
  %18 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ioaddr, align 4
  tail call void @pci_iounmap(ptr noundef %pci_dev, ptr noundef %19) #14
  tail call void @free_netdev(ptr noundef %1) #14
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcim_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_etherdev_mqs(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_request_regions(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_iomap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mdio_read(ptr nocapture noundef readonly %net_dev, i32 noundef %phy_id, i32 noundef %location) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %shl = shl i32 %phy_id, 7
  %shl1 = shl i32 %location, 2
  %or = or i32 %shl, %shl1
  %ioaddr3 = getelementptr i8, ptr %net_dev, i32 2396
  %0 = ptrtoint ptr %ioaddr3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ioaddr3, align 4
  %add.ptr.i51 = getelementptr i8, ptr %1, i32 8
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry
  %i.010.i = phi i32 [ 31, %entry ], [ %dec.i, %for.body.i.for.body.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !257
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i51, i32 805306368) #14, !srcloc !258
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i51) #14, !srcloc !255
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !257
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i51, i32 1879048192) #14, !srcloc !258
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i51) #14, !srcloc !255
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !256
  %dec.i = add nsw i32 %i.010.i, -1
  %cmp.not.i = icmp eq i32 %i.010.i, 0
  br i1 %cmp.not.i, label %mdio_reset.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

mdio_reset.exit:                                  ; preds = %for.body.i
  %or2 = or i32 %or, 24576
  %4 = ptrtoint ptr %ioaddr3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ioaddr3, align 4
  %add.ptr.i53 = getelementptr i8, ptr %5, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !257
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i53, i32 805306368) #14, !srcloc !258
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i53) #14, !srcloc !255
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !257
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i53, i32 1879048192) #14, !srcloc !258
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %mdio_reset.exit
  %i.054 = phi i32 [ 15, %mdio_reset.exit ], [ %dec, %for.body.for.body_crit_edge ]
  %shl5 = shl nuw i32 1, %i.054
  %and = and i32 %shl5, %or2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool.not, i32 536870912, i32 805306368
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !257
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i51, i32 %cond) #14, !srcloc !258
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i51) #14, !srcloc !255
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !257
  tail call void @arm_heavy_mb() #14
  %8 = or i32 %cond, 1073741824
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i51, i32 %8) #14, !srcloc !258
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i51) #14, !srcloc !255
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !256
  %dec = add nsw i32 %i.054, -1
  %cmp.not = icmp eq i32 %i.054, 0
  br i1 %cmp.not, label %for.body.for.body14_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.body.for.body14_crit_edge:                    ; preds = %for.body
  br label %for.body14

for.body14:                                       ; preds = %for.body14.for.body14_crit_edge, %for.body.for.body14_crit_edge
  %i.156 = phi i32 [ %dec30, %for.body14.for.body14_crit_edge ], [ 16, %for.body.for.body14_crit_edge ]
  %retval4.055 = phi i32 [ %phi.cast, %for.body14.for.body14_crit_edge ], [ 0, %for.body.for.body14_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !257
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i51, i32 0) #14, !srcloc !258
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i51) #14, !srcloc !255
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !256
  %shl18 = shl nsw i32 %retval4.055, 1
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i51) #14, !srcloc !255
  %12 = lshr i32 %11, 28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !256
  %and21.lobit = and i32 %12, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !257
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i51, i32 1073741824) #14, !srcloc !258
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i51) #14, !srcloc !255
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !256
  %dec30 = add nsw i32 %i.156, -1
  %shl18.masked = and i32 %shl18, 65534
  %phi.cast = or i32 %and21.lobit, %shl18.masked
  %cmp13 = icmp ugt i32 %i.156, 1
  br i1 %cmp13, label %for.body14.for.body14_crit_edge, label %for.end31

for.body14.for.body14_crit_edge:                  ; preds = %for.body14
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body14

for.end31:                                        ; preds = %for.body14
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !257
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i51, i32 0) #14, !srcloc !258
  ret i32 %phi.cast
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mdio_write(ptr nocapture noundef readonly %net_dev, i32 noundef %phy_id, i32 noundef %location, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %shl = shl i32 %phy_id, 7
  %shl1 = shl i32 %location, 2
  %or = or i32 %shl, %shl1
  %ioaddr3 = getelementptr i8, ptr %net_dev, i32 2396
  %0 = ptrtoint ptr %ioaddr3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ioaddr3, align 4
  %add.ptr.i74 = getelementptr i8, ptr %1, i32 8
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry
  %i.010.i = phi i32 [ 31, %entry ], [ %dec.i, %for.body.i.for.body.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !257
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i74, i32 805306368) #14, !srcloc !258
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i74) #14, !srcloc !255
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !257
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i74, i32 1879048192) #14, !srcloc !258
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i74) #14, !srcloc !255
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !256
  %dec.i = add nsw i32 %i.010.i, -1
  %cmp.not.i = icmp eq i32 %i.010.i, 0
  br i1 %cmp.not.i, label %mdio_reset.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

mdio_reset.exit:                                  ; preds = %for.body.i
  %or2 = or i32 %or, 20482
  %4 = ptrtoint ptr %ioaddr3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ioaddr3, align 4
  %add.ptr.i76 = getelementptr i8, ptr %5, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !257
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i76, i32 805306368) #14, !srcloc !258
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i76) #14, !srcloc !255
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !257
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i76, i32 1879048192) #14, !srcloc !258
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %mdio_reset.exit
  %i.077 = phi i32 [ 15, %mdio_reset.exit ], [ %dec, %for.body.for.body_crit_edge ]
  %shl4 = shl nuw i32 1, %i.077
  %and = and i32 %shl4, %or2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %conv = select i1 %tobool.not, i8 32, i8 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !259
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i74, i8 %conv) #14, !srcloc !260
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i74) #14, !srcloc !255
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !256
  %conv8 = or i8 %conv, 64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !259
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i74, i8 %conv8) #14, !srcloc !260
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i74) #14, !srcloc !255
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !256
  %dec = add nsw i32 %i.077, -1
  %cmp.not = icmp eq i32 %i.077, 0
  br i1 %cmp.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.end:                                          ; preds = %for.body
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i74) #14, !srcloc !255
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !256
  br label %for.body17

for.body17:                                       ; preds = %for.body17.for.body17_crit_edge, %for.end
  %i.178 = phi i32 [ 15, %for.end ], [ %dec31, %for.body17.for.body17_crit_edge ]
  %shl19 = shl nuw i32 1, %i.178
  %and20 = and i32 %shl19, %value
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  %cond22 = select i1 %tobool21.not, i32 536870912, i32 805306368
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !257
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i74, i32 %cond22) #14, !srcloc !258
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i74) #14, !srcloc !255
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !257
  tail call void @arm_heavy_mb() #14
  %11 = or i32 %cond22, 1073741824
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i74, i32 %11) #14, !srcloc !258
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i74) #14, !srcloc !255
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !256
  %dec31 = add nsw i32 %i.178, -1
  %cmp15.not = icmp eq i32 %i.178, 0
  br i1 %cmp15.not, label %for.end32, label %for.body17.for.body17_crit_edge

for.body17.for.body17_crit_edge:                  ; preds = %for.body17
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body17

for.end32:                                        ; preds = %for.body17
  call void @__sanitizer_cov_trace_pc() #16
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i74) #14, !srcloc !255
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !259
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i74, i8 0) #14, !srcloc !260
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i74) #14, !srcloc !255
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !259
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i74, i8 64) #14, !srcloc !260
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i74) #14, !srcloc !255
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !259
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i74, i8 0) #14, !srcloc !260
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i74) #14, !srcloc !255
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !259
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i74, i8 64) #14, !srcloc !260
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i74) #14, !srcloc !255
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !257
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i74, i32 0) #14, !srcloc !258
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sis630e_get_mac_addr(ptr nocapture noundef readonly %pci_dev, ptr noundef %net_dev) unnamed_addr #2 align 64 {
entry:
  %addr = alloca [6 x i8], align 1
  %reg = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %addr) #14
  %0 = getelementptr inbounds [6 x i8], ptr %addr, i32 0, i32 1
  %1 = getelementptr inbounds [6 x i8], ptr %addr, i32 0, i32 2
  %2 = getelementptr inbounds [6 x i8], ptr %addr, i32 0, i32 3
  %3 = getelementptr inbounds [6 x i8], ptr %addr, i32 0, i32 4
  %4 = getelementptr inbounds [6 x i8], ptr %addr, i32 0, i32 5
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg) #14
  %5 = ptrtoint ptr %reg to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -1, ptr %reg, align 1, !annotation !254
  %call = tail call ptr @pci_get_device(i32 noundef 4153, i32 noundef 8, ptr noundef null) #14
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.end, label %entry.if.end6_crit_edge

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end6

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @pci_get_device(i32 noundef 4153, i32 noundef 24, ptr noundef null) #14
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %do.end, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end6

do.end:                                           ; preds = %if.end
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %pci_dev, i32 0, i32 44, i32 3
  %6 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %7, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.end.pci_name.exit_crit_edge

do.end.pci_name.exit_crit_edge:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %pci_dev, i32 0, i32 44
  %8 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %do.end.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %9, %if.end.i.i ], [ %7, %do.end.pci_name.exit_crit_edge ]
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.72, ptr noundef %retval.0.i.i) #17
  br label %cleanup

if.end6:                                          ; preds = %if.end.if.end6_crit_edge, %entry.if.end6_crit_edge
  %isa_bridge.037 = phi ptr [ %call1, %if.end.if.end6_crit_edge ], [ %call, %entry.if.end6_crit_edge ]
  %call7 = call i32 @pci_read_config_byte(ptr noundef nonnull %isa_bridge.037, i32 noundef 72, ptr noundef nonnull %reg) #14
  %10 = ptrtoint ptr %reg to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %reg, align 1
  %12 = or i8 %11, 64
  %call9 = call i32 @pci_write_config_byte(ptr noundef nonnull %isa_bridge.037, i32 noundef 72, i8 noundef zeroext %12) #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !261
  call void @arm_heavy_mb() #14
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18874256 to ptr), i8 9) #14, !srcloc !260
  %13 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18874255 to ptr)) #14, !srcloc !262
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !263
  %14 = ptrtoint ptr %addr to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %addr, align 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !261
  call void @arm_heavy_mb() #14
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18874256 to ptr), i8 10) #14, !srcloc !260
  %15 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18874255 to ptr)) #14, !srcloc !262
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !263
  %16 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %0, align 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !261
  call void @arm_heavy_mb() #14
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18874256 to ptr), i8 11) #14, !srcloc !260
  %17 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18874255 to ptr)) #14, !srcloc !262
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !263
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %1, align 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !261
  call void @arm_heavy_mb() #14
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18874256 to ptr), i8 12) #14, !srcloc !260
  %19 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18874255 to ptr)) #14, !srcloc !262
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !263
  %20 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %19, ptr %2, align 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !261
  call void @arm_heavy_mb() #14
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18874256 to ptr), i8 13) #14, !srcloc !260
  %21 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18874255 to ptr)) #14, !srcloc !262
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !263
  %22 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %3, align 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !261
  call void @arm_heavy_mb() #14
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18874256 to ptr), i8 14) #14, !srcloc !260
  %23 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18874255 to ptr)) #14, !srcloc !262
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !263
  %24 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %4, align 1
  call void @dev_addr_mod(ptr noundef %net_dev, i32 noundef 0, ptr noundef nonnull %addr, i32 noundef 6) #14
  %25 = ptrtoint ptr %reg to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %reg, align 1
  %27 = and i8 %26, -65
  %call21 = call i32 @pci_write_config_byte(ptr noundef nonnull %isa_bridge.037, i32 noundef 72, i8 noundef zeroext %27) #14
  call void @pci_dev_put(ptr noundef nonnull %isa_bridge.037) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %pci_name.exit
  %retval.0 = phi i32 [ 1, %if.end6 ], [ 0, %pci_name.exit ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg) #14
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr) #14
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sis635_get_mac_addr(ptr noundef %net_dev) unnamed_addr #2 align 64 {
entry:
  %addr = alloca [3 x i16], align 2
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %ioaddr1 = getelementptr i8, ptr %net_dev, i32 2396
  %0 = ptrtoint ptr %ioaddr1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ioaddr1, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %addr) #14
  %2 = getelementptr inbounds [3 x i16], ptr %addr, i32 0, i32 1
  %3 = getelementptr inbounds [3 x i16], ptr %addr, i32 0, i32 2
  %add.ptr = getelementptr i8, ptr %1, i32 72
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #14, !srcloc !255
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !256
  %or = or i32 %5, 1024
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !257
  tail call void @arm_heavy_mb() #14
  %6 = tail call i32 @llvm.bswap.i32(i32 %or) #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 %6) #14, !srcloc !258
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !257
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 0) #14, !srcloc !258
  %and = and i32 %5, 2147483647
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !257
  tail call void @arm_heavy_mb() #14
  %7 = tail call i32 @llvm.bswap.i32(i32 %and) #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %7) #14, !srcloc !258
  %add.ptr7 = getelementptr i8, ptr %1, i32 76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !257
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #14, !srcloc !258
  %8 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr7) #14, !srcloc !264
  %9 = tail call i16 @llvm.bswap.i16(i16 %8) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !265
  %10 = ptrtoint ptr %addr to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %addr, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !257
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 256) #14, !srcloc !258
  %11 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr7) #14, !srcloc !264
  %12 = tail call i16 @llvm.bswap.i16(i16 %11) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !265
  %13 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %12, ptr %2, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !257
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 512) #14, !srcloc !258
  %14 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr7) #14, !srcloc !264
  %15 = tail call i16 @llvm.bswap.i16(i16 %14) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !265
  %16 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %15, ptr %3, align 2
  call void @dev_addr_mod(ptr noundef %net_dev, i32 noundef 0, ptr noundef nonnull %addr, i32 noundef 6) #14
  %or9 = or i32 %5, -2147483648
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !257
  call void @arm_heavy_mb() #14
  %17 = call i32 @llvm.bswap.i32(i32 %or9) #14
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %17) #14, !srcloc !258
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sis96x_get_mac_addr(ptr noundef %net_dev) unnamed_addr #2 align 64 {
entry:
  %addr = alloca [3 x i16], align 2
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %ioaddr1 = getelementptr i8, ptr %net_dev, i32 2396
  %0 = ptrtoint ptr %ioaddr1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ioaddr1, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %addr) #14
  %2 = ptrtoint ptr %addr to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %addr, align 2, !annotation !254
  %3 = getelementptr inbounds [3 x i16], ptr %addr, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 -1, ptr %3, align 2, !annotation !254
  %5 = getelementptr inbounds [3 x i16], ptr %addr, i32 0, i32 2
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 -1, ptr %5, align 2, !annotation !254
  %add.ptr = getelementptr i8, ptr %1, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !257
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 262144) #14, !srcloc !258
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry
  %wait.01 = phi i32 [ 0, %entry ], [ %inc9, %if.end.for.body_crit_edge ]
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #14, !srcloc !255
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !256
  %8 = and i32 %7, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %if.end, label %for.body6.preheader

for.body6.preheader:                              ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  %call7 = tail call fastcc zeroext i16 @read_eeprom(ptr noundef %1, i32 noundef 8)
  %9 = ptrtoint ptr %addr to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %call7, ptr %addr, align 2
  %call7.1 = tail call fastcc zeroext i16 @read_eeprom(ptr noundef %1, i32 noundef 9)
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %call7.1, ptr %3, align 2
  %call7.2 = tail call fastcc zeroext i16 @read_eeprom(ptr noundef %1, i32 noundef 10)
  %11 = ptrtoint ptr %5 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %call7.2, ptr %5, align 2
  call void @dev_addr_mod(ptr noundef %net_dev, i32 noundef 0, ptr noundef nonnull %addr, i32 noundef 6) #14
  br label %for.end10

if.end:                                           ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 214748) #14
  %inc9 = add nuw nsw i32 %wait.01, 1
  %exitcond.not = icmp eq i32 %inc9, 2000
  br i1 %exitcond.not, label %if.end.for.end10_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

if.end.for.end10_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end10

for.end10:                                        ; preds = %if.end.for.end10_crit_edge, %for.body6.preheader
  %rc.0 = phi i32 [ 1, %for.body6.preheader ], [ 0, %if.end.for.end10_crit_edge ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !257
  call void @arm_heavy_mb() #14
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 131072) #14, !srcloc !258
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr) #14
  ret i32 %rc.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sis900_get_mac_addr(ptr nocapture noundef readonly %pci_dev, ptr noundef %net_dev) unnamed_addr #2 align 64 {
entry:
  %addr = alloca [3 x i16], align 2
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %ioaddr1 = getelementptr i8, ptr %net_dev, i32 2396
  %0 = ptrtoint ptr %ioaddr1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ioaddr1, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %addr) #14
  %call2 = tail call fastcc zeroext i16 @read_eeprom(ptr noundef %1, i32 noundef 0)
  %conv = zext i16 %call2 to i32
  %2 = zext i16 %call2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.102)
  switch i16 %call2, label %for.body.preheader [
    i16 -1, label %entry.do.end_crit_edge
    i16 0, label %entry.do.end_crit_edge25
  ]

entry.do.end_crit_edge25:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

for.body.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %3 = getelementptr inbounds [3 x i16], ptr %addr, i32 0, i32 2
  %4 = getelementptr inbounds [3 x i16], ptr %addr, i32 0, i32 1
  %call12 = tail call fastcc zeroext i16 @read_eeprom(ptr noundef %1, i32 noundef 8)
  %5 = ptrtoint ptr %addr to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %call12, ptr %addr, align 2
  %call12.1 = tail call fastcc zeroext i16 @read_eeprom(ptr noundef %1, i32 noundef 9)
  %6 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %call12.1, ptr %4, align 2
  %call12.2 = tail call fastcc zeroext i16 @read_eeprom(ptr noundef %1, i32 noundef 10)
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %call12.2, ptr %3, align 2
  call void @dev_addr_mod(ptr noundef %net_dev, i32 noundef 0, ptr noundef nonnull %addr, i32 noundef 6) #14
  br label %cleanup

do.end:                                           ; preds = %entry.do.end_crit_edge, %entry.do.end_crit_edge25
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %pci_dev, i32 0, i32 44, i32 3
  %8 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %9, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.end.pci_name.exit_crit_edge

do.end.pci_name.exit_crit_edge:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %pci_dev, i32 0, i32 44
  %10 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %do.end.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %11, %if.end.i.i ], [ %9, %do.end.pci_name.exit_crit_edge ]
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74, ptr noundef %retval.0.i.i, i32 noundef %conv) #17
  br label %cleanup

cleanup:                                          ; preds = %pci_name.exit, %for.body.preheader
  %retval.0 = phi i32 [ 0, %pci_name.exit ], [ 1, %for.body.preheader ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr) #14
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @eth_hw_addr_random(ptr noundef %dev) unnamed_addr #5 align 64 {
entry:
  %addr = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %addr) #14
  %0 = call ptr @memset(ptr %addr, i32 255, i32 6)
  call void @get_random_bytes(ptr noundef nonnull %addr, i32 noundef 6) #14
  %1 = ptrtoint ptr %addr to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %addr, align 1
  %3 = and i8 %2, -4
  %4 = or i8 %3, 2
  store i8 %4, ptr %addr, align 1
  call void @dev_addr_mod(ptr noundef %dev, i32 noundef 0, ptr noundef nonnull %addr, i32 noundef 6) #14
  %addr_assign_type = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 55
  %5 = ptrtoint ptr %addr_assign_type to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %addr_assign_type, align 4
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_get_device(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_dev_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_iounmap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sis900_open(ptr noundef %net_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %ioaddr1 = getelementptr i8, ptr %net_dev, i32 2396
  %0 = ptrtoint ptr %ioaddr1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ioaddr1, align 4
  %add.ptr.i32 = getelementptr i8, ptr %1, i32 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !257
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i32, i32 0) #14, !srcloc !258
  %add.ptr2.i = getelementptr i8, ptr %1, i32 20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !257
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 0) #14, !srcloc !258
  %add.ptr3.i = getelementptr i8, ptr %1, i32 72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !257
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 0) #14, !srcloc !258
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #14, !srcloc !255
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !256
  %3 = or i32 %2, 805371904
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !257
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 %3) #14, !srcloc !258
  %add.ptr7.i = getelementptr i8, ptr %1, i32 16
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry
  %i.031.i = phi i32 [ 0, %entry ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %status.030.i = phi i32 [ 50331648, %entry ], [ %xor.i, %for.body.i.for.body.i_crit_edge ]
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i) #14, !srcloc !255
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !256
  %5 = xor i32 %4, -1
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #14
  %xor.i = and i32 %6, %status.030.i
  %inc.i = add nuw nsw i32 %i.031.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %xor.i)
  %tobool.not.i = icmp ne i32 %xor.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 999, i32 %i.031.i)
  %cmp.i = icmp ult i32 %i.031.i, 999
  %or.cond.i = select i1 %tobool.not.i, i1 %cmp.i, i1 false
  br i1 %or.cond.i, label %for.body.i.for.body.i_crit_edge, label %for.end.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i
  %add.ptr.i = getelementptr i8, ptr %net_dev, i32 2304
  %chipset_rev.i = getelementptr i8, ptr %net_dev, i32 2621
  %7 = ptrtoint ptr %chipset_rev.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %chipset_rev.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -113, i8 %8)
  %cmp9.i = icmp ugt i8 %8, -113
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %8)
  %cmp13.i = icmp eq i8 %8, 3
  %or.cond29.i = or i1 %cmp9.i, %cmp13.i
  %add.ptr15.i = getelementptr i8, ptr %1, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14
  tail call void @arm_heavy_mb() #14
  br i1 %or.cond29.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15.i, i32 134479872) #14, !srcloc !258
  br label %sis900_reset.exit

if.else.i:                                        ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15.i, i32 134217728) #14, !srcloc !258
  br label %sis900_reset.exit

sis900_reset.exit:                                ; preds = %if.else.i, %if.then.i
  %9 = ptrtoint ptr %chipset_rev.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %chipset_rev.i, align 1
  tail call fastcc void @sis630_set_eq(ptr noundef %net_dev, i8 noundef zeroext %10)
  %11 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %add.ptr.i, align 4
  %irq = getelementptr inbounds %struct.pci_dev, ptr %12, i32 0, i32 46
  %13 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %irq, align 4
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %14, ptr noundef nonnull @sis900_interrupt, ptr noundef null, i32 noundef 128, ptr noundef %net_dev, ptr noundef %net_dev) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %sis900_reset.exit.cleanup_crit_edge

sis900_reset.exit.cleanup_crit_edge:              ; preds = %sis900_reset.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %sis900_reset.exit
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @sis900_init_rxfilter(ptr noundef %net_dev)
  tail call fastcc void @sis900_init_tx_ring(ptr noundef %net_dev)
  tail call fastcc void @sis900_init_rx_ring(ptr noundef %net_dev)
  tail call void @set_rx_mode(ptr noundef %net_dev)
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %net_dev, i32 0, i32 103
  %15 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %16, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i) #14
  %17 = ptrtoint ptr %ioaddr1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ioaddr1, align 4
  %add.ptr.i34 = getelementptr i8, ptr %18, i32 4
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i34) #14, !srcloc !255
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !256
  %20 = and i32 %19, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not.i35 = icmp eq i32 %20, 0
  %or7.i = select i1 %tobool.not.i35, i32 268439568, i32 273682448
  %or14.i = select i1 %tobool.not.i35, i32 134217776, i32 139460656
  %add.ptr15.i36 = getelementptr i8, ptr %18, i32 36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !257
  tail call void @arm_heavy_mb() #14
  %21 = tail call i32 @llvm.bswap.i32(i32 %or7.i) #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15.i36, i32 %21) #14, !srcloc !258
  %add.ptr16.i = getelementptr i8, ptr %18, i32 52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !257
  tail call void @arm_heavy_mb() #14
  %22 = tail call i32 @llvm.bswap.i32(i32 %or14.i) #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16.i, i32 %22) #14, !srcloc !258
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !257
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 -1526398720) #14, !srcloc !258
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #14, !srcloc !255
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !256
  %24 = or i32 %23, 67108864
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !257
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 %24) #14, !srcloc !258
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !257
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i32, i32 16777216) #14, !srcloc !258
  %mii = getelementptr i8, ptr %net_dev, i32 2352
  %25 = ptrtoint ptr %mii to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %mii, align 4
  tail call fastcc void @sis900_check_mode(ptr noundef %net_dev, ptr noundef %26)
  %timer = getelementptr i8, ptr %net_dev, i32 2400
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @sis900_timer, i32 noundef 0, ptr noundef nonnull @.str.24, ptr noundef nonnull @sis900_open.__key) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %27 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %27, 100
  %expires = getelementptr i8, ptr %net_dev, i32 2408
  %28 = ptrtoint ptr %expires to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %add, ptr %expires, align 4
  tail call void @add_timer(ptr noundef %timer) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end, %sis900_reset.exit.cleanup_crit_edge
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sis900_close(ptr noundef %net_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %net_dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %ioaddr1 = getelementptr i8, ptr %net_dev, i32 2396
  %2 = ptrtoint ptr %ioaddr1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ioaddr1, align 4
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %net_dev, i32 0, i32 103
  %4 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %5, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #14
  %add.ptr = getelementptr i8, ptr %3, i32 20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !257
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #14, !srcloc !258
  %add.ptr2 = getelementptr i8, ptr %3, i32 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !257
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 0) #14, !srcloc !258
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #14, !srcloc !255
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !256
  %7 = or i32 %6, 167772160
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !257
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 %7) #14, !srcloc !258
  %timer = getelementptr i8, ptr %net_dev, i32 2400
  %call6 = tail call i32 @del_timer(ptr noundef %timer) #14
  %irq = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 46
  %8 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %irq, align 4
  %call7 = tail call ptr @free_irq(i32 noundef %9, ptr noundef %net_dev) #14
  %dev = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %rx_ring = getelementptr i8, ptr %net_dev, i32 2604
  br label %for.body

for.cond11.preheader:                             ; preds = %for.inc
  %tx_ring = getelementptr i8, ptr %net_dev, i32 2600
  br label %for.body13

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.055 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.sis900_private, ptr %add.ptr.i, i32 0, i32 15, i32 %i.055
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  %12 = ptrtoint ptr %rx_ring to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rx_ring, align 4
  %bufptr = getelementptr %struct._BufferDesc, ptr %13, i32 %i.055, i32 2
  %14 = ptrtoint ptr %bufptr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %bufptr, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev, i32 noundef %15, i32 noundef 1540, i32 noundef 2, i32 noundef 0) #14
  tail call void @consume_skb(ptr noundef nonnull %11) #14
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.055, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %for.cond11.preheader, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.body13:                                       ; preds = %for.inc23.for.body13_crit_edge, %for.cond11.preheader
  %i.157 = phi i32 [ 0, %for.cond11.preheader ], [ %inc24, %for.inc23.for.body13_crit_edge ]
  %arrayidx14 = getelementptr %struct.sis900_private, ptr %add.ptr.i, i32 0, i32 14, i32 %i.157
  %17 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx14, align 4
  %tobool15.not = icmp eq ptr %18, null
  br i1 %tobool15.not, label %for.body13.for.inc23_crit_edge, label %if.then16

for.body13.for.inc23_crit_edge:                   ; preds = %for.body13
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc23

if.then16:                                        ; preds = %for.body13
  call void @__sanitizer_cov_trace_pc() #16
  %19 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %tx_ring, align 4
  %bufptr19 = getelementptr %struct._BufferDesc, ptr %20, i32 %i.157, i32 2
  %21 = ptrtoint ptr %bufptr19 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %bufptr19, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %18, i32 0, i32 6
  %23 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %len, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev, i32 noundef %22, i32 noundef %24, i32 noundef 1, i32 noundef 0) #14
  tail call void @consume_skb(ptr noundef nonnull %18) #14
  %25 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %arrayidx14, align 4
  br label %for.inc23

for.inc23:                                        ; preds = %if.then16, %for.body13.for.inc23_crit_edge
  %inc24 = add nuw nsw i32 %i.157, 1
  %exitcond59.not = icmp eq i32 %inc24, 16
  br i1 %exitcond59.not, label %for.end25, label %for.inc23.for.body13_crit_edge

for.inc23.for.body13_crit_edge:                   ; preds = %for.inc23
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body13

for.end25:                                        ; preds = %for.inc23
  call void @__sanitizer_cov_trace_pc() #16
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sis900_start_xmit(ptr noundef %skb, ptr noundef %net_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %net_dev, i32 2304
  %ioaddr1 = getelementptr i8, ptr %net_dev, i32 2396
  %0 = ptrtoint ptr %ioaddr1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ioaddr1, align 4
  %lock = getelementptr i8, ptr %net_dev, i32 2308
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #14
  %cur_tx = getelementptr i8, ptr %net_dev, i32 2464
  %2 = ptrtoint ptr %cur_tx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cur_tx, align 4
  %rem = and i32 %3, 15
  %arrayidx = getelementptr %struct.sis900_private, ptr %add.ptr.i, i32 0, i32 14, i32 %rem
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %skb, ptr %arrayidx, align 4
  %5 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %add.ptr.i, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 44
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %7 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %9 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %len, align 4
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %8) #14
  br i1 %call.i, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %entry
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit_crit_edge, label %if.then.i, !prof !266

land.rhs.i.dma_map_single_attrs.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %dma_map_single_attrs.exit

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %dev) #14
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 44, i32 3
  %11 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %12, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %14, %if.end.i.i ], [ %12, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.41, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.42, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #14
  br label %dma_map_single_attrs.exit

if.end39.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @debug_dma_map_single(ptr noundef %dev, ptr noundef %8, i32 noundef %10) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %15 = load ptr, ptr @mem_map, align 4
  %16 = ptrtoint ptr %8 to i32
  %sub.i = add i32 %16, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i100 = getelementptr %struct.page, ptr %15, i32 %shr.i
  %and.i = and i32 %16, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev, ptr noundef %add.ptr.i100, i32 noundef %and.i, i32 noundef %10, i32 noundef 1, i32 noundef 0) #14
  br label %dma_map_single_attrs.exit

dma_map_single_attrs.exit:                        ; preds = %if.end39.i, %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit_crit_edge
  %retval.0.i = phi i32 [ %call41.i, %if.end39.i ], [ -1, %dev_name.exit.i ], [ -1, %land.rhs.i.dma_map_single_attrs.exit_crit_edge ]
  %tx_ring = getelementptr i8, ptr %net_dev, i32 2600
  %17 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %tx_ring, align 4
  %bufptr = getelementptr %struct._BufferDesc, ptr %18, i32 %rem, i32 2
  %19 = ptrtoint ptr %bufptr to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %retval.0.i, ptr %bufptr, align 4
  %20 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %add.ptr.i, align 4
  %dev11 = getelementptr inbounds %struct.pci_dev, ptr %21, i32 0, i32 44
  %22 = load ptr, ptr %tx_ring, align 4
  %bufptr14 = getelementptr %struct._BufferDesc, ptr %22, i32 %rem, i32 2
  %23 = ptrtoint ptr %bufptr14 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %bufptr14, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %dev11, i32 noundef %24) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %24)
  %cmp.i.not = icmp eq i32 %24, -1
  br i1 %cmp.i.not, label %if.then, label %if.end, !prof !267

if.then:                                          ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #14
  %25 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %arrayidx, align 4
  %tx_dropped = getelementptr inbounds %struct.net_device, ptr %net_dev, i32 0, i32 36, i32 7
  %26 = ptrtoint ptr %tx_dropped to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %tx_dropped, align 4
  %inc = add i32 %27, 1
  store i32 %inc, ptr %tx_dropped, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call5) #14
  br label %cleanup

if.end:                                           ; preds = %dma_map_single_attrs.exit
  %28 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %len, align 4
  %or = or i32 %29, -1610612736
  %30 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %tx_ring, align 4
  %cmdsts = getelementptr %struct._BufferDesc, ptr %31, i32 %rem, i32 1
  %32 = ptrtoint ptr %cmdsts to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %or, ptr %cmdsts, align 4
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #14, !srcloc !255
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !256
  %34 = or i32 %33, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !257
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 %34) #14, !srcloc !258
  %35 = ptrtoint ptr %cur_tx to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %cur_tx, align 4
  %inc28 = add i32 %36, 1
  store i32 %inc28, ptr %cur_tx, align 4
  %tx_full = getelementptr i8, ptr %net_dev, i32 2616
  %37 = ptrtoint ptr %tx_full to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 1, ptr %tx_full, align 4
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %net_dev, i32 0, i32 103
  %38 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %39, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call5) #14
  %msg_enable = getelementptr i8, ptr %net_dev, i32 2452
  %40 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %msg_enable, align 4
  %and = and i32 %41, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool45.not = icmp eq i32 %and, 0
  br i1 %tobool45.not, label %if.end.cleanup_crit_edge, label %do.end49

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.end49:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %42 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %data, align 4
  %44 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %len, align 4
  %call53 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, ptr noundef %net_dev, ptr noundef %43, i32 noundef %45, i32 noundef %rem) #17
  br label %cleanup

cleanup:                                          ; preds = %do.end49, %if.end.cleanup_crit_edge, %if.then
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @set_rx_mode(ptr noundef readonly %net_dev) #2 align 64 {
entry:
  %mc_filter = alloca [16 x i16], align 2
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %ioaddr1 = getelementptr i8, ptr %net_dev, i32 2396
  %0 = ptrtoint ptr %ioaddr1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ioaddr1, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %mc_filter) #14
  %2 = call ptr @memset(ptr %mc_filter, i32 0, i32 32)
  %chipset_rev = getelementptr i8, ptr %net_dev, i32 2621
  %3 = ptrtoint ptr %chipset_rev to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %chipset_rev, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -113, i8 %4)
  %cmp = icmp ugt i8 %4, -113
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %4)
  %cmp5 = icmp eq i8 %4, 3
  %or.cond = or i1 %cmp, %cmp5
  %table_entries.0 = select i1 %or.cond, i32 16, i32 8
  %flags = getelementptr inbounds %struct.net_device, ptr %net_dev, i32 0, i32 14
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags, align 8
  %and = and i32 %6, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else10, label %entry.if.end50.sink.split_crit_edge

entry.if.end50.sink.split_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end50.sink.split

if.else10:                                        ; preds = %entry
  %mc = getelementptr inbounds %struct.net_device, ptr %net_dev, i32 0, i32 66
  %count = getelementptr inbounds %struct.net_device, ptr %net_dev, i32 0, i32 66, i32 1
  %7 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %count, align 8
  %9 = load i32, ptr @multicast_filter_limit, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %9)
  %cmp11 = icmp sle i32 %8, %9
  %and15 = and i32 %6, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  %or.cond117 = select i1 %cmp11, i1 %tobool16.not, i1 false
  br i1 %or.cond117, label %for.cond28.preheader, label %if.else10.if.end50.sink.split_crit_edge

if.else10.if.end50.sink.split_crit_edge:          ; preds = %if.else10
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end50.sink.split

for.cond28.preheader:                             ; preds = %if.else10
  %10 = ptrtoint ptr %mc to i32
  call void @__asan_load4_noabort(i32 %10)
  %ha.0122 = load ptr, ptr %mc, align 4
  %cmp32.not123 = icmp eq ptr %ha.0122, %mc
  br i1 %cmp32.not123, label %for.cond28.preheader.if.end50_crit_edge, label %for.body34.lr.ph

for.cond28.preheader.if.end50_crit_edge:          ; preds = %for.cond28.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end50

for.body34.lr.ph:                                 ; preds = %for.cond28.preheader
  %retval.0.in.v.i = select i1 %or.cond, i32 24, i32 25
  br label %sis900_mcast_bitnr.exit

sis900_mcast_bitnr.exit:                          ; preds = %sis900_mcast_bitnr.exit.sis900_mcast_bitnr.exit_crit_edge, %for.body34.lr.ph
  %ha.0124 = phi ptr [ %ha.0122, %for.body34.lr.ph ], [ %ha.0, %sis900_mcast_bitnr.exit.sis900_mcast_bitnr.exit_crit_edge ]
  %addr = getelementptr inbounds %struct.netdev_hw_addr, ptr %ha.0124, i32 0, i32 2
  %call.i = tail call i32 @crc32_le(i32 noundef -1, ptr noundef %addr, i32 noundef 6) #19
  %11 = lshr i32 %call.i, 8
  %conv4.i.i.i = and i32 %11, 255
  %arrayidx.i10.i.i.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %conv4.i.i.i
  %12 = ptrtoint ptr %arrayidx.i10.i.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx.i10.i.i.i, align 1
  %conv6.i.i.i = zext i8 %13 to i32
  %14 = shl nuw nsw i32 %conv6.i.i.i, 16
  %15 = and i32 %call.i, 255
  %arrayidx.i.i.i.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %15
  %16 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx.i.i.i.i, align 1
  %conv2.i.i.i = zext i8 %17 to i32
  %18 = shl nuw i32 %conv2.i.i.i, 24
  %or.i13.i.i = or i32 %14, %18
  %sum.shift.i.i = lshr i32 %call.i, 24
  %arrayidx.i10.i11.i.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %sum.shift.i.i
  %19 = ptrtoint ptr %arrayidx.i10.i11.i.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx.i10.i11.i.i, align 1
  %conv6.i12.i.i = zext i8 %20 to i32
  %shl.i.i = or i32 %or.i13.i.i, %conv6.i12.i.i
  %shr.i.i = lshr i32 %call.i, 16
  %21 = and i32 %shr.i.i, 255
  %arrayidx.i.i7.i.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %21
  %22 = ptrtoint ptr %arrayidx.i.i7.i.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx.i.i7.i.i, align 1
  %conv2.i8.i.i = zext i8 %23 to i32
  %shl.i9.i.i = shl nuw nsw i32 %conv2.i8.i.i, 8
  %or.i.i = or i32 %shl.i.i, %shl.i9.i.i
  %retval.0.in.i = lshr i32 %or.i.i, %retval.0.in.v.i
  %retval.0.i = trunc i32 %retval.0.in.i to i16
  %and38 = and i16 %retval.0.i, 15
  %shl = shl nuw i16 1, %and38
  %24 = lshr i32 %retval.0.in.i, 4
  %arrayidx39 = getelementptr [16 x i16], ptr %mc_filter, i32 0, i32 %24
  %25 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %arrayidx39, align 2
  %or = or i16 %shl, %26
  store i16 %or, ptr %arrayidx39, align 2
  %27 = ptrtoint ptr %ha.0124 to i32
  call void @__asan_load4_noabort(i32 %27)
  %ha.0 = load ptr, ptr %ha.0124, align 4
  %cmp32.not = icmp eq ptr %ha.0, %mc
  br i1 %cmp32.not, label %sis900_mcast_bitnr.exit.if.end50_crit_edge, label %sis900_mcast_bitnr.exit.sis900_mcast_bitnr.exit_crit_edge

sis900_mcast_bitnr.exit.sis900_mcast_bitnr.exit_crit_edge: ; preds = %sis900_mcast_bitnr.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %sis900_mcast_bitnr.exit

sis900_mcast_bitnr.exit.if.end50_crit_edge:       ; preds = %sis900_mcast_bitnr.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end50

if.end50.sink.split:                              ; preds = %if.else10.if.end50.sink.split_crit_edge, %entry.if.end50.sink.split_crit_edge
  %rx_mode.0.ph = phi i32 [ 240, %entry.if.end50.sink.split_crit_edge ], [ 224, %if.else10.if.end50.sink.split_crit_edge ]
  %28 = shl nuw nsw i32 %table_entries.0, 1
  %29 = call ptr @memset(ptr %mc_filter, i32 255, i32 %28)
  br label %if.end50

if.end50:                                         ; preds = %if.end50.sink.split, %sis900_mcast_bitnr.exit.if.end50_crit_edge, %for.cond28.preheader.if.end50_crit_edge
  %rx_mode.0 = phi i32 [ 192, %for.cond28.preheader.if.end50_crit_edge ], [ %rx_mode.0.ph, %if.end50.sink.split ], [ 192, %sis900_mcast_bitnr.exit.if.end50_crit_edge ]
  %add.ptr56 = getelementptr i8, ptr %1, i32 72
  %add.ptr59 = getelementptr i8, ptr %1, i32 76
  br label %for.body54

for.body54:                                       ; preds = %for.body54.for.body54_crit_edge, %if.end50
  %i.2125 = phi i32 [ 0, %if.end50 ], [ %inc61, %for.body54.for.body54_crit_edge ]
  %add = shl i32 %i.2125, 16
  %shl55 = add nuw nsw i32 %add, 262144
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !257
  tail call void @arm_heavy_mb() #14
  %30 = tail call i32 @llvm.bswap.i32(i32 %shl55) #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr56, i32 %30) #14, !srcloc !258
  %arrayidx57 = getelementptr [16 x i16], ptr %mc_filter, i32 0, i32 %i.2125
  %31 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %arrayidx57, align 2
  %conv58 = zext i16 %32 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !257
  tail call void @arm_heavy_mb() #14
  %33 = tail call i32 @llvm.bswap.i32(i32 %conv58) #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr59, i32 %33) #14, !srcloc !258
  %inc61 = add nuw nsw i32 %i.2125, 1
  %exitcond.not = icmp eq i32 %inc61, %table_entries.0
  br i1 %exitcond.not, label %for.end62, label %for.body54.for.body54_crit_edge

for.body54.for.body54_crit_edge:                  ; preds = %for.body54
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body54

for.end62:                                        ; preds = %for.body54
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !257
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr56, i32 %rx_mode.0) #14, !srcloc !258
  %34 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %flags, align 8
  %and66 = and i32 %35, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and66)
  %tobool67.not = icmp eq i32 %and66, 0
  br i1 %tobool67.not, label %for.end62.if.end83_crit_edge, label %if.then68

for.end62.if.end83_crit_edge:                     ; preds = %for.end62
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end83

if.then68:                                        ; preds = %for.end62
  call void @__sanitizer_cov_trace_pc() #16
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #14, !srcloc !255
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !256
  %37 = or i32 %36, 167772160
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !257
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 %37) #14, !srcloc !258
  %add.ptr74 = getelementptr i8, ptr %1, i32 36
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr74) #14, !srcloc !255
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !256
  %39 = or i32 %38, 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !257
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr74, i32 %39) #14, !srcloc !258
  %add.ptr78 = getelementptr i8, ptr %1, i32 52
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr78) #14, !srcloc !255
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !256
  %41 = or i32 %40, 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !257
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr78, i32 %41) #14, !srcloc !258
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !257
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 %36) #14, !srcloc !258
  br label %if.end83

if.end83:                                         ; preds = %if.then68, %for.end62.if.end83_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %mc_filter) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_mac_addr(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_validate_addr(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mii_ioctl(ptr nocapture noundef readonly %net_dev, ptr nocapture noundef %rq, i32 noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %ifr_ifru.i = getelementptr inbounds %struct.ifreq, ptr %rq, i32 0, i32 1
  %0 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.103)
  switch i32 %cmd, label %entry.cleanup_crit_edge [
    i32 35143, label %sw.bb
    i32 35144, label %entry.sw.bb2_crit_edge
    i32 35145, label %sw.bb9
  ]

entry.sw.bb2_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb2

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %mii = getelementptr i8, ptr %net_dev, i32 2352
  %1 = ptrtoint ptr %mii to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %mii, align 4
  %phy_addr = getelementptr inbounds %struct.mii_phy, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %phy_addr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %phy_addr, align 4
  %conv = trunc i32 %4 to i16
  %5 = ptrtoint ptr %ifr_ifru.i to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %conv, ptr %ifr_ifru.i, align 2
  br label %sw.bb2

sw.bb2:                                           ; preds = %sw.bb, %entry.sw.bb2_crit_edge
  %6 = ptrtoint ptr %ifr_ifru.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %ifr_ifru.i, align 2
  %8 = and i16 %7, 31
  %and = zext i16 %8 to i32
  %reg_num = getelementptr inbounds %struct.mii_ioctl_data, ptr %ifr_ifru.i, i32 0, i32 1
  %9 = ptrtoint ptr %reg_num to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %reg_num, align 2
  %11 = and i16 %10, 31
  %and6 = zext i16 %11 to i32
  %call7 = tail call i32 @mdio_read(ptr noundef %net_dev, i32 noundef %and, i32 noundef %and6)
  %conv8 = trunc i32 %call7 to i16
  %val_out = getelementptr inbounds %struct.mii_ioctl_data, ptr %ifr_ifru.i, i32 0, i32 3
  %12 = ptrtoint ptr %val_out to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv8, ptr %val_out, align 2
  br label %cleanup

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %13 = ptrtoint ptr %ifr_ifru.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %ifr_ifru.i, align 2
  %15 = and i16 %14, 31
  %and12 = zext i16 %15 to i32
  %reg_num13 = getelementptr inbounds %struct.mii_ioctl_data, ptr %ifr_ifru.i, i32 0, i32 1
  %16 = ptrtoint ptr %reg_num13 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %reg_num13, align 2
  %18 = and i16 %17, 31
  %and15 = zext i16 %18 to i32
  %val_in = getelementptr inbounds %struct.ifreq, ptr %rq, i32 0, i32 1, i32 0, i32 1
  %19 = ptrtoint ptr %val_in to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %val_in, align 2
  %conv16 = zext i16 %20 to i32
  tail call void @mdio_write(ptr noundef %net_dev, i32 noundef %and12, i32 noundef %and15, i32 noundef %conv16)
  br label %cleanup

cleanup:                                          ; preds = %sw.bb9, %sw.bb2, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.bb9 ], [ 0, %sw.bb2 ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sis900_set_config(ptr noundef %dev, ptr nocapture noundef readonly %map) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %mii = getelementptr i8, ptr %dev, i32 2352
  %0 = ptrtoint ptr %mii to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mii, align 4
  %port = getelementptr inbounds %struct.ifmap, ptr %map, i32 0, i32 5
  %2 = ptrtoint ptr %port to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %port, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %3)
  %cmp.not = icmp eq i8 %3, -1
  br i1 %cmp.not, label %entry.cleanup_crit_edge, label %land.lhs.true

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

land.lhs.true:                                    ; preds = %entry
  %if_port = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 52
  %4 = ptrtoint ptr %if_port to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %if_port, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %3, i8 %5)
  %cmp5.not = icmp eq i8 %3, %5
  br i1 %cmp5.not, label %land.lhs.true.cleanup_crit_edge, label %if.then

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then:                                          ; preds = %land.lhs.true
  %6 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.104)
  switch i8 %3, label %sw.default [
    i8 0, label %sw.bb
    i8 2, label %sw.bb16
    i8 4, label %if.then.sw.bb24_crit_edge
    i8 5, label %if.then.sw.bb24_crit_edge62
    i8 1, label %if.then.cleanup_crit_edge
    i8 3, label %if.then.cleanup_crit_edge63
    i8 6, label %if.then.cleanup_crit_edge64
  ]

if.then.cleanup_crit_edge64:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then.cleanup_crit_edge63:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then.sw.bb24_crit_edge62:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb24

if.then.sw.bb24_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb24

sw.bb:                                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %7 = ptrtoint ptr %if_port to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %if_port, align 2
  tail call void @netif_carrier_off(ptr noundef %dev) #14
  %phy_addr = getelementptr inbounds %struct.mii_phy, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %phy_addr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %phy_addr, align 4
  %call11 = tail call i32 @mdio_read(ptr noundef %dev, i32 noundef %9, i32 noundef 0)
  %10 = ptrtoint ptr %phy_addr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %phy_addr, align 4
  %conv14 = and i32 %call11, 60927
  %or15 = or i32 %conv14, 4608
  tail call void @mdio_write(ptr noundef %dev, i32 noundef %11, i32 noundef 0, i32 noundef %or15)
  br label %cleanup

sw.bb16:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %12 = ptrtoint ptr %if_port to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 2, ptr %if_port, align 2
  tail call void @netif_carrier_off(ptr noundef %dev) #14
  %phy_addr19 = getelementptr inbounds %struct.mii_phy, ptr %1, i32 0, i32 1
  %13 = ptrtoint ptr %phy_addr19 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %phy_addr19, align 4
  %call20 = tail call i32 @mdio_read(ptr noundef %dev, i32 noundef %14, i32 noundef 0)
  %15 = ptrtoint ptr %phy_addr19 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %phy_addr19, align 4
  %and = and i32 %call20, 53247
  tail call void @mdio_write(ptr noundef %dev, i32 noundef %16, i32 noundef 0, i32 noundef %and)
  br label %cleanup

sw.bb24:                                          ; preds = %if.then.sw.bb24_crit_edge, %if.then.sw.bb24_crit_edge62
  %17 = ptrtoint ptr %if_port to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %3, ptr %if_port, align 2
  tail call void @netif_carrier_off(ptr noundef %dev) #14
  %phy_addr27 = getelementptr inbounds %struct.mii_phy, ptr %1, i32 0, i32 1
  %18 = ptrtoint ptr %phy_addr27 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %phy_addr27, align 4
  %call28 = tail call i32 @mdio_read(ptr noundef %dev, i32 noundef %19, i32 noundef 0)
  %20 = ptrtoint ptr %phy_addr27 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %phy_addr27, align 4
  %and32 = and i32 %call28, 57343
  %or33 = or i32 %and32, 8192
  tail call void @mdio_write(ptr noundef %dev, i32 noundef %21, i32 noundef 0, i32 noundef %or33)
  br label %cleanup

sw.default:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %sw.bb24, %sw.bb16, %sw.bb, %if.then.cleanup_crit_edge, %if.then.cleanup_crit_edge63, %if.then.cleanup_crit_edge64, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %sw.default ], [ -95, %if.then.cleanup_crit_edge ], [ -95, %if.then.cleanup_crit_edge63 ], [ -95, %if.then.cleanup_crit_edge64 ], [ 0, %sw.bb ], [ 0, %sw.bb16 ], [ 0, %sw.bb24 ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sis900_tx_timeout(ptr noundef %net_dev, i32 noundef %txqueue) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %net_dev, i32 2304
  %ioaddr1 = getelementptr i8, ptr %net_dev, i32 2396
  %0 = ptrtoint ptr %ioaddr1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ioaddr1, align 4
  %msg_enable = getelementptr i8, ptr %net_dev, i32 2452
  %2 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %msg_enable, align 4
  %and = and i32 %3, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #14, !srcloc !255
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !256
  %add.ptr3 = getelementptr i8, ptr %1, i32 16
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3) #14, !srcloc !255
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !256
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, ptr noundef %net_dev, i32 noundef %5, i32 noundef %7) #17
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %add.ptr6 = getelementptr i8, ptr %1, i32 20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !257
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 0) #14, !srcloc !258
  %lock = getelementptr i8, ptr %net_dev, i32 2308
  %call11 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #14
  %cur_tx = getelementptr i8, ptr %net_dev, i32 2464
  %8 = ptrtoint ptr %cur_tx to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %cur_tx, align 4
  %dirty_tx = getelementptr i8, ptr %net_dev, i32 2468
  %9 = ptrtoint ptr %dirty_tx to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %dirty_tx, align 4
  %tx_ring = getelementptr i8, ptr %net_dev, i32 2600
  %tx_dropped = getelementptr inbounds %struct.net_device, ptr %net_dev, i32 0, i32 36, i32 7
  br label %for.body

for.body:                                         ; preds = %if.end28.for.body_crit_edge, %if.end
  %i.063 = phi i32 [ 0, %if.end ], [ %inc29, %if.end28.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.sis900_private, ptr %add.ptr.i, i32 0, i32 14, i32 %i.063
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  %tobool18.not = icmp eq ptr %11, null
  br i1 %tobool18.not, label %for.body.if.end28_crit_edge, label %if.then19

for.body.if.end28_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end28

if.then19:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  %12 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %add.ptr.i, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44
  %14 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %tx_ring, align 4
  %bufptr = getelementptr %struct._BufferDesc, ptr %15, i32 %i.063, i32 2
  %16 = ptrtoint ptr %bufptr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %bufptr, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %11, i32 0, i32 6
  %18 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %len, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev, i32 noundef %17, i32 noundef %19, i32 noundef 1, i32 noundef 0) #14
  tail call void @__dev_kfree_skb_irq(ptr noundef nonnull %11, i32 noundef 1) #14
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %arrayidx, align 4
  %21 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %tx_ring, align 4
  %cmdsts = getelementptr %struct._BufferDesc, ptr %22, i32 %i.063, i32 1
  %23 = ptrtoint ptr %cmdsts to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %cmdsts, align 4
  %24 = load ptr, ptr %tx_ring, align 4
  %bufptr27 = getelementptr %struct._BufferDesc, ptr %24, i32 %i.063, i32 2
  %25 = ptrtoint ptr %bufptr27 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %bufptr27, align 4
  %26 = ptrtoint ptr %tx_dropped to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %tx_dropped, align 4
  %inc = add i32 %27, 1
  store i32 %inc, ptr %tx_dropped, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.then19, %for.body.if.end28_crit_edge
  %inc29 = add nuw nsw i32 %i.063, 1
  %exitcond.not = icmp eq i32 %inc29, 16
  br i1 %exitcond.not, label %for.end, label %if.end28.for.body_crit_edge

if.end28.for.body_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.end:                                          ; preds = %if.end28
  %tx_full = getelementptr i8, ptr %net_dev, i32 2616
  %28 = ptrtoint ptr %tx_full to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %tx_full, align 4
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %net_dev, i32 0, i32 103
  %29 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %_tx.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %30) #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call11) #14
  %31 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %_tx.i.i, align 128
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %33 = load volatile i32, ptr @jiffies, align 128
  %trans_start.i.i = getelementptr inbounds %struct.netdev_queue, ptr %32, i32 0, i32 12
  %34 = ptrtoint ptr %trans_start.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %trans_start.i.i, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %33)
  %cmp.not.i.i = icmp eq i32 %35, %33
  br i1 %cmp.not.i.i, label %for.end.netif_trans_update.exit_crit_edge, label %do.body5.i.i

for.end.netif_trans_update.exit_crit_edge:        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %netif_trans_update.exit

do.body5.i.i:                                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  %36 = ptrtoint ptr %trans_start.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile i32 %33, ptr %trans_start.i.i, align 16
  br label %netif_trans_update.exit

netif_trans_update.exit:                          ; preds = %do.body5.i.i, %for.end.netif_trans_update.exit_crit_edge
  %tx_ring_dma = getelementptr i8, ptr %net_dev, i32 2608
  %37 = ptrtoint ptr %tx_ring_dma to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %tx_ring_dma, align 4
  %add.ptr31 = getelementptr i8, ptr %1, i32 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !257
  tail call void @arm_heavy_mb() #14
  %39 = tail call i32 @llvm.bswap.i32(i32 %38) #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr31, i32 %39) #14, !srcloc !258
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !257
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 -1526398720) #14, !srcloc !258
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sis900_poll(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %irq1 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 46
  %2 = ptrtoint ptr %irq1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq1, align 4
  tail call void @disable_irq(i32 noundef %3) #14
  %call2 = tail call i32 @sis900_interrupt(i32 noundef %3, ptr noundef %dev)
  tail call void @enable_irq(i32 noundef %3) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sis630_set_eq(ptr noundef %net_dev, i8 noundef zeroext %revision) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i8 %revision to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.105)
  switch i8 %revision, label %entry.cleanup_crit_edge [
    i8 -124, label %entry.if.end_crit_edge
    i8 -125, label %entry.if.end_crit_edge251
    i8 -127, label %entry.if.end_crit_edge252
    i8 -128, label %entry.if.end_crit_edge253
  ]

entry.if.end_crit_edge253:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

entry.if.end_crit_edge252:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

entry.if.end_crit_edge251:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry.if.end_crit_edge, %entry.if.end_crit_edge251, %entry.if.end_crit_edge252, %entry.if.end_crit_edge253
  %state.i = getelementptr inbounds %struct.net_device, ptr %net_dev, i32 0, i32 6
  %1 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %state.i, align 4
  %3 = and i32 %2, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  %cur_phy = getelementptr i8, ptr %net_dev, i32 2360
  %4 = ptrtoint ptr %cur_phy to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cur_phy, align 4
  %call15 = tail call i32 @mdio_read(ptr noundef %net_dev, i32 noundef %5, i32 noundef 20)
  br i1 %tobool.not.i, label %if.then14, label %if.else144

if.then14:                                        ; preds = %if.end
  %6 = ptrtoint ptr %cur_phy to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cur_phy, align 4
  %or = and i32 %call15, 40447
  %and = or i32 %or, 8704
  tail call void @mdio_write(ptr noundef %net_dev, i32 noundef %7, i32 noundef 20, i32 noundef %and)
  %8 = ptrtoint ptr %cur_phy to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cur_phy, align 4
  %call22 = tail call i32 @mdio_read(ptr noundef %net_dev, i32 noundef %9, i32 noundef 20)
  %10 = trunc i32 %call22 to i16
  %11 = lshr i16 %10, 3
  %conv24 = and i16 %11, 31
  %12 = ptrtoint ptr %cur_phy to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cur_phy, align 4
  %call22.1 = tail call i32 @mdio_read(ptr noundef %net_dev, i32 noundef %13, i32 noundef 20)
  %14 = trunc i32 %call22.1 to i16
  %15 = lshr i16 %14, 3
  %conv24.1 = and i16 %15, 31
  %16 = tail call i16 @llvm.umax.i16(i16 %conv24.1, i16 %conv24)
  %17 = tail call i16 @llvm.umin.i16(i16 %conv24.1, i16 %conv24)
  %18 = ptrtoint ptr %cur_phy to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %cur_phy, align 4
  %call22.2 = tail call i32 @mdio_read(ptr noundef %net_dev, i32 noundef %19, i32 noundef 20)
  %20 = trunc i32 %call22.2 to i16
  %21 = lshr i16 %20, 3
  %conv24.2 = and i16 %21, 31
  %22 = tail call i16 @llvm.umax.i16(i16 %conv24.2, i16 %16)
  %23 = tail call i16 @llvm.umin.i16(i16 %conv24.2, i16 %17)
  %24 = ptrtoint ptr %cur_phy to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %cur_phy, align 4
  %call22.3 = tail call i32 @mdio_read(ptr noundef %net_dev, i32 noundef %25, i32 noundef 20)
  %26 = trunc i32 %call22.3 to i16
  %27 = lshr i16 %26, 3
  %conv24.3 = and i16 %27, 31
  %28 = tail call i16 @llvm.umax.i16(i16 %conv24.3, i16 %22)
  %29 = tail call i16 @llvm.umin.i16(i16 %conv24.3, i16 %23)
  %30 = ptrtoint ptr %cur_phy to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %cur_phy, align 4
  %call22.4 = tail call i32 @mdio_read(ptr noundef %net_dev, i32 noundef %31, i32 noundef 20)
  %32 = trunc i32 %call22.4 to i16
  %33 = lshr i16 %32, 3
  %conv24.4 = and i16 %33, 31
  %34 = tail call i16 @llvm.umax.i16(i16 %conv24.4, i16 %28)
  %35 = tail call i16 @llvm.umin.i16(i16 %conv24.4, i16 %29)
  %36 = ptrtoint ptr %cur_phy to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %cur_phy, align 4
  %call22.5 = tail call i32 @mdio_read(ptr noundef %net_dev, i32 noundef %37, i32 noundef 20)
  %38 = trunc i32 %call22.5 to i16
  %39 = lshr i16 %38, 3
  %conv24.5 = and i16 %39, 31
  %40 = tail call i16 @llvm.umax.i16(i16 %conv24.5, i16 %34)
  %41 = tail call i16 @llvm.umin.i16(i16 %conv24.5, i16 %35)
  %42 = ptrtoint ptr %cur_phy to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %cur_phy, align 4
  %call22.6 = tail call i32 @mdio_read(ptr noundef %net_dev, i32 noundef %43, i32 noundef 20)
  %44 = trunc i32 %call22.6 to i16
  %45 = lshr i16 %44, 3
  %conv24.6 = and i16 %45, 31
  %46 = tail call i16 @llvm.umax.i16(i16 %conv24.6, i16 %40)
  %47 = tail call i16 @llvm.umin.i16(i16 %conv24.6, i16 %41)
  %48 = ptrtoint ptr %cur_phy to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %cur_phy, align 4
  %call22.7 = tail call i32 @mdio_read(ptr noundef %net_dev, i32 noundef %49, i32 noundef 20)
  %50 = trunc i32 %call22.7 to i16
  %51 = lshr i16 %50, 3
  %conv24.7 = and i16 %51, 31
  %52 = tail call i16 @llvm.umax.i16(i16 %conv24.7, i16 %46)
  %53 = tail call i16 @llvm.umin.i16(i16 %conv24.7, i16 %47)
  %54 = ptrtoint ptr %cur_phy to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %cur_phy, align 4
  %call22.8 = tail call i32 @mdio_read(ptr noundef %net_dev, i32 noundef %55, i32 noundef 20)
  %56 = trunc i32 %call22.8 to i16
  %57 = lshr i16 %56, 3
  %conv24.8 = and i16 %57, 31
  %58 = tail call i16 @llvm.umax.i16(i16 %conv24.8, i16 %52)
  %59 = tail call i16 @llvm.umin.i16(i16 %conv24.8, i16 %53)
  %60 = ptrtoint ptr %cur_phy to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %cur_phy, align 4
  %call22.9 = tail call i32 @mdio_read(ptr noundef %net_dev, i32 noundef %61, i32 noundef 20)
  %62 = trunc i32 %call22.9 to i16
  %63 = lshr i16 %62, 3
  %conv24.9 = and i16 %63, 31
  %64 = tail call i16 @llvm.umax.i16(i16 %conv24.9, i16 %58)
  %65 = tail call i16 @llvm.umin.i16(i16 %conv24.9, i16 %59)
  %66 = zext i8 %revision to i64
  call void @__sanitizer_cov_trace_switch(i64 %66, ptr @__sancov_gen_cov_switch_values.106)
  switch i8 %revision, label %if.then14.if.end128_crit_edge [
    i8 -124, label %if.then14.if.then58_crit_edge
    i8 -125, label %if.then14.if.then58_crit_edge254
    i8 -127, label %if.then14.if.then58_crit_edge255
    i8 -128, label %land.lhs.true107
  ]

if.then14.if.then58_crit_edge255:                 ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then58

if.then14.if.then58_crit_edge254:                 ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then58

if.then14.if.then58_crit_edge:                    ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then58

if.then14.if.end128_crit_edge:                    ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end128

if.then58:                                        ; preds = %if.then14.if.then58_crit_edge, %if.then14.if.then58_crit_edge254, %if.then14.if.then58_crit_edge255
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %64)
  %cmp60 = icmp ult i16 %64, 5
  br i1 %cmp60, label %if.then58.if.end128_crit_edge, label %land.lhs.true

if.then58.if.end128_crit_edge:                    ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end128

land.lhs.true:                                    ; preds = %if.then58
  call void @__sanitizer_cov_trace_const_cmp2(i16 15, i16 %64)
  %cmp67 = icmp ult i16 %64, 15
  call void @__sanitizer_cov_trace_cmp2(i16 %64, i16 %65)
  %cmp72 = icmp eq i16 %64, %65
  br i1 %cmp67, label %if.then69, label %if.then86

if.then69:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  %cond80.v = select i1 %cmp72, i16 2, i16 1
  %cond80 = add nuw nsw i16 %cond80.v, %64
  br label %if.end128

if.then86:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  %cond98.v = select i1 %cmp72, i16 6, i16 5
  %cond98 = add nuw nsw i16 %cond98.v, %64
  br label %if.end128

land.lhs.true107:                                 ; preds = %if.then14
  %host_bridge_rev = getelementptr i8, ptr %net_dev, i32 2620
  %67 = ptrtoint ptr %host_bridge_rev to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %host_bridge_rev, align 4
  %69 = and i8 %68, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %69)
  %switch = icmp eq i8 %69, 16
  br i1 %switch, label %if.then116, label %land.lhs.true107.if.end128_crit_edge

land.lhs.true107.if.end128_crit_edge:             ; preds = %land.lhs.true107
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end128

if.then116:                                       ; preds = %land.lhs.true107
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %64)
  %cmp118 = icmp eq i16 %64, 0
  br i1 %cmp118, label %if.then116.if.end128_crit_edge, label %if.else121

if.then116.if.end128_crit_edge:                   ; preds = %if.then116
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end128

if.else121:                                       ; preds = %if.then116
  call void @__sanitizer_cov_trace_pc() #16
  %conv117 = zext i16 %64 to i32
  %conv123 = zext i16 %65 to i32
  %add124 = add nuw nsw i32 %conv117, 1
  %add125 = add nuw nsw i32 %add124, %conv123
  %div237 = lshr i32 %add125, 1
  %conv126 = trunc i32 %div237 to i16
  br label %if.end128

if.end128:                                        ; preds = %if.else121, %if.then116.if.end128_crit_edge, %land.lhs.true107.if.end128_crit_edge, %if.then86, %if.then69, %if.then58.if.end128_crit_edge, %if.then14.if.end128_crit_edge
  %eq_value.2 = phi i16 [ %conv126, %if.else121 ], [ %conv24.9, %land.lhs.true107.if.end128_crit_edge ], [ 3, %if.then116.if.end128_crit_edge ], [ %64, %if.then58.if.end128_crit_edge ], [ %cond98, %if.then86 ], [ %cond80, %if.then69 ], [ %conv24.9, %if.then14.if.end128_crit_edge ]
  %70 = ptrtoint ptr %cur_phy to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %cur_phy, align 4
  %call130 = tail call i32 @mdio_read(ptr noundef %net_dev, i32 noundef %71, i32 noundef 20)
  %and133 = and i32 %call130, 40199
  %conv134 = zext i16 %eq_value.2 to i32
  %shl = shl nuw nsw i32 %conv134, 3
  %and135 = and i32 %shl, 248
  %or136 = or i32 %and135, %and133
  %conv141 = or i32 %or136, 24576
  %72 = ptrtoint ptr %cur_phy to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %cur_phy, align 4
  tail call void @mdio_write(ptr noundef %net_dev, i32 noundef %73, i32 noundef 20, i32 noundef %conv141)
  br label %cleanup

if.else144:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %revision)
  %cmp149 = icmp eq i8 %revision, -128
  br i1 %cmp149, label %land.lhs.true151, label %if.else144.if.else166_crit_edge

if.else144.if.else166_crit_edge:                  ; preds = %if.else144
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else166

land.lhs.true151:                                 ; preds = %if.else144
  %host_bridge_rev152 = getelementptr i8, ptr %net_dev, i32 2620
  %74 = ptrtoint ptr %host_bridge_rev152 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %host_bridge_rev152, align 4
  %76 = and i8 %75, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %76)
  %switch244 = icmp eq i8 %76, 16
  br i1 %switch244, label %if.then161, label %land.lhs.true151.if.else166_crit_edge

land.lhs.true151.if.else166_crit_edge:            ; preds = %land.lhs.true151
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else166

if.then161:                                       ; preds = %land.lhs.true151
  call void @__sanitizer_cov_trace_pc() #16
  %77 = ptrtoint ptr %cur_phy to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %cur_phy, align 4
  %or164 = and i32 %call15, 40447
  %and165 = or i32 %or164, 8704
  tail call void @mdio_write(ptr noundef %net_dev, i32 noundef %78, i32 noundef 20, i32 noundef %and165)
  br label %cleanup

if.else166:                                       ; preds = %land.lhs.true151.if.else166_crit_edge, %if.else144.if.else166_crit_edge
  %79 = ptrtoint ptr %cur_phy to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %cur_phy, align 4
  %or169 = and i32 %call15, 40959
  %and170 = or i32 %or169, 8192
  tail call void @mdio_write(ptr noundef %net_dev, i32 noundef %80, i32 noundef 20, i32 noundef %and170)
  br label %cleanup

cleanup:                                          ; preds = %if.else166, %if.then161, %if.end128, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sis900_interrupt(i32 noundef %irq, ptr noundef %dev_instance) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev_instance, i32 2304
  %0 = load i32, ptr @max_interrupt_work, align 4
  %ioaddr1 = getelementptr i8, ptr %dev_instance, i32 2396
  %1 = ptrtoint ptr %ioaddr1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ioaddr1, align 4
  %lock = getelementptr i8, ptr %dev_instance, i32 2308
  tail call void @_raw_spin_lock(ptr noundef %lock) #14
  %add.ptr = getelementptr i8, ptr %2, i32 16
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #14, !srcloc !255
  %4 = tail call i32 @llvm.bswap.i32(i32 %3) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !256
  %and102 = and i32 %4, 34213
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and102)
  %cmp103 = icmp eq i32 %and102, 0
  br i1 %cmp103, label %entry.do.end37_crit_edge, label %if.end.lr.ph

entry.do.end37_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end37

if.end.lr.ph:                                     ; preds = %entry
  %cur_rx.i = getelementptr i8, ptr %dev_instance, i32 2456
  %rx_ring.i = getelementptr i8, ptr %dev_instance, i32 2604
  %msg_enable.i = getelementptr i8, ptr %dev_instance, i32 2452
  %dirty_rx.i = getelementptr i8, ptr %dev_instance, i32 2460
  %rx_errors.i = getelementptr inbounds %struct.net_device, ptr %dev_instance, i32 0, i32 36, i32 4
  %rx_over_errors.i = getelementptr inbounds %struct.net_device, ptr %dev_instance, i32 0, i32 36, i32 11
  %rx_length_errors.i = getelementptr inbounds %struct.net_device, ptr %dev_instance, i32 0, i32 36, i32 10
  %rx_frame_errors.i = getelementptr inbounds %struct.net_device, ptr %dev_instance, i32 0, i32 36, i32 13
  %rx_crc_errors.i = getelementptr inbounds %struct.net_device, ptr %dev_instance, i32 0, i32 36, i32 12
  %multicast.i = getelementptr inbounds %struct.net_device, ptr %dev_instance, i32 0, i32 36, i32 8
  %stats98.i = getelementptr inbounds %struct.net_device, ptr %dev_instance, i32 0, i32 36
  %rx_bytes.i = getelementptr inbounds %struct.net_device, ptr %dev_instance, i32 0, i32 36, i32 2
  %rx_dropped.i = getelementptr inbounds %struct.net_device, ptr %dev_instance, i32 0, i32 36, i32 6
  %dirty_tx.i = getelementptr i8, ptr %dev_instance, i32 2468
  %cur_tx.i = getelementptr i8, ptr %dev_instance, i32 2464
  %tx_ring.i = getelementptr i8, ptr %dev_instance, i32 2600
  %tx_errors.i = getelementptr inbounds %struct.net_device, ptr %dev_instance, i32 0, i32 36, i32 5
  %tx_fifo_errors.i = getelementptr inbounds %struct.net_device, ptr %dev_instance, i32 0, i32 36, i32 18
  %tx_aborted_errors.i = getelementptr inbounds %struct.net_device, ptr %dev_instance, i32 0, i32 36, i32 16
  %tx_carrier_errors.i = getelementptr inbounds %struct.net_device, ptr %dev_instance, i32 0, i32 36, i32 17
  %tx_window_errors.i = getelementptr inbounds %struct.net_device, ptr %dev_instance, i32 0, i32 36, i32 20
  %collisions.i = getelementptr inbounds %struct.net_device, ptr %dev_instance, i32 0, i32 36, i32 9
  %tx_bytes.i = getelementptr inbounds %struct.net_device, ptr %dev_instance, i32 0, i32 36, i32 3
  %tx_packets.i = getelementptr inbounds %struct.net_device, ptr %dev_instance, i32 0, i32 36, i32 1
  %tx_full.i = getelementptr i8, ptr %dev_instance, i32 2616
  %_tx.i.i.i = getelementptr inbounds %struct.net_device, ptr %dev_instance, i32 0, i32 103
  br label %if.end

do.body:                                          ; preds = %if.end20
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #14, !srcloc !255
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !256
  %and = and i32 %6, 34213
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %do.body.do.end37_crit_edge, label %do.body.if.end_crit_edge

do.body.if.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

do.body.do.end37_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end37

if.end:                                           ; preds = %do.body.if.end_crit_edge, %if.end.lr.ph
  %7 = phi i32 [ %4, %if.end.lr.ph ], [ %6, %do.body.if.end_crit_edge ]
  %boguscnt.0104 = phi i32 [ %0, %if.end.lr.ph ], [ %dec, %do.body.if.end_crit_edge ]
  %and3 = and i32 %7, 37
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool.not = icmp eq i32 %and3, 0
  br i1 %tobool.not, label %if.end.if.end6_crit_edge, label %if.then4

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end6

if.then4:                                         ; preds = %if.end
  %8 = ptrtoint ptr %ioaddr1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ioaddr1, align 4
  %10 = ptrtoint ptr %cur_rx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cur_rx.i, align 4
  %rem.i = and i32 %11, 15
  %12 = ptrtoint ptr %rx_ring.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rx_ring.i, align 4
  %cmdsts.i = getelementptr %struct._BufferDesc, ptr %13, i32 %rem.i, i32 1
  %14 = ptrtoint ptr %cmdsts.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cmdsts.i, align 4
  %16 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %msg_enable.i, align 4
  %and.i = and i32 %17, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then4.if.end.i_crit_edge, label %do.end.i

if.then4.if.end.i_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

do.end.i:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #16
  %18 = ptrtoint ptr %dirty_rx.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %dirty_rx.i, align 4
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, i32 noundef %11, i32 noundef %19, i32 noundef %15) #17
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.then4.if.end.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %15)
  %tobool8.not36.i = icmp sgt i32 %15, -1
  br i1 %tobool8.not36.i, label %if.end.i.while.end.i_crit_edge, label %while.body.lr.ph.i

if.end.i.while.end.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end.i

while.body.lr.ph.i:                               ; preds = %if.end.i
  %20 = ptrtoint ptr %dirty_rx.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %dirty_rx.i, align 4
  %add.i = add i32 %21, 16
  %22 = ptrtoint ptr %cur_rx.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %cur_rx.i, align 4
  %sub.i = sub i32 %add.i, %23
  br label %while.body.i

while.body.i:                                     ; preds = %cleanup137.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %entry2.039.i = phi i32 [ %rem.i, %while.body.lr.ph.i ], [ %rem133.i, %cleanup137.i.while.body.i_crit_edge ]
  %rx_work_limit.038.i = phi i32 [ %sub.i, %while.body.lr.ph.i ], [ %dec.i, %cleanup137.i.while.body.i_crit_edge ]
  %rx_status.037.i = phi i32 [ %15, %while.body.lr.ph.i ], [ %92, %cleanup137.i.while.body.i_crit_edge ]
  %dec.i = add i32 %rx_work_limit.038.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp.i = icmp slt i32 %dec.i, 0
  br i1 %cmp.i, label %while.body.i.while.end.i_crit_edge, label %if.end10.i

while.body.i.while.end.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end.i

if.end10.i:                                       ; preds = %while.body.i
  %and11.i = and i32 %rx_status.037.i, 4095
  %sub12.i = add nsw i32 %and11.i, -4
  %and13.i = and i32 %rx_status.037.i, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i)
  %tobool14.not.i = icmp ne i32 %and13.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1523, i32 %and11.i)
  %cmp15.i = icmp ult i32 %and11.i, 1523
  %or.cond.i = and i1 %tobool14.not.i, %cmp15.i
  %and17.i = and i32 %rx_status.037.i, -4194305
  %rx_status.1.i = select i1 %or.cond.i, i32 %and17.i, i32 %rx_status.037.i
  %and19.i = and i32 %rx_status.1.i, 108789760
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19.i)
  %tobool20.not.i = icmp eq i32 %and19.i, 0
  br i1 %tobool20.not.i, label %if.else.i, label %if.then21.i

if.then21.i:                                      ; preds = %if.end10.i
  %24 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %msg_enable.i, align 4
  %and23.i = and i32 %25, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23.i)
  %tobool24.not.i = icmp eq i32 %and23.i, 0
  br i1 %tobool24.not.i, label %if.then21.i.if.end31.i_crit_edge, label %do.end28.i

if.then21.i.if.end31.i_crit_edge:                 ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end31.i

do.end28.i:                                       ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #16
  %call30.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef %dev_instance, i32 noundef %rx_status.1.i, i32 noundef %and11.i) #17
  br label %if.end31.i

if.end31.i:                                       ; preds = %do.end28.i, %if.then21.i.if.end31.i_crit_edge
  %26 = ptrtoint ptr %rx_errors.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %rx_errors.i, align 8
  %inc.i = add i32 %27, 1
  store i32 %inc.i, ptr %rx_errors.i, align 8
  %and32.i = and i32 %rx_status.1.i, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32.i)
  %tobool33.not.i = icmp eq i32 %and32.i, 0
  br i1 %tobool33.not.i, label %if.end31.i.if.end37.i_crit_edge, label %if.then34.i

if.end31.i.if.end37.i_crit_edge:                  ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end37.i

if.then34.i:                                      ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #16
  %28 = ptrtoint ptr %rx_over_errors.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %rx_over_errors.i, align 4
  %inc36.i = add i32 %29, 1
  store i32 %inc36.i, ptr %rx_over_errors.i, align 4
  br label %if.end37.i

if.end37.i:                                       ; preds = %if.then34.i, %if.end31.i.if.end37.i_crit_edge
  %and38.i = and i32 %rx_status.1.i, 6291456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38.i)
  %tobool39.not.i = icmp eq i32 %and38.i, 0
  br i1 %tobool39.not.i, label %if.end37.i.if.end43.i_crit_edge, label %if.then40.i

if.end37.i.if.end43.i_crit_edge:                  ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end43.i

if.then40.i:                                      ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #16
  %30 = ptrtoint ptr %rx_length_errors.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %rx_length_errors.i, align 8
  %inc42.i = add i32 %31, 1
  store i32 %inc42.i, ptr %rx_length_errors.i, align 8
  br label %if.end43.i

if.end43.i:                                       ; preds = %if.then40.i, %if.end37.i.if.end43.i_crit_edge
  %and44.i = and i32 %rx_status.1.i, 1310720
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44.i)
  %tobool45.not.i = icmp eq i32 %and44.i, 0
  br i1 %tobool45.not.i, label %if.end43.i.if.end49.i_crit_edge, label %if.then46.i

if.end43.i.if.end49.i_crit_edge:                  ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end49.i

if.then46.i:                                      ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #16
  %32 = ptrtoint ptr %rx_frame_errors.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %rx_frame_errors.i, align 4
  %inc48.i = add i32 %33, 1
  store i32 %inc48.i, ptr %rx_frame_errors.i, align 4
  br label %if.end49.i

if.end49.i:                                       ; preds = %if.then46.i, %if.end43.i.if.end49.i_crit_edge
  %and50.i = and i32 %rx_status.1.i, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50.i)
  %tobool51.not.i = icmp eq i32 %and50.i, 0
  br i1 %tobool51.not.i, label %if.end49.i.if.end55.i_crit_edge, label %if.then52.i

if.end49.i.if.end55.i_crit_edge:                  ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end55.i

if.then52.i:                                      ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #16
  %34 = ptrtoint ptr %rx_crc_errors.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %rx_crc_errors.i, align 8
  %inc54.i = add i32 %35, 1
  store i32 %inc54.i, ptr %rx_crc_errors.i, align 8
  br label %if.end55.i

if.end55.i:                                       ; preds = %if.then52.i, %if.end49.i.if.end55.i_crit_edge
  %36 = ptrtoint ptr %rx_ring.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %rx_ring.i, align 4
  %cmdsts58.i = getelementptr %struct._BufferDesc, ptr %37, i32 %entry2.039.i, i32 1
  %38 = ptrtoint ptr %cmdsts58.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 1540, ptr %cmdsts58.i, align 4
  br label %cleanup137.i

if.else.i:                                        ; preds = %if.end10.i
  %39 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %add.ptr.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %40, i32 0, i32 44
  %41 = ptrtoint ptr %rx_ring.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %rx_ring.i, align 4
  %bufptr.i = getelementptr %struct._BufferDesc, ptr %42, i32 %entry2.039.i, i32 2
  %43 = ptrtoint ptr %bufptr.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %bufptr.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev.i, i32 noundef %44, i32 noundef 1540, i32 noundef 2, i32 noundef 0) #14
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef %dev_instance, i32 noundef 1540, i32 noundef 2592) #14
  %cmp62.i = icmp eq ptr %call.i.i, null
  %arrayidx64.i = getelementptr %struct.sis900_private, ptr %add.ptr.i, i32 0, i32 15, i32 %entry2.039.i
  %45 = ptrtoint ptr %arrayidx64.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %arrayidx64.i, align 4
  br i1 %cmp62.i, label %if.then63.i, label %if.end67.i

if.then63.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #16
  %47 = ptrtoint ptr %rx_dropped.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %rx_dropped.i, align 8
  %inc66.i = add i32 %48, 1
  store i32 %inc66.i, ptr %rx_dropped.i, align 8
  br label %refill_rx_ring.i

if.end67.i:                                       ; preds = %if.else.i
  %cmp70.i = icmp eq ptr %46, null
  br i1 %cmp70.i, label %if.then71.i, label %if.end86.i

if.then71.i:                                      ; preds = %if.end67.i
  %49 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %msg_enable.i, align 4
  %and73.i = and i32 %50, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and73.i)
  %tobool74.not.i = icmp eq i32 %and73.i, 0
  br i1 %tobool74.not.i, label %if.then71.i.if.end85.i_crit_edge, label %do.end78.i

if.then71.i.if.end85.i_crit_edge:                 ; preds = %if.then71.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end85.i

do.end78.i:                                       ; preds = %if.then71.i
  call void @__sanitizer_cov_trace_pc() #16
  %51 = ptrtoint ptr %cur_rx.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %cur_rx.i, align 4
  %53 = ptrtoint ptr %dirty_rx.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %dirty_rx.i, align 4
  %call84.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef %dev_instance, i32 noundef %52, i32 noundef %54) #17
  br label %if.end85.i

if.end85.i:                                       ; preds = %do.end78.i, %if.then71.i.if.end85.i_crit_edge
  tail call void @consume_skb(ptr noundef nonnull %call.i.i) #14
  br label %while.end.i

if.end86.i:                                       ; preds = %if.end67.i
  %call89.i = tail call ptr @skb_put(ptr noundef nonnull %46, i32 noundef %sub12.i) #14
  %call90.i = tail call zeroext i16 @eth_type_trans(ptr noundef nonnull %46, ptr noundef %dev_instance) #14
  %protocol.i = getelementptr inbounds %struct.sk_buff, ptr %46, i32 0, i32 15, i32 0, i32 18
  %55 = ptrtoint ptr %protocol.i to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 %call90.i, ptr %protocol.i, align 8
  %call91.i = tail call i32 @netif_rx(ptr noundef nonnull %46) #14
  %and92.i = and i32 %rx_status.1.i, 25165824
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %and92.i)
  %cmp93.i = icmp eq i32 %and92.i, 16777216
  br i1 %cmp93.i, label %if.then94.i, label %if.end86.i.if.end97.i_crit_edge

if.end86.i.if.end97.i_crit_edge:                  ; preds = %if.end86.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end97.i

if.then94.i:                                      ; preds = %if.end86.i
  call void @__sanitizer_cov_trace_pc() #16
  %56 = ptrtoint ptr %multicast.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %multicast.i, align 8
  %inc96.i = add i32 %57, 1
  store i32 %inc96.i, ptr %multicast.i, align 8
  br label %if.end97.i

if.end97.i:                                       ; preds = %if.then94.i, %if.end86.i.if.end97.i_crit_edge
  %58 = ptrtoint ptr %rx_bytes.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %rx_bytes.i, align 8
  %add99.i = add i32 %59, %sub12.i
  store i32 %add99.i, ptr %rx_bytes.i, align 8
  %60 = ptrtoint ptr %stats98.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %stats98.i, align 8
  %inc101.i = add i32 %61, 1
  store i32 %inc101.i, ptr %stats98.i, align 8
  %62 = ptrtoint ptr %dirty_rx.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %dirty_rx.i, align 4
  %inc103.i = add i32 %63, 1
  store i32 %inc103.i, ptr %dirty_rx.i, align 4
  br label %refill_rx_ring.i

refill_rx_ring.i:                                 ; preds = %if.end97.i, %if.then63.i
  %skb.0.i = phi ptr [ %46, %if.then63.i ], [ %call.i.i, %if.end97.i ]
  %64 = ptrtoint ptr %arrayidx64.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %skb.0.i, ptr %arrayidx64.i, align 4
  %65 = ptrtoint ptr %rx_ring.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %rx_ring.i, align 4
  %cmdsts108.i = getelementptr %struct._BufferDesc, ptr %66, i32 %entry2.039.i, i32 1
  %67 = ptrtoint ptr %cmdsts108.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 1540, ptr %cmdsts108.i, align 4
  %68 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %add.ptr.i, align 4
  %dev110.i = getelementptr inbounds %struct.pci_dev, ptr %69, i32 0, i32 44
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0.i, i32 0, i32 19
  %70 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %data.i, align 4
  %call.i2.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %71) #14
  br i1 %call.i2.i, label %land.rhs.i.i, label %if.end39.i.i

land.rhs.i.i:                                     ; preds = %refill_rx_ring.i
  %.b1.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs.i.i.dma_map_single_attrs.exit.i_crit_edge, label %if.then.i.i, !prof !266

land.rhs.i.i.dma_map_single_attrs.exit.i_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %dma_map_single_attrs.exit.i

if.then.i.i:                                      ; preds = %land.rhs.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i = tail call ptr @dev_driver_string(ptr noundef %dev110.i) #14
  %init_name.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %69, i32 0, i32 44, i32 3
  %72 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %73, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.dev_name.exit.i.i_crit_edge

if.then.i.i.dev_name.exit.i.i_crit_edge:          ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %dev_name.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %74 = ptrtoint ptr %dev110.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %dev110.i, align 4
  br label %dev_name.exit.i.i

dev_name.exit.i.i:                                ; preds = %if.end.i.i.i, %if.then.i.i.dev_name.exit.i.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %75, %if.end.i.i.i ], [ %73, %if.then.i.i.dev_name.exit.i.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.41, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.42, ptr noundef %call16.i.i, ptr noundef %retval.0.i.i.i) #14
  br label %dma_map_single_attrs.exit.i

if.end39.i.i:                                     ; preds = %refill_rx_ring.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @debug_dma_map_single(ptr noundef %dev110.i, ptr noundef %71, i32 noundef 1540) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %76 = load ptr, ptr @mem_map, align 4
  %77 = ptrtoint ptr %71 to i32
  %sub.i.i = add i32 %77, 1073741824
  %shr.i.i = lshr i32 %sub.i.i, 12
  %add.ptr.i3.i = getelementptr %struct.page, ptr %76, i32 %shr.i.i
  %and.i.i = and i32 %77, 4095
  %call41.i.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev110.i, ptr noundef %add.ptr.i3.i, i32 noundef %and.i.i, i32 noundef 1540, i32 noundef 2, i32 noundef 0) #14
  br label %dma_map_single_attrs.exit.i

dma_map_single_attrs.exit.i:                      ; preds = %if.end39.i.i, %dev_name.exit.i.i, %land.rhs.i.i.dma_map_single_attrs.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %call41.i.i, %if.end39.i.i ], [ -1, %dev_name.exit.i.i ], [ -1, %land.rhs.i.i.dma_map_single_attrs.exit.i_crit_edge ]
  %78 = ptrtoint ptr %rx_ring.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %rx_ring.i, align 4
  %bufptr114.i = getelementptr %struct._BufferDesc, ptr %79, i32 %entry2.039.i, i32 2
  %80 = ptrtoint ptr %bufptr114.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %retval.0.i.i, ptr %bufptr114.i, align 4
  %81 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %add.ptr.i, align 4
  %dev116.i = getelementptr inbounds %struct.pci_dev, ptr %82, i32 0, i32 44
  %83 = load ptr, ptr %rx_ring.i, align 4
  %bufptr119.i = getelementptr %struct._BufferDesc, ptr %83, i32 %entry2.039.i, i32 2
  %84 = ptrtoint ptr %bufptr119.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %bufptr119.i, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %dev116.i, i32 noundef %85) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %85)
  %cmp.i.not.i = icmp eq i32 %85, -1
  br i1 %cmp.i.not.i, label %if.then124.i, label %dma_map_single_attrs.exit.i.cleanup137.i_crit_edge, !prof !267

dma_map_single_attrs.exit.i.cleanup137.i_crit_edge: ; preds = %dma_map_single_attrs.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup137.i

if.then124.i:                                     ; preds = %dma_map_single_attrs.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @__dev_kfree_skb_irq(ptr noundef %skb.0.i, i32 noundef 1) #14
  %86 = ptrtoint ptr %arrayidx64.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr null, ptr %arrayidx64.i, align 4
  br label %while.end.i

cleanup137.i:                                     ; preds = %dma_map_single_attrs.exit.i.cleanup137.i_crit_edge, %if.end55.i
  %87 = ptrtoint ptr %cur_rx.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %cur_rx.i, align 4
  %inc131.i = add i32 %88, 1
  store i32 %inc131.i, ptr %cur_rx.i, align 4
  %rem133.i = and i32 %inc131.i, 15
  %89 = ptrtoint ptr %rx_ring.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %rx_ring.i, align 4
  %cmdsts136.i = getelementptr %struct._BufferDesc, ptr %90, i32 %rem133.i, i32 1
  %91 = ptrtoint ptr %cmdsts136.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %cmdsts136.i, align 4
  %tobool8.not.i = icmp sgt i32 %92, -1
  br i1 %tobool8.not.i, label %cleanup137.i.while.end.i_crit_edge, label %cleanup137.i.while.body.i_crit_edge

cleanup137.i.while.body.i_crit_edge:              ; preds = %cleanup137.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i

cleanup137.i.while.end.i_crit_edge:               ; preds = %cleanup137.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end.i

while.end.i:                                      ; preds = %cleanup137.i.while.end.i_crit_edge, %if.then124.i, %if.end85.i, %while.body.i.while.end.i_crit_edge, %if.end.i.while.end.i_crit_edge
  %93 = ptrtoint ptr %cur_rx.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %cur_rx.i, align 4
  %95 = ptrtoint ptr %dirty_rx.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %dirty_rx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %94, i32 %96)
  %cmp143.not41.i = icmp eq i32 %94, %96
  br i1 %cmp143.not41.i, label %while.end.i.sis900_rx.exit_crit_edge, label %while.end.i.for.body.i_crit_edge

while.end.i.for.body.i_crit_edge:                 ; preds = %while.end.i
  br label %for.body.i

while.end.i.sis900_rx.exit_crit_edge:             ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sis900_rx.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %while.end.i.for.body.i_crit_edge
  %97 = phi i32 [ %inc192.i, %for.inc.i.for.body.i_crit_edge ], [ %96, %while.end.i.for.body.i_crit_edge ]
  %rem146.i = and i32 %97, 15
  %arrayidx148.i = getelementptr %struct.sis900_private, ptr %add.ptr.i, i32 0, i32 15, i32 %rem146.i
  %98 = ptrtoint ptr %arrayidx148.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %arrayidx148.i, align 4
  %cmp149.i = icmp eq ptr %99, null
  br i1 %cmp149.i, label %if.then150.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

if.then150.i:                                     ; preds = %for.body.i
  %call.i4.i = tail call ptr @__netdev_alloc_skb(ptr noundef %dev_instance, i32 noundef 1540, i32 noundef 2592) #14
  %cmp152.i = icmp eq ptr %call.i4.i, null
  br i1 %cmp152.i, label %if.then153.i, label %if.end157.i

if.then153.i:                                     ; preds = %if.then150.i
  call void @__sanitizer_cov_trace_pc() #16
  %100 = ptrtoint ptr %rx_dropped.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %rx_dropped.i, align 8
  %inc156.i = add i32 %101, 1
  store i32 %inc156.i, ptr %rx_dropped.i, align 8
  br label %sis900_rx.exit

if.end157.i:                                      ; preds = %if.then150.i
  %102 = ptrtoint ptr %arrayidx148.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr %call.i4.i, ptr %arrayidx148.i, align 4
  %103 = ptrtoint ptr %rx_ring.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %rx_ring.i, align 4
  %cmdsts162.i = getelementptr %struct._BufferDesc, ptr %104, i32 %rem146.i, i32 1
  %105 = ptrtoint ptr %cmdsts162.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 1540, ptr %cmdsts162.i, align 4
  %106 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %add.ptr.i, align 4
  %dev164.i = getelementptr inbounds %struct.pci_dev, ptr %107, i32 0, i32 44
  %data165.i = getelementptr inbounds %struct.sk_buff, ptr %call.i4.i, i32 0, i32 19
  %108 = ptrtoint ptr %data165.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %data165.i, align 4
  %call.i5.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %109) #14
  br i1 %call.i5.i, label %land.rhs.i7.i, label %if.end39.i20.i

land.rhs.i7.i:                                    ; preds = %if.end157.i
  %.b1.i6.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i6.i, label %land.rhs.i7.i.dma_map_single_attrs.exit22.i_crit_edge, label %if.then.i11.i, !prof !266

land.rhs.i7.i.dma_map_single_attrs.exit22.i_crit_edge: ; preds = %land.rhs.i7.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %dma_map_single_attrs.exit22.i

if.then.i11.i:                                    ; preds = %land.rhs.i7.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i8.i = tail call ptr @dev_driver_string(ptr noundef %dev164.i) #14
  %init_name.i.i9.i = getelementptr inbounds %struct.pci_dev, ptr %107, i32 0, i32 44, i32 3
  %110 = ptrtoint ptr %init_name.i.i9.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %init_name.i.i9.i, align 8
  %tobool.not.i.i10.i = icmp eq ptr %111, null
  br i1 %tobool.not.i.i10.i, label %if.end.i.i12.i, label %if.then.i11.i.dev_name.exit.i14.i_crit_edge

if.then.i11.i.dev_name.exit.i14.i_crit_edge:      ; preds = %if.then.i11.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %dev_name.exit.i14.i

if.end.i.i12.i:                                   ; preds = %if.then.i11.i
  call void @__sanitizer_cov_trace_pc() #16
  %112 = ptrtoint ptr %dev164.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %dev164.i, align 4
  br label %dev_name.exit.i14.i

dev_name.exit.i14.i:                              ; preds = %if.end.i.i12.i, %if.then.i11.i.dev_name.exit.i14.i_crit_edge
  %retval.0.i.i13.i = phi ptr [ %113, %if.end.i.i12.i ], [ %111, %if.then.i11.i.dev_name.exit.i14.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.41, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.42, ptr noundef %call16.i8.i, ptr noundef %retval.0.i.i13.i) #14
  br label %dma_map_single_attrs.exit22.i

if.end39.i20.i:                                   ; preds = %if.end157.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @debug_dma_map_single(ptr noundef %dev164.i, ptr noundef %109, i32 noundef 1540) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %114 = load ptr, ptr @mem_map, align 4
  %115 = ptrtoint ptr %109 to i32
  %sub.i15.i = add i32 %115, 1073741824
  %shr.i16.i = lshr i32 %sub.i15.i, 12
  %add.ptr.i17.i = getelementptr %struct.page, ptr %114, i32 %shr.i16.i
  %and.i18.i = and i32 %115, 4095
  %call41.i19.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev164.i, ptr noundef %add.ptr.i17.i, i32 noundef %and.i18.i, i32 noundef 1540, i32 noundef 2, i32 noundef 0) #14
  br label %dma_map_single_attrs.exit22.i

dma_map_single_attrs.exit22.i:                    ; preds = %if.end39.i20.i, %dev_name.exit.i14.i, %land.rhs.i7.i.dma_map_single_attrs.exit22.i_crit_edge
  %retval.0.i21.i = phi i32 [ %call41.i19.i, %if.end39.i20.i ], [ -1, %dev_name.exit.i14.i ], [ -1, %land.rhs.i7.i.dma_map_single_attrs.exit22.i_crit_edge ]
  %116 = ptrtoint ptr %rx_ring.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %rx_ring.i, align 4
  %bufptr169.i = getelementptr %struct._BufferDesc, ptr %117, i32 %rem146.i, i32 2
  %118 = ptrtoint ptr %bufptr169.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 %retval.0.i21.i, ptr %bufptr169.i, align 4
  %119 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %add.ptr.i, align 4
  %dev171.i = getelementptr inbounds %struct.pci_dev, ptr %120, i32 0, i32 44
  %121 = load ptr, ptr %rx_ring.i, align 4
  %bufptr174.i = getelementptr %struct._BufferDesc, ptr %121, i32 %rem146.i, i32 2
  %122 = ptrtoint ptr %bufptr174.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %bufptr174.i, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %dev171.i, i32 noundef %123) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %123)
  %cmp.i23.not.i = icmp eq i32 %123, -1
  br i1 %cmp.i23.not.i, label %if.then183.i, label %dma_map_single_attrs.exit22.i.for.inc.i_crit_edge, !prof !267

dma_map_single_attrs.exit22.i.for.inc.i_crit_edge: ; preds = %dma_map_single_attrs.exit22.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

if.then183.i:                                     ; preds = %dma_map_single_attrs.exit22.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @__dev_kfree_skb_irq(ptr noundef nonnull %call.i4.i, i32 noundef 1) #14
  %124 = ptrtoint ptr %arrayidx148.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr null, ptr %arrayidx148.i, align 4
  br label %sis900_rx.exit

for.inc.i:                                        ; preds = %dma_map_single_attrs.exit22.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %125 = ptrtoint ptr %dirty_rx.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %dirty_rx.i, align 4
  %inc192.i = add i32 %126, 1
  store i32 %inc192.i, ptr %dirty_rx.i, align 4
  %127 = ptrtoint ptr %cur_rx.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %cur_rx.i, align 4
  %cmp143.not.i = icmp eq i32 %128, %inc192.i
  br i1 %cmp143.not.i, label %for.inc.i.sis900_rx.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.inc.i.sis900_rx.exit_crit_edge:               ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sis900_rx.exit

sis900_rx.exit:                                   ; preds = %for.inc.i.sis900_rx.exit_crit_edge, %if.then183.i, %if.then153.i, %while.end.i.sis900_rx.exit_crit_edge
  %129 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #14, !srcloc !255
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !256
  %130 = or i32 %129, 67108864
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !257
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %130) #14, !srcloc !258
  br label %if.end6

if.end6:                                          ; preds = %sis900_rx.exit, %if.end.if.end6_crit_edge
  %and7 = and i32 %7, 1408
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.end6.if.end10_crit_edge, label %if.then9

if.end6.if.end10_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end10

if.then9:                                         ; preds = %if.end6
  %131 = ptrtoint ptr %dirty_tx.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %dirty_tx.i, align 4
  %133 = ptrtoint ptr %cur_tx.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %cur_tx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %132, i32 %134)
  %cmp.not110.i = icmp eq i32 %132, %134
  br i1 %cmp.not110.i, label %if.then9.for.end.i_crit_edge, label %if.then9.for.body.i75_crit_edge

if.then9.for.body.i75_crit_edge:                  ; preds = %if.then9
  br label %for.body.i75

if.then9.for.end.i_crit_edge:                     ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i

for.body.i75:                                     ; preds = %for.inc.i88.for.body.i75_crit_edge, %if.then9.for.body.i75_crit_edge
  %135 = phi i32 [ %inc57.i, %for.inc.i88.for.body.i75_crit_edge ], [ %132, %if.then9.for.body.i75_crit_edge ]
  %rem.i72 = and i32 %135, 15
  %136 = ptrtoint ptr %tx_ring.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %tx_ring.i, align 4
  %cmdsts.i73 = getelementptr %struct._BufferDesc, ptr %137, i32 %rem.i72, i32 1
  %138 = ptrtoint ptr %cmdsts.i73 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %cmdsts.i73, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %139)
  %tobool.not.i74 = icmp sgt i32 %139, -1
  br i1 %tobool.not.i74, label %if.end.i76, label %for.body.i75.for.end.i_crit_edge

for.body.i75.for.end.i_crit_edge:                 ; preds = %for.body.i75
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i

if.end.i76:                                       ; preds = %for.body.i75
  %and3.i = and i32 %139, 102760448
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool4.not.i = icmp eq i32 %and3.i, 0
  br i1 %tobool4.not.i, label %if.else.i85, label %if.then5.i

if.then5.i:                                       ; preds = %if.end.i76
  %140 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %msg_enable.i, align 4
  %and6.i = and i32 %141, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %tobool7.not.i = icmp eq i32 %and6.i, 0
  br i1 %tobool7.not.i, label %if.then5.i.if.end10.i80_crit_edge, label %do.end.i77

if.then5.i.if.end10.i80_crit_edge:                ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end10.i80

do.end.i77:                                       ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #16
  %call9.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef %dev_instance, i32 noundef %139) #17
  br label %if.end10.i80

if.end10.i80:                                     ; preds = %do.end.i77, %if.then5.i.if.end10.i80_crit_edge
  %142 = ptrtoint ptr %tx_errors.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %tx_errors.i, align 4
  %inc.i78 = add i32 %143, 1
  store i32 %inc.i78, ptr %tx_errors.i, align 4
  %and11.i79 = and i32 %139, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i79)
  %tobool12.not.i = icmp eq i32 %and11.i79, 0
  br i1 %tobool12.not.i, label %if.end10.i80.if.end16.i_crit_edge, label %if.then13.i

if.end10.i80.if.end16.i_crit_edge:                ; preds = %if.end10.i80
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end16.i

if.then13.i:                                      ; preds = %if.end10.i80
  call void @__sanitizer_cov_trace_pc() #16
  %144 = ptrtoint ptr %tx_fifo_errors.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %tx_fifo_errors.i, align 8
  %inc15.i = add i32 %145, 1
  store i32 %inc15.i, ptr %tx_fifo_errors.i, align 8
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.then13.i, %if.end10.i80.if.end16.i_crit_edge
  %and17.i81 = and i32 %139, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i81)
  %tobool18.not.i = icmp eq i32 %and17.i81, 0
  br i1 %tobool18.not.i, label %if.end16.i.if.end22.i_crit_edge, label %if.then19.i

if.end16.i.if.end22.i_crit_edge:                  ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end22.i

if.then19.i:                                      ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #16
  %146 = ptrtoint ptr %tx_aborted_errors.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %tx_aborted_errors.i, align 8
  %inc21.i = add i32 %147, 1
  store i32 %inc21.i, ptr %tx_aborted_errors.i, align 8
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.then19.i, %if.end16.i.if.end22.i_crit_edge
  %and23.i82 = and i32 %139, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23.i82)
  %tobool24.not.i83 = icmp eq i32 %and23.i82, 0
  br i1 %tobool24.not.i83, label %if.end22.i.if.end28.i_crit_edge, label %if.then25.i

if.end22.i.if.end28.i_crit_edge:                  ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end28.i

if.then25.i:                                      ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #16
  %148 = ptrtoint ptr %tx_carrier_errors.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %tx_carrier_errors.i, align 4
  %inc27.i = add i32 %149, 1
  store i32 %inc27.i, ptr %tx_carrier_errors.i, align 4
  br label %if.end28.i

if.end28.i:                                       ; preds = %if.then25.i, %if.end22.i.if.end28.i_crit_edge
  %and29.i = and i32 %139, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29.i)
  %tobool30.not.i = icmp eq i32 %and29.i, 0
  br i1 %tobool30.not.i, label %if.end28.i.for.inc.i88_crit_edge, label %if.then31.i

if.end28.i.for.inc.i88_crit_edge:                 ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i88

if.then31.i:                                      ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #16
  %150 = ptrtoint ptr %tx_window_errors.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %tx_window_errors.i, align 8
  %inc33.i = add i32 %151, 1
  store i32 %inc33.i, ptr %tx_window_errors.i, align 8
  br label %for.inc.i88

if.else.i85:                                      ; preds = %if.end.i76
  call void @__sanitizer_cov_trace_pc() #16
  %and35.i = lshr i32 %139, 16
  %shr.i = and i32 %and35.i, 15
  %152 = ptrtoint ptr %collisions.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %collisions.i, align 4
  %add.i84 = add i32 %153, %shr.i
  store i32 %add.i84, ptr %collisions.i, align 4
  %and37.i = and i32 %139, 4095
  %154 = ptrtoint ptr %tx_bytes.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %tx_bytes.i, align 4
  %add39.i = add i32 %155, %and37.i
  store i32 %add39.i, ptr %tx_bytes.i, align 4
  %156 = ptrtoint ptr %tx_packets.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %tx_packets.i, align 4
  %inc41.i = add i32 %157, 1
  store i32 %inc41.i, ptr %tx_packets.i, align 4
  br label %for.inc.i88

for.inc.i88:                                      ; preds = %if.else.i85, %if.then31.i, %if.end28.i.for.inc.i88_crit_edge
  %arrayidx43.i = getelementptr %struct.sis900_private, ptr %add.ptr.i, i32 0, i32 14, i32 %rem.i72
  %158 = ptrtoint ptr %arrayidx43.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %arrayidx43.i, align 4
  %160 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %add.ptr.i, align 4
  %dev.i86 = getelementptr inbounds %struct.pci_dev, ptr %161, i32 0, i32 44
  %162 = ptrtoint ptr %tx_ring.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %tx_ring.i, align 4
  %bufptr.i87 = getelementptr %struct._BufferDesc, ptr %163, i32 %rem.i72, i32 2
  %164 = ptrtoint ptr %bufptr.i87 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %bufptr.i87, align 4
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %159, i32 0, i32 6
  %166 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %len.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev.i86, i32 noundef %165, i32 noundef %167, i32 noundef 1, i32 noundef 0) #14
  tail call void @__dev_kfree_skb_irq(ptr noundef %159, i32 noundef 0) #14
  %168 = ptrtoint ptr %arrayidx43.i to i32
  call void @__asan_store4_noabort(i32 %168)
  store ptr null, ptr %arrayidx43.i, align 4
  %169 = ptrtoint ptr %tx_ring.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %tx_ring.i, align 4
  %bufptr50.i = getelementptr %struct._BufferDesc, ptr %170, i32 %rem.i72, i32 2
  %171 = ptrtoint ptr %bufptr50.i to i32
  call void @__asan_store4_noabort(i32 %171)
  store i32 0, ptr %bufptr50.i, align 4
  %172 = load ptr, ptr %tx_ring.i, align 4
  %cmdsts53.i = getelementptr %struct._BufferDesc, ptr %172, i32 %rem.i72, i32 1
  %173 = ptrtoint ptr %cmdsts53.i to i32
  call void @__asan_store4_noabort(i32 %173)
  store i32 0, ptr %cmdsts53.i, align 4
  %174 = ptrtoint ptr %dirty_tx.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %dirty_tx.i, align 4
  %inc57.i = add i32 %175, 1
  store i32 %inc57.i, ptr %dirty_tx.i, align 4
  %176 = ptrtoint ptr %cur_tx.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %cur_tx.i, align 4
  %cmp.not.i = icmp eq i32 %inc57.i, %177
  br i1 %cmp.not.i, label %for.inc.i88.for.end.i_crit_edge, label %for.inc.i88.for.body.i75_crit_edge

for.inc.i88.for.body.i75_crit_edge:               ; preds = %for.inc.i88
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i75

for.inc.i88.for.end.i_crit_edge:                  ; preds = %for.inc.i88
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i88.for.end.i_crit_edge, %for.body.i75.for.end.i_crit_edge, %if.then9.for.end.i_crit_edge
  %178 = ptrtoint ptr %tx_full.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %tx_full.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %179)
  %tobool58.not.i = icmp eq i32 %179, 0
  br i1 %tobool58.not.i, label %for.end.i.if.end10_crit_edge, label %land.lhs.true.i

for.end.i.if.end10_crit_edge:                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end10

land.lhs.true.i:                                  ; preds = %for.end.i
  %180 = ptrtoint ptr %_tx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %_tx.i.i.i, align 128
  %state.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %181, i32 0, i32 13
  %182 = ptrtoint ptr %state.i.i.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load volatile i32, ptr %state.i.i.i, align 4
  %and1.i.i.i.i = and i32 %183, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i)
  %tobool.i.i.not.i = icmp eq i32 %and1.i.i.i.i, 0
  br i1 %tobool.i.i.not.i, label %land.lhs.true.i.if.end10_crit_edge, label %land.lhs.true60.i

land.lhs.true.i.if.end10_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end10

land.lhs.true60.i:                                ; preds = %land.lhs.true.i
  %184 = ptrtoint ptr %cur_tx.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %cur_tx.i, align 4
  %186 = ptrtoint ptr %dirty_tx.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %dirty_tx.i, align 4
  %sub.i89 = sub i32 %185, %187
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %sub.i89)
  %cmp63.i = icmp ult i32 %sub.i89, 12
  br i1 %cmp63.i, label %if.then64.i, label %land.lhs.true60.i.if.end10_crit_edge

land.lhs.true60.i.if.end10_crit_edge:             ; preds = %land.lhs.true60.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end10

if.then64.i:                                      ; preds = %land.lhs.true60.i
  call void @__sanitizer_cov_trace_pc() #16
  %188 = ptrtoint ptr %tx_full.i to i32
  call void @__asan_store4_noabort(i32 %188)
  store i32 0, ptr %tx_full.i, align 4
  tail call void @netif_tx_wake_queue(ptr noundef %181) #14
  br label %if.end10

if.end10:                                         ; preds = %if.then64.i, %land.lhs.true60.i.if.end10_crit_edge, %land.lhs.true.i.if.end10_crit_edge, %for.end.i.if.end10_crit_edge, %if.end6.if.end10_crit_edge
  %and11 = and i32 %7, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.end20, label %if.then13

if.then13:                                        ; preds = %if.end10
  %189 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %msg_enable.i, align 4
  %and14 = and i32 %190, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %if.then13.do.end37_crit_edge, label %if.then13.do.end37.sink.split_crit_edge

if.then13.do.end37.sink.split_crit_edge:          ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end37.sink.split

if.then13.do.end37_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end37

if.end20:                                         ; preds = %if.end10
  %dec = add i32 %boguscnt.0104, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp21 = icmp slt i32 %dec, 0
  br i1 %cmp21, label %if.then22, label %do.body

if.then22:                                        ; preds = %if.end20
  %191 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %msg_enable.i, align 4
  %and24 = and i32 %192, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %if.then22.do.end37_crit_edge, label %if.then22.do.end37.sink.split_crit_edge

if.then22.do.end37.sink.split_crit_edge:          ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end37.sink.split

if.then22.do.end37_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end37

do.end37.sink.split:                              ; preds = %if.then22.do.end37.sink.split_crit_edge, %if.then13.do.end37.sink.split_crit_edge
  %.str.28.sink = phi ptr [ @.str.25, %if.then13.do.end37.sink.split_crit_edge ], [ @.str.28, %if.then22.do.end37.sink.split_crit_edge ]
  %call33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.28.sink, ptr noundef %dev_instance, i32 noundef %7) #17
  br label %do.end37

do.end37:                                         ; preds = %do.end37.sink.split, %if.then22.do.end37_crit_edge, %if.then13.do.end37_crit_edge, %do.body.do.end37_crit_edge, %entry.do.end37_crit_edge
  %msg_enable38 = getelementptr i8, ptr %dev_instance, i32 2452
  %193 = ptrtoint ptr %msg_enable38 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %msg_enable38, align 4
  %and39 = and i32 %194, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39)
  %tobool40.not = icmp eq i32 %and39, 0
  br i1 %tobool40.not, label %do.end37.if.end51_crit_edge, label %do.end44

do.end37.if.end51_crit_edge:                      ; preds = %do.end37
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end51

do.end44:                                         ; preds = %do.end37
  call void @__sanitizer_cov_trace_pc() #16
  %195 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #14, !srcloc !255
  %196 = tail call i32 @llvm.bswap.i32(i32 %195) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !256
  %call50 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %dev_instance, i32 noundef %196) #17
  br label %if.end51

if.end51:                                         ; preds = %do.end44, %do.end37.if.end51_crit_edge
  %197 = xor i1 %cmp103, true
  tail call void @_raw_spin_unlock(ptr noundef %lock) #14
  %cond = zext i1 %197 to i32
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sis900_init_rxfilter(ptr noundef %net_dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %ioaddr1 = getelementptr i8, ptr %net_dev, i32 2396
  %0 = ptrtoint ptr %ioaddr1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ioaddr1, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 72
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #14, !srcloc !255
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !256
  %and = and i32 %3, 2147483647
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !257
  tail call void @arm_heavy_mb() #14
  %4 = tail call i32 @llvm.bswap.i32(i32 %and) #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %4) #14, !srcloc !258
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %net_dev, i32 0, i32 86
  %add.ptr6 = getelementptr i8, ptr %1, i32 76
  %msg_enable = getelementptr i8, ptr %net_dev, i32 2452
  %5 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev_addr, align 64
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %6, align 2
  %conv = zext i16 %8 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !257
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #14, !srcloc !258
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !257
  tail call void @arm_heavy_mb() #14
  %9 = tail call i32 @llvm.bswap.i32(i32 %conv) #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 %9) #14, !srcloc !258
  %10 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %msg_enable, align 4
  %and7 = and i32 %11, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool.not = icmp eq i32 %and7, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6) #14, !srcloc !255
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !256
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, ptr noundef %net_dev, i32 noundef 0, i32 noundef %13) #17
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %14 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev_addr, align 64
  %add.ptr4.1 = getelementptr i16, ptr %15, i32 1
  %16 = ptrtoint ptr %add.ptr4.1 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %add.ptr4.1, align 2
  %conv.1 = zext i16 %17 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !257
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 256) #14, !srcloc !258
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !257
  tail call void @arm_heavy_mb() #14
  %18 = tail call i32 @llvm.bswap.i32(i32 %conv.1) #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 %18) #14, !srcloc !258
  %19 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %msg_enable, align 4
  %and7.1 = and i32 %20, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.1)
  %tobool.not.1 = icmp eq i32 %and7.1, 0
  br i1 %tobool.not.1, label %if.end.if.end.1_crit_edge, label %do.end.1

if.end.if.end.1_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.1

do.end.1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6) #14, !srcloc !255
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !256
  %call10.1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, ptr noundef %net_dev, i32 noundef 1, i32 noundef %22) #17
  br label %if.end.1

if.end.1:                                         ; preds = %do.end.1, %if.end.if.end.1_crit_edge
  %23 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev_addr, align 64
  %add.ptr4.2 = getelementptr i16, ptr %24, i32 2
  %25 = ptrtoint ptr %add.ptr4.2 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %add.ptr4.2, align 2
  %conv.2 = zext i16 %26 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !257
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 512) #14, !srcloc !258
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !257
  tail call void @arm_heavy_mb() #14
  %27 = tail call i32 @llvm.bswap.i32(i32 %conv.2) #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 %27) #14, !srcloc !258
  %28 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %msg_enable, align 4
  %and7.2 = and i32 %29, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.2)
  %tobool.not.2 = icmp eq i32 %and7.2, 0
  br i1 %tobool.not.2, label %if.end.1.if.end.2_crit_edge, label %do.end.2

if.end.1.if.end.2_crit_edge:                      ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.2

do.end.2:                                         ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #16
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6) #14, !srcloc !255
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !256
  %call10.2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, ptr noundef %net_dev, i32 noundef 2, i32 noundef %31) #17
  br label %if.end.2

if.end.2:                                         ; preds = %do.end.2, %if.end.1.if.end.2_crit_edge
  %or = or i32 %3, -2147483648
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !257
  tail call void @arm_heavy_mb() #14
  %32 = tail call i32 @llvm.bswap.i32(i32 %or) #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %32) #14, !srcloc !258
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sis900_init_tx_ring(ptr noundef %net_dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %net_dev, i32 2304
  %ioaddr1 = getelementptr i8, ptr %net_dev, i32 2396
  %0 = ptrtoint ptr %ioaddr1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ioaddr1, align 4
  %tx_full = getelementptr i8, ptr %net_dev, i32 2616
  %2 = ptrtoint ptr %tx_full to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %tx_full, align 4
  %cur_tx = getelementptr i8, ptr %net_dev, i32 2464
  %3 = ptrtoint ptr %cur_tx to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %cur_tx, align 4
  %dirty_tx = getelementptr i8, ptr %net_dev, i32 2468
  %4 = ptrtoint ptr %dirty_tx to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %dirty_tx, align 4
  %tx_ring_dma = getelementptr i8, ptr %net_dev, i32 2608
  %tx_ring = getelementptr i8, ptr %net_dev, i32 2600
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.030 = phi i32 [ 0, %entry ], [ %add, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.sis900_private, ptr %add.ptr.i, i32 0, i32 14, i32 %i.030
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %arrayidx, align 4
  %6 = ptrtoint ptr %tx_ring_dma to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tx_ring_dma, align 4
  %add = add nuw nsw i32 %i.030, 1
  %rem = and i32 %add, 15
  %mul = mul nuw nsw i32 %rem, 12
  %add2 = add i32 %7, %mul
  %8 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tx_ring, align 4
  %arrayidx3 = getelementptr %struct._BufferDesc, ptr %9, i32 %i.030
  %10 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %add2, ptr %arrayidx3, align 4
  %11 = load ptr, ptr %tx_ring, align 4
  %cmdsts = getelementptr %struct._BufferDesc, ptr %11, i32 %i.030, i32 1
  %12 = ptrtoint ptr %cmdsts to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %cmdsts, align 4
  %13 = load ptr, ptr %tx_ring, align 4
  %bufptr = getelementptr %struct._BufferDesc, ptr %13, i32 %i.030, i32 2
  %14 = ptrtoint ptr %bufptr to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %bufptr, align 4
  %exitcond.not = icmp eq i32 %add, 16
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.end:                                          ; preds = %for.body
  %15 = ptrtoint ptr %tx_ring_dma to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %tx_ring_dma, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !257
  tail call void @arm_heavy_mb() #14
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %17) #14, !srcloc !258
  %msg_enable = getelementptr i8, ptr %net_dev, i32 2452
  %18 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %msg_enable, align 4
  %and = and i32 %19, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.end.if.end_crit_edge, label %do.end

for.end.if.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

do.end:                                           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #14, !srcloc !255
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !256
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, ptr noundef %net_dev, i32 noundef %21) #17
  br label %if.end

if.end:                                           ; preds = %do.end, %for.end.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sis900_init_rx_ring(ptr noundef %net_dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %net_dev, i32 2304
  %ioaddr1 = getelementptr i8, ptr %net_dev, i32 2396
  %0 = ptrtoint ptr %ioaddr1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ioaddr1, align 4
  %cur_rx = getelementptr i8, ptr %net_dev, i32 2456
  %2 = ptrtoint ptr %cur_rx to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %cur_rx, align 4
  %dirty_rx = getelementptr i8, ptr %net_dev, i32 2460
  %3 = ptrtoint ptr %dirty_rx to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %dirty_rx, align 4
  %rx_ring_dma = getelementptr i8, ptr %net_dev, i32 2612
  %rx_ring = getelementptr i8, ptr %net_dev, i32 2604
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.087 = phi i32 [ 0, %entry ], [ %add, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.sis900_private, ptr %add.ptr.i, i32 0, i32 15, i32 %i.087
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %arrayidx, align 4
  %5 = ptrtoint ptr %rx_ring_dma to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %rx_ring_dma, align 4
  %add = add nuw nsw i32 %i.087, 1
  %rem = and i32 %add, 15
  %mul = mul nuw nsw i32 %rem, 12
  %add2 = add i32 %6, %mul
  %7 = ptrtoint ptr %rx_ring to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rx_ring, align 4
  %arrayidx3 = getelementptr %struct._BufferDesc, ptr %8, i32 %i.087
  %9 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %add2, ptr %arrayidx3, align 4
  %10 = load ptr, ptr %rx_ring, align 4
  %cmdsts = getelementptr %struct._BufferDesc, ptr %10, i32 %i.087, i32 1
  %11 = ptrtoint ptr %cmdsts to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %cmdsts, align 4
  %12 = load ptr, ptr %rx_ring, align 4
  %bufptr = getelementptr %struct._BufferDesc, ptr %12, i32 %i.087, i32 2
  %13 = ptrtoint ptr %bufptr to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %bufptr, align 4
  %exitcond.not = icmp eq i32 %add, 16
  br i1 %exitcond.not, label %for.body.for.body10_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.body.for.body10_crit_edge:                    ; preds = %for.body
  br label %for.body10

for.body10:                                       ; preds = %for.inc34.for.body10_crit_edge, %for.body.for.body10_crit_edge
  %i.188 = phi i32 [ %inc35, %for.inc34.for.body10_crit_edge ], [ 0, %for.body.for.body10_crit_edge ]
  %call.i = tail call ptr @__netdev_alloc_skb(ptr noundef %net_dev, i32 noundef 1540, i32 noundef 2592) #14
  %cmp12 = icmp eq ptr %call.i, null
  br i1 %cmp12, label %for.body10.for.end36_crit_edge, label %if.end

for.body10.for.end36_crit_edge:                   ; preds = %for.body10
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end36

if.end:                                           ; preds = %for.body10
  %arrayidx14 = getelementptr %struct.sis900_private, ptr %add.ptr.i, i32 0, i32 15, i32 %i.188
  %14 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call.i, ptr %arrayidx14, align 4
  %15 = ptrtoint ptr %rx_ring to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rx_ring, align 4
  %cmdsts17 = getelementptr %struct._BufferDesc, ptr %16, i32 %i.188, i32 1
  %17 = ptrtoint ptr %cmdsts17 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1540, ptr %cmdsts17, align 4
  %18 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %add.ptr.i, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 44
  %data = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %20 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %data, align 4
  %call.i81 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %21) #14
  br i1 %call.i81, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %if.end
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit_crit_edge, label %if.then.i, !prof !266

land.rhs.i.dma_map_single_attrs.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %dma_map_single_attrs.exit

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %dev) #14
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 44, i32 3
  %22 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %23, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  %24 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %25, %if.end.i.i ], [ %23, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.41, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.42, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #14
  br label %dma_map_single_attrs.exit

if.end39.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @debug_dma_map_single(ptr noundef %dev, ptr noundef %21, i32 noundef 1540) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %26 = load ptr, ptr @mem_map, align 4
  %27 = ptrtoint ptr %21 to i32
  %sub.i = add i32 %27, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i82 = getelementptr %struct.page, ptr %26, i32 %shr.i
  %and.i = and i32 %27, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev, ptr noundef %add.ptr.i82, i32 noundef %and.i, i32 noundef 1540, i32 noundef 2, i32 noundef 0) #14
  br label %dma_map_single_attrs.exit

dma_map_single_attrs.exit:                        ; preds = %if.end39.i, %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit_crit_edge
  %retval.0.i = phi i32 [ %call41.i, %if.end39.i ], [ -1, %dev_name.exit.i ], [ -1, %land.rhs.i.dma_map_single_attrs.exit_crit_edge ]
  %28 = ptrtoint ptr %rx_ring to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %rx_ring, align 4
  %bufptr21 = getelementptr %struct._BufferDesc, ptr %29, i32 %i.188, i32 2
  %30 = ptrtoint ptr %bufptr21 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %retval.0.i, ptr %bufptr21, align 4
  %31 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %add.ptr.i, align 4
  %dev23 = getelementptr inbounds %struct.pci_dev, ptr %32, i32 0, i32 44
  %33 = load ptr, ptr %rx_ring, align 4
  %bufptr26 = getelementptr %struct._BufferDesc, ptr %33, i32 %i.188, i32 2
  %34 = ptrtoint ptr %bufptr26 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %bufptr26, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %dev23, i32 noundef %35) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %35)
  %cmp.i.not = icmp eq i32 %35, -1
  br i1 %cmp.i.not, label %if.then30, label %for.inc34, !prof !267

if.then30:                                        ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @consume_skb(ptr noundef nonnull %call.i) #14
  %36 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %arrayidx14, align 4
  br label %for.end36

for.inc34:                                        ; preds = %dma_map_single_attrs.exit
  %inc35 = add nuw nsw i32 %i.188, 1
  %exitcond91.not = icmp eq i32 %inc35, 16
  br i1 %exitcond91.not, label %for.inc34.for.end36_crit_edge, label %for.inc34.for.body10_crit_edge

for.inc34.for.body10_crit_edge:                   ; preds = %for.inc34
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body10

for.inc34.for.end36_crit_edge:                    ; preds = %for.inc34
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end36

for.end36:                                        ; preds = %for.inc34.for.end36_crit_edge, %if.then30, %for.body10.for.end36_crit_edge
  %i.186 = phi i32 [ %i.188, %if.then30 ], [ 16, %for.inc34.for.end36_crit_edge ], [ %i.188, %for.body10.for.end36_crit_edge ]
  %sub = add nsw i32 %i.186, -16
  %37 = ptrtoint ptr %dirty_rx to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %sub, ptr %dirty_rx, align 4
  %38 = ptrtoint ptr %rx_ring_dma to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %rx_ring_dma, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !257
  tail call void @arm_heavy_mb() #14
  %40 = tail call i32 @llvm.bswap.i32(i32 %39) #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %40) #14, !srcloc !258
  %msg_enable = getelementptr i8, ptr %net_dev, i32 2452
  %41 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %msg_enable, align 4
  %and = and i32 %42, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool39.not = icmp eq i32 %and, 0
  br i1 %tobool39.not, label %for.end36.if.end44_crit_edge, label %do.end

for.end36.if.end44_crit_edge:                     ; preds = %for.end36
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end44

do.end:                                           ; preds = %for.end36
  call void @__sanitizer_cov_trace_pc() #16
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #14, !srcloc !255
  %44 = tail call i32 @llvm.bswap.i32(i32 %43) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !256
  %call43 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef %net_dev, i32 noundef %44) #17
  br label %if.end44

if.end44:                                         ; preds = %do.end, %for.end36.if.end44_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sis900_check_mode(ptr noundef %net_dev, ptr nocapture noundef readonly %mii_phy) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %ioaddr1 = getelementptr i8, ptr %net_dev, i32 2396
  %0 = ptrtoint ptr %ioaddr1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ioaddr1, align 4
  %phy_types = getelementptr inbounds %struct.mii_phy, ptr %mii_phy, i32 0, i32 5
  %2 = ptrtoint ptr %phy_types to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %phy_types, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %3)
  %cmp = icmp eq i8 %3, 2
  %add.ptr = getelementptr i8, ptr %1, i32 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = and i32 %4, -268435457
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !257
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %5) #14, !srcloc !258
  %phy_addr.i = getelementptr inbounds %struct.mii_phy, ptr %mii_phy, i32 0, i32 1
  %6 = ptrtoint ptr %phy_addr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %phy_addr.i, align 4
  %call.i = tail call i32 @mdio_read(ptr noundef %net_dev, i32 noundef %7, i32 noundef 1) #14
  %8 = ptrtoint ptr %phy_addr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %phy_addr.i, align 4
  %call2.i = tail call i32 @mdio_read(ptr noundef %net_dev, i32 noundef %9, i32 noundef 1) #14
  %status.i = getelementptr inbounds %struct.mii_phy, ptr %mii_phy, i32 0, i32 4
  %10 = ptrtoint ptr %status.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %status.i, align 4
  %and.i = lshr i16 %11, 6
  %or14.i = and i16 %and.i, 480
  %or20.i = or i16 %or14.i, 1
  %12 = ptrtoint ptr %phy_addr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %phy_addr.i, align 4
  %conv23.i = zext i16 %or20.i to i32
  tail call void @mdio_write(ptr noundef %net_dev, i32 noundef %13, i32 noundef 4, i32 noundef %conv23.i) #14
  %cur_phy = getelementptr i8, ptr %net_dev, i32 2360
  %14 = ptrtoint ptr %cur_phy to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cur_phy, align 4
  %call1.i = tail call i32 @mdio_read(ptr noundef %net_dev, i32 noundef %15, i32 noundef 1) #14
  %call1.1.i = tail call i32 @mdio_read(ptr noundef %net_dev, i32 noundef %15, i32 noundef 1) #14
  %phi.bo.le.i = and i32 %call1.1.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %phi.bo.le.i)
  %tobool.not.i = icmp eq i32 %phi.bo.le.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end6.i

if.then.i:                                        ; preds = %if.then
  %msg_enable.i = getelementptr i8, ptr %net_dev, i32 2452
  %16 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %msg_enable.i, align 4
  %and2.i = and i32 %17, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp eq i32 %and2.i, 0
  br i1 %tobool3.not.i, label %if.then.i.if.end.i_crit_edge, label %do.end.i

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  %call5.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, ptr noundef %net_dev) #17
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.then.i.if.end.i_crit_edge
  %autong_complete.i = getelementptr i8, ptr %net_dev, i32 2448
  %18 = ptrtoint ptr %autong_complete.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %autong_complete.i, align 4
  tail call void @netif_carrier_off(ptr noundef %net_dev) #14
  br label %if.end

if.end6.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @mdio_write(ptr noundef %net_dev, i32 noundef %15, i32 noundef 0, i32 noundef 4608) #14
  %autong_complete7.i = getelementptr i8, ptr %net_dev, i32 2448
  %19 = ptrtoint ptr %autong_complete7.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %autong_complete7.i, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %20 = or i32 %4, 268435456
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !257
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %20) #14, !srcloc !258
  %21 = ptrtoint ptr %ioaddr1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ioaddr1, align 4
  %add.ptr.i17 = getelementptr i8, ptr %22, i32 4
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i17) #14, !srcloc !255
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !256
  %24 = and i32 %23, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.not.i18 = icmp eq i32 %24, 0
  %or7.i = select i1 %tobool.not.i18, i32 268439568, i32 273682448
  %or14.i19 = select i1 %tobool.not.i18, i32 134217776, i32 139460656
  %add.ptr15.i = getelementptr i8, ptr %22, i32 36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !257
  tail call void @arm_heavy_mb() #14
  %25 = tail call i32 @llvm.bswap.i32(i32 %or7.i) #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15.i, i32 %25) #14, !srcloc !258
  %add.ptr16.i = getelementptr i8, ptr %22, i32 52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !257
  tail call void @arm_heavy_mb() #14
  %26 = tail call i32 @llvm.bswap.i32(i32 %or14.i19) #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16.i, i32 %26) #14, !srcloc !258
  %autong_complete = getelementptr i8, ptr %net_dev, i32 2448
  %27 = ptrtoint ptr %autong_complete to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 1, ptr %autong_complete, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.end6.i, %if.end.i
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sis900_timer(ptr noundef %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr i8, ptr %t, i32 -16
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %mii = getelementptr i8, ptr %t, i32 -48
  %2 = ptrtoint ptr %mii to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mii, align 4
  %cur_phy = getelementptr i8, ptr %t, i32 -40
  %4 = ptrtoint ptr %cur_phy to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cur_phy, align 4
  %call = tail call i32 @mdio_read(ptr noundef %1, i32 noundef %5, i32 noundef 1)
  %6 = ptrtoint ptr %cur_phy to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cur_phy, align 4
  %call2 = tail call i32 @mdio_read(ptr noundef %1, i32 noundef %7, i32 noundef 1)
  %state.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %8 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %state.i, align 4
  %10 = and i32 %9, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i = icmp eq i32 %10, 0
  br i1 %tobool.not.i, label %if.else, label %entry.LookForLink_crit_edge

entry.LookForLink_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %LookForLink

LookForLink:                                      ; preds = %if.end60, %entry.LookForLink_crit_edge
  %call5 = tail call fastcc zeroext i16 @sis900_default_phy(ptr noundef %1)
  %conv7 = zext i16 %call5 to i32
  %and = and i32 %conv7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %LookForLink.if.end63_crit_edge, label %if.then8

LookForLink.if.end63_crit_edge:                   ; preds = %LookForLink
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end63

if.then8:                                         ; preds = %LookForLink
  %and10 = and i32 %conv7, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %do.end, label %if.then8.if.end_crit_edge, !prof !267

if.then8.if.end_crit_edge:                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

do.end:                                           ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1335, i32 noundef 9, ptr noundef null) #14
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then8.if.end_crit_edge
  %mii.i = getelementptr i8, ptr %1, i32 2352
  %11 = ptrtoint ptr %mii.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mii.i, align 4
  %cur_phy.i = getelementptr i8, ptr %1, i32 2360
  %13 = ptrtoint ptr %cur_phy.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cur_phy.i, align 4
  %call1.i = tail call i32 @mdio_read(ptr noundef %1, i32 noundef %14, i32 noundef 1) #14
  %call1.1.i = tail call i32 @mdio_read(ptr noundef %1, i32 noundef %14, i32 noundef 1) #14
  %phi.bo.le.i = and i32 %call1.1.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %phi.bo.le.i)
  %tobool.not.i90 = icmp eq i32 %phi.bo.le.i, 0
  br i1 %tobool.not.i90, label %if.end.if.end63_crit_edge, label %if.end.i

if.end.if.end63_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end63

if.end.i:                                         ; preds = %if.end
  %call2.i = tail call i32 @mdio_read(ptr noundef %1, i32 noundef %14, i32 noundef 4) #14
  %call3.i = tail call i32 @mdio_read(ptr noundef %1, i32 noundef %14, i32 noundef 5) #14
  %conv6.i = and i32 %call2.i, 65535
  %and7.i = and i32 %conv6.i, %call3.i
  %and8.i = and i32 %and7.i, 384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i)
  %tobool9.not.i = icmp eq i32 %and8.i, 0
  %spec.select = select i1 %tobool9.not.i, i32 10, i32 100
  %and12.i = and i32 %and7.i, 320
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i)
  %tobool13.not.i = icmp eq i32 %and12.i, 0
  %duplex.0 = select i1 %tobool13.not.i, i32 1, i32 2
  %autong_complete.i = getelementptr i8, ptr %1, i32 2448
  %15 = ptrtoint ptr %autong_complete.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %autong_complete.i, align 4
  %phy_id0.i = getelementptr inbounds %struct.mii_phy, ptr %12, i32 0, i32 2
  %16 = ptrtoint ptr %phy_id0.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %phy_id0.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %cmp17.i = icmp eq i16 %17, 0
  br i1 %cmp17.i, label %land.lhs.true.i, label %if.end.i.if.end34.i_crit_edge

if.end.i.if.end34.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end34.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %phy_id1.i = getelementptr inbounds %struct.mii_phy, ptr %12, i32 0, i32 3
  %18 = ptrtoint ptr %phy_id1.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %phy_id1.i, align 2
  %20 = and i16 %19, -16
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32256, i16 %20)
  %cmp21.i = icmp eq i16 %20, -32256
  br i1 %cmp21.i, label %if.then23.i, label %land.lhs.true.i.if.end34.i_crit_edge

land.lhs.true.i.if.end34.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end34.i

if.then23.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  %call24.i = tail call i32 @mdio_read(ptr noundef %1, i32 noundef %14, i32 noundef 0) #14
  %and25.i = and i32 %call24.i, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i)
  %tobool26.not.i = icmp eq i32 %and25.i, 0
  %spec.select99 = select i1 %tobool26.not.i, i32 %duplex.0, i32 2
  %call29.i = tail call i32 @mdio_read(ptr noundef %1, i32 noundef %14, i32 noundef 25) #14
  %and30.i = and i32 %call29.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30.i)
  %tobool31.not.i = icmp eq i32 %and30.i, 0
  %spec.select102 = select i1 %tobool31.not.i, i32 %spec.select, i32 100
  br label %if.end34.i

if.end34.i:                                       ; preds = %if.then23.i, %land.lhs.true.i.if.end34.i_crit_edge, %if.end.i.if.end34.i_crit_edge
  %speed.1 = phi i32 [ %spec.select, %land.lhs.true.i.if.end34.i_crit_edge ], [ %spec.select, %if.end.i.if.end34.i_crit_edge ], [ %spec.select102, %if.then23.i ]
  %duplex.2 = phi i32 [ %duplex.0, %land.lhs.true.i.if.end34.i_crit_edge ], [ %duplex.0, %if.end.i.if.end34.i_crit_edge ], [ %spec.select99, %if.then23.i ]
  %msg_enable.i = getelementptr i8, ptr %1, i32 2452
  %21 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %msg_enable.i, align 4
  %and35.i = and i32 %22, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35.i)
  %tobool36.not.i = icmp eq i32 %and35.i, 0
  br i1 %tobool36.not.i, label %if.end34.i.if.then35_crit_edge, label %do.end.i

if.end34.i.if.then35_crit_edge:                   ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then35

do.end.i:                                         ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %speed.1)
  %cmp38.i = icmp eq i32 %speed.1, 100
  %cond.i = select i1 %cmp38.i, ptr @.str.58, ptr @.str.59
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %duplex.2)
  %cmp40.i = icmp eq i32 %duplex.2, 2
  %cond42.i = select i1 %cmp40.i, ptr @.str.60, ptr @.str.61
  %call43.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, ptr noundef %1, ptr noundef nonnull %cond.i, ptr noundef nonnull %cond42.i) #17
  br label %if.then35

if.then35:                                        ; preds = %do.end.i, %if.end34.i.if.then35_crit_edge
  %ioaddr1.i = getelementptr i8, ptr %t, i32 -4
  %23 = ptrtoint ptr %ioaddr1.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ioaddr1.i, align 4
  %add.ptr.i = getelementptr i8, ptr %24, i32 4
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #14, !srcloc !255
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !256
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %speed.1)
  %cond = icmp eq i32 %speed.1, 10
  %spec.select100 = select i1 %cond, i32 48, i32 32
  %spec.select101 = select i1 %cond, i32 16, i32 48
  %26 = and i32 %25, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.not.i91 = icmp eq i32 %26, 0
  %.27.i = select i1 %tobool.not.i91, i32 0, i32 5242880
  %..i = select i1 %tobool.not.i91, i32 268439552, i32 273682432
  %or6.i = or i32 %.27.i, %spec.select100
  %or7.i = or i32 %..i, %spec.select101
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %duplex.2)
  %cmp9.i = icmp eq i32 %duplex.2, 2
  %or11.i = or i32 %or7.i, -1073741824
  %or12.i = or i32 %or6.i, 268435456
  %tx_flags.2.i = select i1 %cmp9.i, i32 %or11.i, i32 %or7.i
  %rx_flags.2.i = select i1 %cmp9.i, i32 %or12.i, i32 %or6.i
  %or14.i = or i32 %rx_flags.2.i, 134217728
  %add.ptr15.i = getelementptr i8, ptr %24, i32 36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !257
  tail call void @arm_heavy_mb() #14
  %27 = tail call i32 @llvm.bswap.i32(i32 %tx_flags.2.i) #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15.i, i32 %27) #14, !srcloc !258
  %add.ptr16.i = getelementptr i8, ptr %24, i32 52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !257
  tail call void @arm_heavy_mb() #14
  %28 = tail call i32 @llvm.bswap.i32(i32 %or14.i) #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16.i, i32 %28) #14, !srcloc !258
  %chipset_rev = getelementptr i8, ptr %t, i32 221
  %29 = ptrtoint ptr %chipset_rev to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %chipset_rev, align 1
  tail call fastcc void @sis630_set_eq(ptr noundef %1, i8 noundef zeroext %30)
  tail call void @netif_carrier_on(ptr noundef %1) #14
  br label %if.end63

if.else:                                          ; preds = %entry
  %and39 = and i32 %call2, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39)
  %tobool40.not = icmp eq i32 %and39, 0
  br i1 %tobool40.not, label %if.then41, label %if.else.if.end63_crit_edge

if.else.if.end63_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end63

if.then41:                                        ; preds = %if.else
  tail call void @netif_carrier_off(ptr noundef %1) #14
  %msg_enable = getelementptr i8, ptr %t, i32 52
  %31 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %msg_enable, align 4
  %and42 = and i32 %32, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42)
  %tobool43.not = icmp eq i32 %and42, 0
  br i1 %tobool43.not, label %if.then41.if.end50_crit_edge, label %do.end47

if.then41.if.end50_crit_edge:                     ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end50

do.end47:                                         ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #16
  %call49 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, ptr noundef %1) #17
  br label %if.end50

if.end50:                                         ; preds = %do.end47, %if.then41.if.end50_crit_edge
  %phy_id0 = getelementptr inbounds %struct.mii_phy, ptr %3, i32 0, i32 2
  %33 = ptrtoint ptr %phy_id0 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %phy_id0, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 29, i16 %34)
  %cmp = icmp eq i16 %34, 29
  br i1 %cmp, label %land.lhs.true, label %if.end50.if.end60_crit_edge

if.end50.if.end60_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end60

land.lhs.true:                                    ; preds = %if.end50
  %phy_id1 = getelementptr inbounds %struct.mii_phy, ptr %3, i32 0, i32 3
  %35 = ptrtoint ptr %phy_id1 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %phy_id1, align 2
  %37 = and i16 %36, -16
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %37)
  %cmp55 = icmp eq i16 %37, -32768
  br i1 %cmp55, label %if.then57, label %land.lhs.true.if.end60_crit_edge

land.lhs.true.if.end60_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end60

if.then57:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  %38 = ptrtoint ptr %cur_phy to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %cur_phy, align 4
  %call.i = tail call i32 @mdio_read(ptr noundef %1, i32 noundef %39, i32 noundef 1) #14
  %call.1.i = tail call i32 @mdio_read(ptr noundef %1, i32 noundef %39, i32 noundef 1) #14
  tail call void @mdio_write(ptr noundef %1, i32 noundef %39, i32 noundef 0, i32 noundef 32768) #14
  br label %if.end60

if.end60:                                         ; preds = %if.then57, %land.lhs.true.if.end60_crit_edge, %if.end50.if.end60_crit_edge
  %chipset_rev61 = getelementptr i8, ptr %t, i32 221
  %40 = ptrtoint ptr %chipset_rev61 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %chipset_rev61, align 1
  tail call fastcc void @sis630_set_eq(ptr noundef %1, i8 noundef zeroext %41)
  br label %LookForLink

if.end63:                                         ; preds = %if.else.if.end63_crit_edge, %if.then35, %if.end.if.end63_crit_edge, %LookForLink.if.end63_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %42 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %42, 500
  %expires = getelementptr inbounds %struct.timer_list, ptr %t, i32 0, i32 1
  %43 = ptrtoint ptr %expires to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %add, ptr %expires, align 4
  tail call void @add_timer(ptr noundef %t) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_timer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @eth_type_trans(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_rx(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

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
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i16 @sis900_default_phy(ptr nocapture noundef %net_dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %net_dev, i32 2304
  %first_mii = getelementptr i8, ptr %net_dev, i32 2356
  %0 = ptrtoint ptr %first_mii to i32
  call void @__asan_load4_noabort(i32 %0)
  %phy.0117 = load ptr, ptr %first_mii, align 4
  %tobool.not118 = icmp eq ptr %phy.0117, null
  br i1 %tobool.not118, label %entry.if.else34_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.if.else34_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else34

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %phy.0122 = phi ptr [ %phy.0, %for.inc.for.body_crit_edge ], [ %phy.0117, %entry.for.body_crit_edge ]
  %phy_lan.0121 = phi ptr [ %phy_lan.1, %for.inc.for.body_crit_edge ], [ null, %entry.for.body_crit_edge ]
  %default_phy.0120 = phi ptr [ %default_phy.1, %for.inc.for.body_crit_edge ], [ null, %entry.for.body_crit_edge ]
  %phy_home.0119 = phi ptr [ %phy_home.1, %for.inc.for.body_crit_edge ], [ null, %entry.for.body_crit_edge ]
  %phy_addr = getelementptr inbounds %struct.mii_phy, ptr %phy.0122, i32 0, i32 1
  %1 = ptrtoint ptr %phy_addr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %phy_addr, align 4
  %call1 = tail call i32 @mdio_read(ptr noundef %net_dev, i32 noundef %2, i32 noundef 1)
  %3 = ptrtoint ptr %phy_addr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %phy_addr, align 4
  %call3 = tail call i32 @mdio_read(ptr noundef %net_dev, i32 noundef %4, i32 noundef 1)
  %and = and i32 %call3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp ne i32 %and, 0
  %tobool7.not = icmp eq ptr %default_phy.0120, null
  %or.cond = select i1 %tobool6.not, i1 %tobool7.not, i1 false
  br i1 %or.cond, label %land.lhs.true8, label %for.body.if.else_crit_edge

for.body.if.else_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else

land.lhs.true8:                                   ; preds = %for.body
  %phy_types = getelementptr inbounds %struct.mii_phy, ptr %phy.0122, i32 0, i32 5
  %5 = ptrtoint ptr %phy_types to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %phy_types, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %cmp.not = icmp eq i8 %6, 0
  br i1 %cmp.not, label %land.lhs.true8.if.else_crit_edge, label %land.lhs.true8.for.inc_crit_edge

land.lhs.true8.for.inc_crit_edge:                 ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

land.lhs.true8.if.else_crit_edge:                 ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else

if.else:                                          ; preds = %land.lhs.true8.if.else_crit_edge, %for.body.if.else_crit_edge
  %7 = ptrtoint ptr %phy_addr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %phy_addr, align 4
  %call12 = tail call i32 @mdio_read(ptr noundef %net_dev, i32 noundef %8, i32 noundef 0)
  %9 = ptrtoint ptr %phy_addr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %phy_addr, align 4
  %conv15 = and i32 %call12, 60415
  %or16 = or i32 %conv15, 5120
  tail call void @mdio_write(ptr noundef %net_dev, i32 noundef %10, i32 noundef 0, i32 noundef %or16)
  %phy_types17 = getelementptr inbounds %struct.mii_phy, ptr %phy.0122, i32 0, i32 5
  %11 = ptrtoint ptr %phy_types17 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %phy_types17, align 2
  %13 = zext i8 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.107)
  switch i8 %12, label %for.inc.fold.split [
    i8 1, label %if.else.for.inc_crit_edge
    i8 2, label %if.then27
  ]

if.else.for.inc_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.then27:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

for.inc.fold.split:                               ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

for.inc:                                          ; preds = %for.inc.fold.split, %if.then27, %if.else.for.inc_crit_edge, %land.lhs.true8.for.inc_crit_edge
  %phy_home.1 = phi ptr [ %phy_home.0119, %if.then27 ], [ %phy_home.0119, %land.lhs.true8.for.inc_crit_edge ], [ %phy.0122, %if.else.for.inc_crit_edge ], [ %phy_home.0119, %for.inc.fold.split ]
  %default_phy.1 = phi ptr [ %default_phy.0120, %if.then27 ], [ %phy.0122, %land.lhs.true8.for.inc_crit_edge ], [ %default_phy.0120, %if.else.for.inc_crit_edge ], [ %default_phy.0120, %for.inc.fold.split ]
  %phy_lan.1 = phi ptr [ %phy.0122, %if.then27 ], [ %phy_lan.0121, %land.lhs.true8.for.inc_crit_edge ], [ %phy_lan.0121, %if.else.for.inc_crit_edge ], [ %phy_lan.0121, %for.inc.fold.split ]
  %14 = ptrtoint ptr %phy.0122 to i32
  call void @__asan_load4_noabort(i32 %14)
  %phy.0 = load ptr, ptr %phy.0122, align 4
  %tobool.not = icmp eq ptr %phy.0, null
  br i1 %tobool.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.end:                                          ; preds = %for.inc
  %tobool30.not = icmp ne ptr %default_phy.1, null
  %tobool32.not = icmp eq ptr %phy_home.1, null
  %or.cond113 = select i1 %tobool30.not, i1 true, i1 %tobool32.not
  br i1 %or.cond113, label %for.end.if.else34_crit_edge, label %for.end.if.end45_crit_edge

for.end.if.end45_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end45

for.end.if.else34_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else34

if.else34:                                        ; preds = %for.end.if.else34_crit_edge, %entry.if.else34_crit_edge
  %tobool30.not133 = phi i1 [ %tobool30.not, %for.end.if.else34_crit_edge ], [ false, %entry.if.else34_crit_edge ]
  %phy_lan.0.lcssa132 = phi ptr [ %phy_lan.1, %for.end.if.else34_crit_edge ], [ null, %entry.if.else34_crit_edge ]
  %default_phy.0.lcssa131 = phi ptr [ %default_phy.1, %for.end.if.else34_crit_edge ], [ null, %entry.if.else34_crit_edge ]
  %tobool37.not = icmp ne ptr %phy_lan.0.lcssa132, null
  %not.tobool30.not = xor i1 %tobool30.not133, true
  %or.cond115 = select i1 %not.tobool30.not, i1 %tobool37.not, i1 false
  %brmerge = or i1 %tobool30.not133, %or.cond115
  %phy_lan.0.mux = select i1 %or.cond115, ptr %phy_lan.0.lcssa132, ptr %default_phy.0.lcssa131
  br i1 %brmerge, label %if.else34.if.end45_crit_edge, label %if.then41

if.else34.if.end45_crit_edge:                     ; preds = %if.else34
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end45

if.then41:                                        ; preds = %if.else34
  call void @__sanitizer_cov_trace_pc() #16
  %15 = ptrtoint ptr %first_mii to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %first_mii, align 4
  br label %if.end45

if.end45:                                         ; preds = %if.then41, %if.else34.if.end45_crit_edge, %for.end.if.end45_crit_edge
  %default_phy.2 = phi ptr [ %16, %if.then41 ], [ %phy_home.1, %for.end.if.end45_crit_edge ], [ %phy_lan.0.mux, %if.else34.if.end45_crit_edge ]
  %mii = getelementptr i8, ptr %net_dev, i32 2352
  %17 = ptrtoint ptr %mii to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mii, align 4
  %cmp46.not = icmp eq ptr %18, %default_phy.2
  br i1 %cmp46.not, label %if.end45.if.end54_crit_edge, label %if.then48

if.end45.if.end54_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end54

if.then48:                                        ; preds = %if.end45
  %19 = ptrtoint ptr %mii to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %default_phy.2, ptr %mii, align 4
  %phy_addr50 = getelementptr inbounds %struct.mii_phy, ptr %default_phy.2, i32 0, i32 1
  %20 = ptrtoint ptr %phy_addr50 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %phy_addr50, align 4
  %cur_phy = getelementptr i8, ptr %net_dev, i32 2360
  %22 = ptrtoint ptr %cur_phy to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %cur_phy, align 4
  %23 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %add.ptr.i, align 4
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %24, i32 0, i32 44, i32 3
  %25 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %26, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then48.pci_name.exit_crit_edge

if.then48.pci_name.exit_crit_edge:                ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #16
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #16
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %24, i32 0, i32 44
  %27 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev.i, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %if.then48.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %28, %if.end.i.i ], [ %26, %if.then48.pci_name.exit_crit_edge ]
  %call53 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, ptr noundef %retval.0.i.i, i32 noundef %21) #17
  br label %if.end54

if.end54:                                         ; preds = %pci_name.exit, %if.end45.if.end54_crit_edge
  %cur_phy55 = getelementptr i8, ptr %net_dev, i32 2360
  %29 = ptrtoint ptr %cur_phy55 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %cur_phy55, align 4
  %mii_info = getelementptr i8, ptr %net_dev, i32 2364
  %31 = ptrtoint ptr %mii_info to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %mii_info, align 4
  %call57 = tail call i32 @mdio_read(ptr noundef %net_dev, i32 noundef %30, i32 noundef 0)
  %conv61 = and i32 %call57, 64511
  %32 = ptrtoint ptr %cur_phy55 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %cur_phy55, align 4
  tail call void @mdio_write(ptr noundef %net_dev, i32 noundef %33, i32 noundef 0, i32 noundef %conv61)
  %34 = ptrtoint ptr %cur_phy55 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %cur_phy55, align 4
  %call65 = tail call i32 @mdio_read(ptr noundef %net_dev, i32 noundef %35, i32 noundef 1)
  %36 = ptrtoint ptr %cur_phy55 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %cur_phy55, align 4
  %call68 = tail call i32 @mdio_read(ptr noundef %net_dev, i32 noundef %37, i32 noundef 1)
  %conv69 = trunc i32 %call68 to i16
  ret i16 %conv69
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_on(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_le(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sis900_get_drvinfo(ptr nocapture noundef readonly %net_dev, ptr noundef %info) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %net_dev, i32 2304
  %driver = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 1
  %call1 = tail call i32 @strlcpy(ptr noundef %driver, ptr noundef nonnull @.str, i32 noundef 32) #14
  %version = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 2
  %call3 = tail call i32 @strlcpy(ptr noundef %version, ptr noundef nonnull @.str.66, i32 noundef 32) #14
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44, i32 3
  %2 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %entry.pci_name.exit_crit_edge

entry.pci_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %entry.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %5, %if.end.i.i ], [ %3, %entry.pci_name.exit_crit_edge ]
  %bus_info = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 4
  %call6 = tail call i32 @strlcpy(ptr noundef %bus_info, ptr noundef %retval.0.i.i, i32 noundef 32) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sis900_get_wol(ptr nocapture noundef readonly %net_dev, ptr nocapture noundef %wol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %ioaddr1 = getelementptr i8, ptr %net_dev, i32 2396
  %0 = ptrtoint ptr %ioaddr1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ioaddr1, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 176
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #14, !srcloc !255
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !256
  %and = and i32 %3, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %wolopts = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 2
  %4 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %wolopts, align 4
  %or = or i32 %5, 32
  store i32 %or, ptr %wolopts, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %and3 = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %if.end.if.end8_crit_edge, label %if.then5

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end8

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %wolopts6 = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 2
  %6 = ptrtoint ptr %wolopts6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %wolopts6, align 4
  %or7 = or i32 %7, 1
  store i32 %or7, ptr %wolopts6, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %if.end.if.end8_crit_edge
  %supported = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 1
  %8 = ptrtoint ptr %supported to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 33, ptr %supported, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sis900_set_wol(ptr noundef %net_dev, ptr nocapture noundef readonly %wol) #2 align 64 {
entry:
  %cfgpmcsr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %net_dev, i32 2304
  %ioaddr1 = getelementptr i8, ptr %net_dev, i32 2396
  %0 = ptrtoint ptr %ioaddr1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ioaddr1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cfgpmcsr) #14
  %2 = ptrtoint ptr %cfgpmcsr to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %cfgpmcsr, align 4
  %wolopts = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 2
  %3 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %wolopts, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end8

if.then:                                          ; preds = %entry
  %5 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %add.ptr.i, align 4
  %call2 = call i32 @pci_read_config_dword(ptr noundef %6, i32 noundef 68, ptr noundef nonnull %cfgpmcsr) #14
  %7 = ptrtoint ptr %cfgpmcsr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cfgpmcsr, align 4
  %and = and i32 %8, -257
  store i32 %and, ptr %cfgpmcsr, align 4
  %9 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr.i, align 4
  %call4 = call i32 @pci_write_config_dword(ptr noundef %10, i32 noundef 68, i32 noundef %and) #14
  %add.ptr = getelementptr i8, ptr %1, i32 176
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !257
  call void @arm_heavy_mb() #14
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #14, !srcloc !258
  %msg_enable = getelementptr i8, ptr %net_dev, i32 2452
  %11 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %msg_enable, align 4
  %and5 = and i32 %12, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool.not = icmp eq i32 %and5, 0
  br i1 %tobool.not, label %if.then.cleanup_crit_edge, label %if.then.cleanup.sink.split_crit_edge

if.then.cleanup.sink.split_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.sink.split

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end8:                                          ; preds = %entry
  %and10 = and i32 %4, 94
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.end13, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end13:                                         ; preds = %if.end8
  %and15 = shl i32 %4, 5
  %13 = and i32 %and15, 1024
  %and20 = shl i32 %4, 1
  %14 = and i32 %and20, 2
  %15 = or i32 %14, %13
  %add.ptr25 = getelementptr i8, ptr %1, i32 176
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !257
  tail call void @arm_heavy_mb() #14
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25, i32 %16) #14, !srcloc !258
  %17 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %add.ptr.i, align 4
  %call27 = call i32 @pci_read_config_dword(ptr noundef %18, i32 noundef 68, ptr noundef nonnull %cfgpmcsr) #14
  %19 = ptrtoint ptr %cfgpmcsr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cfgpmcsr, align 4
  %or28 = or i32 %20, 256
  store i32 %or28, ptr %cfgpmcsr, align 4
  %21 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %add.ptr.i, align 4
  %call30 = call i32 @pci_write_config_dword(ptr noundef %22, i32 noundef 68, i32 noundef %or28) #14
  %msg_enable31 = getelementptr i8, ptr %net_dev, i32 2452
  %23 = ptrtoint ptr %msg_enable31 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %msg_enable31, align 4
  %and32 = and i32 %24, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %tobool33.not, label %if.end13.cleanup_crit_edge, label %if.end13.cleanup.sink.split_crit_edge

if.end13.cleanup.sink.split_crit_edge:            ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.sink.split

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.end13.cleanup.sink.split_crit_edge, %if.then.cleanup.sink.split_crit_edge
  %.str.70.sink = phi ptr [ @.str.67, %if.then.cleanup.sink.split_crit_edge ], [ @.str.70, %if.end13.cleanup.sink.split_crit_edge ]
  %call41 = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.70.sink, ptr noundef %net_dev) #17
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end13.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then.cleanup_crit_edge ], [ -22, %if.end8.cleanup_crit_edge ], [ 0, %if.end13.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cfgpmcsr) #14
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sis900_get_msglevel(ptr nocapture noundef readonly %net_dev) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_enable = getelementptr i8, ptr %net_dev, i32 2452
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msg_enable, align 4
  ret i32 %1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @sis900_set_msglevel(ptr nocapture noundef writeonly %net_dev, i32 noundef %value) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_enable = getelementptr i8, ptr %net_dev, i32 2452
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %value, ptr %msg_enable, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sis900_nway_reset(ptr noundef %net_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %mii_info = getelementptr i8, ptr %net_dev, i32 2364
  %call1 = tail call i32 @mii_nway_restart(ptr noundef %mii_info) #14
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sis900_get_link(ptr noundef %net_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %mii_info = getelementptr i8, ptr %net_dev, i32 2364
  %call1 = tail call i32 @mii_link_ok(ptr noundef %mii_info) #14
  ret i32 %call1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sis900_get_eeprom_len(ptr nocapture noundef readonly %dev) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %eeprom_size = getelementptr i8, ptr %dev, i32 2624
  %0 = ptrtoint ptr %eeprom_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %eeprom_size, align 4
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sis900_get_eeprom(ptr noundef %dev, ptr nocapture noundef %eeprom, ptr nocapture noundef writeonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %eeprom_size = getelementptr i8, ptr %dev, i32 2624
  %0 = ptrtoint ptr %eeprom_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %eeprom_size, align 4
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %1, i32 noundef 3264) #20
  %tobool.not = icmp eq ptr %call9.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %magic = getelementptr inbounds %struct.ethtool_eeprom, ptr %eeprom, i32 0, i32 1
  %2 = ptrtoint ptr %magic to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 47806, ptr %magic, align 4
  %lock = getelementptr i8, ptr %dev, i32 2308
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #14
  %ioaddr1.i = getelementptr i8, ptr %dev, i32 2396
  %3 = ptrtoint ptr %ioaddr1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ioaddr1.i, align 4
  %chipset_rev.i = getelementptr i8, ptr %dev, i32 2621
  %5 = ptrtoint ptr %chipset_rev.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %chipset_rev.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -111, i8 %6)
  %cmp.i18 = icmp eq i8 %6, -111
  br i1 %cmp.i18, label %if.then.i20, label %if.else.i

if.then.i20:                                      ; preds = %if.end
  %add.ptr.i19 = getelementptr i8, ptr %4, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !257
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i19, i32 262144) #14, !srcloc !258
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i21.for.body.i_crit_edge, %if.then.i20
  %wait.060.i = phi i32 [ 0, %if.then.i20 ], [ %inc14.i, %if.end.i21.for.body.i_crit_edge ]
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i19) #14, !srcloc !255
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !256
  %8 = and i32 %7, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i, label %if.end.i21, label %for.cond8.preheader.i

for.cond8.preheader.i:                            ; preds = %for.body.i
  %9 = ptrtoint ptr %eeprom_size to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %eeprom_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp962.i = icmp sgt i32 %10, 1
  br i1 %cmp962.i, label %for.cond8.preheader.i.for.body11.i_crit_edge, label %for.cond8.preheader.i.sis900_read_eeprom.exit_crit_edge

for.cond8.preheader.i.sis900_read_eeprom.exit_crit_edge: ; preds = %for.cond8.preheader.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sis900_read_eeprom.exit

for.cond8.preheader.i.for.body11.i_crit_edge:     ; preds = %for.cond8.preheader.i
  br label %for.body11.i

for.body11.i:                                     ; preds = %for.body11.i.for.body11.i_crit_edge, %for.cond8.preheader.i.for.body11.i_crit_edge
  %i.063.i = phi i32 [ %inc.i, %for.body11.i.for.body11.i_crit_edge ], [ 0, %for.cond8.preheader.i.for.body11.i_crit_edge ]
  %call12.i = tail call fastcc zeroext i16 @read_eeprom(ptr noundef %4, i32 noundef %i.063.i) #14
  %arrayidx.i = getelementptr i16, ptr %call9.i, i32 %i.063.i
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %call12.i, ptr %arrayidx.i, align 2
  %inc.i = add nuw nsw i32 %i.063.i, 1
  %12 = ptrtoint ptr %eeprom_size to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %eeprom_size, align 4
  %div.i = sdiv i32 %13, 2
  %cmp9.i = icmp slt i32 %inc.i, %div.i
  br i1 %cmp9.i, label %for.body11.i.for.body11.i_crit_edge, label %for.body11.i.sis900_read_eeprom.exit_crit_edge

for.body11.i.sis900_read_eeprom.exit_crit_edge:   ; preds = %for.body11.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sis900_read_eeprom.exit

for.body11.i.for.body11.i_crit_edge:              ; preds = %for.body11.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body11.i

if.end.i21:                                       ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 214748) #14
  %inc14.i = add nuw nsw i32 %wait.060.i, 1
  %exitcond.not.i = icmp eq i32 %inc14.i, 2000
  br i1 %exitcond.not.i, label %if.end.i21.sis900_read_eeprom.exit_crit_edge, label %if.end.i21.for.body.i_crit_edge

if.end.i21.for.body.i_crit_edge:                  ; preds = %if.end.i21
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

if.end.i21.sis900_read_eeprom.exit_crit_edge:     ; preds = %if.end.i21
  call void @__sanitizer_cov_trace_pc() #16
  br label %sis900_read_eeprom.exit

if.else.i:                                        ; preds = %if.end
  %call17.i = tail call fastcc zeroext i16 @read_eeprom(ptr noundef %4, i32 noundef 0) #14
  %15 = zext i16 %call17.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.108)
  switch i16 %call17.i, label %for.cond25.preheader.i [
    i16 -1, label %if.else.i.sis900_read_eeprom.exit.thread31_crit_edge
    i16 0, label %if.else.i.sis900_read_eeprom.exit.thread31_crit_edge51
  ]

if.else.i.sis900_read_eeprom.exit.thread31_crit_edge51: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sis900_read_eeprom.exit.thread31

if.else.i.sis900_read_eeprom.exit.thread31_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sis900_read_eeprom.exit.thread31

for.cond25.preheader.i:                           ; preds = %if.else.i
  %16 = ptrtoint ptr %eeprom_size to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %eeprom_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %17)
  %cmp2858.i = icmp sgt i32 %17, 1
  br i1 %cmp2858.i, label %for.cond25.preheader.i.for.body30.i_crit_edge, label %for.cond25.preheader.i.sis900_read_eeprom.exit.thread_crit_edge

for.cond25.preheader.i.sis900_read_eeprom.exit.thread_crit_edge: ; preds = %for.cond25.preheader.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sis900_read_eeprom.exit.thread

for.cond25.preheader.i.for.body30.i_crit_edge:    ; preds = %for.cond25.preheader.i
  br label %for.body30.i

for.body30.i:                                     ; preds = %for.body30.i.for.body30.i_crit_edge, %for.cond25.preheader.i.for.body30.i_crit_edge
  %i.159.i = phi i32 [ %inc34.i, %for.body30.i.for.body30.i_crit_edge ], [ 0, %for.cond25.preheader.i.for.body30.i_crit_edge ]
  %call31.i = tail call fastcc zeroext i16 @read_eeprom(ptr noundef %4, i32 noundef %i.159.i) #14
  %arrayidx32.i = getelementptr i16, ptr %call9.i, i32 %i.159.i
  %18 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %call31.i, ptr %arrayidx32.i, align 2
  %inc34.i = add nuw nsw i32 %i.159.i, 1
  %19 = ptrtoint ptr %eeprom_size to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %eeprom_size, align 4
  %div27.i = sdiv i32 %20, 2
  %cmp28.i = icmp slt i32 %inc34.i, %div27.i
  br i1 %cmp28.i, label %for.body30.i.for.body30.i_crit_edge, label %for.body30.i.sis900_read_eeprom.exit.thread_crit_edge

for.body30.i.sis900_read_eeprom.exit.thread_crit_edge: ; preds = %for.body30.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sis900_read_eeprom.exit.thread

for.body30.i.for.body30.i_crit_edge:              ; preds = %for.body30.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body30.i

sis900_read_eeprom.exit.thread:                   ; preds = %for.body30.i.sis900_read_eeprom.exit.thread_crit_edge, %for.cond25.preheader.i.sis900_read_eeprom.exit.thread_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #14
  br label %if.then5

sis900_read_eeprom.exit.thread31:                 ; preds = %if.else.i.sis900_read_eeprom.exit.thread31_crit_edge, %if.else.i.sis900_read_eeprom.exit.thread31_crit_edge51
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #14
  br label %if.end6

sis900_read_eeprom.exit:                          ; preds = %if.end.i21.sis900_read_eeprom.exit_crit_edge, %for.body11.i.sis900_read_eeprom.exit_crit_edge, %for.cond8.preheader.i.sis900_read_eeprom.exit_crit_edge
  %ret.0.i = phi i32 [ 0, %for.cond8.preheader.i.sis900_read_eeprom.exit_crit_edge ], [ 0, %for.body11.i.sis900_read_eeprom.exit_crit_edge ], [ -11, %if.end.i21.sis900_read_eeprom.exit_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !257
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i19, i32 131072) #14, !srcloc !258
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #14
  br i1 %tobool.not.i, label %sis900_read_eeprom.exit.if.end6_crit_edge, label %sis900_read_eeprom.exit.if.then5_crit_edge

sis900_read_eeprom.exit.if.then5_crit_edge:       ; preds = %sis900_read_eeprom.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then5

sis900_read_eeprom.exit.if.end6_crit_edge:        ; preds = %sis900_read_eeprom.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end6

if.then5:                                         ; preds = %sis900_read_eeprom.exit.if.then5_crit_edge, %sis900_read_eeprom.exit.thread
  %offset = getelementptr inbounds %struct.ethtool_eeprom, ptr %eeprom, i32 0, i32 2
  %21 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %offset, align 4
  %add.ptr = getelementptr i8, ptr %call9.i, i32 %22
  %len = getelementptr inbounds %struct.ethtool_eeprom, ptr %eeprom, i32 0, i32 3
  %23 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %len, align 4
  %25 = call ptr @memcpy(ptr %data, ptr %add.ptr, i32 %24)
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %sis900_read_eeprom.exit.if.end6_crit_edge, %sis900_read_eeprom.exit.thread31
  %ret.1.i28 = phi i32 [ 0, %if.then5 ], [ %ret.0.i, %sis900_read_eeprom.exit.if.end6_crit_edge ], [ -11, %sis900_read_eeprom.exit.thread31 ]
  tail call void @kfree(ptr noundef nonnull %call9.i) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1.i28, %if.end6 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sis900_get_link_ksettings(ptr noundef %net_dev, ptr noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr i8, ptr %net_dev, i32 2308
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #14
  %mii_info = getelementptr i8, ptr %net_dev, i32 2364
  tail call void @mii_ethtool_get_link_ksettings(ptr noundef %mii_info, ptr noundef %cmd) #14
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #14
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sis900_set_link_ksettings(ptr noundef %net_dev, ptr noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr i8, ptr %net_dev, i32 2308
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #14
  %mii_info = getelementptr i8, ptr %net_dev, i32 2364
  %call1 = tail call i32 @mii_ethtool_set_link_ksettings(ptr noundef %mii_info, ptr noundef %cmd) #14
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #14
  ret i32 %call1
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_dword(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_dword(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mii_nway_restart(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mii_link_ok(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i16 @read_eeprom(ptr noundef %ioaddr, i32 noundef %location) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %or = or i32 %location, 384
  %add.ptr = getelementptr i8, ptr %ioaddr, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !257
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #14, !srcloc !258
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #14, !srcloc !255
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !257
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 134217728) #14, !srcloc !258
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #14, !srcloc !255
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !256
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.064 = phi i32 [ 8, %entry ], [ %dec, %for.body.for.body_crit_edge ]
  %shl = shl nuw i32 1, %i.064
  %and = and i32 %shl, %or
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool.not, i32 134217728, i32 150994944
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !257
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %cond) #14, !srcloc !258
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #14, !srcloc !255
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !257
  tail call void @arm_heavy_mb() #14
  %3 = or i32 %cond, 67108864
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %3) #14, !srcloc !258
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #14, !srcloc !255
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !256
  %dec = add nsw i32 %i.064, -1
  %cmp.not = icmp eq i32 %i.064, 0
  br i1 %cmp.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.end:                                          ; preds = %for.body
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !257
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 134217728) #14, !srcloc !258
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #14, !srcloc !255
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !256
  br label %for.body18

for.body18:                                       ; preds = %for.body18.for.body18_crit_edge, %for.end
  %retval1.066 = phi i32 [ 0, %for.end ], [ %or31, %for.body18.for.body18_crit_edge ]
  %i.165 = phi i32 [ 16, %for.end ], [ %dec36, %for.body18.for.body18_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !257
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 134217728) #14, !srcloc !258
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #14, !srcloc !255
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !257
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 201326592) #14, !srcloc !258
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #14, !srcloc !255
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !256
  %conv = shl nsw i32 %retval1.066, 1
  %shl25 = and i32 %conv, 131070
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #14, !srcloc !255
  %9 = lshr i32 %8, 25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !256
  %and28.lobit = and i32 %9, 1
  %or31 = or i32 %and28.lobit, %shl25
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #14, !srcloc !255
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !256
  %dec36 = add nsw i32 %i.165, -1
  %cmp17 = icmp ugt i32 %i.165, 1
  br i1 %cmp17, label %for.body18.for.body18_crit_edge, label %for.end37

for.body18.for.body18_crit_edge:                  ; preds = %for.body18
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body18

for.end37:                                        ; preds = %for.body18
  call void @__sanitizer_cov_trace_pc() #16
  %conv32.le = trunc i32 %or31 to i16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !257
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #14, !srcloc !258
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #14, !srcloc !255
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !256
  ret i16 %conv32.le
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @mii_ethtool_get_link_ksettings(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mii_ethtool_set_link_ksettings(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_byte(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_byte(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #13

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #13

; Function Attrs: null_pointer_is_valid
declare dso_local void @yield() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sis900_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %ioaddr2 = getelementptr i8, ptr %1, i32 2396
  %2 = ptrtoint ptr %ioaddr2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ioaddr2, align 4
  %state.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 103
  %6 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %7, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #14
  tail call void @netif_device_detach(ptr noundef %1) #14
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #14, !srcloc !255
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !256
  %9 = or i32 %8, 167772160
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !257
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 %9) #14, !srcloc !258
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sis900_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %ioaddr2 = getelementptr i8, ptr %1, i32 2396
  %2 = ptrtoint ptr %ioaddr2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ioaddr2, align 4
  %state.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @sis900_init_rxfilter(ptr noundef %1)
  tail call fastcc void @sis900_init_tx_ring(ptr noundef %1)
  tail call fastcc void @sis900_init_rx_ring(ptr noundef %1)
  tail call void @set_rx_mode(ptr noundef %1)
  tail call void @netif_device_attach(ptr noundef %1) #14
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 103
  %6 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %7, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i) #14
  %8 = ptrtoint ptr %ioaddr2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ioaddr2, align 4
  %add.ptr.i23 = getelementptr i8, ptr %9, i32 4
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i23) #14, !srcloc !255
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !256
  %11 = and i32 %10, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i = icmp eq i32 %11, 0
  %or7.i = select i1 %tobool.not.i, i32 268439568, i32 273682448
  %or14.i = select i1 %tobool.not.i, i32 134217776, i32 139460656
  %add.ptr15.i = getelementptr i8, ptr %9, i32 36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !257
  tail call void @arm_heavy_mb() #14
  %12 = tail call i32 @llvm.bswap.i32(i32 %or7.i) #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15.i, i32 %12) #14, !srcloc !258
  %add.ptr16.i = getelementptr i8, ptr %9, i32 52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !257
  tail call void @arm_heavy_mb() #14
  %13 = tail call i32 @llvm.bswap.i32(i32 %or14.i) #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16.i, i32 %13) #14, !srcloc !258
  %add.ptr = getelementptr i8, ptr %3, i32 20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !257
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 -1526398720) #14, !srcloc !258
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #14, !srcloc !255
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !256
  %15 = or i32 %14, 67108864
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !257
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 %15) #14, !srcloc !258
  %add.ptr7 = getelementptr i8, ptr %3, i32 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !257
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 16777216) #14, !srcloc !258
  %mii = getelementptr i8, ptr %1, i32 2352
  %16 = ptrtoint ptr %mii to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mii, align 4
  tail call fastcc void @sis900_check_mode(ptr noundef %1, ptr noundef %17)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_detach(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_attach(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umax.i16(i16, i16) #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #13

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #14

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #15 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 118)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #15 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 118)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #14 = { nounwind }
attributes #15 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #16 = { nomerge }
attributes #17 = { cold nounwind }
attributes #18 = { nounwind allocsize(2) }
attributes #19 = { nounwind readonly willreturn }
attributes #20 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !12, !13, !15, !16, !18, !20, !22, !24, !26, !27, !29, !30, !32, !33, !35, !37, !39, !41, !43, !45, !46, !47, !48, !50, !51, !52, !54, !55, !57, !58, !59, !61, !62, !63, !65, !66, !67, !69, !70, !71, !73, !74, !75, !77, !79, !81, !83, !85, !87, !88, !90, !91, !92, !93, !95, !96, !97, !99, !100, !101, !103, !104, !105, !106, !108, !109, !110, !112, !113, !114, !116, !117, !118, !120, !121, !122, !123, !125, !126, !127, !128, !130, !131, !132, !133, !135, !136, !137, !138, !140, !141, !142, !143, !145, !147, !148, !149, !151, !152, !153, !154, !156, !157, !158, !159, !160, !161, !162, !163, !165, !166, !167, !168, !170, !171, !172, !173, !175, !177, !179, !180, !181, !182, !184, !185, !186, !188, !189, !190, !191, !193, !194, !195, !196, !198, !199, !200, !201, !203, !204, !205, !207, !208, !209, !211, !212, !213, !215, !216, !217, !219, !221, !223, !225, !227, !229, !231, !233, !235, !237, !239, !241, !243}
!llvm.module.flags = !{!245, !246, !247, !248, !249, !250, !251, !252}
!llvm.ident = !{!253}

!0 = !{ptr @__UNIQUE_ID_author341, !1, !"__UNIQUE_ID_author341", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/sis/sis900.c", i32 198, i32 1}
!2 = !{ptr @__UNIQUE_ID_description342, !3, !"__UNIQUE_ID_description342", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/sis/sis900.c", i32 199, i32 1}
!4 = !{ptr @__UNIQUE_ID_file343, !5, !"__UNIQUE_ID_file343", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/sis/sis900.c", i32 200, i32 1}
!6 = !{ptr @__UNIQUE_ID_license344, !5, !"__UNIQUE_ID_license344", i1 false, i1 false}
!7 = !{ptr @__param_multicast_filter_limit, !8, !"__param_multicast_filter_limit", i1 false, i1 false}
!8 = !{!"../drivers/net/ethernet/sis/sis900.c", i32 202, i32 1}
!9 = !{ptr @__UNIQUE_ID_multicast_filter_limittype345, !8, !"__UNIQUE_ID_multicast_filter_limittype345", i1 false, i1 false}
!10 = !{ptr @__param_max_interrupt_work, !11, !"__param_max_interrupt_work", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/sis/sis900.c", i32 203, i32 1}
!12 = !{ptr @__UNIQUE_ID_max_interrupt_worktype346, !11, !"__UNIQUE_ID_max_interrupt_worktype346", i1 false, i1 false}
!13 = !{ptr @__param_sis900_debug, !14, !"__param_sis900_debug", i1 false, i1 false}
!14 = !{!"../drivers/net/ethernet/sis/sis900.c", i32 204, i32 1}
!15 = !{ptr @__UNIQUE_ID_sis900_debugtype347, !14, !"__UNIQUE_ID_sis900_debugtype347", i1 false, i1 false}
!16 = !{ptr @__UNIQUE_ID_multicast_filter_limit348, !17, !"__UNIQUE_ID_multicast_filter_limit348", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/sis/sis900.c", i32 205, i32 1}
!18 = !{ptr @__UNIQUE_ID_max_interrupt_work349, !19, !"__UNIQUE_ID_max_interrupt_work349", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/sis/sis900.c", i32 206, i32 1}
!20 = !{ptr @__UNIQUE_ID_sis900_debug350, !21, !"__UNIQUE_ID_sis900_debug350", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/sis/sis900.c", i32 207, i32 1}
!22 = !{ptr @__initcall__kmod_sis900__351_2584_sis900_init_module6, !23, !"__initcall__kmod_sis900__351_2584_sis900_init_module6", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/sis/sis900.c", i32 2584, i32 1}
!24 = !{ptr @__exitcall_sis900_cleanup_module, !25, !"__exitcall_sis900_cleanup_module", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/sis/sis900.c", i32 2585, i32 1}
!26 = !{ptr @__param_str_multicast_filter_limit, !8, !"__param_str_multicast_filter_limit", i1 false, i1 false}
!27 = !{ptr @multicast_filter_limit, !28, !"multicast_filter_limit", i1 false, i1 false}
!28 = !{!"../drivers/net/ethernet/sis/sis900.c", i32 88, i32 12}
!29 = !{ptr @__param_str_max_interrupt_work, !11, !"__param_str_max_interrupt_work", i1 false, i1 false}
!30 = !{ptr @max_interrupt_work, !31, !"max_interrupt_work", i1 false, i1 false}
!31 = !{!"../drivers/net/ethernet/sis/sis900.c", i32 87, i32 12}
!32 = !{ptr @__param_str_sis900_debug, !14, !"__param_str_sis900_debug", i1 false, i1 false}
!33 = !{ptr @sis900_debug, !34, !"sis900_debug", i1 false, i1 false}
!34 = !{!"../drivers/net/ethernet/sis/sis900.c", i32 90, i32 12}
!35 = !{ptr @.str, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/ethernet/sis/sis900.c", i32 2562, i32 11}
!37 = !{ptr @sis900_pci_driver, !38, !"sis900_pci_driver", i1 false, i1 false}
!38 = !{!"../drivers/net/ethernet/sis/sis900.c", i32 2561, i32 26}
!39 = !{ptr @sis900_pci_tbl, !40, !"sis900_pci_tbl", i1 false, i1 false}
!40 = !{!"../drivers/net/ethernet/sis/sis900.c", i32 110, i32 35}
!41 = !{ptr @sis900_probe.printed_version, !42, !"printed_version", i1 false, i1 false}
!42 = !{!"../drivers/net/ethernet/sis/sis900.c", i32 447, i32 13}
!43 = !{ptr @.str.1, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/net/ethernet/sis/sis900.c", i32 449, i32 3}
!45 = !{ptr @.str.2, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @sis900_probe._entry, !44, !"_entry", i1 false, i1 false}
!47 = !{ptr @sis900_probe._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.4, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/ethernet/sis/sis900.c", i32 458, i32 3}
!50 = !{ptr @sis900_probe._entry.3, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @sis900_probe._entry_ptr.5, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @sis900_probe.__key, !53, !"__key", i1 false, i1 false}
!53 = !{!"../drivers/net/ethernet/sis/sis900.c", i32 485, i32 2}
!54 = !{ptr @.str.6, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @.str.8, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/net/ethernet/sis/sis900.c", i32 528, i32 3}
!57 = !{ptr @sis900_probe._entry.7, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @sis900_probe._entry_ptr.9, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.11, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/net/ethernet/sis/sis900.c", i32 544, i32 3}
!61 = !{ptr @sis900_probe._entry.10, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @sis900_probe._entry_ptr.12, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.14, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/net/ethernet/sis/sis900.c", i32 554, i32 3}
!65 = !{ptr @sis900_probe._entry.13, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @sis900_probe._entry_ptr.15, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.17, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/net/ethernet/sis/sis900.c", i32 572, i32 2}
!69 = !{ptr @sis900_probe._entry.16, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @sis900_probe._entry_ptr.18, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.20, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/net/ethernet/sis/sis900.c", i32 579, i32 3}
!73 = !{ptr @sis900_probe._entry.19, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @sis900_probe._entry_ptr.21, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.22, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/net/ethernet/sis/sis900.c", i32 106, i32 2}
!77 = !{ptr @.str.23, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/net/ethernet/sis/sis900.c", i32 107, i32 2}
!79 = !{ptr @card_names, !80, !"card_names", i1 false, i1 false}
!80 = !{!"../drivers/net/ethernet/sis/sis900.c", i32 105, i32 21}
!81 = !{ptr @version, !82, !"version", i1 false, i1 false}
!82 = !{!"../drivers/net/ethernet/sis/sis900.c", i32 84, i32 19}
!83 = !{ptr @sis900_netdev_ops, !84, !"sis900_netdev_ops", i1 false, i1 false}
!84 = !{!"../drivers/net/ethernet/sis/sis900.c", i32 406, i32 36}
!85 = !{ptr @sis900_open.__key, !86, !"__key", i1 false, i1 false}
!86 = !{!"../drivers/net/ethernet/sis/sis900.c", i32 1078, i32 2}
!87 = !{ptr @.str.24, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @.str.25, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/net/ethernet/sis/sis900.c", i32 1708, i32 5}
!90 = !{ptr @.str.26, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @sis900_interrupt._entry, !89, !"_entry", i1 false, i1 false}
!92 = !{ptr @sis900_interrupt._entry_ptr, !89, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.28, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/net/ethernet/sis/sis900.c", i32 1714, i32 5}
!95 = !{ptr @sis900_interrupt._entry.27, !94, !"_entry", i1 false, i1 false}
!96 = !{ptr @sis900_interrupt._entry_ptr.29, !94, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.31, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/net/ethernet/sis/sis900.c", i32 1722, i32 3}
!99 = !{ptr @sis900_interrupt._entry.30, !98, !"_entry", i1 false, i1 false}
!100 = !{ptr @sis900_interrupt._entry_ptr.32, !98, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.33, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/net/ethernet/sis/sis900.c", i32 1749, i32 3}
!103 = !{ptr @.str.34, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @sis900_rx._entry, !102, !"_entry", i1 false, i1 false}
!105 = !{ptr @sis900_rx._entry_ptr, !102, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.36, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/net/ethernet/sis/sis900.c", i32 1773, i32 5}
!108 = !{ptr @sis900_rx._entry.35, !107, !"_entry", i1 false, i1 false}
!109 = !{ptr @sis900_rx._entry_ptr.37, !107, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.39, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/net/ethernet/sis/sis900.c", i32 1814, i32 6}
!112 = !{ptr @sis900_rx._entry.38, !111, !"_entry", i1 false, i1 false}
!113 = !{ptr @sis900_rx._entry_ptr.40, !111, !"_entry_ptr", i1 false, i1 false}
!114 = distinct !{null, !115, !"__already_done", i1 false, i1 false}
!115 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!116 = !{ptr @.str.41, !115, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @.str.42, !115, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @.str.43, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/net/ethernet/sis/sis900.c", i32 1923, i32 5}
!120 = !{ptr @.str.44, !119, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @sis900_finish_xmit._entry, !119, !"_entry", i1 false, i1 false}
!122 = !{ptr @sis900_finish_xmit._entry_ptr, !119, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @.str.45, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/net/ethernet/sis/sis900.c", i32 1114, i32 4}
!125 = !{ptr @.str.46, !124, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @sis900_init_rxfilter._entry, !124, !"_entry", i1 false, i1 false}
!127 = !{ptr @sis900_init_rxfilter._entry_ptr, !124, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @.str.47, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/net/ethernet/sis/sis900.c", i32 1152, i32 3}
!130 = !{ptr @.str.48, !129, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @sis900_init_tx_ring._entry, !129, !"_entry", i1 false, i1 false}
!132 = !{ptr @sis900_init_tx_ring._entry_ptr, !129, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @.str.49, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/net/ethernet/sis/sis900.c", i32 1213, i32 3}
!135 = !{ptr @.str.50, !134, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @sis900_init_rx_ring._entry, !134, !"_entry", i1 false, i1 false}
!137 = !{ptr @sis900_init_rx_ring._entry_ptr, !134, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @.str.51, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/net/ethernet/sis/sis900.c", i32 1469, i32 4}
!140 = !{ptr @.str.52, !139, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @sis900_auto_negotiate._entry, !139, !"_entry", i1 false, i1 false}
!142 = !{ptr @sis900_auto_negotiate._entry_ptr, !139, !"_entry_ptr", i1 false, i1 false}
!143 = distinct !{null, !144, !"next_tick", i1 false, i1 false}
!144 = !{!"../drivers/net/ethernet/sis/sis900.c", i32 1320, i32 19}
!145 = !{ptr @.str.53, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/net/ethernet/sis/sis900.c", i32 1349, i32 5}
!147 = !{ptr @sis900_timer._entry, !146, !"_entry", i1 false, i1 false}
!148 = !{ptr @sis900_timer._entry_ptr, !146, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @.str.54, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/net/ethernet/sis/sis900.c", i32 768, i32 3}
!151 = !{ptr @.str.55, !150, !"<string literal>", i1 false, i1 false}
!152 = !{ptr @sis900_default_phy._entry, !150, !"_entry", i1 false, i1 false}
!153 = !{ptr @sis900_default_phy._entry_ptr, !150, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @.str.56, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/net/ethernet/sis/sis900.c", i32 1532, i32 3}
!156 = !{ptr @.str.57, !155, !"<string literal>", i1 false, i1 false}
!157 = !{ptr @sis900_read_mode._entry, !155, !"_entry", i1 false, i1 false}
!158 = !{ptr @sis900_read_mode._entry_ptr, !155, !"_entry_ptr", i1 false, i1 false}
!159 = !{ptr @.str.58, !155, !"<string literal>", i1 false, i1 false}
!160 = !{ptr @.str.59, !155, !"<string literal>", i1 false, i1 false}
!161 = !{ptr @.str.60, !155, !"<string literal>", i1 false, i1 false}
!162 = !{ptr @.str.61, !155, !"<string literal>", i1 false, i1 false}
!163 = !{ptr @.str.62, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/net/ethernet/sis/sis900.c", i32 1661, i32 3}
!165 = !{ptr @.str.63, !164, !"<string literal>", i1 false, i1 false}
!166 = !{ptr @sis900_start_xmit._entry, !164, !"_entry", i1 false, i1 false}
!167 = !{ptr @sis900_start_xmit._entry_ptr, !164, !"_entry_ptr", i1 false, i1 false}
!168 = !{ptr @.str.64, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/net/ethernet/sis/sis900.c", i32 1557, i32 3}
!170 = !{ptr @.str.65, !169, !"<string literal>", i1 false, i1 false}
!171 = !{ptr @sis900_tx_timeout._entry, !169, !"_entry", i1 false, i1 false}
!172 = !{ptr @sis900_tx_timeout._entry_ptr, !169, !"_entry_ptr", i1 false, i1 false}
!173 = !{ptr @sis900_ethtool_ops, !174, !"sis900_ethtool_ops", i1 false, i1 false}
!174 = !{!"../drivers/net/ethernet/sis/sis900.c", i32 2205, i32 33}
!175 = !{ptr @.str.66, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/net/ethernet/sis/sis900.c", i32 2031, i32 25}
!177 = !{ptr @.str.67, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/net/ethernet/sis/sis900.c", i32 2104, i32 4}
!179 = !{ptr @.str.68, !178, !"<string literal>", i1 false, i1 false}
!180 = !{ptr @sis900_set_wol._entry, !178, !"_entry", i1 false, i1 false}
!181 = !{ptr @sis900_set_wol._entry_ptr, !178, !"_entry_ptr", i1 false, i1 false}
!182 = !{ptr @.str.70, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/net/ethernet/sis/sis900.c", i32 2123, i32 3}
!184 = !{ptr @sis900_set_wol._entry.69, !183, !"_entry", i1 false, i1 false}
!185 = !{ptr @sis900_set_wol._entry_ptr.71, !183, !"_entry_ptr", i1 false, i1 false}
!186 = !{ptr @.str.72, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/net/ethernet/sis/sis900.c", i32 303, i32 3}
!188 = !{ptr @.str.73, !187, !"<string literal>", i1 false, i1 false}
!189 = !{ptr @sis630e_get_mac_addr._entry, !187, !"_entry", i1 false, i1 false}
!190 = !{ptr @sis630e_get_mac_addr._entry_ptr, !187, !"_entry_ptr", i1 false, i1 false}
!191 = !{ptr @.str.74, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/net/ethernet/sis/sis900.c", i32 268, i32 3}
!193 = !{ptr @.str.75, !192, !"<string literal>", i1 false, i1 false}
!194 = !{ptr @sis900_get_mac_addr._entry, !192, !"_entry", i1 false, i1 false}
!195 = !{ptr @sis900_get_mac_addr._entry_ptr, !192, !"_entry_ptr", i1 false, i1 false}
!196 = !{ptr @.str.76, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/net/ethernet/sis/sis900.c", i32 627, i32 5}
!198 = !{ptr @.str.77, !197, !"<string literal>", i1 false, i1 false}
!199 = !{ptr @sis900_mii_probe._entry, !197, !"_entry", i1 false, i1 false}
!200 = !{ptr @sis900_mii_probe._entry_ptr, !197, !"_entry_ptr", i1 false, i1 false}
!201 = !{ptr @.str.79, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/net/ethernet/sis/sis900.c", i32 659, i32 5}
!203 = !{ptr @sis900_mii_probe._entry.78, !202, !"_entry", i1 false, i1 false}
!204 = !{ptr @sis900_mii_probe._entry_ptr.80, !202, !"_entry_ptr", i1 false, i1 false}
!205 = !{ptr @.str.82, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/net/ethernet/sis/sis900.c", i32 668, i32 4}
!207 = !{ptr @sis900_mii_probe._entry.81, !206, !"_entry", i1 false, i1 false}
!208 = !{ptr @sis900_mii_probe._entry_ptr.83, !206, !"_entry_ptr", i1 false, i1 false}
!209 = !{ptr @.str.85, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/net/ethernet/sis/sis900.c", i32 675, i32 3}
!211 = !{ptr @sis900_mii_probe._entry.84, !210, !"_entry", i1 false, i1 false}
!212 = !{ptr @sis900_mii_probe._entry_ptr.86, !210, !"_entry_ptr", i1 false, i1 false}
!213 = !{ptr @.str.88, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/net/ethernet/sis/sis900.c", i32 699, i32 5}
!215 = !{ptr @sis900_mii_probe._entry.87, !214, !"_entry", i1 false, i1 false}
!216 = !{ptr @sis900_mii_probe._entry_ptr.89, !214, !"_entry_ptr", i1 false, i1 false}
!217 = !{ptr @.str.90, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/net/ethernet/sis/sis900.c", i32 131, i32 4}
!219 = !{ptr @.str.91, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/net/ethernet/sis/sis900.c", i32 132, i32 4}
!221 = !{ptr @.str.92, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/net/ethernet/sis/sis900.c", i32 133, i32 4}
!223 = !{ptr @.str.93, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/net/ethernet/sis/sis900.c", i32 134, i32 4}
!225 = !{ptr @.str.94, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/net/ethernet/sis/sis900.c", i32 135, i32 4}
!227 = !{ptr @.str.95, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/net/ethernet/sis/sis900.c", i32 136, i32 4}
!229 = !{ptr @.str.96, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/net/ethernet/sis/sis900.c", i32 137, i32 4}
!231 = !{ptr @.str.97, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/net/ethernet/sis/sis900.c", i32 138, i32 4}
!233 = !{ptr @.str.98, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/net/ethernet/sis/sis900.c", i32 140, i32 4}
!235 = !{ptr @.str.99, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/net/ethernet/sis/sis900.c", i32 141, i32 4}
!237 = !{ptr @.str.100, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/net/ethernet/sis/sis900.c", i32 142, i32 4}
!239 = !{ptr @.str.101, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/net/ethernet/sis/sis900.c", i32 143, i32 4}
!241 = !{ptr @mii_chip_table, !242, !"mii_chip_table", i1 false, i1 false}
!242 = !{!"../drivers/net/ethernet/sis/sis900.c", i32 130, i32 3}
!243 = !{ptr @sis900_pm_ops, !244, !"sis900_pm_ops", i1 false, i1 false}
!244 = !{!"../drivers/net/ethernet/sis/sis900.c", i32 2559, i32 8}
!245 = !{i32 1, !"wchar_size", i32 2}
!246 = !{i32 1, !"min_enum_size", i32 4}
!247 = !{i32 8, !"branch-target-enforcement", i32 0}
!248 = !{i32 8, !"sign-return-address", i32 0}
!249 = !{i32 8, !"sign-return-address-all", i32 0}
!250 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!251 = !{i32 7, !"uwtable", i32 1}
!252 = !{i32 7, !"frame-pointer", i32 2}
!253 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!254 = !{!"auto-init"}
!255 = !{i64 5114680}
!256 = !{i64 2152655029}
!257 = !{i64 2152656384}
!258 = !{i64 5114262}
!259 = !{i64 2152655410}
!260 = !{i64 5114065}
!261 = !{i64 2156598311}
!262 = !{i64 5114460}
!263 = !{i64 2156598693}
!264 = !{i64 5113842}
!265 = !{i64 2152654417}
!266 = !{!"branch_weights", i32 2000, i32 1}
!267 = !{!"branch_weights", i32 1, i32 2000}
