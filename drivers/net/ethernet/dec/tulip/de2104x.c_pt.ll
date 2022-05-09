; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/dec/tulip/de2104x.c_pt.bc'
source_filename = "../drivers/net/ethernet/dec/tulip/de2104x.c"
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
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.103, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.120, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.103 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.120 = type { ptr }
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
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.121, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.121 = type { ptr }
%struct.de_srom_info_leaf = type { i16, i8, i8 }
%struct.de_private = type { i32, i32, i32, ptr, ptr, %struct.spinlock, ptr, ptr, [64 x %struct.ring_info], [128 x %struct.ring_info], i32, i32, i32, ptr, [96 x i16], i32, i32, i32, [5 x %struct.media_info], %struct.timer_list, ptr, i32, i8 }
%struct.ring_info = type { ptr, i32 }
%struct.media_info = type { i16, i16, i16, i16 }
%struct.de_srom_media_block = type <{ i8, i16, i16, i16 }>
%struct.de_desc = type { i32, i32, i32, i32 }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
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
%struct.ethtool_drvinfo = type { i32, [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8], [12 x i8], i32, i32, i32, i32, i32 }
%struct.ethtool_regs = type { i32, i32, i32, [0 x i8] }
%struct.ethtool_eeprom = type { i32, i32, i32, i32, [0 x i8] }
%struct.ethtool_link_ksettings = type { %struct.ethtool_link_settings, %struct.anon.119, i32 }
%struct.ethtool_link_settings = type { i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [1 x i8], [7 x i32], [0 x i32] }
%struct.anon.119 = type { [3 x i32], [3 x i32], [3 x i32] }

@__UNIQUE_ID_author343 = internal constant [47 x i8] c"de2104x.author=Jeff Garzik <jgarzik@pobox.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description344 = internal constant [69 x i8] c"de2104x.description=Intel/Digital 21040/1 series PCI Ethernet driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file345 = internal constant [52 x i8] c"de2104x.file=drivers/net/ethernet/dec/tulip/de2104x\00", section ".modinfo", align 1
@__UNIQUE_ID_license346 = internal constant [20 x i8] c"de2104x.license=GPL\00", section ".modinfo", align 1
@__param_str_debug = internal constant [14 x i8] c"de2104x.debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.97 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype347 = internal constant [27 x i8] c"de2104x.parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug348 = internal constant [59 x i8] c"de2104x.parm=debug:de2104x bitmapped message enable number\00", section ".modinfo", align 1
@__param_str_rx_copybreak = internal constant [21 x i8] c"de2104x.rx_copybreak\00", align 1
@rx_copybreak = internal global { i32, [28 x i8] } { i32 1518, [28 x i8] zeroinitializer }, align 32
@__param_rx_copybreak = internal constant %struct.kernel_param { ptr @__param_str_rx_copybreak, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.97 { ptr @rx_copybreak } }, section "__param", align 4
@__UNIQUE_ID_rx_copybreaktype349 = internal constant [34 x i8] c"de2104x.parmtype=rx_copybreak:int\00", section ".modinfo", align 1
@__UNIQUE_ID_rx_copybreak350 = internal constant [76 x i8] c"de2104x.parm=rx_copybreak:de2104x Breakpoint at which Rx packets are copied\00", section ".modinfo", align 1
@__initcall__kmod_de2104x__360_2197_de_driver_init6 = internal global ptr @de_driver_init, section ".initcall6.init", align 4
@de_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @de_pci_tbl, ptr @de_init_one, ptr @de_remove_one, ptr null, ptr null, ptr @de_shutdown, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @de_pm_ops, ptr null, ptr null }, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_de_driver_exit = internal global ptr @de_driver_exit, section ".exitcall.exit", align 4
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"de2104x\00", [24 x i8] zeroinitializer }, align 32
@de_pci_tbl = internal constant { [3 x %struct.pci_device_id], [32 x i8] } { [3 x %struct.pci_device_id] [%struct.pci_device_id { i32 4113, i32 2, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4113, i32 20, i32 -1, i32 -1, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@de_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @de_suspend, ptr @de_resume, ptr @de_suspend, ptr @de_resume, ptr @de_suspend, ptr @de_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@de_init_one.board_idx = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@de_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @de_open, ptr @de_close, ptr @de_start_xmit, ptr null, ptr null, ptr null, ptr @de_set_rx_mode, ptr @eth_mac_addr, ptr @eth_validate_addr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @de_tx_timeout, ptr null, ptr null, ptr null, ptr @de_get_stats, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@de_ethtool_ops = internal constant { %struct.ethtool_ops, [68 x i8] } { %struct.ethtool_ops { i8 0, i32 0, i32 0, ptr @de_get_drvinfo, ptr @de_get_regs_len, ptr @de_get_regs, ptr null, ptr null, ptr @de_get_msglevel, ptr @de_set_msglevel, ptr @de_nway_reset, ptr @ethtool_op_get_link, ptr null, ptr null, ptr @de_get_eeprom, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @de_get_link_ksettings, ptr @de_set_link_ksettings, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [68 x i8] zeroinitializer }, align 32
@de_init_one.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&de->lock\00", [22 x i8] zeroinitializer }, align 32
@de_init_one.__key.2 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"(&de->media_timer)\00", [45 x i8] zeroinitializer }, align 32
@de_init_one._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 2024, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013de2104x: invalid irq (%d) for pci dev %s\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"de_init_one\00", [20 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/net/ethernet/dec/tulip/de2104x.c\00", [55 x i8] zeroinitializer }, align 32
@de_init_one._entry_ptr = internal global ptr @de_init_one._entry, section ".printk_index", align 4
@de_init_one._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.5, ptr @.str.6, i32 2032, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013de2104x: no MMIO resource for pci dev %s\0A\00", [52 x i8] zeroinitializer }, align 32
@de_init_one._entry_ptr.9 = internal global ptr @de_init_one._entry.7, section ".printk_index", align 4
@de_init_one._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.5, ptr @.str.6, i32 2039, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\013de2104x: MMIO resource (%llx) too small on pci dev %s\0A\00", [39 x i8] zeroinitializer }, align 32
@de_init_one._entry_ptr.12 = internal global ptr @de_init_one._entry.10, section ".printk_index", align 4
@de_init_one._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.5, ptr @.str.6, i32 2049, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\013de2104x: Cannot map PCI MMIO (%llx@%lx) on pci dev %s\0A\00", [39 x i8] zeroinitializer }, align 32
@de_init_one._entry_ptr.15 = internal global ptr @de_init_one._entry.13, section ".printk_index", align 4
@de_init_one._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.5, ptr @.str.6, i32 2059, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013de2104x: Cannot reset MAC, pci dev %s\0A\00", [55 x i8] zeroinitializer }, align 32
@de_init_one._entry_ptr.18 = internal global ptr @de_init_one._entry.16, section ".printk_index", align 4
@.str.19 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s at %p, %pM, IRQ %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"21040\00", [26 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"21041\00", [26 x i8] zeroinitializer }, align 32
@de_open.__UNIQUE_ID_ddebug357 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.22, ptr @.str.6, ptr @.str.23, i8 1, i8 91, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"de_open\00", [24 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"enabling interface\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"ring allocation failure, err=%d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"IRQ %d request failure, err=%d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"h/w init failure, err=%d\0A\00", [38 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.27 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@de_interrupt.__UNIQUE_ID_ddebug353 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.29, ptr @.str.6, ptr @.str.30, i8 0, i8 126, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"de_interrupt\00", [19 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"intr, status %08x mode %08x desc %u/%u/%u\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"PCI bus error, status=%08x, PCI status=%04x\0A\00", [51 x i8] zeroinitializer }, align 32
@de_rx.__UNIQUE_ID_ddebug352 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.32, ptr @.str.6, ptr @.str.33, i8 0, i8 108, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"de_rx\00", [26 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"rx slot %d status 0x%x len %d copying? %d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"rx work limit reached\0A\00", [41 x i8] zeroinitializer }, align 32
@de_rx_err_acct.__UNIQUE_ID_ddebug351 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.35, ptr @.str.6, ptr @.str.36, i8 0, i8 93, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"de_rx_err_acct\00", [17 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"rx err, slot %d status 0x%x len %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"Oversized Ethernet frame spanned multiple buffers, status %08x!\0A\00", [63 x i8] zeroinitializer }, align 32
@de_tx.__UNIQUE_ID_ddebug354 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.38, ptr @.str.6, ptr @.str.39, i8 0, i8 -113, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"de_tx\00", [26 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"tx err, status 0x%x\0A\00", [43 x i8] zeroinitializer }, align 32
@de_tx.__UNIQUE_ID_ddebug355 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.38, ptr @.str.6, ptr @.str.40, i8 0, i8 -110, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"tx done, slot %d\0A\00", [46 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.41 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"timeout expired, stopping DMA\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"chip is running while changing media!\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"set link %s\0A\00", [19 x i8] zeroinitializer }, align 32
@media_name = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50], [44 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"mode 0x%x, sia 0x%x,0x%x,0x%x,0x%x\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"set mode 0x%x, set sia 0x%x,0x%x,0x%x\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"10baseT auto\00", [19 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"BNC\00", [28 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"AUI\00", [28 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"10baseT-HD\00", [21 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"10baseT-FD\00", [21 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"link up, media %s\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"link down\0A\00", [21 x i8] zeroinitializer }, align 32
@de_close.__UNIQUE_ID_ddebug358 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.53, ptr @.str.6, ptr @.str.54, i8 1, i8 101, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"de_close\00", [23 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"disabling interface\0A\00", [43 x i8] zeroinitializer }, align 32
@de_start_xmit.__UNIQUE_ID_ddebug356 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.55, ptr @.str.6, ptr @.str.56, i8 0, i8 -95, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"de_start_xmit\00", [18 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"tx queued, slot %d, skblen %d\0A\00", [33 x i8] zeroinitializer }, align 32
@de_tx_timeout.__UNIQUE_ID_ddebug359 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.57, ptr @.str.6, ptr @.str.58, i8 1, i8 107, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.57 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"de_tx_timeout\00", [18 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"NIC status %08x mode %08x sia %08x desc %u/%u/%u\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"link nway restart, status %x,%x\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s link ok, status %x\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"no link, trying media %s, status %x\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s link ok, mode %x status %x\0A\00", [33 x i8] zeroinitializer }, align 32
@de21040_get_mac_address._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.67, ptr @.str.6, i32 1732, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\014de2104x: timeout reading 21040 MAC address byte %u\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"de21040_get_mac_address\00", [40 x i8] zeroinitializer }, align 32
@de21040_get_mac_address._entry_ptr = internal global ptr @de21040_get_mac_address._entry, section ".printk_index", align 4
@de21041_get_srom_info._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.69, ptr @.str.6, i32 1853, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\016de2104x: de%d: SROM leaf offset %u, default media %s\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"de21041_get_srom_info\00", [42 x i8] zeroinitializer }, align 32
@de21041_get_srom_info._entry_ptr = internal global ptr @de21041_get_srom_info._entry, section ".printk_index", align 4
@de21041_get_srom_info._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.69, ptr @.str.6, i32 1902, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\016de2104x: de%d:   media block #%u: %s\00", [57 x i8] zeroinitializer }, align 32
@de21041_get_srom_info._entry_ptr.72 = internal global ptr @de21041_get_srom_info._entry.70, section ".printk_index", align 4
@de21041_get_srom_info._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.69, ptr @.str.6, i32 1917, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"\01c (%x,%x,%x)\0A\00", [17 x i8] zeroinitializer }, align 32
@de21041_get_srom_info._entry_ptr.75 = internal global ptr @de21041_get_srom_info._entry.73, section ".printk_index", align 4
@de21041_get_srom_info._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.69, ptr @.str.6, i32 1921, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\01c\0A\00", [28 x i8] zeroinitializer }, align 32
@de21041_get_srom_info._entry_ptr.78 = internal global ptr @de21041_get_srom_info._entry.76, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 16, i64 1, i64 2, i64 516]
@__sancov_gen_cov_switch_values.79 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.80 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 3, i64 4]
@__sancov_gen_cov_switch_values.81 = internal global [4 x i64] [i64 2, i64 32, i64 256, i64 2048]
@__sancov_gen_cov_switch_values.82 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.83 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 33]
@__sancov_gen_cov_switch_values.84 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.85 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.86 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 4]
@__sancov_gen_cov_switch_values.87 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 4]
@___asan_gen_.88 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 58, i32 12 }
@___asan_gen_.91 = private unnamed_addr constant [13 x i8] c"rx_copybreak\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 66, i32 12 }
@___asan_gen_.94 = private unnamed_addr constant [10 x i8] c"de_driver\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 2188, i32 26 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 2197, i32 1 }
@___asan_gen_.100 = private unnamed_addr constant [11 x i8] c"de_pci_tbl\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 335, i32 35 }
@___asan_gen_.103 = private unnamed_addr constant [10 x i8] c"de_pm_ops\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 2177, i32 8 }
@___asan_gen_.106 = private unnamed_addr constant [10 x i8] c"board_idx\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 1983, i32 13 }
@___asan_gen_.109 = private unnamed_addr constant [14 x i8] c"de_netdev_ops\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 1965, i32 36 }
@___asan_gen_.112 = private unnamed_addr constant [15 x i8] c"de_ethtool_ops\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 1701, i32 33 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 2003, i32 2 }
@___asan_gen_.121 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 2004, i32 2 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 2023, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 2032, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 2037, i32 3 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 2047, i32 3 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 2059, i32 3 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 2079, i32 19 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 2080, i32 21 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 2080, i32 31 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 1388, i32 2 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 1394, i32 19 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 1402, i32 19 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 1408, i32 19 }
@___asan_gen_.191 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 326, i32 6 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 504, i32 2 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 532, i32 7 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 432, i32 3 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 489, i32 24 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 373, i32 2 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 380, i32 4 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 571, i32 5 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 586, i32 5 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 868, i32 23 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 921, i32 24 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 940, i32 2 }
@___asan_gen_.238 = private unnamed_addr constant [11 x i8] c"media_name\00", align 1
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 344, i32 27 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 941, i32 2 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 944, i32 2 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 345, i32 2 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 346, i32 2 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 347, i32 2 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 348, i32 2 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 349, i32 2 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 902, i32 3 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 911, i32 3 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 1429, i32 2 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 645, i32 2 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 1451, i32 2 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 1684, i32 2 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 983, i32 4 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 1011, i32 2 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 1070, i32 4 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 1731, i32 4 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 1852, i32 3 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 1900, i32 4 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 1914, i32 5 }
@___asan_gen_.328 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.331 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.332 = private constant [44 x i8] c"../drivers/net/ethernet/dec/tulip/de2104x.c\00", align 1
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 1921, i32 5 }
@llvm.compiler.used = appending global [105 x ptr] [ptr @__UNIQUE_ID_author343, ptr @__UNIQUE_ID_debug348, ptr @__UNIQUE_ID_debugtype347, ptr @__UNIQUE_ID_description344, ptr @__UNIQUE_ID_file345, ptr @__UNIQUE_ID_license346, ptr @__UNIQUE_ID_rx_copybreak350, ptr @__UNIQUE_ID_rx_copybreaktype349, ptr @__exitcall_de_driver_exit, ptr @__initcall__kmod_de2104x__360_2197_de_driver_init6, ptr @__param_debug, ptr @__param_rx_copybreak, ptr @de21040_get_mac_address._entry, ptr @de21040_get_mac_address._entry_ptr, ptr @de21041_get_srom_info._entry, ptr @de21041_get_srom_info._entry.70, ptr @de21041_get_srom_info._entry.73, ptr @de21041_get_srom_info._entry.76, ptr @de21041_get_srom_info._entry_ptr, ptr @de21041_get_srom_info._entry_ptr.72, ptr @de21041_get_srom_info._entry_ptr.75, ptr @de21041_get_srom_info._entry_ptr.78, ptr @de_driver_exit, ptr @de_init_one._entry, ptr @de_init_one._entry.10, ptr @de_init_one._entry.13, ptr @de_init_one._entry.16, ptr @de_init_one._entry.7, ptr @de_init_one._entry_ptr, ptr @de_init_one._entry_ptr.12, ptr @de_init_one._entry_ptr.15, ptr @de_init_one._entry_ptr.18, ptr @de_init_one._entry_ptr.9, ptr @debug, ptr @rx_copybreak, ptr @de_driver, ptr @.str, ptr @de_pci_tbl, ptr @de_pm_ops, ptr @de_init_one.board_idx, ptr @de_netdev_ops, ptr @de_ethtool_ops, ptr @de_init_one.__key, ptr @.str.1, ptr @de_init_one.__key.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.14, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @media_name, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.62, ptr @.str.63, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.71, ptr @.str.74, ptr @.str.77], section "llvm.metadata"
@0 = internal global [82 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_copybreak to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @de_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @de_pci_tbl to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @de_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @de_init_one.board_idx to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @de_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @de_ethtool_ops to i32), i32 284, i32 352, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @de_init_one.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @de_init_one.__key.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @de_init_one._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @de_init_one._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @de_init_one._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @de_init_one._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @de_init_one._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @media_name to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @de21040_get_mac_address._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @de21041_get_srom_info._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @de21041_get_srom_info._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @de21041_get_srom_info._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @de21041_get_srom_info._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @de_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @de_driver, ptr noundef null, ptr noundef nonnull @.str) #13
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @de_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @pci_unregister_driver(ptr noundef nonnull @de_driver) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @de_init_one(ptr noundef %pdev, ptr nocapture noundef readonly %ent) #2 align 64 {
entry:
  %ee_data.i = alloca [518 x i8], align 1
  %addr.i = alloca [6 x i8], align 1
  %pmctl.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @de_init_one.board_idx, align 4
  %inc = add i32 %0, 1
  store i32 %inc, ptr @de_init_one.board_idx, align 4
  %call = tail call ptr @alloc_etherdev_mqs(i32 noundef 1928, i32 noundef 1, i32 noundef 1) #13
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 16
  %1 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @de_netdev_ops, ptr %netdev_ops, align 8
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %parent = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 133, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev1, ptr %parent, align 8
  %ethtool_ops = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 44
  %3 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @de_ethtool_ops, ptr %ethtool_ops, align 16
  %watchdog_timeo = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 115
  %4 = ptrtoint ptr %watchdog_timeo to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 600, ptr %watchdog_timeo, align 4
  %add.ptr.i = getelementptr i8, ptr %call, i32 2304
  %driver_data = getelementptr inbounds %struct.pci_device_id, ptr %ent, i32 0, i32 6
  %5 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %driver_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp = icmp eq i32 %6, 0
  %de21040 = getelementptr i8, ptr %call, i32 4228
  %7 = ptrtoint ptr %de21040 to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load = load i8, ptr %de21040, align 4
  %bf.shl = select i1 %cmp, i8 -128, i8 0
  %bf.clear = and i8 %bf.load, 127
  %bf.set = or i8 %bf.clear, %bf.shl
  store i8 %bf.set, ptr %de21040, align 4
  %pdev4 = getelementptr i8, ptr %call, i32 3924
  %8 = ptrtoint ptr %pdev4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %pdev, ptr %pdev4, align 4
  %dev5 = getelementptr i8, ptr %call, i32 2320
  %9 = ptrtoint ptr %dev5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call, ptr %dev5, align 4
  %10 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp6 = icmp slt i32 %10, 0
  %spec.select = select i1 %cmp6, i32 247, i32 %10
  %msg_enable = getelementptr i8, ptr %call, i32 3920
  %11 = ptrtoint ptr %msg_enable to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %spec.select, ptr %msg_enable, align 4
  %12 = load i32, ptr @de_init_one.board_idx, align 4
  %board_idx = getelementptr i8, ptr %call, i32 4224
  %13 = ptrtoint ptr %board_idx to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %board_idx, align 4
  %lock = getelementptr i8, ptr %call, i32 2324
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @de_init_one.__key, i16 noundef signext 3) #13
  %media_timer = getelementptr i8, ptr %call, i32 4172
  %14 = ptrtoint ptr %de21040 to i32
  call void @__asan_load1_noabort(i32 %14)
  %bf.load11 = load i8, ptr %de21040, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load11)
  %tobool12.not = icmp sgt i8 %bf.load11, -1
  %cond13 = select i1 %tobool12.not, ptr @de21041_media_timer, ptr @de21040_media_timer
  tail call void @init_timer_key(ptr noundef %media_timer, ptr noundef nonnull %cond13, i32 noundef 0, ptr noundef nonnull @.str.3, ptr noundef nonnull @de_init_one.__key.2) #13
  tail call void @netif_carrier_off(ptr noundef nonnull %call) #13
  %call16 = tail call i32 @pci_enable_device(ptr noundef %pdev) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %if.end.err_out_free_crit_edge

if.end.err_out_free_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_out_free

if.end19:                                         ; preds = %if.end
  %call20 = tail call i32 @pci_request_regions(ptr noundef %pdev, ptr noundef nonnull @.str) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end23, label %if.end19.err_out_disable_crit_edge

if.end19.err_out_disable_crit_edge:               ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_out_disable

if.end23:                                         ; preds = %if.end19
  %irq = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 46
  %15 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %16)
  %cmp24 = icmp ult i32 %16, 2
  br i1 %cmp24, label %if.then25, label %if.end32

if.then25:                                        ; preds = %if.end23
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 3
  %17 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %18, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then25.pci_name.exit_crit_edge

if.then25.pci_name.exit_crit_edge:                ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #15
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #15
  %19 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev1, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %if.then25.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %20, %if.end.i.i ], [ %18, %if.then25.pci_name.exit_crit_edge ]
  %call31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %16, ptr noundef %retval.0.i.i) #16
  br label %err_out_res

if.end32:                                         ; preds = %if.end23
  %arrayidx = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 1
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool33.not = icmp eq i32 %22, 0
  br i1 %tobool33.not, label %if.then34, label %if.end41

if.then34:                                        ; preds = %if.end32
  %init_name.i.i209 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 3
  %23 = ptrtoint ptr %init_name.i.i209 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %init_name.i.i209, align 8
  %tobool.not.i.i210 = icmp eq ptr %24, null
  br i1 %tobool.not.i.i210, label %if.end.i.i212, label %if.then34.pci_name.exit214_crit_edge

if.then34.pci_name.exit214_crit_edge:             ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #15
  br label %pci_name.exit214

if.end.i.i212:                                    ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #15
  %25 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev1, align 4
  br label %pci_name.exit214

pci_name.exit214:                                 ; preds = %if.end.i.i212, %if.then34.pci_name.exit214_crit_edge
  %retval.0.i.i213 = phi ptr [ %26, %if.end.i.i212 ], [ %24, %if.then34.pci_name.exit214_crit_edge ]
  %call40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %retval.0.i.i213) #16
  br label %err_out_res

if.end41:                                         ; preds = %if.end32
  %end = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 1, i32 1
  %27 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp44 = icmp eq i32 %28, 0
  %sub = sub i32 %28, %22
  %add = add i32 %sub, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %add)
  %phi.cmp = icmp ult i32 %add, 64
  %cond54 = select i1 %cmp44, i1 true, i1 %phi.cmp
  br i1 %cond54, label %if.then56, label %if.end79

if.then56:                                        ; preds = %if.end41
  %spec.select255 = select i1 %cmp44, i32 0, i32 %add
  %conv = zext i32 %spec.select255 to i64
  %init_name.i.i215 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 3
  %29 = ptrtoint ptr %init_name.i.i215 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %init_name.i.i215, align 8
  %tobool.not.i.i216 = icmp eq ptr %30, null
  br i1 %tobool.not.i.i216, label %if.end.i.i218, label %if.then56.pci_name.exit220_crit_edge

if.then56.pci_name.exit220_crit_edge:             ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #15
  br label %pci_name.exit220

if.end.i.i218:                                    ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #15
  %31 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev1, align 4
  br label %pci_name.exit220

pci_name.exit220:                                 ; preds = %if.end.i.i218, %if.then56.pci_name.exit220_crit_edge
  %retval.0.i.i219 = phi ptr [ %32, %if.end.i.i218 ], [ %30, %if.then56.pci_name.exit220_crit_edge ]
  %call78 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i64 noundef %conv, ptr noundef %retval.0.i.i219) #16
  br label %err_out_res

if.end79:                                         ; preds = %if.end41
  %call80 = tail call ptr @ioremap(i32 noundef %22, i32 noundef 64) #13
  %tobool81.not = icmp eq ptr %call80, null
  br i1 %tobool81.not, label %if.then82, label %if.end107

if.then82:                                        ; preds = %if.end79
  %33 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp90 = icmp eq i32 %34, 0
  br i1 %cmp90, label %if.then82.cond.end102_crit_edge, label %cond.false93

if.then82.cond.end102_crit_edge:                  ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end102

cond.false93:                                     ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #15
  %35 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx, align 8
  %sub100 = add i32 %34, 1
  %add101 = sub i32 %sub100, %36
  br label %cond.end102

cond.end102:                                      ; preds = %cond.false93, %if.then82.cond.end102_crit_edge
  %cond103 = phi i32 [ %add101, %cond.false93 ], [ 0, %if.then82.cond.end102_crit_edge ]
  %conv104 = zext i32 %cond103 to i64
  %init_name.i.i221 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 3
  %37 = ptrtoint ptr %init_name.i.i221 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %init_name.i.i221, align 8
  %tobool.not.i.i222 = icmp eq ptr %38, null
  br i1 %tobool.not.i.i222, label %if.end.i.i224, label %cond.end102.pci_name.exit226_crit_edge

cond.end102.pci_name.exit226_crit_edge:           ; preds = %cond.end102
  call void @__sanitizer_cov_trace_pc() #15
  br label %pci_name.exit226

if.end.i.i224:                                    ; preds = %cond.end102
  call void @__sanitizer_cov_trace_pc() #15
  %39 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev1, align 4
  br label %pci_name.exit226

pci_name.exit226:                                 ; preds = %if.end.i.i224, %cond.end102.pci_name.exit226_crit_edge
  %retval.0.i.i225 = phi ptr [ %40, %if.end.i.i224 ], [ %38, %cond.end102.pci_name.exit226_crit_edge ]
  %call106 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, i64 noundef %conv104, i32 noundef %22, ptr noundef %retval.0.i.i225) #16
  br label %err_out_res

if.end107:                                        ; preds = %if.end79
  %regs108 = getelementptr i8, ptr %call, i32 2316
  %41 = ptrtoint ptr %regs108 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call80, ptr %regs108, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pmctl.i) #13
  %42 = ptrtoint ptr %pmctl.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 -1, ptr %pmctl.i, align 4, !annotation !213
  %43 = ptrtoint ptr %de21040 to i32
  call void @__asan_load1_noabort(i32 %43)
  %bf.load.i = load i8, ptr %de21040, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool.not.i, label %if.end.i, label %if.end107.de_adapter_wake.exit_crit_edge

if.end107.de_adapter_wake.exit_crit_edge:         ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #15
  br label %de_adapter_wake.exit

if.end.i:                                         ; preds = %if.end107
  %44 = ptrtoint ptr %pdev4 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %pdev4, align 4
  %call.i = call i32 @pci_read_config_dword(ptr noundef %45, i32 noundef 64, ptr noundef nonnull %pmctl.i) #13
  %46 = ptrtoint ptr %pmctl.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %pmctl.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %47)
  %tobool1.not.i = icmp ult i32 %47, 1073741824
  br i1 %tobool1.not.i, label %if.end.i.de_adapter_wake.exit_crit_edge, label %if.then2.i

if.end.i.de_adapter_wake.exit_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %de_adapter_wake.exit

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %and3.i = and i32 %47, 1073741823
  %48 = ptrtoint ptr %pmctl.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %and3.i, ptr %pmctl.i, align 4
  %49 = ptrtoint ptr %pdev4 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %pdev4, align 4
  %call5.i = call i32 @pci_write_config_dword(ptr noundef %50, i32 noundef 64, i32 noundef %and3.i) #13
  call void @msleep(i32 noundef 10) #13
  br label %de_adapter_wake.exit

de_adapter_wake.exit:                             ; preds = %if.then2.i, %if.end.i.de_adapter_wake.exit_crit_edge, %if.end107.de_adapter_wake.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pmctl.i) #13
  %call109 = call fastcc i32 @de_reset_mac(ptr noundef %add.ptr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call109)
  %tobool110.not = icmp eq i32 %call109, 0
  br i1 %tobool110.not, label %if.end118, label %do.end114

do.end114:                                        ; preds = %de_adapter_wake.exit
  %init_name.i.i227 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 3
  %51 = ptrtoint ptr %init_name.i.i227 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %init_name.i.i227, align 8
  %tobool.not.i.i228 = icmp eq ptr %52, null
  br i1 %tobool.not.i.i228, label %if.end.i.i230, label %do.end114.pci_name.exit232_crit_edge

do.end114.pci_name.exit232_crit_edge:             ; preds = %do.end114
  call void @__sanitizer_cov_trace_pc() #15
  br label %pci_name.exit232

if.end.i.i230:                                    ; preds = %do.end114
  call void @__sanitizer_cov_trace_pc() #15
  %53 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dev1, align 4
  br label %pci_name.exit232

pci_name.exit232:                                 ; preds = %if.end.i.i230, %do.end114.pci_name.exit232_crit_edge
  %retval.0.i.i231 = phi ptr [ %54, %if.end.i.i230 ], [ %52, %do.end114.pci_name.exit232_crit_edge ]
  %call117 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %retval.0.i.i231) #16
  br label %err_out_iomap

if.end118:                                        ; preds = %de_adapter_wake.exit
  %55 = ptrtoint ptr %de21040 to i32
  call void @__asan_load1_noabort(i32 %55)
  %bf.load120 = load i8, ptr %de21040, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load120)
  %tobool123.not = icmp sgt i8 %bf.load120, -1
  br i1 %tobool123.not, label %if.else, label %if.then124

if.then124:                                       ; preds = %if.end118
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %addr.i) #13
  %56 = getelementptr inbounds [6 x i8], ptr %addr.i, i32 0, i32 1
  %57 = getelementptr inbounds [6 x i8], ptr %addr.i, i32 0, i32 2
  %58 = getelementptr inbounds [6 x i8], ptr %addr.i, i32 0, i32 3
  %59 = getelementptr inbounds [6 x i8], ptr %addr.i, i32 0, i32 4
  %60 = getelementptr inbounds [6 x i8], ptr %addr.i, i32 0, i32 5
  %61 = call ptr @memset(ptr %56, i32 255, i32 5)
  %62 = ptrtoint ptr %regs108 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %regs108, align 4
  %add.ptr.i233 = getelementptr i8, ptr %63, i32 72
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !214
  call void @arm_heavy_mb() #13
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i233, i32 0) #13, !srcloc !215
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %64 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %64(i32 noundef 1073740) #13
  br label %do.body.i

do.body.i:                                        ; preds = %land.rhs.i.do.body.i_crit_edge, %if.then124
  %boguscnt.0.i = phi i32 [ %dec.i, %land.rhs.i.do.body.i_crit_edge ], [ 100000, %if.then124 ]
  %65 = ptrtoint ptr %regs108 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %regs108, align 4
  %add.ptr2.i = getelementptr i8, ptr %66, i32 72
  %67 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #13, !srcloc !216
  %68 = call i32 @llvm.bswap.i32(i32 %67) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !217
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !218
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %cmp3.i = icmp slt i32 %68, 0
  br i1 %cmp3.i, label %land.rhs.i, label %do.body.i.do.end.i_crit_edge

do.body.i.do.end.i_crit_edge:                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i

land.rhs.i:                                       ; preds = %do.body.i
  %dec.i = add nsw i32 %boguscnt.0.i, -1
  %cmp4.not.i = icmp eq i32 %dec.i, 0
  br i1 %cmp4.not.i, label %land.rhs.i.do.end.i_crit_edge, label %land.rhs.i.do.body.i_crit_edge

land.rhs.i.do.body.i_crit_edge:                   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.i

land.rhs.i.do.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i

do.end.i:                                         ; preds = %land.rhs.i.do.end.i_crit_edge, %do.body.i.do.end.i_crit_edge
  %boguscnt.1.i = phi i32 [ 0, %land.rhs.i.do.end.i_crit_edge ], [ %boguscnt.0.i, %do.body.i.do.end.i_crit_edge ]
  %conv.i = trunc i32 %68 to i8
  %69 = ptrtoint ptr %addr.i to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %conv.i, ptr %addr.i, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %70 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %70(i32 noundef 214748) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %boguscnt.1.i)
  %cmp5.i = icmp slt i32 %boguscnt.1.i, 1
  br i1 %cmp5.i, label %do.end9.i, label %do.end.i.do.body.1.i.preheader_crit_edge

do.end.i.do.body.1.i.preheader_crit_edge:         ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.1.i.preheader

do.end9.i:                                        ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %call10.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66, i32 noundef 0) #16
  br label %do.body.1.i.preheader

do.body.1.i.preheader:                            ; preds = %do.end9.i, %do.end.i.do.body.1.i.preheader_crit_edge
  br label %do.body.1.i

do.body.1.i:                                      ; preds = %land.rhs.1.i.do.body.1.i_crit_edge, %do.body.1.i.preheader
  %boguscnt.0.1.i = phi i32 [ %dec.1.i, %land.rhs.1.i.do.body.1.i_crit_edge ], [ 100000, %do.body.1.i.preheader ]
  %71 = ptrtoint ptr %regs108 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %regs108, align 4
  %add.ptr2.1.i = getelementptr i8, ptr %72, i32 72
  %73 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.1.i) #13, !srcloc !216
  %74 = call i32 @llvm.bswap.i32(i32 %73) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !217
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !218
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %cmp3.1.i = icmp slt i32 %74, 0
  br i1 %cmp3.1.i, label %land.rhs.1.i, label %do.body.1.i.do.end.1.i_crit_edge

do.body.1.i.do.end.1.i_crit_edge:                 ; preds = %do.body.1.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.1.i

land.rhs.1.i:                                     ; preds = %do.body.1.i
  %dec.1.i = add nsw i32 %boguscnt.0.1.i, -1
  %cmp4.1.not.i = icmp eq i32 %dec.1.i, 0
  br i1 %cmp4.1.not.i, label %land.rhs.1.i.do.end.1.i_crit_edge, label %land.rhs.1.i.do.body.1.i_crit_edge

land.rhs.1.i.do.body.1.i_crit_edge:               ; preds = %land.rhs.1.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.1.i

land.rhs.1.i.do.end.1.i_crit_edge:                ; preds = %land.rhs.1.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.1.i

do.end.1.i:                                       ; preds = %land.rhs.1.i.do.end.1.i_crit_edge, %do.body.1.i.do.end.1.i_crit_edge
  %boguscnt.1.1.i = phi i32 [ 0, %land.rhs.1.i.do.end.1.i_crit_edge ], [ %boguscnt.0.1.i, %do.body.1.i.do.end.1.i_crit_edge ]
  %conv.1.i = trunc i32 %74 to i8
  %75 = ptrtoint ptr %56 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 %conv.1.i, ptr %56, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %76 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %76(i32 noundef 214748) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %boguscnt.1.1.i)
  %cmp5.1.i = icmp slt i32 %boguscnt.1.1.i, 1
  br i1 %cmp5.1.i, label %do.end9.1.i, label %do.end.1.i.do.body.2.i.preheader_crit_edge

do.end.1.i.do.body.2.i.preheader_crit_edge:       ; preds = %do.end.1.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.2.i.preheader

do.end9.1.i:                                      ; preds = %do.end.1.i
  call void @__sanitizer_cov_trace_pc() #15
  %call10.1.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66, i32 noundef 1) #16
  br label %do.body.2.i.preheader

do.body.2.i.preheader:                            ; preds = %do.end9.1.i, %do.end.1.i.do.body.2.i.preheader_crit_edge
  br label %do.body.2.i

do.body.2.i:                                      ; preds = %land.rhs.2.i.do.body.2.i_crit_edge, %do.body.2.i.preheader
  %boguscnt.0.2.i = phi i32 [ %dec.2.i, %land.rhs.2.i.do.body.2.i_crit_edge ], [ 100000, %do.body.2.i.preheader ]
  %77 = ptrtoint ptr %regs108 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %regs108, align 4
  %add.ptr2.2.i = getelementptr i8, ptr %78, i32 72
  %79 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.2.i) #13, !srcloc !216
  %80 = call i32 @llvm.bswap.i32(i32 %79) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !217
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !218
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %cmp3.2.i = icmp slt i32 %80, 0
  br i1 %cmp3.2.i, label %land.rhs.2.i, label %do.body.2.i.do.end.2.i_crit_edge

do.body.2.i.do.end.2.i_crit_edge:                 ; preds = %do.body.2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.2.i

land.rhs.2.i:                                     ; preds = %do.body.2.i
  %dec.2.i = add nsw i32 %boguscnt.0.2.i, -1
  %cmp4.2.not.i = icmp eq i32 %dec.2.i, 0
  br i1 %cmp4.2.not.i, label %land.rhs.2.i.do.end.2.i_crit_edge, label %land.rhs.2.i.do.body.2.i_crit_edge

land.rhs.2.i.do.body.2.i_crit_edge:               ; preds = %land.rhs.2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.2.i

land.rhs.2.i.do.end.2.i_crit_edge:                ; preds = %land.rhs.2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.2.i

do.end.2.i:                                       ; preds = %land.rhs.2.i.do.end.2.i_crit_edge, %do.body.2.i.do.end.2.i_crit_edge
  %boguscnt.1.2.i = phi i32 [ 0, %land.rhs.2.i.do.end.2.i_crit_edge ], [ %boguscnt.0.2.i, %do.body.2.i.do.end.2.i_crit_edge ]
  %conv.2.i = trunc i32 %80 to i8
  %81 = ptrtoint ptr %57 to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 %conv.2.i, ptr %57, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %82 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %82(i32 noundef 214748) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %boguscnt.1.2.i)
  %cmp5.2.i = icmp slt i32 %boguscnt.1.2.i, 1
  br i1 %cmp5.2.i, label %do.end9.2.i, label %do.end.2.i.do.body.3.i.preheader_crit_edge

do.end.2.i.do.body.3.i.preheader_crit_edge:       ; preds = %do.end.2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.3.i.preheader

do.end9.2.i:                                      ; preds = %do.end.2.i
  call void @__sanitizer_cov_trace_pc() #15
  %call10.2.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66, i32 noundef 2) #16
  br label %do.body.3.i.preheader

do.body.3.i.preheader:                            ; preds = %do.end9.2.i, %do.end.2.i.do.body.3.i.preheader_crit_edge
  br label %do.body.3.i

do.body.3.i:                                      ; preds = %land.rhs.3.i.do.body.3.i_crit_edge, %do.body.3.i.preheader
  %boguscnt.0.3.i = phi i32 [ %dec.3.i, %land.rhs.3.i.do.body.3.i_crit_edge ], [ 100000, %do.body.3.i.preheader ]
  %83 = ptrtoint ptr %regs108 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %regs108, align 4
  %add.ptr2.3.i = getelementptr i8, ptr %84, i32 72
  %85 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.3.i) #13, !srcloc !216
  %86 = call i32 @llvm.bswap.i32(i32 %85) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !217
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !218
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %cmp3.3.i = icmp slt i32 %86, 0
  br i1 %cmp3.3.i, label %land.rhs.3.i, label %do.body.3.i.do.end.3.i_crit_edge

do.body.3.i.do.end.3.i_crit_edge:                 ; preds = %do.body.3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.3.i

land.rhs.3.i:                                     ; preds = %do.body.3.i
  %dec.3.i = add nsw i32 %boguscnt.0.3.i, -1
  %cmp4.3.not.i = icmp eq i32 %dec.3.i, 0
  br i1 %cmp4.3.not.i, label %land.rhs.3.i.do.end.3.i_crit_edge, label %land.rhs.3.i.do.body.3.i_crit_edge

land.rhs.3.i.do.body.3.i_crit_edge:               ; preds = %land.rhs.3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.3.i

land.rhs.3.i.do.end.3.i_crit_edge:                ; preds = %land.rhs.3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.3.i

do.end.3.i:                                       ; preds = %land.rhs.3.i.do.end.3.i_crit_edge, %do.body.3.i.do.end.3.i_crit_edge
  %boguscnt.1.3.i = phi i32 [ 0, %land.rhs.3.i.do.end.3.i_crit_edge ], [ %boguscnt.0.3.i, %do.body.3.i.do.end.3.i_crit_edge ]
  %conv.3.i = trunc i32 %86 to i8
  %87 = ptrtoint ptr %58 to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 %conv.3.i, ptr %58, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %88 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %88(i32 noundef 214748) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %boguscnt.1.3.i)
  %cmp5.3.i = icmp slt i32 %boguscnt.1.3.i, 1
  br i1 %cmp5.3.i, label %do.end9.3.i, label %do.end.3.i.do.body.4.i.preheader_crit_edge

do.end.3.i.do.body.4.i.preheader_crit_edge:       ; preds = %do.end.3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.4.i.preheader

do.end9.3.i:                                      ; preds = %do.end.3.i
  call void @__sanitizer_cov_trace_pc() #15
  %call10.3.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66, i32 noundef 3) #16
  br label %do.body.4.i.preheader

do.body.4.i.preheader:                            ; preds = %do.end9.3.i, %do.end.3.i.do.body.4.i.preheader_crit_edge
  br label %do.body.4.i

do.body.4.i:                                      ; preds = %land.rhs.4.i.do.body.4.i_crit_edge, %do.body.4.i.preheader
  %boguscnt.0.4.i = phi i32 [ %dec.4.i, %land.rhs.4.i.do.body.4.i_crit_edge ], [ 100000, %do.body.4.i.preheader ]
  %89 = ptrtoint ptr %regs108 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %regs108, align 4
  %add.ptr2.4.i = getelementptr i8, ptr %90, i32 72
  %91 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.4.i) #13, !srcloc !216
  %92 = call i32 @llvm.bswap.i32(i32 %91) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !217
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !218
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %92)
  %cmp3.4.i = icmp slt i32 %92, 0
  br i1 %cmp3.4.i, label %land.rhs.4.i, label %do.body.4.i.do.end.4.i_crit_edge

do.body.4.i.do.end.4.i_crit_edge:                 ; preds = %do.body.4.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.4.i

land.rhs.4.i:                                     ; preds = %do.body.4.i
  %dec.4.i = add nsw i32 %boguscnt.0.4.i, -1
  %cmp4.4.not.i = icmp eq i32 %dec.4.i, 0
  br i1 %cmp4.4.not.i, label %land.rhs.4.i.do.end.4.i_crit_edge, label %land.rhs.4.i.do.body.4.i_crit_edge

land.rhs.4.i.do.body.4.i_crit_edge:               ; preds = %land.rhs.4.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.4.i

land.rhs.4.i.do.end.4.i_crit_edge:                ; preds = %land.rhs.4.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.4.i

do.end.4.i:                                       ; preds = %land.rhs.4.i.do.end.4.i_crit_edge, %do.body.4.i.do.end.4.i_crit_edge
  %boguscnt.1.4.i = phi i32 [ 0, %land.rhs.4.i.do.end.4.i_crit_edge ], [ %boguscnt.0.4.i, %do.body.4.i.do.end.4.i_crit_edge ]
  %conv.4.i = trunc i32 %92 to i8
  %93 = ptrtoint ptr %59 to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 %conv.4.i, ptr %59, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %94 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %94(i32 noundef 214748) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %boguscnt.1.4.i)
  %cmp5.4.i = icmp slt i32 %boguscnt.1.4.i, 1
  br i1 %cmp5.4.i, label %do.end9.4.i, label %do.end.4.i.do.body.5.i.preheader_crit_edge

do.end.4.i.do.body.5.i.preheader_crit_edge:       ; preds = %do.end.4.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.5.i.preheader

do.end9.4.i:                                      ; preds = %do.end.4.i
  call void @__sanitizer_cov_trace_pc() #15
  %call10.4.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66, i32 noundef 4) #16
  br label %do.body.5.i.preheader

do.body.5.i.preheader:                            ; preds = %do.end9.4.i, %do.end.4.i.do.body.5.i.preheader_crit_edge
  br label %do.body.5.i

do.body.5.i:                                      ; preds = %land.rhs.5.i.do.body.5.i_crit_edge, %do.body.5.i.preheader
  %boguscnt.0.5.i = phi i32 [ %dec.5.i, %land.rhs.5.i.do.body.5.i_crit_edge ], [ 100000, %do.body.5.i.preheader ]
  %95 = ptrtoint ptr %regs108 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %regs108, align 4
  %add.ptr2.5.i = getelementptr i8, ptr %96, i32 72
  %97 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.5.i) #13, !srcloc !216
  %98 = call i32 @llvm.bswap.i32(i32 %97) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !217
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !218
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %98)
  %cmp3.5.i = icmp slt i32 %98, 0
  br i1 %cmp3.5.i, label %land.rhs.5.i, label %do.body.5.i.do.end.5.i_crit_edge

do.body.5.i.do.end.5.i_crit_edge:                 ; preds = %do.body.5.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.5.i

land.rhs.5.i:                                     ; preds = %do.body.5.i
  %dec.5.i = add nsw i32 %boguscnt.0.5.i, -1
  %cmp4.5.not.i = icmp eq i32 %dec.5.i, 0
  br i1 %cmp4.5.not.i, label %land.rhs.5.i.do.end.5.i_crit_edge, label %land.rhs.5.i.do.body.5.i_crit_edge

land.rhs.5.i.do.body.5.i_crit_edge:               ; preds = %land.rhs.5.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.5.i

land.rhs.5.i.do.end.5.i_crit_edge:                ; preds = %land.rhs.5.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.5.i

do.end.5.i:                                       ; preds = %land.rhs.5.i.do.end.5.i_crit_edge, %do.body.5.i.do.end.5.i_crit_edge
  %boguscnt.1.5.i = phi i32 [ 0, %land.rhs.5.i.do.end.5.i_crit_edge ], [ %boguscnt.0.5.i, %do.body.5.i.do.end.5.i_crit_edge ]
  %conv.5.i = trunc i32 %98 to i8
  %99 = ptrtoint ptr %60 to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 %conv.5.i, ptr %60, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %100 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %100(i32 noundef 214748) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %boguscnt.1.5.i)
  %cmp5.5.i = icmp slt i32 %boguscnt.1.5.i, 1
  br i1 %cmp5.5.i, label %do.end9.5.i, label %do.end.5.i.de21040_get_mac_address.exit_crit_edge

do.end.5.i.de21040_get_mac_address.exit_crit_edge: ; preds = %do.end.5.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %de21040_get_mac_address.exit

do.end9.5.i:                                      ; preds = %do.end.5.i
  call void @__sanitizer_cov_trace_pc() #15
  %call10.5.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66, i32 noundef 5) #16
  br label %de21040_get_mac_address.exit

de21040_get_mac_address.exit:                     ; preds = %do.end9.5.i, %do.end.5.i.de21040_get_mac_address.exit_crit_edge
  %101 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %dev5, align 4
  call void @dev_addr_mod(ptr noundef %102, i32 noundef 0, ptr noundef nonnull %addr.i, i32 noundef 6) #13
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr.i) #13
  %media_type.i = getelementptr i8, ptr %call, i32 4120
  %103 = ptrtoint ptr %media_type.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 3, ptr %media_type.i, align 4
  %media_supported.i = getelementptr i8, ptr %call, i32 4124
  %104 = ptrtoint ptr %media_supported.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %media_supported.i, align 4
  %or.i = or i32 %105, 387
  store i32 %or.i, ptr %media_supported.i, align 4
  %media_advertise.i = getelementptr i8, ptr %call, i32 4128
  %106 = ptrtoint ptr %media_advertise.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %or.i, ptr %media_advertise.i, align 4
  %107 = getelementptr i8, ptr %call, i32 4132
  %108 = ptrtoint ptr %107 to i32
  call void @__asan_store2_noabort(i32 %108)
  store i16 5, ptr %107, align 4
  %109 = getelementptr i8, ptr %call, i32 4140
  %110 = ptrtoint ptr %109 to i32
  call void @__asan_store2_noabort(i32 %110)
  store i16 5, ptr %109, align 4
  %csr13.2.i = getelementptr i8, ptr %call, i32 4150
  %111 = ptrtoint ptr %csr13.2.i to i32
  call void @__asan_store2_noabort(i32 %111)
  store i16 -28919, ptr %csr13.2.i, align 2
  %csr14.2.i = getelementptr i8, ptr %call, i32 4152
  %112 = ptrtoint ptr %csr14.2.i to i32
  call void @__asan_store2_noabort(i32 %112)
  store i16 1797, ptr %csr14.2.i, align 4
  %csr15.2.i = getelementptr i8, ptr %call, i32 4154
  %113 = ptrtoint ptr %csr15.2.i to i32
  call void @__asan_store2_noabort(i32 %113)
  store i16 6, ptr %csr15.2.i, align 2
  %114 = getelementptr i8, ptr %call, i32 4148
  %115 = ptrtoint ptr %114 to i32
  call void @__asan_store2_noabort(i32 %115)
  store i16 2, ptr %114, align 4
  %csr13.3.i = getelementptr i8, ptr %call, i32 4158
  %116 = ptrtoint ptr %csr13.3.i to i32
  call void @__asan_store2_noabort(i32 %116)
  store i16 -28927, ptr %csr13.3.i, align 2
  %csr14.3.i = getelementptr i8, ptr %call, i32 4160
  %117 = ptrtoint ptr %csr14.3.i to i32
  call void @__asan_store2_noabort(i32 %117)
  store i16 -1, ptr %csr14.3.i, align 4
  %csr15.3.i = getelementptr i8, ptr %call, i32 4162
  %118 = ptrtoint ptr %csr15.3.i to i32
  call void @__asan_store2_noabort(i32 %118)
  store i16 0, ptr %csr15.3.i, align 2
  %119 = getelementptr i8, ptr %call, i32 4156
  %120 = ptrtoint ptr %119 to i32
  call void @__asan_store2_noabort(i32 %120)
  store i16 3, ptr %119, align 4
  %csr13.4.i = getelementptr i8, ptr %call, i32 4166
  %121 = ptrtoint ptr %csr13.4.i to i32
  call void @__asan_store2_noabort(i32 %121)
  store i16 -28927, ptr %csr13.4.i, align 2
  %csr14.4.i = getelementptr i8, ptr %call, i32 4168
  %122 = ptrtoint ptr %csr14.4.i to i32
  call void @__asan_store2_noabort(i32 %122)
  store i16 -3, ptr %csr14.4.i, align 4
  %csr15.4.i = getelementptr i8, ptr %call, i32 4170
  %123 = ptrtoint ptr %csr15.4.i to i32
  call void @__asan_store2_noabort(i32 %123)
  store i16 0, ptr %csr15.4.i, align 2
  %124 = getelementptr i8, ptr %call, i32 4164
  %125 = ptrtoint ptr %124 to i32
  call void @__asan_store2_noabort(i32 %125)
  store i16 4, ptr %124, align 4
  br label %if.end125

if.else:                                          ; preds = %if.end118
  call void @llvm.lifetime.start.p0(i64 518, ptr nonnull %ee_data.i) #13
  %126 = call ptr @memset(ptr %ee_data.i, i32 0, i32 518)
  %127 = ptrtoint ptr %regs108 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %regs108, align 4
  %call.i237 = call fastcc i32 @tulip_read_eeprom(ptr noundef %128, i32 noundef 255, i32 noundef 8) #13
  %and.i = and i32 %call.i237, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i238 = icmp eq i32 %and.i, 0
  %cond.i = select i1 %tobool.not.i238, i32 6, i32 8
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.else
  %i.0360.i = phi i32 [ 0, %if.else ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %129 = ptrtoint ptr %regs108 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %regs108, align 4
  %call2.i = call fastcc i32 @tulip_read_eeprom(ptr noundef %130, i32 noundef %i.0360.i, i32 noundef %cond.i) #13
  %conv.i239 = trunc i32 %call2.i to i16
  %131 = call i16 @llvm.bswap.i16(i16 %conv.i239) #13
  %arrayidx.i = getelementptr i16, ptr %ee_data.i, i32 %i.0360.i
  %132 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_storeN_noabort(i32 %132, i32 2)
  store i16 %131, ptr %arrayidx.i, align 1
  %inc.i = add nuw nsw i32 %i.0360.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 256
  br i1 %exitcond.not.i, label %for.body6.preheader.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.body6.preheader.i:                            ; preds = %for.body.i
  %133 = ptrtoint ptr %ee_data.i to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %ee_data.i, align 1
  %arrayidx9.i = getelementptr inbounds [518 x i8], ptr %ee_data.i, i32 0, i32 16
  %135 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %arrayidx9.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %134, i8 %136)
  %cmp11.not.i = icmp eq i8 %134, %136
  %arrayidx7.1.i = getelementptr inbounds [518 x i8], ptr %ee_data.i, i32 0, i32 1
  %137 = ptrtoint ptr %arrayidx7.1.i to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %arrayidx7.1.i, align 1
  %arrayidx9.1.i = getelementptr inbounds [518 x i8], ptr %ee_data.i, i32 0, i32 17
  %139 = ptrtoint ptr %arrayidx9.1.i to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %arrayidx9.1.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %138, i8 %140)
  %cmp11.not.1.i = icmp eq i8 %138, %140
  %arrayidx7.2.i = getelementptr inbounds [518 x i8], ptr %ee_data.i, i32 0, i32 2
  %141 = ptrtoint ptr %arrayidx7.2.i to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %arrayidx7.2.i, align 1
  %arrayidx9.2.i = getelementptr inbounds [518 x i8], ptr %ee_data.i, i32 0, i32 18
  %143 = ptrtoint ptr %arrayidx9.2.i to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %arrayidx9.2.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %142, i8 %144)
  %cmp11.not.2.i = icmp eq i8 %142, %144
  %arrayidx7.3.i = getelementptr inbounds [518 x i8], ptr %ee_data.i, i32 0, i32 3
  %145 = ptrtoint ptr %arrayidx7.3.i to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %arrayidx7.3.i, align 1
  %arrayidx9.3.i = getelementptr inbounds [518 x i8], ptr %ee_data.i, i32 0, i32 19
  %147 = ptrtoint ptr %arrayidx9.3.i to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %arrayidx9.3.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %146, i8 %148)
  %cmp11.not.3.i = icmp eq i8 %146, %148
  %arrayidx7.4.i = getelementptr inbounds [518 x i8], ptr %ee_data.i, i32 0, i32 4
  %149 = ptrtoint ptr %arrayidx7.4.i to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %arrayidx7.4.i, align 1
  %arrayidx9.4.i = getelementptr inbounds [518 x i8], ptr %ee_data.i, i32 0, i32 20
  %151 = ptrtoint ptr %arrayidx9.4.i to i32
  call void @__asan_load1_noabort(i32 %151)
  %152 = load i8, ptr %arrayidx9.4.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %150, i8 %152)
  %cmp11.not.4.i = icmp eq i8 %150, %152
  %arrayidx7.5.i = getelementptr inbounds [518 x i8], ptr %ee_data.i, i32 0, i32 5
  %153 = ptrtoint ptr %arrayidx7.5.i to i32
  call void @__asan_load1_noabort(i32 %153)
  %154 = load i8, ptr %arrayidx7.5.i, align 1
  %arrayidx9.5.i = getelementptr inbounds [518 x i8], ptr %ee_data.i, i32 0, i32 21
  %155 = ptrtoint ptr %arrayidx9.5.i to i32
  call void @__asan_load1_noabort(i32 %155)
  %156 = load i8, ptr %arrayidx9.5.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %154, i8 %156)
  %cmp11.not.5.i = icmp eq i8 %154, %156
  %arrayidx7.6.i = getelementptr inbounds [518 x i8], ptr %ee_data.i, i32 0, i32 6
  %157 = ptrtoint ptr %arrayidx7.6.i to i32
  call void @__asan_load1_noabort(i32 %157)
  %158 = load i8, ptr %arrayidx7.6.i, align 1
  %arrayidx9.6.i = getelementptr inbounds [518 x i8], ptr %ee_data.i, i32 0, i32 22
  %159 = ptrtoint ptr %arrayidx9.6.i to i32
  call void @__asan_load1_noabort(i32 %159)
  %160 = load i8, ptr %arrayidx9.6.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %158, i8 %160)
  %cmp11.not.6.i = icmp eq i8 %158, %160
  %arrayidx7.7.i = getelementptr inbounds [518 x i8], ptr %ee_data.i, i32 0, i32 7
  %161 = ptrtoint ptr %arrayidx7.7.i to i32
  call void @__asan_load1_noabort(i32 %161)
  %162 = load i8, ptr %arrayidx7.7.i, align 1
  %arrayidx9.7.i = getelementptr inbounds [518 x i8], ptr %ee_data.i, i32 0, i32 23
  %163 = ptrtoint ptr %arrayidx9.7.i to i32
  call void @__asan_load1_noabort(i32 %163)
  %164 = load i8, ptr %arrayidx9.7.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %162, i8 %164)
  %cmp11.not.7.i = icmp eq i8 %162, %164
  %165 = select i1 %cmp11.not.7.i, i1 %cmp11.not.6.i, i1 false
  %166 = select i1 %165, i1 %cmp11.not.5.i, i1 false
  %167 = select i1 %166, i1 %cmp11.not.4.i, i1 false
  %168 = select i1 %167, i1 %cmp11.not.3.i, i1 false
  %169 = select i1 %168, i1 %cmp11.not.2.i, i1 false
  %170 = select i1 %169, i1 %cmp11.not.1.i, i1 false
  %171 = select i1 %170, i1 %cmp11.not.i, i1 false
  %spec.select.7.i = select i1 %171, i32 0, i32 20
  %172 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %dev5, align 4
  %arrayidx16.i = getelementptr [518 x i8], ptr %ee_data.i, i32 0, i32 %spec.select.7.i
  call void @dev_addr_mod(ptr noundef %173, i32 noundef 0, ptr noundef %arrayidx16.i, i32 noundef 6) #13
  %arrayidx17.i = getelementptr inbounds [518 x i8], ptr %ee_data.i, i32 0, i32 27
  %174 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load1_noabort(i32 %174)
  %175 = load i8, ptr %arrayidx17.i, align 1
  %conv18.i = zext i8 %175 to i32
  %arrayidx23.i = getelementptr [518 x i8], ptr %ee_data.i, i32 0, i32 %conv18.i
  %n_blocks.i = getelementptr inbounds %struct.de_srom_info_leaf, ptr %arrayidx23.i, i32 0, i32 1
  %176 = ptrtoint ptr %n_blocks.i to i32
  call void @__asan_load1_noabort(i32 %176)
  %177 = load i8, ptr %n_blocks.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %177)
  %cmp25.i = icmp eq i8 %177, 0
  br i1 %cmp25.i, label %for.body6.preheader.i.bad_srom.i_crit_edge, label %if.end28.i

for.body6.preheader.i.bad_srom.i_crit_edge:       ; preds = %for.body6.preheader.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %bad_srom.i

if.end28.i:                                       ; preds = %for.body6.preheader.i
  %conv24.i = zext i8 %177 to i32
  %sub.i = sub nuw nsw i32 518, %conv18.i
  %mul.i = mul nuw nsw i32 %conv24.i, 7
  %add31.i = add nuw nsw i32 %mul.i, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %add31.i)
  %cmp32.i = icmp ult i32 %sub.i, %add31.i
  br i1 %cmp32.i, label %if.end28.i.bad_srom.i_crit_edge, label %if.end35.i

if.end28.i.bad_srom.i_crit_edge:                  ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %bad_srom.i

if.end35.i:                                       ; preds = %if.end28.i
  %178 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_loadN_noabort(i32 %178, i32 2)
  %179 = load i16, ptr %arrayidx23.i, align 1
  %180 = zext i16 %179 to i64
  call void @__sanitizer_cov_trace_switch(i64 %180, ptr @__sancov_gen_cov_switch_values)
  switch i16 %179, label %sw.default.i [
    i16 1, label %if.end35.i.sw.epilog.i_crit_edge
    i16 2, label %sw.bb37.i
    i16 516, label %sw.bb39.i
  ]

if.end35.i.sw.epilog.i_crit_edge:                 ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog.i

sw.bb37.i:                                        ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog.i

sw.bb39.i:                                        ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog.i

sw.default.i:                                     ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.default.i, %sw.bb39.i, %sw.bb37.i, %if.end35.i.sw.epilog.i_crit_edge
  %.sink.i = phi i32 [ 0, %sw.default.i ], [ 4, %sw.bb39.i ], [ 2, %sw.bb37.i ], [ 1, %if.end35.i.sw.epilog.i_crit_edge ]
  %media_type41.i = getelementptr i8, ptr %call, i32 4120
  %181 = ptrtoint ptr %media_type41.i to i32
  call void @__asan_store4_noabort(i32 %181)
  store i32 %.sink.i, ptr %media_type41.i, align 4
  %182 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %msg_enable, align 4
  %and42.i = and i32 %183, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42.i)
  %tobool43.not.i = icmp eq i32 %and42.i, 0
  br i1 %tobool43.not.i, label %sw.epilog.i.if.end49.i_crit_edge, label %do.end.i241

sw.epilog.i.if.end49.i_crit_edge:                 ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end49.i

do.end.i241:                                      ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #15
  %184 = ptrtoint ptr %board_idx to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %board_idx, align 4
  %arrayidx47.i = getelementptr [5 x ptr], ptr @media_name, i32 0, i32 %.sink.i
  %186 = ptrtoint ptr %arrayidx47.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %arrayidx47.i, align 4
  %call48.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68, i32 noundef %185, i32 noundef %conv18.i, ptr noundef %187) #16
  br label %if.end49.i

if.end49.i:                                       ; preds = %do.end.i241, %sw.epilog.i.if.end49.i_crit_edge
  %arrayidx54.i = getelementptr i8, ptr %call, i32 4132
  %188 = ptrtoint ptr %arrayidx54.i to i32
  call void @__asan_store2_noabort(i32 %188)
  store i16 5, ptr %arrayidx54.i, align 4
  %csr13.i = getelementptr i8, ptr %call, i32 4134
  %189 = ptrtoint ptr %csr13.i to i32
  call void @__asan_store2_noabort(i32 %189)
  store i16 -1, ptr %csr13.i, align 2
  %csr14.i = getelementptr i8, ptr %call, i32 4136
  %190 = ptrtoint ptr %csr14.i to i32
  call void @__asan_store2_noabort(i32 %190)
  store i16 -1, ptr %csr14.i, align 4
  %csr15.i = getelementptr i8, ptr %call, i32 4138
  %191 = ptrtoint ptr %csr15.i to i32
  call void @__asan_store2_noabort(i32 %191)
  store i16 -1, ptr %csr15.i, align 2
  %arrayidx54.1.i = getelementptr i8, ptr %call, i32 4140
  %192 = ptrtoint ptr %arrayidx54.1.i to i32
  call void @__asan_store2_noabort(i32 %192)
  store i16 5, ptr %arrayidx54.1.i, align 4
  %csr13.1.i = getelementptr i8, ptr %call, i32 4142
  %193 = ptrtoint ptr %csr13.1.i to i32
  call void @__asan_store2_noabort(i32 %193)
  store i16 -1, ptr %csr13.1.i, align 2
  %csr14.1.i = getelementptr i8, ptr %call, i32 4144
  %194 = ptrtoint ptr %csr14.1.i to i32
  call void @__asan_store2_noabort(i32 %194)
  store i16 -1, ptr %csr14.1.i, align 4
  %csr15.1.i = getelementptr i8, ptr %call, i32 4146
  %195 = ptrtoint ptr %csr15.1.i to i32
  call void @__asan_store2_noabort(i32 %195)
  store i16 -1, ptr %csr15.1.i, align 2
  %arrayidx54.2.i = getelementptr i8, ptr %call, i32 4148
  %196 = ptrtoint ptr %arrayidx54.2.i to i32
  call void @__asan_store2_noabort(i32 %196)
  store i16 5, ptr %arrayidx54.2.i, align 4
  %csr13.2.i242 = getelementptr i8, ptr %call, i32 4150
  %197 = ptrtoint ptr %csr13.2.i242 to i32
  call void @__asan_store2_noabort(i32 %197)
  store i16 -1, ptr %csr13.2.i242, align 2
  %csr14.2.i243 = getelementptr i8, ptr %call, i32 4152
  %198 = ptrtoint ptr %csr14.2.i243 to i32
  call void @__asan_store2_noabort(i32 %198)
  store i16 -1, ptr %csr14.2.i243, align 4
  %csr15.2.i244 = getelementptr i8, ptr %call, i32 4154
  %199 = ptrtoint ptr %csr15.2.i244 to i32
  call void @__asan_store2_noabort(i32 %199)
  store i16 -1, ptr %csr15.2.i244, align 2
  %arrayidx54.3.i = getelementptr i8, ptr %call, i32 4156
  %200 = ptrtoint ptr %arrayidx54.3.i to i32
  call void @__asan_store2_noabort(i32 %200)
  store i16 5, ptr %arrayidx54.3.i, align 4
  %csr13.3.i245 = getelementptr i8, ptr %call, i32 4158
  %201 = ptrtoint ptr %csr13.3.i245 to i32
  call void @__asan_store2_noabort(i32 %201)
  store i16 -1, ptr %csr13.3.i245, align 2
  %csr14.3.i246 = getelementptr i8, ptr %call, i32 4160
  %202 = ptrtoint ptr %csr14.3.i246 to i32
  call void @__asan_store2_noabort(i32 %202)
  store i16 -1, ptr %csr14.3.i246, align 4
  %csr15.3.i247 = getelementptr i8, ptr %call, i32 4162
  %203 = ptrtoint ptr %csr15.3.i247 to i32
  call void @__asan_store2_noabort(i32 %203)
  store i16 -1, ptr %csr15.3.i247, align 2
  %arrayidx54.4.i = getelementptr i8, ptr %call, i32 4164
  %204 = ptrtoint ptr %arrayidx54.4.i to i32
  call void @__asan_store2_noabort(i32 %204)
  store i16 5, ptr %arrayidx54.4.i, align 4
  %csr13.4.i248 = getelementptr i8, ptr %call, i32 4166
  %205 = ptrtoint ptr %csr13.4.i248 to i32
  call void @__asan_store2_noabort(i32 %205)
  store i16 -1, ptr %csr13.4.i248, align 2
  %csr14.4.i249 = getelementptr i8, ptr %call, i32 4168
  %206 = ptrtoint ptr %csr14.4.i249 to i32
  call void @__asan_store2_noabort(i32 %206)
  store i16 -1, ptr %csr14.4.i249, align 4
  %csr15.4.i250 = getelementptr i8, ptr %call, i32 4170
  %207 = ptrtoint ptr %csr15.4.i250 to i32
  call void @__asan_store2_noabort(i32 %207)
  store i16 -1, ptr %csr15.4.i250, align 2
  %208 = ptrtoint ptr %n_blocks.i to i32
  call void @__asan_load1_noabort(i32 %208)
  %209 = load i8, ptr %n_blocks.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %209)
  %cmp67365.not.i = icmp eq i8 %209, 0
  br i1 %cmp67365.not.i, label %if.end49.i.for.end178.i_crit_edge, label %for.body69.lr.ph.i

if.end49.i.for.end178.i_crit_edge:                ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end178.i

for.body69.lr.ph.i:                               ; preds = %if.end49.i
  %add.ptr.i251 = getelementptr i8, ptr %arrayidx23.i, i32 4
  %media_supported83.i = getelementptr i8, ptr %call, i32 4124
  %arrayidx170.i = getelementptr inbounds [518 x i8], ptr %ee_data.i, i32 0, i32 509
  br label %for.body69.i

for.cond64.i:                                     ; preds = %if.end169.i
  %inc177.i = add nuw nsw i32 %i.3367.i, 1
  %210 = ptrtoint ptr %n_blocks.i to i32
  call void @__asan_load1_noabort(i32 %210)
  %211 = load i8, ptr %n_blocks.i, align 1
  %conv66.i = zext i8 %211 to i32
  %cmp67.i = icmp ult i32 %inc177.i, %conv66.i
  br i1 %cmp67.i, label %for.cond64.i.for.body69.i_crit_edge, label %for.cond64.i.for.end178.i_crit_edge

for.cond64.i.for.end178.i_crit_edge:              ; preds = %for.cond64.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end178.i

for.cond64.i.for.body69.i_crit_edge:              ; preds = %for.cond64.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body69.i

for.body69.i:                                     ; preds = %for.cond64.i.for.body69.i_crit_edge, %for.body69.lr.ph.i
  %i.3367.i = phi i32 [ 0, %for.body69.lr.ph.i ], [ %inc177.i, %for.cond64.i.for.body69.i_crit_edge ]
  %bufp.0366.i = phi ptr [ %add.ptr.i251, %for.body69.lr.ph.i ], [ %bufp.1.i, %for.cond64.i.for.body69.i_crit_edge ]
  %212 = ptrtoint ptr %bufp.0366.i to i32
  call void @__asan_load1_noabort(i32 %212)
  %213 = load i8, ptr %bufp.0366.i, align 1
  %214 = and i8 %213, 63
  %and71.i = zext i8 %214 to i32
  %215 = zext i32 %and71.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %215, ptr @__sancov_gen_cov_switch_values.79)
  switch i32 %and71.i, label %for.body69.i.bad_srom.i_crit_edge [
    i32 0, label %sw.bb72.i
    i32 1, label %sw.bb76.i
    i32 2, label %sw.bb79.i
    i32 4, label %sw.bb82.i
  ]

for.body69.i.bad_srom.i_crit_edge:                ; preds = %for.body69.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %bad_srom.i

sw.bb72.i:                                        ; preds = %for.body69.i
  call void @__sanitizer_cov_trace_pc() #15
  %216 = ptrtoint ptr %media_supported83.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %media_supported83.i, align 4
  %or.i252 = or i32 %217, 193
  store i32 %or.i252, ptr %media_supported83.i, align 4
  %218 = ptrtoint ptr %arrayidx54.i to i32
  call void @__asan_store2_noabort(i32 %218)
  store i16 0, ptr %arrayidx54.i, align 4
  br label %sw.epilog89.i

sw.bb76.i:                                        ; preds = %for.body69.i
  call void @__sanitizer_cov_trace_pc() #15
  %219 = ptrtoint ptr %media_supported83.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %media_supported83.i, align 4
  %or78.i = or i32 %220, 2048
  store i32 %or78.i, ptr %media_supported83.i, align 4
  br label %sw.epilog89.i

sw.bb79.i:                                        ; preds = %for.body69.i
  call void @__sanitizer_cov_trace_pc() #15
  %221 = ptrtoint ptr %media_supported83.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %media_supported83.i, align 4
  %or81.i = or i32 %222, 256
  store i32 %or81.i, ptr %media_supported83.i, align 4
  br label %sw.epilog89.i

sw.bb82.i:                                        ; preds = %for.body69.i
  call void @__sanitizer_cov_trace_pc() #15
  %223 = ptrtoint ptr %media_supported83.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %media_supported83.i, align 4
  %or84.i = or i32 %224, 194
  store i32 %or84.i, ptr %media_supported83.i, align 4
  %225 = ptrtoint ptr %arrayidx54.i to i32
  call void @__asan_store2_noabort(i32 %225)
  store i16 0, ptr %arrayidx54.i, align 4
  br label %sw.epilog89.i

sw.epilog89.i:                                    ; preds = %sw.bb82.i, %sw.bb79.i, %sw.bb76.i, %sw.bb72.i
  %idx.0.i = phi i32 [ 4, %sw.bb82.i ], [ 2, %sw.bb79.i ], [ 1, %sw.bb76.i ], [ 3, %sw.bb72.i ]
  %conv90.i = trunc i32 %idx.0.i to i16
  %arrayidx92.i = getelementptr %struct.de_private, ptr %add.ptr.i, i32 0, i32 18, i32 %idx.0.i
  %226 = ptrtoint ptr %arrayidx92.i to i32
  call void @__asan_store2_noabort(i32 %226)
  store i16 %conv90.i, ptr %arrayidx92.i, align 4
  %227 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %msg_enable, align 4
  %and95.i = and i32 %228, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and95.i)
  %tobool96.not.i = icmp eq i32 %and95.i, 0
  br i1 %tobool96.not.i, label %sw.epilog89.i.if.end108.i_crit_edge, label %do.end100.i

sw.epilog89.i.if.end108.i_crit_edge:              ; preds = %sw.epilog89.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end108.i

do.end100.i:                                      ; preds = %sw.epilog89.i
  call void @__sanitizer_cov_trace_pc() #15
  %229 = ptrtoint ptr %board_idx to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %board_idx, align 4
  %arrayidx106.i = getelementptr [5 x ptr], ptr @media_name, i32 0, i32 %idx.0.i
  %231 = ptrtoint ptr %arrayidx106.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %arrayidx106.i, align 4
  %call107.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71, i32 noundef %230, i32 noundef %i.3367.i, ptr noundef %232) #16
  br label %if.end108.i

if.end108.i:                                      ; preds = %do.end100.i, %sw.epilog89.i.if.end108.i_crit_edge
  %add.ptr109.i = getelementptr i8, ptr %bufp.0366.i, i32 1
  %233 = ptrtoint ptr %bufp.0366.i to i32
  call void @__asan_load1_noabort(i32 %233)
  %234 = load i8, ptr %bufp.0366.i, align 1
  %235 = and i8 %234, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %235)
  %tobool113.not.i = icmp eq i8 %235, 0
  br i1 %tobool113.not.i, label %if.else.i, label %if.then114.i

if.then114.i:                                     ; preds = %if.end108.i
  %236 = ptrtoint ptr %add.ptr109.i to i32
  call void @__asan_loadN_noabort(i32 %236, i32 2)
  %237 = load i16, ptr %add.ptr109.i, align 1
  %csr13121.i = getelementptr %struct.de_private, ptr %add.ptr.i, i32 0, i32 18, i32 %idx.0.i, i32 1
  %238 = ptrtoint ptr %csr13121.i to i32
  call void @__asan_store2_noabort(i32 %238)
  store i16 %237, ptr %csr13121.i, align 2
  %csr14123.i = getelementptr inbounds %struct.de_srom_media_block, ptr %bufp.0366.i, i32 0, i32 2
  %239 = ptrtoint ptr %csr14123.i to i32
  call void @__asan_loadN_noabort(i32 %239, i32 2)
  %240 = load i16, ptr %csr14123.i, align 1
  %csr14128.i = getelementptr %struct.de_private, ptr %add.ptr.i, i32 0, i32 18, i32 %idx.0.i, i32 2
  %241 = ptrtoint ptr %csr14128.i to i32
  call void @__asan_store2_noabort(i32 %241)
  store i16 %240, ptr %csr14128.i, align 4
  %csr15130.i = getelementptr inbounds %struct.de_srom_media_block, ptr %bufp.0366.i, i32 0, i32 3
  %242 = ptrtoint ptr %csr15130.i to i32
  call void @__asan_loadN_noabort(i32 %242, i32 2)
  %243 = load i16, ptr %csr15130.i, align 1
  %csr15135.i = getelementptr %struct.de_private, ptr %add.ptr.i, i32 0, i32 18, i32 %idx.0.i, i32 3
  %244 = ptrtoint ptr %csr15135.i to i32
  call void @__asan_store2_noabort(i32 %244)
  store i16 %243, ptr %csr15135.i, align 2
  %add.ptr136.i = getelementptr i8, ptr %bufp.0366.i, i32 7
  %245 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load i32, ptr %msg_enable, align 4
  %and138.i = and i32 %246, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and138.i)
  %tobool139.not.i = icmp eq i32 %and138.i, 0
  br i1 %tobool139.not.i, label %if.then114.i.if.end169.i_crit_edge, label %do.end143.i

if.then114.i.if.end169.i_crit_edge:               ; preds = %if.then114.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end169.i

do.end143.i:                                      ; preds = %if.then114.i
  call void @__sanitizer_cov_trace_pc() #15
  %conv148.i = zext i16 %237 to i32
  %conv152.i = zext i16 %240 to i32
  %conv156.i = zext i16 %243 to i32
  %call157.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74, i32 noundef %conv148.i, i32 noundef %conv152.i, i32 noundef %conv156.i) #16
  br label %if.end169.i

if.else.i:                                        ; preds = %if.end108.i
  %247 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load i32, ptr %msg_enable, align 4
  %and160.i = and i32 %248, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and160.i)
  %tobool161.not.i = icmp eq i32 %and160.i, 0
  br i1 %tobool161.not.i, label %if.else.i.if.end169.i_crit_edge, label %do.end165.i

if.else.i.if.end169.i_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end169.i

do.end165.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  %call167.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.77) #16
  br label %if.end169.i

if.end169.i:                                      ; preds = %do.end165.i, %if.else.i.if.end169.i_crit_edge, %do.end143.i, %if.then114.i.if.end169.i_crit_edge
  %bufp.1.i = phi ptr [ %add.ptr136.i, %do.end143.i ], [ %add.ptr136.i, %if.then114.i.if.end169.i_crit_edge ], [ %add.ptr109.i, %do.end165.i ], [ %add.ptr109.i, %if.else.i.if.end169.i_crit_edge ]
  %cmp171.i = icmp ugt ptr %bufp.1.i, %arrayidx170.i
  br i1 %cmp171.i, label %if.end169.i.for.end178.i_crit_edge, label %for.cond64.i

if.end169.i.for.end178.i_crit_edge:               ; preds = %if.end169.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end178.i

for.end178.i:                                     ; preds = %if.end169.i.for.end178.i_crit_edge, %for.cond64.i.for.end178.i_crit_edge, %if.end49.i.for.end178.i_crit_edge
  %media_supported179.i = getelementptr i8, ptr %call, i32 4124
  %249 = ptrtoint ptr %media_supported179.i to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load i32, ptr %media_supported179.i, align 4
  br label %fill_defaults.i

fill_defaults.i:                                  ; preds = %bad_srom.i, %for.end178.i
  %.sink271 = phi i32 [ 4124, %bad_srom.i ], [ 4128, %for.end178.i ]
  %.sink = phi i32 [ 2499, %bad_srom.i ], [ %250, %for.end178.i ]
  %media_supported247.i = getelementptr i8, ptr %call, i32 %.sink271
  %251 = ptrtoint ptr %media_supported247.i to i32
  call void @__asan_store4_noabort(i32 %251)
  store i32 %.sink, ptr %media_supported247.i, align 4
  %csr13186.i = getelementptr i8, ptr %call, i32 4134
  %252 = ptrtoint ptr %csr13186.i to i32
  call void @__asan_load2_noabort(i32 %252)
  %253 = load i16, ptr %csr13186.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %253)
  %cmp188.i = icmp eq i16 %253, -1
  br i1 %cmp188.i, label %if.then190.i, label %fill_defaults.i.if.end195.i_crit_edge

fill_defaults.i.if.end195.i_crit_edge:            ; preds = %fill_defaults.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end195.i

if.then190.i:                                     ; preds = %fill_defaults.i
  call void @__sanitizer_cov_trace_pc() #15
  %254 = ptrtoint ptr %csr13186.i to i32
  call void @__asan_store2_noabort(i32 %254)
  store i16 -4351, ptr %csr13186.i, align 2
  br label %if.end195.i

if.end195.i:                                      ; preds = %if.then190.i, %fill_defaults.i.if.end195.i_crit_edge
  %csr14198.i = getelementptr i8, ptr %call, i32 4136
  %255 = ptrtoint ptr %csr14198.i to i32
  call void @__asan_load2_noabort(i32 %255)
  %256 = load i16, ptr %csr14198.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %256)
  %cmp200.i = icmp eq i16 %256, -1
  br i1 %cmp200.i, label %if.then202.i, label %if.end195.i.if.end217.i_crit_edge

if.end195.i.if.end217.i_crit_edge:                ; preds = %if.end195.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end217.i

if.then202.i:                                     ; preds = %if.end195.i
  call void @__sanitizer_cov_trace_pc() #15
  %257 = ptrtoint ptr %pdev4 to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %pdev4, align 4
  %revision.i = getelementptr inbounds %struct.pci_dev, ptr %258, i32 0, i32 12
  %259 = ptrtoint ptr %revision.i to i32
  call void @__asan_load1_noabort(i32 %259)
  %260 = load i8, ptr %revision.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %260)
  %cmp204.i = icmp ult i8 %260, 32
  %..i = select i1 %cmp204.i, i16 -193, i16 -1
  %261 = ptrtoint ptr %csr14198.i to i32
  call void @__asan_store2_noabort(i32 %261)
  store i16 %..i, ptr %csr14198.i, align 4
  br label %if.end217.i

if.end217.i:                                      ; preds = %if.then202.i, %if.end195.i.if.end217.i_crit_edge
  %csr15220.i = getelementptr i8, ptr %call, i32 4138
  %262 = ptrtoint ptr %csr15220.i to i32
  call void @__asan_load2_noabort(i32 %262)
  %263 = load i16, ptr %csr15220.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %263)
  %cmp222.i = icmp eq i16 %263, -1
  br i1 %cmp222.i, label %if.then224.i, label %if.end217.i.for.inc230.i_crit_edge

if.end217.i.for.inc230.i_crit_edge:               ; preds = %if.end217.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc230.i

if.then224.i:                                     ; preds = %if.end217.i
  call void @__sanitizer_cov_trace_pc() #15
  %264 = ptrtoint ptr %csr15220.i to i32
  call void @__asan_store2_noabort(i32 %264)
  store i16 8, ptr %csr15220.i, align 2
  br label %for.inc230.i

for.inc230.i:                                     ; preds = %if.then224.i, %if.end217.i.for.inc230.i_crit_edge
  %csr13186.1.i = getelementptr i8, ptr %call, i32 4142
  %265 = ptrtoint ptr %csr13186.1.i to i32
  call void @__asan_load2_noabort(i32 %265)
  %266 = load i16, ptr %csr13186.1.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %266)
  %cmp188.1.i = icmp eq i16 %266, -1
  br i1 %cmp188.1.i, label %if.then190.1.i, label %for.inc230.i.if.end195.1.i_crit_edge

for.inc230.i.if.end195.1.i_crit_edge:             ; preds = %for.inc230.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end195.1.i

if.then190.1.i:                                   ; preds = %for.inc230.i
  call void @__sanitizer_cov_trace_pc() #15
  %267 = ptrtoint ptr %csr13186.1.i to i32
  call void @__asan_store2_noabort(i32 %267)
  store i16 -4343, ptr %csr13186.1.i, align 2
  br label %if.end195.1.i

if.end195.1.i:                                    ; preds = %if.then190.1.i, %for.inc230.i.if.end195.1.i_crit_edge
  %csr14198.1.i = getelementptr i8, ptr %call, i32 4144
  %268 = ptrtoint ptr %csr14198.1.i to i32
  call void @__asan_load2_noabort(i32 %268)
  %269 = load i16, ptr %csr14198.1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %269)
  %cmp200.1.i = icmp eq i16 %269, -1
  br i1 %cmp200.1.i, label %if.then202.1.i, label %if.end195.1.i.if.end217.1.i_crit_edge

if.end195.1.i.if.end217.1.i_crit_edge:            ; preds = %if.end195.1.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end217.1.i

if.then202.1.i:                                   ; preds = %if.end195.1.i
  call void @__sanitizer_cov_trace_pc() #15
  %270 = ptrtoint ptr %csr14198.1.i to i32
  call void @__asan_store2_noabort(i32 %270)
  store i16 -2051, ptr %csr14198.1.i, align 4
  br label %if.end217.1.i

if.end217.1.i:                                    ; preds = %if.then202.1.i, %if.end195.1.i.if.end217.1.i_crit_edge
  %csr15220.1.i = getelementptr i8, ptr %call, i32 4146
  %271 = ptrtoint ptr %csr15220.1.i to i32
  call void @__asan_load2_noabort(i32 %271)
  %272 = load i16, ptr %csr15220.1.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %272)
  %cmp222.1.i = icmp eq i16 %272, -1
  br i1 %cmp222.1.i, label %if.then224.1.i, label %if.end217.1.i.for.inc230.1.i_crit_edge

if.end217.1.i.for.inc230.1.i_crit_edge:           ; preds = %if.end217.1.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc230.1.i

if.then224.1.i:                                   ; preds = %if.end217.1.i
  call void @__sanitizer_cov_trace_pc() #15
  %273 = ptrtoint ptr %csr15220.1.i to i32
  call void @__asan_store2_noabort(i32 %273)
  store i16 6, ptr %csr15220.1.i, align 2
  br label %for.inc230.1.i

for.inc230.1.i:                                   ; preds = %if.then224.1.i, %if.end217.1.i.for.inc230.1.i_crit_edge
  %csr13186.2.i = getelementptr i8, ptr %call, i32 4150
  %274 = ptrtoint ptr %csr13186.2.i to i32
  call void @__asan_load2_noabort(i32 %274)
  %275 = load i16, ptr %csr13186.2.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %275)
  %cmp188.2.i = icmp eq i16 %275, -1
  br i1 %cmp188.2.i, label %if.then190.2.i, label %for.inc230.1.i.if.end195.2.i_crit_edge

for.inc230.1.i.if.end195.2.i_crit_edge:           ; preds = %for.inc230.1.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end195.2.i

if.then190.2.i:                                   ; preds = %for.inc230.1.i
  call void @__sanitizer_cov_trace_pc() #15
  %276 = ptrtoint ptr %csr13186.2.i to i32
  call void @__asan_store2_noabort(i32 %276)
  store i16 -4343, ptr %csr13186.2.i, align 2
  br label %if.end195.2.i

if.end195.2.i:                                    ; preds = %if.then190.2.i, %for.inc230.1.i.if.end195.2.i_crit_edge
  %csr14198.2.i = getelementptr i8, ptr %call, i32 4152
  %277 = ptrtoint ptr %csr14198.2.i to i32
  call void @__asan_load2_noabort(i32 %277)
  %278 = load i16, ptr %csr14198.2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %278)
  %cmp200.2.i = icmp eq i16 %278, -1
  br i1 %cmp200.2.i, label %if.then202.2.i, label %if.end195.2.i.if.end217.2.i_crit_edge

if.end195.2.i.if.end217.2.i_crit_edge:            ; preds = %if.end195.2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end217.2.i

if.then202.2.i:                                   ; preds = %if.end195.2.i
  call void @__sanitizer_cov_trace_pc() #15
  %279 = ptrtoint ptr %csr14198.2.i to i32
  call void @__asan_store2_noabort(i32 %279)
  store i16 -2051, ptr %csr14198.2.i, align 4
  br label %if.end217.2.i

if.end217.2.i:                                    ; preds = %if.then202.2.i, %if.end195.2.i.if.end217.2.i_crit_edge
  %csr15220.2.i = getelementptr i8, ptr %call, i32 4154
  %280 = ptrtoint ptr %csr15220.2.i to i32
  call void @__asan_load2_noabort(i32 %280)
  %281 = load i16, ptr %csr15220.2.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %281)
  %cmp222.2.i = icmp eq i16 %281, -1
  br i1 %cmp222.2.i, label %if.then224.2.i, label %if.end217.2.i.for.inc230.2.i_crit_edge

if.end217.2.i.for.inc230.2.i_crit_edge:           ; preds = %if.end217.2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc230.2.i

if.then224.2.i:                                   ; preds = %if.end217.2.i
  call void @__sanitizer_cov_trace_pc() #15
  %282 = ptrtoint ptr %csr15220.2.i to i32
  call void @__asan_store2_noabort(i32 %282)
  store i16 14, ptr %csr15220.2.i, align 2
  br label %for.inc230.2.i

for.inc230.2.i:                                   ; preds = %if.then224.2.i, %if.end217.2.i.for.inc230.2.i_crit_edge
  %csr13186.3.i = getelementptr i8, ptr %call, i32 4158
  %283 = ptrtoint ptr %csr13186.3.i to i32
  call void @__asan_load2_noabort(i32 %283)
  %284 = load i16, ptr %csr13186.3.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %284)
  %cmp188.3.i = icmp eq i16 %284, -1
  br i1 %cmp188.3.i, label %if.then190.3.i, label %for.inc230.2.i.if.end195.3.i_crit_edge

for.inc230.2.i.if.end195.3.i_crit_edge:           ; preds = %for.inc230.2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end195.3.i

if.then190.3.i:                                   ; preds = %for.inc230.2.i
  call void @__sanitizer_cov_trace_pc() #15
  %285 = ptrtoint ptr %csr13186.3.i to i32
  call void @__asan_store2_noabort(i32 %285)
  store i16 -4351, ptr %csr13186.3.i, align 2
  br label %if.end195.3.i

if.end195.3.i:                                    ; preds = %if.then190.3.i, %for.inc230.2.i.if.end195.3.i_crit_edge
  %csr14198.3.i = getelementptr i8, ptr %call, i32 4160
  %286 = ptrtoint ptr %csr14198.3.i to i32
  call void @__asan_load2_noabort(i32 %286)
  %287 = load i16, ptr %csr14198.3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %287)
  %cmp200.3.i = icmp eq i16 %287, -1
  br i1 %cmp200.3.i, label %if.then202.3.i, label %if.end195.3.i.if.end217.3.i_crit_edge

if.end195.3.i.if.end217.3.i_crit_edge:            ; preds = %if.end195.3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end217.3.i

if.then202.3.i:                                   ; preds = %if.end195.3.i
  call void @__sanitizer_cov_trace_pc() #15
  %288 = ptrtoint ptr %csr14198.3.i to i32
  call void @__asan_store2_noabort(i32 %288)
  store i16 32575, ptr %csr14198.3.i, align 4
  br label %if.end217.3.i

if.end217.3.i:                                    ; preds = %if.then202.3.i, %if.end195.3.i.if.end217.3.i_crit_edge
  %csr15220.3.i = getelementptr i8, ptr %call, i32 4162
  %289 = ptrtoint ptr %csr15220.3.i to i32
  call void @__asan_load2_noabort(i32 %289)
  %290 = load i16, ptr %csr15220.3.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %290)
  %cmp222.3.i = icmp eq i16 %290, -1
  br i1 %cmp222.3.i, label %if.then224.3.i, label %if.end217.3.i.for.inc230.3.i_crit_edge

if.end217.3.i.for.inc230.3.i_crit_edge:           ; preds = %if.end217.3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc230.3.i

if.then224.3.i:                                   ; preds = %if.end217.3.i
  call void @__sanitizer_cov_trace_pc() #15
  %291 = ptrtoint ptr %csr15220.3.i to i32
  call void @__asan_store2_noabort(i32 %291)
  store i16 8, ptr %csr15220.3.i, align 2
  br label %for.inc230.3.i

for.inc230.3.i:                                   ; preds = %if.then224.3.i, %if.end217.3.i.for.inc230.3.i_crit_edge
  %csr13186.4.i = getelementptr i8, ptr %call, i32 4166
  %292 = ptrtoint ptr %csr13186.4.i to i32
  call void @__asan_load2_noabort(i32 %292)
  %293 = load i16, ptr %csr13186.4.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %293)
  %cmp188.4.i = icmp eq i16 %293, -1
  br i1 %cmp188.4.i, label %if.then190.4.i, label %for.inc230.3.i.if.end195.4.i_crit_edge

for.inc230.3.i.if.end195.4.i_crit_edge:           ; preds = %for.inc230.3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end195.4.i

if.then190.4.i:                                   ; preds = %for.inc230.3.i
  call void @__sanitizer_cov_trace_pc() #15
  %294 = ptrtoint ptr %csr13186.4.i to i32
  call void @__asan_store2_noabort(i32 %294)
  store i16 -4343, ptr %csr13186.4.i, align 2
  br label %if.end195.4.i

if.end195.4.i:                                    ; preds = %if.then190.4.i, %for.inc230.3.i.if.end195.4.i_crit_edge
  %csr14198.4.i = getelementptr i8, ptr %call, i32 4168
  %295 = ptrtoint ptr %csr14198.4.i to i32
  call void @__asan_load2_noabort(i32 %295)
  %296 = load i16, ptr %csr14198.4.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %296)
  %cmp200.4.i = icmp eq i16 %296, -1
  br i1 %cmp200.4.i, label %if.then202.4.i, label %if.end195.4.i.if.end217.4.i_crit_edge

if.end195.4.i.if.end217.4.i_crit_edge:            ; preds = %if.end195.4.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end217.4.i

if.then202.4.i:                                   ; preds = %if.end195.4.i
  call void @__sanitizer_cov_trace_pc() #15
  %297 = ptrtoint ptr %csr14198.4.i to i32
  call void @__asan_store2_noabort(i32 %297)
  store i16 32573, ptr %csr14198.4.i, align 4
  br label %if.end217.4.i

if.end217.4.i:                                    ; preds = %if.then202.4.i, %if.end195.4.i.if.end217.4.i_crit_edge
  %csr15220.4.i = getelementptr i8, ptr %call, i32 4170
  %298 = ptrtoint ptr %csr15220.4.i to i32
  call void @__asan_load2_noabort(i32 %298)
  %299 = load i16, ptr %csr15220.4.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %299)
  %cmp222.4.i = icmp eq i16 %299, -1
  br i1 %cmp222.4.i, label %if.then224.4.i, label %if.end217.4.i.de21041_get_srom_info.exit_crit_edge

if.end217.4.i.de21041_get_srom_info.exit_crit_edge: ; preds = %if.end217.4.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %de21041_get_srom_info.exit

if.then224.4.i:                                   ; preds = %if.end217.4.i
  call void @__sanitizer_cov_trace_pc() #15
  %300 = ptrtoint ptr %csr15220.4.i to i32
  call void @__asan_store2_noabort(i32 %300)
  store i16 8, ptr %csr15220.4.i, align 2
  br label %de21041_get_srom_info.exit

bad_srom.i:                                       ; preds = %for.body69.i.bad_srom.i_crit_edge, %if.end28.i.bad_srom.i_crit_edge, %for.body6.preheader.i.bad_srom.i_crit_edge
  %arrayidx242.i = getelementptr i8, ptr %call, i32 4132
  %301 = ptrtoint ptr %arrayidx242.i to i32
  call void @__asan_store2_noabort(i32 %301)
  store i16 0, ptr %arrayidx242.i, align 4
  %arrayidx242.1.i = getelementptr i8, ptr %call, i32 4140
  %302 = ptrtoint ptr %arrayidx242.1.i to i32
  call void @__asan_store2_noabort(i32 %302)
  store i16 1, ptr %arrayidx242.1.i, align 4
  %arrayidx242.2.i = getelementptr i8, ptr %call, i32 4148
  %303 = ptrtoint ptr %arrayidx242.2.i to i32
  call void @__asan_store2_noabort(i32 %303)
  store i16 2, ptr %arrayidx242.2.i, align 4
  %arrayidx242.3.i = getelementptr i8, ptr %call, i32 4156
  %304 = ptrtoint ptr %arrayidx242.3.i to i32
  call void @__asan_store2_noabort(i32 %304)
  store i16 3, ptr %arrayidx242.3.i, align 4
  %arrayidx242.4.i = getelementptr i8, ptr %call, i32 4164
  %305 = ptrtoint ptr %arrayidx242.4.i to i32
  call void @__asan_store2_noabort(i32 %305)
  store i16 4, ptr %arrayidx242.4.i, align 4
  br label %fill_defaults.i

de21041_get_srom_info.exit:                       ; preds = %if.then224.4.i, %if.end217.4.i.de21041_get_srom_info.exit_crit_edge
  %call234.i = call ptr @kmemdup(ptr noundef nonnull %ee_data.i, i32 noundef 512, i32 noundef 3264) #13
  %ee_data235.i = getelementptr i8, ptr %call, i32 4220
  %306 = ptrtoint ptr %ee_data235.i to i32
  call void @__asan_store4_noabort(i32 %306)
  store ptr %call234.i, ptr %ee_data235.i, align 4
  call void @llvm.lifetime.end.p0(i64 518, ptr nonnull %ee_data.i) #13
  br label %if.end125

if.end125:                                        ; preds = %de21041_get_srom_info.exit, %de21040_get_mac_address.exit
  %call126 = call i32 @register_netdev(ptr noundef nonnull %call) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call126)
  %tobool127.not = icmp eq i32 %call126, 0
  br i1 %tobool127.not, label %if.end129, label %if.end125.err_out_iomap_crit_edge

if.end125.err_out_iomap_crit_edge:                ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_out_iomap

if.end129:                                        ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #15
  %307 = ptrtoint ptr %de21040 to i32
  call void @__asan_load1_noabort(i32 %307)
  %bf.load131 = load i8, ptr %de21040, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load131)
  %tobool134.not = icmp sgt i8 %bf.load131, -1
  %cond135 = select i1 %tobool134.not, ptr @.str.21, ptr @.str.20
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 86
  %308 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load ptr, ptr %dev_addr, align 64
  %310 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load i32, ptr %irq, align 4
  call void (ptr, ptr, ...) @netdev_info(ptr noundef nonnull %call, ptr noundef nonnull @.str.19, ptr noundef nonnull %cond135, ptr noundef nonnull %call80, ptr noundef %309, i32 noundef %311) #16
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %312 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %312)
  store ptr %call, ptr %driver_data.i.i, align 4
  call void @pci_set_master(ptr noundef %pdev) #13
  call fastcc void @de_adapter_sleep(ptr noundef %add.ptr.i)
  br label %cleanup

err_out_iomap:                                    ; preds = %if.end125.err_out_iomap_crit_edge, %pci_name.exit232
  %rc.0 = phi i32 [ %call109, %pci_name.exit232 ], [ %call126, %if.end125.err_out_iomap_crit_edge ]
  %ee_data = getelementptr i8, ptr %call, i32 4220
  %313 = ptrtoint ptr %ee_data to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load ptr, ptr %ee_data, align 4
  call void @kfree(ptr noundef %314) #13
  call void @iounmap(ptr noundef nonnull %call80) #13
  br label %err_out_res

err_out_res:                                      ; preds = %err_out_iomap, %pci_name.exit226, %pci_name.exit220, %pci_name.exit214, %pci_name.exit
  %rc.1 = phi i32 [ -5, %pci_name.exit ], [ -5, %pci_name.exit220 ], [ %rc.0, %err_out_iomap ], [ -5, %pci_name.exit226 ], [ -5, %pci_name.exit214 ]
  call void @pci_release_regions(ptr noundef %pdev) #13
  br label %err_out_disable

err_out_disable:                                  ; preds = %err_out_res, %if.end19.err_out_disable_crit_edge
  %rc.2 = phi i32 [ %call20, %if.end19.err_out_disable_crit_edge ], [ %rc.1, %err_out_res ]
  call void @pci_disable_device(ptr noundef %pdev) #13
  br label %err_out_free

err_out_free:                                     ; preds = %err_out_disable, %if.end.err_out_free_crit_edge
  %rc.3 = phi i32 [ %call16, %if.end.err_out_free_crit_edge ], [ %rc.2, %err_out_disable ]
  call void @free_netdev(ptr noundef nonnull %call) #13
  br label %cleanup

cleanup:                                          ; preds = %err_out_free, %if.end129, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.3, %err_out_free ], [ 0, %if.end129 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @de_remove_one(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.body5, label %do.end10, !prof !219

do.body5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/dec/tulip/de2104x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2110, 0\0A.popsection", ""() #13, !srcloc !220
  unreachable

do.end10:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @unregister_netdev(ptr noundef nonnull %1) #13
  %ee_data = getelementptr i8, ptr %1, i32 4220
  %2 = ptrtoint ptr %ee_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ee_data, align 4
  tail call void @kfree(ptr noundef %3) #13
  %regs = getelementptr i8, ptr %1, i32 2316
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs, align 4
  tail call void @iounmap(ptr noundef %5) #13
  tail call void @pci_release_regions(ptr noundef %pdev) #13
  tail call void @pci_disable_device(ptr noundef %pdev) #13
  tail call void @free_netdev(ptr noundef nonnull %1) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @de_shutdown(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @rtnl_lock() #13
  tail call void @dev_close(ptr noundef %1) #13
  tail call void @rtnl_unlock() #13
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_etherdev_mqs(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @de21040_media_timer(ptr noundef %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -1868
  %dev1 = getelementptr i8, ptr %t, i32 -1852
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %regs = getelementptr i8, ptr %t, i32 -1856
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 4
  %add.ptr2 = getelementptr i8, ptr %3, i32 96
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2) #13, !srcloc !216
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !217
  %6 = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool3.not.not = icmp eq i32 %6, 0
  br i1 %tobool3.not.not, label %if.then, label %if.end16

if.then:                                          ; preds = %entry
  %media_type = getelementptr i8, ptr %t, i32 -52
  %7 = ptrtoint ptr %media_type to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %media_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %8)
  %cmp.not = icmp eq i32 %8, 2
  %and4 = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  %or.cond = select i1 %cmp.not, i1 true, i1 %tobool5.not
  br i1 %or.cond, label %if.end, label %if.then.no_link_yet_crit_edge

if.then.no_link_yet_crit_edge:                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %no_link_yet

if.end:                                           ; preds = %if.then
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %9 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %9, 6000
  %expires = getelementptr inbounds %struct.timer_list, ptr %t, i32 0, i32 1
  %10 = ptrtoint ptr %expires to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %add, ptr %expires, align 4
  tail call void @add_timer(ptr noundef %t) #13
  %state.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %11 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %state.i, align 4
  %13 = and i32 %12, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i = icmp eq i32 %13, 0
  br i1 %tobool.not.i, label %do.body, label %if.then9

if.then9:                                         ; preds = %if.end
  %14 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev1, align 4
  %state.i.i = getelementptr inbounds %struct.net_device, ptr %15, i32 0, i32 6
  %16 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %state.i.i, align 4
  %18 = and i32 %17, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.i.i = icmp eq i32 %18, 0
  br i1 %tobool.not.i.i, label %if.then9.cleanup_crit_edge, label %if.then.i

if.then9.cleanup_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then.i:                                        ; preds = %if.then9
  tail call void @netif_carrier_on(ptr noundef %15) #13
  %msg_enable.i = getelementptr i8, ptr %t, i32 -252
  %19 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %msg_enable.i, align 4
  %and.i = and i32 %20, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i80 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i80, label %if.then.i.cleanup_crit_edge, label %if.then2.i

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then2.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  %21 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev1, align 4
  %23 = ptrtoint ptr %media_type to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %media_type, align 4
  %arrayidx.i = getelementptr [5 x ptr], ptr @media_name, i32 0, i32 %24
  %25 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx.i, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %22, ptr noundef nonnull @.str.51, ptr noundef %26) #16
  br label %cleanup

do.body:                                          ; preds = %if.end
  %msg_enable = getelementptr i8, ptr %t, i32 -252
  %27 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %msg_enable, align 4
  %and10 = and i32 %28, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %do.body.cleanup_crit_edge, label %if.then12

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then12:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %29 = ptrtoint ptr %media_type to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %media_type, align 4
  %arrayidx = getelementptr [5 x ptr], ptr @media_name, i32 0, i32 %30
  %31 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %1, ptr noundef nonnull @.str.60, ptr noundef %32, i32 noundef %5) #16
  br label %cleanup

if.end16:                                         ; preds = %entry
  %33 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev1, align 4
  %state.i.i82 = getelementptr inbounds %struct.net_device, ptr %34, i32 0, i32 6
  %35 = ptrtoint ptr %state.i.i82 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %state.i.i82, align 4
  %37 = and i32 %36, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool.not.i.i83 = icmp eq i32 %37, 0
  br i1 %tobool.not.i.i83, label %if.then.i87, label %if.end16.de_link_down.exit_crit_edge

if.end16.de_link_down.exit_crit_edge:             ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #15
  br label %de_link_down.exit

if.then.i87:                                      ; preds = %if.end16
  tail call void @netif_carrier_off(ptr noundef %34) #13
  %msg_enable.i84 = getelementptr i8, ptr %t, i32 -252
  %38 = ptrtoint ptr %msg_enable.i84 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %msg_enable.i84, align 4
  %and.i85 = and i32 %39, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i85)
  %tobool.not.i86 = icmp eq i32 %and.i85, 0
  br i1 %tobool.not.i86, label %if.then.i87.de_link_down.exit_crit_edge, label %if.then2.i88

if.then.i87.de_link_down.exit_crit_edge:          ; preds = %if.then.i87
  call void @__sanitizer_cov_trace_pc() #15
  br label %de_link_down.exit

if.then2.i88:                                     ; preds = %if.then.i87
  call void @__sanitizer_cov_trace_pc() #15
  %40 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev1, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %41, ptr noundef nonnull @.str.52) #16
  br label %de_link_down.exit

de_link_down.exit:                                ; preds = %if.then2.i88, %if.then.i87.de_link_down.exit_crit_edge, %if.end16.de_link_down.exit_crit_edge
  %media_lock = getelementptr i8, ptr %t, i32 56
  %42 = ptrtoint ptr %media_lock to i32
  call void @__asan_load1_noabort(i32 %42)
  %bf.load = load i8, ptr %media_lock, align 4
  %43 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool17.not = icmp eq i8 %43, 0
  br i1 %tobool17.not, label %if.end19, label %de_link_down.exit.cleanup_crit_edge

de_link_down.exit.cleanup_crit_edge:              ; preds = %de_link_down.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end19:                                         ; preds = %de_link_down.exit
  %media_type20 = getelementptr i8, ptr %t, i32 -52
  %44 = ptrtoint ptr %media_type20 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %media_type20, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %45)
  %cmp21 = icmp eq i32 %45, 2
  %media_advertise25.i.i = getelementptr i8, ptr %t, i32 -44
  %46 = ptrtoint ptr %media_advertise25.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %media_advertise25.i.i, align 4
  br i1 %cmp21, label %if.then22, label %if.else23

if.then22:                                        ; preds = %if.end19
  %and20.i.i = and i32 %47, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20.i.i)
  %tobool21.not.i.i = icmp eq i32 %and20.i.i, 0
  br i1 %tobool21.not.i.i, label %if.then22.do.body26_crit_edge, label %if.then22.do.body26.sink.split_crit_edge

if.then22.do.body26.sink.split_crit_edge:         ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body26.sink.split

if.then22.do.body26_crit_edge:                    ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body26

if.else23:                                        ; preds = %if.end19
  %and14.i.i106 = and i32 %47, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i.i106)
  %tobool15.not.i.i107 = icmp eq i32 %and14.i.i106, 0
  br i1 %tobool15.not.i.i107, label %if.else23.do.body26_crit_edge, label %if.else23.do.body26.sink.split_crit_edge

if.else23.do.body26.sink.split_crit_edge:         ; preds = %if.else23
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body26.sink.split

if.else23.do.body26_crit_edge:                    ; preds = %if.else23
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body26

do.body26.sink.split:                             ; preds = %if.else23.do.body26.sink.split_crit_edge, %if.then22.do.body26.sink.split_crit_edge
  %.sink = phi i32 [ 3, %if.then22.do.body26.sink.split_crit_edge ], [ 2, %if.else23.do.body26.sink.split_crit_edge ]
  %48 = ptrtoint ptr %media_type20 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %.sink, ptr %media_type20, align 4
  br label %do.body26

do.body26:                                        ; preds = %do.body26.sink.split, %if.else23.do.body26_crit_edge, %if.then22.do.body26_crit_edge
  %lock = getelementptr i8, ptr %t, i32 -1848
  %call30 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #13
  tail call fastcc void @de_stop_rxtx(ptr noundef %add.ptr)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call30) #13
  tail call fastcc void @de_set_media(ptr noundef %add.ptr)
  %49 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %regs, align 4
  %add.ptr.i = getelementptr i8, ptr %50, i32 48
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #13, !srcloc !216
  %52 = tail call i32 @llvm.bswap.i32(i32 %51) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !217
  %and.i121 = and i32 %52, 8194
  call void @__sanitizer_cov_trace_const_cmp4(i32 8194, i32 %and.i121)
  %cmp.not.i = icmp eq i32 %and.i121, 8194
  br i1 %cmp.not.i, label %do.body26.no_link_yet_crit_edge, label %if.then.i122

do.body26.no_link_yet_crit_edge:                  ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #15
  br label %no_link_yet

if.then.i122:                                     ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #15
  %or.i = or i32 %52, 8194
  %53 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %regs, align 4
  %add.ptr2.i = getelementptr i8, ptr %54, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !214
  tail call void @arm_heavy_mb() #13
  %55 = tail call i32 @llvm.bswap.i32(i32 %or.i) #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 %55) #13, !srcloc !215
  %56 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %regs, align 4
  %add.ptr4.i = getelementptr i8, ptr %57, i32 48
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i) #13, !srcloc !216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !217
  br label %no_link_yet

no_link_yet:                                      ; preds = %if.then.i122, %do.body26.no_link_yet_crit_edge, %if.then.no_link_yet_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %59 = load volatile i32, ptr @jiffies, align 128
  %add36 = add i32 %59, 500
  %expires38 = getelementptr inbounds %struct.timer_list, ptr %t, i32 0, i32 1
  %60 = ptrtoint ptr %expires38 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %add36, ptr %expires38, align 4
  tail call void @add_timer(ptr noundef %t) #13
  %msg_enable41 = getelementptr i8, ptr %t, i32 -252
  %61 = ptrtoint ptr %msg_enable41 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %msg_enable41, align 4
  %and42 = and i32 %62, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42)
  %tobool43.not = icmp eq i32 %and42, 0
  br i1 %tobool43.not, label %no_link_yet.cleanup_crit_edge, label %if.then44

no_link_yet.cleanup_crit_edge:                    ; preds = %no_link_yet
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then44:                                        ; preds = %no_link_yet
  call void @__sanitizer_cov_trace_pc() #15
  %media_type45 = getelementptr i8, ptr %t, i32 -52
  %63 = ptrtoint ptr %media_type45 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %media_type45, align 4
  %arrayidx46 = getelementptr [5 x ptr], ptr @media_name, i32 0, i32 %64
  %65 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %arrayidx46, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %1, ptr noundef nonnull @.str.62, ptr noundef %66, i32 noundef %5) #16
  br label %cleanup

cleanup:                                          ; preds = %if.then44, %no_link_yet.cleanup_crit_edge, %de_link_down.exit.cleanup_crit_edge, %if.then12, %do.body.cleanup_crit_edge, %if.then2.i, %if.then.i.cleanup_crit_edge, %if.then9.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @de21041_media_timer(ptr noundef %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -1868
  %dev1 = getelementptr i8, ptr %t, i32 -1852
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %regs = getelementptr i8, ptr %t, i32 -1856
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 4
  %add.ptr2 = getelementptr i8, ptr %3, i32 96
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2) #13, !srcloc !216
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !217
  %6 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs, align 4
  %add.ptr4 = getelementptr i8, ptr %7, i32 96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !214
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 196608) #13, !srcloc !215
  %8 = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool5.not.not = icmp eq i32 %8, 0
  br i1 %tobool5.not.not, label %if.then, label %if.end26

if.then:                                          ; preds = %entry
  %media_type = getelementptr i8, ptr %t, i32 -52
  %9 = ptrtoint ptr %media_type to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %media_type, align 4
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.80)
  switch i32 %10, label %if.then.if.end_crit_edge [
    i32 0, label %if.then.land.lhs.true_crit_edge
    i32 3, label %if.then.land.lhs.true_crit_edge259
    i32 4, label %if.then.land.lhs.true_crit_edge260
  ]

if.then.land.lhs.true_crit_edge260:               ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true

if.then.land.lhs.true_crit_edge259:               ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true

if.then.land.lhs.true_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.lhs.true:                                    ; preds = %if.then.land.lhs.true_crit_edge, %if.then.land.lhs.true_crit_edge259, %if.then.land.lhs.true_crit_edge260
  %and11 = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.no_link_yet_crit_edge

land.lhs.true.no_link_yet_crit_edge:              ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %no_link_yet

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %if.then.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %12 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %12, 6000
  %expires = getelementptr inbounds %struct.timer_list, ptr %t, i32 0, i32 1
  %13 = ptrtoint ptr %expires to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %add, ptr %expires, align 4
  tail call void @add_timer(ptr noundef %t) #13
  %state.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %14 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %state.i, align 4
  %16 = and i32 %15, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not.i = icmp eq i32 %16, 0
  br i1 %tobool.not.i, label %do.body, label %if.then16

if.then16:                                        ; preds = %if.end
  %17 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev1, align 4
  %state.i.i = getelementptr inbounds %struct.net_device, ptr %18, i32 0, i32 6
  %19 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %state.i.i, align 4
  %21 = and i32 %20, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not.i.i = icmp eq i32 %21, 0
  br i1 %tobool.not.i.i, label %if.then16.cleanup105_crit_edge, label %if.then.i

if.then16.cleanup105_crit_edge:                   ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup105

if.then.i:                                        ; preds = %if.then16
  tail call void @netif_carrier_on(ptr noundef %18) #13
  %msg_enable.i = getelementptr i8, ptr %t, i32 -252
  %22 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %msg_enable.i, align 4
  %and.i = and i32 %23, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i159 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i159, label %if.then.i.cleanup105_crit_edge, label %if.then2.i

if.then.i.cleanup105_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup105

if.then2.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  %24 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev1, align 4
  %26 = ptrtoint ptr %media_type to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %media_type, align 4
  %arrayidx.i = getelementptr [5 x ptr], ptr @media_name, i32 0, i32 %27
  %28 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx.i, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %25, ptr noundef nonnull @.str.51, ptr noundef %29) #16
  br label %cleanup105

do.body:                                          ; preds = %if.end
  %msg_enable = getelementptr i8, ptr %t, i32 -252
  %30 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %msg_enable, align 4
  %and17 = and i32 %31, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %do.body.cleanup105_crit_edge, label %if.then19

do.body.cleanup105_crit_edge:                     ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup105

if.then19:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %32 = ptrtoint ptr %media_type to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %media_type, align 4
  %arrayidx = getelementptr [5 x ptr], ptr @media_name, i32 0, i32 %33
  %34 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx, align 4
  %36 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regs, align 4
  %add.ptr22 = getelementptr i8, ptr %37, i32 48
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr22) #13, !srcloc !216
  %39 = tail call i32 @llvm.bswap.i32(i32 %38) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !217
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %1, ptr noundef nonnull @.str.63, ptr noundef %35, i32 noundef %39, i32 noundef %5) #16
  br label %cleanup105

if.end26:                                         ; preds = %entry
  %40 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev1, align 4
  %state.i.i161 = getelementptr inbounds %struct.net_device, ptr %41, i32 0, i32 6
  %42 = ptrtoint ptr %state.i.i161 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %state.i.i161, align 4
  %44 = and i32 %43, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool.not.i.i162 = icmp eq i32 %44, 0
  br i1 %tobool.not.i.i162, label %if.then.i166, label %if.end26.de_link_down.exit_crit_edge

if.end26.de_link_down.exit_crit_edge:             ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #15
  br label %de_link_down.exit

if.then.i166:                                     ; preds = %if.end26
  tail call void @netif_carrier_off(ptr noundef %41) #13
  %msg_enable.i163 = getelementptr i8, ptr %t, i32 -252
  %45 = ptrtoint ptr %msg_enable.i163 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %msg_enable.i163, align 4
  %and.i164 = and i32 %46, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i164)
  %tobool.not.i165 = icmp eq i32 %and.i164, 0
  br i1 %tobool.not.i165, label %if.then.i166.de_link_down.exit_crit_edge, label %if.then2.i167

if.then.i166.de_link_down.exit_crit_edge:         ; preds = %if.then.i166
  call void @__sanitizer_cov_trace_pc() #15
  br label %de_link_down.exit

if.then2.i167:                                    ; preds = %if.then.i166
  call void @__sanitizer_cov_trace_pc() #15
  %47 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev1, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %48, ptr noundef nonnull @.str.52) #16
  br label %de_link_down.exit

de_link_down.exit:                                ; preds = %if.then2.i167, %if.then.i166.de_link_down.exit_crit_edge, %if.end26.de_link_down.exit_crit_edge
  %media_lock = getelementptr i8, ptr %t, i32 56
  %49 = ptrtoint ptr %media_lock to i32
  call void @__asan_load1_noabort(i32 %49)
  %bf.load = load i8, ptr %media_lock, align 4
  %50 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool27.not = icmp eq i8 %50, 0
  br i1 %tobool27.not, label %if.end29, label %de_link_down.exit.do.body81_crit_edge

de_link_down.exit.do.body81_crit_edge:            ; preds = %de_link_down.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body81

if.end29:                                         ; preds = %de_link_down.exit
  %and30 = and i32 %5, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  br i1 %tobool31.not, label %if.end29.if.end69_crit_edge, label %if.then32

if.end29.if.end69_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

if.then32:                                        ; preds = %if.end29
  %media_type33 = getelementptr i8, ptr %t, i32 -52
  %51 = ptrtoint ptr %media_type33 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %media_type33, align 4
  %.off = add i32 %52, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.then38, label %if.else45

if.then38:                                        ; preds = %if.then32
  %media_advertise.i = getelementptr i8, ptr %t, i32 -44
  %53 = ptrtoint ptr %media_advertise.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %media_advertise.i, align 4
  %and.i168 = and i32 %54, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i168)
  %tobool.not.i169 = icmp eq i32 %and.i168, 0
  %and2.i = and i32 %54, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp eq i32 %and2.i, 0
  %or.cond.i = or i1 %tobool.not.i169, %tobool3.not.i
  br i1 %or.cond.i, label %if.then38.if.end69_crit_edge, label %if.then41

if.then38.if.end69_crit_edge:                     ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

if.then41:                                        ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #15
  %55 = ptrtoint ptr %media_type33 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 0, ptr %media_type33, align 4
  br label %do.body81

if.else45:                                        ; preds = %if.then32
  %media_supported = getelementptr i8, ptr %t, i32 -48
  %56 = ptrtoint ptr %media_supported to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %media_supported, align 4
  %and46 = and i32 %57, 2304
  %58 = zext i32 %and46 to i64
  call void @__sanitizer_cov_trace_switch(i64 %58, ptr @__sancov_gen_cov_switch_values.81)
  switch i32 %and46, label %if.else45.if.end69_crit_edge [
    i32 2048, label %land.lhs.true48
    i32 256, label %land.lhs.true57
  ]

if.else45.if.end69_crit_edge:                     ; preds = %if.else45
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

land.lhs.true48:                                  ; preds = %if.else45
  %media_advertise7.i = getelementptr i8, ptr %t, i32 -44
  %59 = ptrtoint ptr %media_advertise7.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %media_advertise7.i, align 4
  %and8.i = and i32 %60, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i)
  %tobool9.not.i = icmp eq i32 %and8.i, 0
  br i1 %tobool9.not.i, label %land.lhs.true48.if.end69_crit_edge, label %if.then51

land.lhs.true48.if.end69_crit_edge:               ; preds = %land.lhs.true48
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

if.then51:                                        ; preds = %land.lhs.true48
  call void @__sanitizer_cov_trace_pc() #15
  %61 = ptrtoint ptr %media_type33 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 1, ptr %media_type33, align 4
  br label %do.body81

land.lhs.true57:                                  ; preds = %if.else45
  %media_advertise13.i = getelementptr i8, ptr %t, i32 -44
  %62 = ptrtoint ptr %media_advertise13.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %media_advertise13.i, align 4
  %and14.i = and i32 %63, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i)
  %tobool15.not.i = icmp eq i32 %and14.i, 0
  br i1 %tobool15.not.i, label %land.lhs.true57.if.end69_crit_edge, label %if.then60

land.lhs.true57.if.end69_crit_edge:               ; preds = %land.lhs.true57
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

if.then60:                                        ; preds = %land.lhs.true57
  call void @__sanitizer_cov_trace_pc() #15
  %64 = ptrtoint ptr %media_type33 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 2, ptr %media_type33, align 4
  br label %do.body81

if.end69:                                         ; preds = %land.lhs.true57.if.end69_crit_edge, %land.lhs.true48.if.end69_crit_edge, %if.else45.if.end69_crit_edge, %if.then38.if.end69_crit_edge, %if.end29.if.end69_crit_edge
  %media_type70 = getelementptr i8, ptr %t, i32 -52
  %65 = ptrtoint ptr %media_type70 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %media_type70, align 4
  %67 = zext i32 %66 to i64
  call void @__sanitizer_cov_trace_switch(i64 %67, ptr @__sancov_gen_cov_switch_values.82)
  switch i32 %66, label %sw.bb12.i.i223 [
    i32 2, label %sw.bb6.i.i
    i32 1, label %sw.bb.i.i189
  ]

sw.bb6.i.i:                                       ; preds = %if.end69
  %media_advertise25.i.i = getelementptr i8, ptr %t, i32 -44
  %68 = ptrtoint ptr %media_advertise25.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %media_advertise25.i.i, align 4
  %and8.i.i = and i32 %69, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i.i)
  %tobool9.not.i.i = icmp eq i32 %and8.i.i, 0
  br i1 %tobool9.not.i.i, label %sw.bb.i.i.1, label %sw.bb6.i.i.if.then.i179_crit_edge

sw.bb6.i.i.if.then.i179_crit_edge:                ; preds = %sw.bb6.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i179

if.then.i179:                                     ; preds = %sw.bb.i.i.1.if.then.i179_crit_edge, %sw.bb6.i.i.if.then.i179_crit_edge
  %.lcssa255 = phi i32 [ 1, %sw.bb6.i.i.if.then.i179_crit_edge ], [ 0, %sw.bb.i.i.1.if.then.i179_crit_edge ]
  %70 = ptrtoint ptr %media_type70 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %.lcssa255, ptr %media_type70, align 4
  br label %do.body81

sw.bb.i.i.1:                                      ; preds = %sw.bb6.i.i
  %71 = ptrtoint ptr %media_advertise25.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %media_advertise25.i.i, align 4
  %and.i.i.1 = and i32 %72, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.1)
  %tobool.not.i.i177.1 = icmp eq i32 %and.i.i.1, 0
  %and2.i.i.1 = and i32 %72, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.1)
  %tobool3.not.i.i.1 = icmp eq i32 %and2.i.i.1, 0
  %or.cond.i.i.1 = or i1 %tobool.not.i.i177.1, %tobool3.not.i.i.1
  br i1 %or.cond.i.i.1, label %sw.bb.i.i.1.do.body81_crit_edge, label %sw.bb.i.i.1.if.then.i179_crit_edge

sw.bb.i.i.1.if.then.i179_crit_edge:               ; preds = %sw.bb.i.i.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i179

sw.bb.i.i.1.do.body81_crit_edge:                  ; preds = %sw.bb.i.i.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body81

sw.bb.i.i189:                                     ; preds = %if.end69
  %media_advertise25.i.i180 = getelementptr i8, ptr %t, i32 -44
  %73 = ptrtoint ptr %media_advertise25.i.i180 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %media_advertise25.i.i180, align 4
  %and.i.i184 = and i32 %74, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i184)
  %tobool.not.i.i185 = icmp eq i32 %and.i.i184, 0
  %and2.i.i186 = and i32 %74, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i186)
  %tobool3.not.i.i187 = icmp eq i32 %and2.i.i186, 0
  %or.cond.i.i188 = or i1 %tobool.not.i.i185, %tobool3.not.i.i187
  br i1 %or.cond.i.i188, label %sw.bb12.i.i195.1, label %sw.bb.i.i189.if.then.i203_crit_edge

sw.bb.i.i189.if.then.i203_crit_edge:              ; preds = %sw.bb.i.i189
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i203

if.then.i203:                                     ; preds = %sw.bb12.i.i195.1.if.then.i203_crit_edge, %sw.bb.i.i189.if.then.i203_crit_edge
  %.lcssa257 = phi i32 [ 0, %sw.bb.i.i189.if.then.i203_crit_edge ], [ 2, %sw.bb12.i.i195.1.if.then.i203_crit_edge ]
  %75 = ptrtoint ptr %media_type70 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %.lcssa257, ptr %media_type70, align 4
  br label %do.body81

sw.bb12.i.i195.1:                                 ; preds = %sw.bb.i.i189
  %76 = ptrtoint ptr %media_advertise25.i.i180 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %media_advertise25.i.i180, align 4
  %and14.i.i193.1 = and i32 %77, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i.i193.1)
  %tobool15.not.i.i194.1 = icmp eq i32 %and14.i.i193.1, 0
  br i1 %tobool15.not.i.i194.1, label %sw.bb12.i.i195.1.do.body81_crit_edge, label %sw.bb12.i.i195.1.if.then.i203_crit_edge

sw.bb12.i.i195.1.if.then.i203_crit_edge:          ; preds = %sw.bb12.i.i195.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i203

sw.bb12.i.i195.1.do.body81_crit_edge:             ; preds = %sw.bb12.i.i195.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body81

sw.bb12.i.i223:                                   ; preds = %if.end69
  %media_advertise25.i.i208 = getelementptr i8, ptr %t, i32 -44
  %78 = ptrtoint ptr %media_advertise25.i.i208 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %media_advertise25.i.i208, align 4
  %and14.i.i221 = and i32 %79, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i.i221)
  %tobool15.not.i.i222 = icmp eq i32 %and14.i.i221, 0
  br i1 %tobool15.not.i.i222, label %sw.bb6.i.i220.1, label %sw.bb12.i.i223.if.then.i231_crit_edge

sw.bb12.i.i223.if.then.i231_crit_edge:            ; preds = %sw.bb12.i.i223
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i231

if.then.i231:                                     ; preds = %sw.bb.i.i217.2.if.then.i231_crit_edge, %sw.bb6.i.i220.1.if.then.i231_crit_edge, %sw.bb12.i.i223.if.then.i231_crit_edge
  %.lcssa = phi i32 [ 2, %sw.bb12.i.i223.if.then.i231_crit_edge ], [ 1, %sw.bb6.i.i220.1.if.then.i231_crit_edge ], [ 0, %sw.bb.i.i217.2.if.then.i231_crit_edge ]
  %80 = ptrtoint ptr %media_type70 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %.lcssa, ptr %media_type70, align 4
  br label %do.body81

sw.bb6.i.i220.1:                                  ; preds = %sw.bb12.i.i223
  %81 = ptrtoint ptr %media_advertise25.i.i208 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %media_advertise25.i.i208, align 4
  %and8.i.i218.1 = and i32 %82, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i.i218.1)
  %tobool9.not.i.i219.1 = icmp eq i32 %and8.i.i218.1, 0
  br i1 %tobool9.not.i.i219.1, label %sw.bb.i.i217.2, label %sw.bb6.i.i220.1.if.then.i231_crit_edge

sw.bb6.i.i220.1.if.then.i231_crit_edge:           ; preds = %sw.bb6.i.i220.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i231

sw.bb.i.i217.2:                                   ; preds = %sw.bb6.i.i220.1
  %83 = ptrtoint ptr %media_advertise25.i.i208 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %media_advertise25.i.i208, align 4
  %and.i.i212.2 = and i32 %84, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i212.2)
  %tobool.not.i.i213.2 = icmp eq i32 %and.i.i212.2, 0
  %and2.i.i214.2 = and i32 %84, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i214.2)
  %tobool3.not.i.i215.2 = icmp eq i32 %and2.i.i214.2, 0
  %or.cond.i.i216.2 = or i1 %tobool.not.i.i213.2, %tobool3.not.i.i215.2
  br i1 %or.cond.i.i216.2, label %sw.bb.i.i217.2.do.body81_crit_edge, label %sw.bb.i.i217.2.if.then.i231_crit_edge

sw.bb.i.i217.2.if.then.i231_crit_edge:            ; preds = %sw.bb.i.i217.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i231

sw.bb.i.i217.2.do.body81_crit_edge:               ; preds = %sw.bb.i.i217.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body81

do.body81:                                        ; preds = %sw.bb.i.i217.2.do.body81_crit_edge, %if.then.i231, %sw.bb12.i.i195.1.do.body81_crit_edge, %if.then.i203, %sw.bb.i.i.1.do.body81_crit_edge, %if.then.i179, %if.then60, %if.then51, %if.then41, %de_link_down.exit.do.body81_crit_edge
  %lock = getelementptr i8, ptr %t, i32 -1848
  %call85 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #13
  tail call fastcc void @de_stop_rxtx(ptr noundef %add.ptr)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call85) #13
  tail call fastcc void @de_set_media(ptr noundef %add.ptr)
  %85 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %regs, align 4
  %add.ptr.i = getelementptr i8, ptr %86, i32 48
  %87 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #13, !srcloc !216
  %88 = tail call i32 @llvm.bswap.i32(i32 %87) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !217
  %and.i236 = and i32 %88, 8194
  call void @__sanitizer_cov_trace_const_cmp4(i32 8194, i32 %and.i236)
  %cmp.not.i = icmp eq i32 %and.i236, 8194
  br i1 %cmp.not.i, label %do.body81.no_link_yet_crit_edge, label %if.then.i237

do.body81.no_link_yet_crit_edge:                  ; preds = %do.body81
  call void @__sanitizer_cov_trace_pc() #15
  br label %no_link_yet

if.then.i237:                                     ; preds = %do.body81
  call void @__sanitizer_cov_trace_pc() #15
  %or.i = or i32 %88, 8194
  %89 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %regs, align 4
  %add.ptr2.i = getelementptr i8, ptr %90, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !214
  tail call void @arm_heavy_mb() #13
  %91 = tail call i32 @llvm.bswap.i32(i32 %or.i) #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 %91) #13, !srcloc !215
  %92 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %regs, align 4
  %add.ptr4.i = getelementptr i8, ptr %93, i32 48
  %94 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i) #13, !srcloc !216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !217
  br label %no_link_yet

no_link_yet:                                      ; preds = %if.then.i237, %do.body81.no_link_yet_crit_edge, %land.lhs.true.no_link_yet_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %95 = load volatile i32, ptr @jiffies, align 128
  %add91 = add i32 %95, 500
  %expires93 = getelementptr inbounds %struct.timer_list, ptr %t, i32 0, i32 1
  %96 = ptrtoint ptr %expires93 to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %add91, ptr %expires93, align 4
  tail call void @add_timer(ptr noundef %t) #13
  %msg_enable96 = getelementptr i8, ptr %t, i32 -252
  %97 = ptrtoint ptr %msg_enable96 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %msg_enable96, align 4
  %and97 = and i32 %98, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and97)
  %tobool98.not = icmp eq i32 %and97, 0
  br i1 %tobool98.not, label %no_link_yet.cleanup105_crit_edge, label %if.then99

no_link_yet.cleanup105_crit_edge:                 ; preds = %no_link_yet
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup105

if.then99:                                        ; preds = %no_link_yet
  call void @__sanitizer_cov_trace_pc() #15
  %media_type100 = getelementptr i8, ptr %t, i32 -52
  %99 = ptrtoint ptr %media_type100 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %media_type100, align 4
  %arrayidx101 = getelementptr [5 x ptr], ptr @media_name, i32 0, i32 %100
  %101 = ptrtoint ptr %arrayidx101 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %arrayidx101, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %1, ptr noundef nonnull @.str.62, ptr noundef %102, i32 noundef %5) #16
  br label %cleanup105

cleanup105:                                       ; preds = %if.then99, %no_link_yet.cleanup105_crit_edge, %if.then19, %do.body.cleanup105_crit_edge, %if.then2.i, %if.then.i.cleanup105_crit_edge, %if.then16.cleanup105_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_request_regions(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @de_reset_mac(ptr nocapture noundef readonly %de) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr inbounds %struct.de_private, ptr %de, i32 0, i32 3
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #13, !srcloc !216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !217
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %2)
  %cmp = icmp eq i32 %2, -1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %3 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !214
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 16777216) #13, !srcloc !215
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 214748000) #13
  %6 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !214
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 8650752) #13, !srcloc !215
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 214748000) #13
  %9 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs, align 4
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #13, !srcloc !216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !217
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 214748000) #13
  %13 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs, align 4
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #13, !srcloc !216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !217
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 214748000) #13
  %17 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs, align 4
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #13, !srcloc !216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !217
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %20(i32 noundef 214748000) #13
  %21 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regs, align 4
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #13, !srcloc !216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !217
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %24(i32 noundef 214748000) #13
  %25 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regs, align 4
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %26) #13, !srcloc !216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !217
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %28 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %28(i32 noundef 214748000) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %29(i32 noundef 214748000) #13
  %30 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regs, align 4
  %add.ptr10 = getelementptr i8, ptr %31, i32 40
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10) #13, !srcloc !216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !217
  %33 = and i32 %32, 32256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool.not = icmp eq i32 %33, 0
  %spec.select = select i1 %tobool.not, i32 0, i32 -16
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %entry.cleanup_crit_edge ], [ %spec.select, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @de_adapter_sleep(ptr nocapture noundef readonly %de) unnamed_addr #2 align 64 {
entry:
  %pmctl = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pmctl) #13
  %0 = ptrtoint ptr %pmctl to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %pmctl, align 4, !annotation !213
  %de21040 = getelementptr inbounds %struct.de_private, ptr %de, i32 0, i32 22
  %1 = ptrtoint ptr %de21040 to i32
  call void @__asan_load1_noabort(i32 %1)
  %bf.load = load i8, ptr %de21040, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %regs = getelementptr inbounds %struct.de_private, ptr %de, i32 0, i32 3
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !214
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #13, !srcloc !215
  %pdev = getelementptr inbounds %struct.de_private, ptr %de, i32 0, i32 13
  %4 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdev, align 4
  %call = call i32 @pci_read_config_dword(ptr noundef %5, i32 noundef 64, ptr noundef nonnull %pmctl) #13
  %6 = ptrtoint ptr %pmctl to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pmctl, align 4
  %or = or i32 %7, -2147483648
  store i32 %or, ptr %pmctl, align 4
  %8 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pdev, align 4
  %call2 = call i32 @pci_write_config_dword(ptr noundef %9, i32 noundef 64, i32 noundef %or) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pmctl) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_release_regions(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @de_open(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %pdev = getelementptr i8, ptr %dev, i32 3924
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 4
  %irq1 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 46
  %2 = ptrtoint ptr %irq1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq1, align 4
  %msg_enable = getelementptr i8, ptr %dev, i32 3920
  %4 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %msg_enable, align 4
  %and = and i32 %5, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end11_crit_edge, label %do.body2

entry.do.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end11

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @de_open.__UNIQUE_ID_ddebug357, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@de_open, %do.end11)) #13
          to label %if.then8 [label %do.end11], !srcloc !221

if.then8:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @de_open.__UNIQUE_ID_ddebug357, ptr noundef %dev, ptr noundef nonnull @.str.23) #13
  br label %do.end11

do.end11:                                         ; preds = %if.then8, %do.body2, %entry.do.end11_crit_edge
  %mtu = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 20
  %6 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mtu, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1501, i32 %7)
  %cmp = icmp ult i32 %7, 1501
  %add = add i32 %7, 32
  %spec.select = select i1 %cmp, i32 1536, i32 %add
  %rx_buf_sz = getelementptr i8, ptr %dev, i32 3912
  %8 = ptrtoint ptr %rx_buf_sz to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %spec.select, ptr %rx_buf_sz, align 4
  %9 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pdev, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 44
  %ring_dma.i = getelementptr i8, ptr %dev, i32 3916
  %call.i.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev.i, i32 noundef 3072, ptr noundef %ring_dma.i, i32 noundef 3264, i32 noundef 0) #13
  %rx_ring.i = getelementptr i8, ptr %dev, i32 2368
  %11 = ptrtoint ptr %rx_ring.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call.i.i, ptr %rx_ring.i, align 4
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %do.end11.if.then15_crit_edge, label %de_alloc_rings.exit

do.end11.if.then15_crit_edge:                     ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then15

de_alloc_rings.exit:                              ; preds = %do.end11
  %arrayidx.i = getelementptr %struct.de_desc, ptr %call.i.i, i32 128
  %tx_ring.i = getelementptr i8, ptr %dev, i32 2372
  %12 = ptrtoint ptr %tx_ring.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %arrayidx.i, ptr %tx_ring.i, align 4
  %call3.i = tail call fastcc i32 @de_init_rings(ptr noundef %add.ptr.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool14.not = icmp eq i32 %call3.i, 0
  br i1 %tobool14.not, label %if.end16, label %de_alloc_rings.exit.if.then15_crit_edge

de_alloc_rings.exit.if.then15_crit_edge:          ; preds = %de_alloc_rings.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then15

if.then15:                                        ; preds = %de_alloc_rings.exit.if.then15_crit_edge, %do.end11.if.then15_crit_edge
  %retval.0.i5665 = phi i32 [ %call3.i, %de_alloc_rings.exit.if.then15_crit_edge ], [ -12, %do.end11.if.then15_crit_edge ]
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.24, i32 noundef %retval.0.i5665) #16
  br label %cleanup

if.end16:                                         ; preds = %de_alloc_rings.exit
  %regs = getelementptr i8, ptr %dev, i32 2316
  %13 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %14, i32 56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !214
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #13, !srcloc !215
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %3, ptr noundef nonnull @de_interrupt, ptr noundef null, i32 noundef 128, ptr noundef %dev, ptr noundef %dev) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool18.not = icmp eq i32 %call.i, 0
  br i1 %tobool18.not, label %if.end20, label %if.then19

if.then19:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.25, i32 noundef %3, i32 noundef %call.i) #16
  br label %err_out_free

if.end20:                                         ; preds = %if.end16
  %call21 = tail call fastcc i32 @de_init_hw(ptr noundef %add.ptr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end24, label %if.then23

if.then23:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.26, i32 noundef %call21) #16
  %call27 = tail call ptr @free_irq(i32 noundef %3, ptr noundef %dev) #13
  br label %err_out_free

if.end24:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #15
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %15 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %16, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i) #13
  %media_timer = getelementptr i8, ptr %dev, i32 4172
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %17 = load volatile i32, ptr @jiffies, align 128
  %add25 = add i32 %17, 500
  %call26 = tail call i32 @mod_timer(ptr noundef %media_timer, i32 noundef %add25) #13
  br label %cleanup

err_out_free:                                     ; preds = %if.then23, %if.then19
  %rc.0 = phi i32 [ %call.i, %if.then19 ], [ %call21, %if.then23 ]
  tail call fastcc void @de_clean_rings(ptr noundef %add.ptr.i) #13
  %18 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pdev, align 4
  %dev.i58 = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 44
  %20 = ptrtoint ptr %rx_ring.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rx_ring.i, align 4
  %22 = ptrtoint ptr %ring_dma.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %ring_dma.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev.i58, i32 noundef 3072, ptr noundef %21, i32 noundef %23, i32 noundef 0) #13
  %24 = ptrtoint ptr %rx_ring.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %rx_ring.i, align 4
  %25 = ptrtoint ptr %tx_ring.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %tx_ring.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %err_out_free, %if.end24, %if.then15
  %retval.0 = phi i32 [ %retval.0.i5665, %if.then15 ], [ %rc.0, %err_out_free ], [ 0, %if.end24 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @de_close(ptr noundef %dev) #2 align 64 {
entry:
  %pmctl.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %msg_enable = getelementptr i8, ptr %dev, i32 3920
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msg_enable, align 4
  %and = and i32 %1, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end10_crit_edge, label %do.body1

entry.do.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end10

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @de_close.__UNIQUE_ID_ddebug358, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@de_close, %do.end10)) #13
          to label %if.then7 [label %do.end10], !srcloc !221

if.then7:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @de_close.__UNIQUE_ID_ddebug358, ptr noundef %dev, ptr noundef nonnull @.str.54) #13
  br label %do.end10

do.end10:                                         ; preds = %if.then7, %do.body1, %entry.do.end10_crit_edge
  %media_timer = getelementptr i8, ptr %dev, i32 4172
  %call11 = tail call i32 @del_timer_sync(ptr noundef %media_timer) #13
  %lock = getelementptr i8, ptr %dev, i32 2324
  %call16 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %2(i32 noundef 1073740) #13
  %regs.i = getelementptr i8, ptr %dev, i32 2316
  %3 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regs.i, align 4
  %add.ptr.i34 = getelementptr i8, ptr %4, i32 56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !214
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i34, i32 0) #13, !srcloc !215
  tail call fastcc void @de_stop_rxtx(ptr noundef %add.ptr.i) #13
  %5 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %6, i32 40
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #13, !srcloc !216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !217
  %8 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %9, i32 40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !214
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %7) #13, !srcloc !215
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 2147480) #13
  %rx_tail.i = getelementptr i8, ptr %dev, i32 2312
  %11 = ptrtoint ptr %rx_tail.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %rx_tail.i, align 4
  %tx_tail.i = getelementptr i8, ptr %dev, i32 2308
  %12 = ptrtoint ptr %tx_tail.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %tx_tail.i, align 4
  %13 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %add.ptr.i, align 4
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %14 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %15, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #13
  tail call void @netif_carrier_off(ptr noundef %dev) #13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call16) #13
  %pdev = getelementptr i8, ptr %dev, i32 3924
  %16 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pdev, align 4
  %irq = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 46
  %18 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %irq, align 4
  %call22 = tail call ptr @free_irq(i32 noundef %19, ptr noundef %dev) #13
  tail call fastcc void @de_clean_rings(ptr noundef %add.ptr.i) #13
  %20 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pdev, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %21, i32 0, i32 44
  %rx_ring.i = getelementptr i8, ptr %dev, i32 2368
  %22 = ptrtoint ptr %rx_ring.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %rx_ring.i, align 4
  %ring_dma.i = getelementptr i8, ptr %dev, i32 3916
  %24 = ptrtoint ptr %ring_dma.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %ring_dma.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev.i, i32 noundef 3072, ptr noundef %23, i32 noundef %25, i32 noundef 0) #13
  %26 = ptrtoint ptr %rx_ring.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %rx_ring.i, align 4
  %tx_ring.i = getelementptr i8, ptr %dev, i32 2372
  %27 = ptrtoint ptr %tx_ring.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %tx_ring.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pmctl.i) #13
  %28 = ptrtoint ptr %pmctl.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 -1, ptr %pmctl.i, align 4, !annotation !213
  %de21040.i = getelementptr i8, ptr %dev, i32 4228
  %29 = ptrtoint ptr %de21040.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %bf.load.i = load i8, ptr %de21040.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool.not.i, label %if.end.i, label %do.end10.de_adapter_sleep.exit_crit_edge

do.end10.de_adapter_sleep.exit_crit_edge:         ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #15
  br label %de_adapter_sleep.exit

if.end.i:                                         ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #15
  %30 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regs.i, align 4
  %add.ptr.i36 = getelementptr i8, ptr %31, i32 104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !214
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i36, i32 0) #13, !srcloc !215
  %32 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pdev, align 4
  %call.i = call i32 @pci_read_config_dword(ptr noundef %33, i32 noundef 64, ptr noundef nonnull %pmctl.i) #13
  %34 = ptrtoint ptr %pmctl.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %pmctl.i, align 4
  %or.i = or i32 %35, -2147483648
  store i32 %or.i, ptr %pmctl.i, align 4
  %36 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pdev, align 4
  %call2.i = call i32 @pci_write_config_dword(ptr noundef %37, i32 noundef 64, i32 noundef %or.i) #13
  br label %de_adapter_sleep.exit

de_adapter_sleep.exit:                            ; preds = %if.end.i, %do.end10.de_adapter_sleep.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pmctl.i) #13
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @de_start_xmit(ptr noundef %skb, ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %lock = getelementptr i8, ptr %dev, i32 2324
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #13
  %tx_tail = getelementptr i8, ptr %dev, i32 2308
  %0 = ptrtoint ptr %tx_tail to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tx_tail, align 4
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp.not = icmp ugt i32 %1, %3
  %add = add i32 %1, 63
  %sub = sub i32 %add, %3
  %4 = xor i32 %3, -1
  %sub7 = add i32 %1, %4
  %cond = select i1 %cmp.not, i32 %sub7, i32 %sub
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond)
  %cmp8 = icmp eq i32 %cond, 0
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %5 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %6, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #13
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %tx_ring = getelementptr i8, ptr %dev, i32 2372
  %7 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tx_ring, align 4
  %arrayidx = getelementptr %struct.de_desc, ptr %8, i32 %3
  %len11 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %9 = ptrtoint ptr %len11 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %len11, align 4
  %pdev = getelementptr i8, ptr %dev, i32 3924
  %11 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pdev, align 4
  %dev12 = getelementptr inbounds %struct.pci_dev, ptr %12, i32 0, i32 44
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %13 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %data, align 4
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %14) #13
  br i1 %call.i, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %if.end
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit_crit_edge, label %if.then.i, !prof !222

land.rhs.i.dma_map_single_attrs.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dma_map_single_attrs.exit

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %dev12) #13
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %12, i32 0, i32 44, i32 3
  %15 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %16, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  %17 = ptrtoint ptr %dev12 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev12, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %18, %if.end.i.i ], [ %16, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.27, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.28, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #13
  br label %dma_map_single_attrs.exit

if.end39.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @debug_dma_map_single(ptr noundef %dev12, ptr noundef %14, i32 noundef %10) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %19 = load ptr, ptr @mem_map, align 4
  %20 = ptrtoint ptr %14 to i32
  %sub.i = add i32 %20, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i100 = getelementptr %struct.page, ptr %19, i32 %shr.i
  %and.i = and i32 %20, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev12, ptr noundef %add.ptr.i100, i32 noundef %and.i, i32 noundef %10, i32 noundef 1, i32 noundef 0) #13
  br label %dma_map_single_attrs.exit

dma_map_single_attrs.exit:                        ; preds = %if.end39.i, %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit_crit_edge
  %retval.0.i101 = phi i32 [ %call41.i, %if.end39.i ], [ -1, %dev_name.exit.i ], [ -1, %land.rhs.i.dma_map_single_attrs.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %3)
  %cmp14 = icmp eq i32 %3, 63
  %spec.select = select i1 %cmp14, i32 1644167168, i32 1610612736
  %21 = zext i32 %cond to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.83)
  switch i32 %cond, label %dma_map_single_attrs.exit.if.end20_crit_edge [
    i32 1, label %dma_map_single_attrs.exit.if.then18_crit_edge
    i32 33, label %dma_map_single_attrs.exit.if.then18_crit_edge105
  ]

dma_map_single_attrs.exit.if.then18_crit_edge105: ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then18

dma_map_single_attrs.exit.if.then18_crit_edge:    ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then18

dma_map_single_attrs.exit.if.end20_crit_edge:     ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end20

if.then18:                                        ; preds = %dma_map_single_attrs.exit.if.then18_crit_edge, %dma_map_single_attrs.exit.if.then18_crit_edge105
  %or19 = or i32 %spec.select, -2147483648
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %dma_map_single_attrs.exit.if.end20_crit_edge
  %flags.1 = phi i32 [ %or19, %if.then18 ], [ %spec.select, %dma_map_single_attrs.exit.if.end20_crit_edge ]
  %or21 = or i32 %flags.1, %10
  %22 = tail call i32 @llvm.bswap.i32(i32 %or21)
  %opts2 = getelementptr %struct.de_desc, ptr %8, i32 %3, i32 1
  %23 = ptrtoint ptr %opts2 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %opts2, align 4
  %24 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i101)
  %addr1 = getelementptr %struct.de_desc, ptr %8, i32 %3, i32 2
  %25 = ptrtoint ptr %addr1 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %addr1, align 4
  %arrayidx22 = getelementptr %struct.de_private, ptr %add.ptr.i, i32 0, i32 8, i32 %3
  %26 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %skb, ptr %arrayidx22, align 4
  %mapping26 = getelementptr %struct.de_private, ptr %add.ptr.i, i32 0, i32 8, i32 %3, i32 1
  %27 = ptrtoint ptr %mapping26 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %retval.0.i101, ptr %mapping26, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !223
  tail call void @arm_heavy_mb() #13
  %28 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 128, ptr %arrayidx, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !224
  tail call void @arm_heavy_mb() #13
  %add30 = add i32 %3, 1
  %and = and i32 %add30, 63
  %29 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %and, ptr %add.ptr.i, align 4
  %msg_enable = getelementptr i8, ptr %dev, i32 3920
  %30 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %msg_enable, align 4
  %and33 = and i32 %31, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  br i1 %tobool34.not, label %if.end20.do.end49_crit_edge, label %do.body36

if.end20.do.end49_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end49

do.body36:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @de_start_xmit.__UNIQUE_ID_ddebug356, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@de_start_xmit, %do.end49)) #13
          to label %if.then42 [label %do.end49], !srcloc !221

if.then42:                                        ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #15
  %32 = ptrtoint ptr %len11 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %len11, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @de_start_xmit.__UNIQUE_ID_ddebug356, ptr noundef %dev, ptr noundef nonnull @.str.56, i32 noundef %3, i32 noundef %33) #13
  br label %do.end49

do.end49:                                         ; preds = %if.then42, %do.body36, %if.end20.do.end49_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %cond)
  %cmp50 = icmp eq i32 %cond, 1
  br i1 %cmp50, label %if.then51, label %do.end49.if.end52_crit_edge

do.end49.if.end52_crit_edge:                      ; preds = %do.end49
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end52

if.then51:                                        ; preds = %do.end49
  call void @__sanitizer_cov_trace_pc() #15
  %_tx.i.i102 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %34 = ptrtoint ptr %_tx.i.i102 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %_tx.i.i102, align 128
  %state.i.i103 = getelementptr inbounds %struct.netdev_queue, ptr %35, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i103) #13
  br label %if.end52

if.end52:                                         ; preds = %if.then51, %do.end49.if.end52_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #13
  %regs = getelementptr i8, ptr %dev, i32 2316
  %36 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %37, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !214
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 16777216) #13, !srcloc !215
  br label %cleanup

cleanup:                                          ; preds = %if.end52, %if.then
  %retval.0 = phi i32 [ 16, %if.then ], [ 0, %if.end52 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @de_set_rx_mode(ptr noundef %dev) #2 align 64 {
entry:
  %hash_table.i.i = alloca [32 x i16], align 2
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %lock = getelementptr i8, ptr %dev, i32 2324
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #13
  %regs.i = getelementptr i8, ptr %dev, i32 2316
  %0 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs.i, align 4
  %add.ptr.i9 = getelementptr i8, ptr %1, i32 48
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i9) #13, !srcloc !216
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !217
  %and.i = and i32 %3, -193
  %flags.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 14
  %4 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags.i, align 8
  %and3.i = and i32 %5, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool.not.i = icmp eq i32 %and3.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %or.i = or i32 %3, 192
  br label %out.i

if.end.i:                                         ; preds = %entry
  %count.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 66, i32 1
  %6 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1001, i32 %7)
  %cmp.i = icmp slt i32 %7, 1001
  %and5.i = and i32 %5, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %tobool6.not.i = icmp eq i32 %and5.i, 0
  %or.cond.i = select i1 %cmp.i, i1 %tobool6.not.i, i1 false
  br i1 %or.cond.i, label %if.end9.i, label %if.then7.i

if.then7.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %or8.i = or i32 %and.i, 128
  br label %out.i

if.end9.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %7)
  %cmp12.i = icmp sgt i32 %7, 14
  %setup_frame.i = getelementptr i8, ptr %dev, i32 3928
  br i1 %cmp12.i, label %if.then13.i, label %if.else.i

if.then13.i:                                      ; preds = %if.end9.i
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %hash_table.i.i) #13
  %8 = call ptr @memset(ptr %hash_table.i.i, i32 0, i32 64)
  %add.ptr.i.i.i.i = getelementptr inbounds i32, ptr %hash_table.i.i, i32 7
  %9 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 128, ptr %add.ptr.i.i.i.i, align 4
  %mc.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 66
  %10 = ptrtoint ptr %mc.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %ha.055.i.i = load ptr, ptr %mc.i.i, align 4
  %cmp.not56.i.i = icmp eq ptr %ha.055.i.i, %mc.i.i
  br i1 %cmp.not56.i.i, label %if.then13.i.for.body15.i.i.preheader_crit_edge, label %if.then13.i.for.body.i.i_crit_edge

if.then13.i.for.body.i.i_crit_edge:               ; preds = %if.then13.i
  br label %for.body.i.i

if.then13.i.for.body15.i.i.preheader_crit_edge:   ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body15.i.i.preheader

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.then13.i.for.body.i.i_crit_edge
  %ha.057.i.i = phi ptr [ %ha.0.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %ha.055.i.i, %if.then13.i.for.body.i.i_crit_edge ]
  %addr.i.i = getelementptr inbounds %struct.netdev_hw_addr, ptr %ha.057.i.i, i32 0, i32 2
  %call6.i.i = tail call i32 @crc32_le(i32 noundef -1, ptr noundef %addr.i.i, i32 noundef 6) #17
  %xor.i.i.i = and i32 %call6.i.i, 31
  %rem.i.i.i.i = xor i32 %xor.i.i.i, 24
  %shl.i.i.i.i = shl nuw i32 1, %rem.i.i.i.i
  %and.i.i = lshr i32 %call6.i.i, 5
  %div2.i.i.i.i = and i32 %and.i.i, 15
  %add.ptr.i.i53.i.i = getelementptr i32, ptr %hash_table.i.i, i32 %div2.i.i.i.i
  %11 = ptrtoint ptr %add.ptr.i.i53.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %add.ptr.i.i53.i.i, align 4
  %or.i.i54.i.i = or i32 %shl.i.i.i.i, %12
  store i32 %or.i.i54.i.i, ptr %add.ptr.i.i53.i.i, align 4
  %13 = ptrtoint ptr %ha.057.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %ha.0.i.i = load ptr, ptr %ha.057.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %ha.0.i.i, %mc.i.i
  br i1 %cmp.not.i.i, label %for.body.i.i.for.body15.i.i.preheader_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i.i

for.body.i.i.for.body15.i.i.preheader_crit_edge:  ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body15.i.i.preheader

for.body15.i.i.preheader:                         ; preds = %for.body.i.i.for.body15.i.i.preheader_crit_edge, %if.then13.i.for.body15.i.i.preheader_crit_edge
  br label %for.body15.i.i

for.body15.i.i:                                   ; preds = %for.body15.i.i.for.body15.i.i_crit_edge, %for.body15.i.i.preheader
  %setup_frm.addr.059.i.i = phi ptr [ %incdec.ptr17.i.i, %for.body15.i.i.for.body15.i.i_crit_edge ], [ %setup_frame.i, %for.body15.i.i.preheader ]
  %i.058.i.i = phi i32 [ %inc.i.i, %for.body15.i.i.for.body15.i.i_crit_edge ], [ 0, %for.body15.i.i.preheader ]
  %arrayidx.i.i = getelementptr [32 x i16], ptr %hash_table.i.i, i32 0, i32 %i.058.i.i
  %14 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %arrayidx.i.i, align 2
  %incdec.ptr.i.i = getelementptr i16, ptr %setup_frm.addr.059.i.i, i32 1
  %16 = ptrtoint ptr %setup_frm.addr.059.i.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %15, ptr %setup_frm.addr.059.i.i, align 2
  %incdec.ptr17.i.i = getelementptr i16, ptr %setup_frm.addr.059.i.i, i32 2
  %17 = ptrtoint ptr %incdec.ptr.i.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %15, ptr %incdec.ptr.i.i, align 2
  %inc.i.i = add nuw nsw i32 %i.058.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 32
  br i1 %exitcond.not.i.i, label %build_setup_frame_hash.exit.i, label %for.body15.i.i.for.body15.i.i_crit_edge

for.body15.i.i.for.body15.i.i_crit_edge:          ; preds = %for.body15.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body15.i.i

build_setup_frame_hash.exit.i:                    ; preds = %for.body15.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx20.i.i = getelementptr i8, ptr %dev, i32 4084
  %dev_addr.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 86
  %18 = ptrtoint ptr %dev_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev_addr.i.i, align 64
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %19, align 2
  %incdec.ptr22.i.i = getelementptr i8, ptr %dev, i32 4086
  %22 = ptrtoint ptr %arrayidx20.i.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %21, ptr %arrayidx20.i.i, align 2
  %23 = load i16, ptr %19, align 2
  %incdec.ptr24.i.i = getelementptr i8, ptr %dev, i32 4088
  %24 = ptrtoint ptr %incdec.ptr22.i.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %23, ptr %incdec.ptr22.i.i, align 2
  %arrayidx25.i.i = getelementptr i16, ptr %19, i32 1
  %25 = ptrtoint ptr %arrayidx25.i.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %arrayidx25.i.i, align 2
  %incdec.ptr26.i.i = getelementptr i8, ptr %dev, i32 4090
  %27 = ptrtoint ptr %incdec.ptr24.i.i to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %26, ptr %incdec.ptr24.i.i, align 2
  %28 = load i16, ptr %arrayidx25.i.i, align 2
  %incdec.ptr28.i.i = getelementptr i8, ptr %dev, i32 4092
  %29 = ptrtoint ptr %incdec.ptr26.i.i to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %28, ptr %incdec.ptr26.i.i, align 2
  %arrayidx29.i.i = getelementptr i16, ptr %19, i32 2
  %30 = ptrtoint ptr %arrayidx29.i.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %arrayidx29.i.i, align 2
  %incdec.ptr30.i.i = getelementptr i8, ptr %dev, i32 4094
  %32 = ptrtoint ptr %incdec.ptr28.i.i to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %31, ptr %incdec.ptr28.i.i, align 2
  %33 = load i16, ptr %arrayidx29.i.i, align 2
  %34 = ptrtoint ptr %incdec.ptr30.i.i to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %33, ptr %incdec.ptr30.i.i, align 2
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %hash_table.i.i) #13
  br label %if.end16.i

if.else.i:                                        ; preds = %if.end9.i
  %mc.i126.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 66
  %35 = ptrtoint ptr %mc.i126.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %ha.059.i.i = load ptr, ptr %mc.i126.i, align 4
  %cmp.not60.i.i = icmp eq ptr %ha.059.i.i, %mc.i126.i
  br i1 %cmp.not60.i.i, label %if.else.i.build_setup_frame_perfect.exit.i_crit_edge, label %if.else.i.for.body.i131.i_crit_edge

if.else.i.for.body.i131.i_crit_edge:              ; preds = %if.else.i
  br label %for.body.i131.i

if.else.i.build_setup_frame_perfect.exit.i_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %build_setup_frame_perfect.exit.i

for.body.i131.i:                                  ; preds = %for.body.i131.i.for.body.i131.i_crit_edge, %if.else.i.for.body.i131.i_crit_edge
  %ha.062.i.i = phi ptr [ %ha.0.i129.i, %for.body.i131.i.for.body.i131.i_crit_edge ], [ %ha.059.i.i, %if.else.i.for.body.i131.i_crit_edge ]
  %setup_frm.addr.061.i.i = phi ptr [ %incdec.ptr11.i.i, %for.body.i131.i.for.body.i131.i_crit_edge ], [ %setup_frame.i, %if.else.i.for.body.i131.i_crit_edge ]
  %addr.i127.i = getelementptr inbounds %struct.netdev_hw_addr, ptr %ha.062.i.i, i32 0, i32 2
  %36 = ptrtoint ptr %addr.i127.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %addr.i127.i, align 2
  %incdec.ptr.i128.i = getelementptr i16, ptr %setup_frm.addr.061.i.i, i32 1
  %38 = ptrtoint ptr %setup_frm.addr.061.i.i to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %37, ptr %setup_frm.addr.061.i.i, align 2
  %incdec.ptr4.i.i = getelementptr %struct.netdev_hw_addr, ptr %ha.062.i.i, i32 0, i32 2, i32 2
  %39 = load i16, ptr %addr.i127.i, align 2
  %incdec.ptr5.i.i = getelementptr i16, ptr %setup_frm.addr.061.i.i, i32 2
  %40 = ptrtoint ptr %incdec.ptr.i128.i to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %39, ptr %incdec.ptr.i128.i, align 2
  %41 = ptrtoint ptr %incdec.ptr4.i.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %incdec.ptr4.i.i, align 2
  %incdec.ptr6.i.i = getelementptr i16, ptr %setup_frm.addr.061.i.i, i32 3
  %43 = ptrtoint ptr %incdec.ptr5.i.i to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %42, ptr %incdec.ptr5.i.i, align 2
  %incdec.ptr7.i.i = getelementptr %struct.netdev_hw_addr, ptr %ha.062.i.i, i32 0, i32 2, i32 4
  %44 = load i16, ptr %incdec.ptr4.i.i, align 2
  %incdec.ptr8.i.i = getelementptr i16, ptr %setup_frm.addr.061.i.i, i32 4
  %45 = ptrtoint ptr %incdec.ptr6.i.i to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %44, ptr %incdec.ptr6.i.i, align 2
  %46 = ptrtoint ptr %incdec.ptr7.i.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %incdec.ptr7.i.i, align 2
  %incdec.ptr9.i.i = getelementptr i16, ptr %setup_frm.addr.061.i.i, i32 5
  %48 = ptrtoint ptr %incdec.ptr8.i.i to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %47, ptr %incdec.ptr8.i.i, align 2
  %49 = load i16, ptr %incdec.ptr7.i.i, align 2
  %incdec.ptr11.i.i = getelementptr i16, ptr %setup_frm.addr.061.i.i, i32 6
  %50 = ptrtoint ptr %incdec.ptr9.i.i to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 %49, ptr %incdec.ptr9.i.i, align 2
  %51 = ptrtoint ptr %ha.062.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %ha.0.i129.i = load ptr, ptr %ha.062.i.i, align 4
  %cmp.not.i130.i = icmp eq ptr %ha.0.i129.i, %mc.i126.i
  br i1 %cmp.not.i130.i, label %for.body.i131.i.build_setup_frame_perfect.exit.i_crit_edge, label %for.body.i131.i.for.body.i131.i_crit_edge

for.body.i131.i.for.body.i131.i_crit_edge:        ; preds = %for.body.i131.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i131.i

for.body.i131.i.build_setup_frame_perfect.exit.i_crit_edge: ; preds = %for.body.i131.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %build_setup_frame_perfect.exit.i

build_setup_frame_perfect.exit.i:                 ; preds = %for.body.i131.i.build_setup_frame_perfect.exit.i_crit_edge, %if.else.i.build_setup_frame_perfect.exit.i_crit_edge
  %setup_frm.addr.0.lcssa.i.i = phi ptr [ %setup_frame.i, %if.else.i.build_setup_frame_perfect.exit.i_crit_edge ], [ %incdec.ptr11.i.i, %for.body.i131.i.build_setup_frame_perfect.exit.i_crit_edge ]
  %52 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %count.i, align 8
  %sub.i.i = sub i32 15, %53
  %mul.i.i = mul i32 %sub.i.i, 12
  %54 = call ptr @memset(ptr %setup_frm.addr.0.lcssa.i.i, i32 255, i32 %mul.i.i)
  %arrayidx.i132.i = getelementptr i8, ptr %dev, i32 4108
  %dev_addr.i133.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 86
  %55 = ptrtoint ptr %dev_addr.i133.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dev_addr.i133.i, align 64
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %56, align 2
  %incdec.ptr19.i.i = getelementptr i8, ptr %dev, i32 4110
  %59 = ptrtoint ptr %arrayidx.i132.i to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 %58, ptr %arrayidx.i132.i, align 2
  %60 = load i16, ptr %56, align 2
  %incdec.ptr21.i.i = getelementptr i8, ptr %dev, i32 4112
  %61 = ptrtoint ptr %incdec.ptr19.i.i to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 %60, ptr %incdec.ptr19.i.i, align 2
  %arrayidx22.i.i = getelementptr i16, ptr %56, i32 1
  %62 = ptrtoint ptr %arrayidx22.i.i to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %arrayidx22.i.i, align 2
  %incdec.ptr23.i.i = getelementptr i8, ptr %dev, i32 4114
  %64 = ptrtoint ptr %incdec.ptr21.i.i to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 %63, ptr %incdec.ptr21.i.i, align 2
  %65 = load i16, ptr %arrayidx22.i.i, align 2
  %incdec.ptr25.i.i = getelementptr i8, ptr %dev, i32 4116
  %66 = ptrtoint ptr %incdec.ptr23.i.i to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 %65, ptr %incdec.ptr23.i.i, align 2
  %arrayidx26.i.i = getelementptr i16, ptr %56, i32 2
  %67 = ptrtoint ptr %arrayidx26.i.i to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %arrayidx26.i.i, align 2
  %incdec.ptr27.i.i = getelementptr i8, ptr %dev, i32 4118
  %69 = ptrtoint ptr %incdec.ptr25.i.i to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 %68, ptr %incdec.ptr25.i.i, align 2
  %70 = load i16, ptr %arrayidx26.i.i, align 2
  %71 = ptrtoint ptr %incdec.ptr27.i.i to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 %70, ptr %incdec.ptr27.i.i, align 2
  br label %if.end16.i

if.end16.i:                                       ; preds = %build_setup_frame_perfect.exit.i, %build_setup_frame_hash.exit.i
  %72 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %cmp17.not.i = icmp eq i32 %73, 0
  br i1 %cmp17.not.i, label %if.end16.i.if.end22.i_crit_edge, label %if.then18.i

if.end16.i.if.end22.i_crit_edge:                  ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end22.i

if.then18.i:                                      ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx.i = getelementptr %struct.de_private, ptr %add.ptr.i, i32 0, i32 8, i32 %73
  %74 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr inttoptr (i32 2 to ptr), ptr %arrayidx.i, align 4
  %tx_ring.i = getelementptr i8, ptr %dev, i32 2372
  %75 = ptrtoint ptr %tx_ring.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %tx_ring.i, align 4
  %arrayidx19.i = getelementptr %struct.de_desc, ptr %76, i32 %73
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %73)
  %cmp20.i = icmp eq i32 %73, 63
  %cond.i = select i1 %cmp20.i, i32 2, i32 0
  %opts2.i = getelementptr %struct.de_desc, ptr %76, i32 %73, i32 1
  %77 = ptrtoint ptr %opts2.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %cond.i, ptr %opts2.i, align 4
  %addr1.i = getelementptr %struct.de_desc, ptr %76, i32 %73, i32 2
  %78 = ptrtoint ptr %addr1.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 0, ptr %addr1.i, align 4
  %add.i = add i32 %73, 1
  %and21.i = and i32 %add.i, 63
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.then18.i, %if.end16.i.if.end22.i_crit_edge
  %entry1.0.i = phi i32 [ %and21.i, %if.then18.i ], [ 0, %if.end16.i.if.end22.i_crit_edge ]
  %dummy_txd.0.i = phi ptr [ %arrayidx19.i, %if.then18.i ], [ null, %if.end16.i.if.end22.i_crit_edge ]
  %arrayidx24.i = getelementptr %struct.de_private, ptr %add.ptr.i, i32 0, i32 8, i32 %entry1.0.i
  %79 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr inttoptr (i32 1 to ptr), ptr %arrayidx24.i, align 4
  %pdev.i = getelementptr i8, ptr %dev, i32 3924
  %80 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %pdev.i, align 4
  %dev26.i = getelementptr inbounds %struct.pci_dev, ptr %81, i32 0, i32 44
  %call.i.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %setup_frame.i) #13
  br i1 %call.i.i, label %land.rhs.i.i, label %if.end39.i.i

land.rhs.i.i:                                     ; preds = %if.end22.i
  %.b1.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs.i.i.dma_map_single_attrs.exit.i_crit_edge, label %if.then.i.i, !prof !222

land.rhs.i.i.dma_map_single_attrs.exit.i_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dma_map_single_attrs.exit.i

if.then.i.i:                                      ; preds = %land.rhs.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i = tail call ptr @dev_driver_string(ptr noundef %dev26.i) #13
  %init_name.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %81, i32 0, i32 44, i32 3
  %82 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %83, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.dev_name.exit.i.i_crit_edge

if.then.i.i.dev_name.exit.i.i_crit_edge:          ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dev_name.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %84 = ptrtoint ptr %dev26.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %dev26.i, align 4
  br label %dev_name.exit.i.i

dev_name.exit.i.i:                                ; preds = %if.end.i.i.i, %if.then.i.i.dev_name.exit.i.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %85, %if.end.i.i.i ], [ %83, %if.then.i.i.dev_name.exit.i.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.27, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.28, ptr noundef %call16.i.i, ptr noundef %retval.0.i.i.i) #13
  br label %dma_map_single_attrs.exit.i

if.end39.i.i:                                     ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @debug_dma_map_single(ptr noundef %dev26.i, ptr noundef %setup_frame.i, i32 noundef 192) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %86 = load ptr, ptr @mem_map, align 4
  %87 = ptrtoint ptr %setup_frame.i to i32
  %sub.i134.i = add i32 %87, 1073741824
  %shr.i.i = lshr i32 %sub.i134.i, 12
  %add.ptr.i135.i = getelementptr %struct.page, ptr %86, i32 %shr.i.i
  %and.i136.i = and i32 %87, 4095
  %call41.i.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev26.i, ptr noundef %add.ptr.i135.i, i32 noundef %and.i136.i, i32 noundef 192, i32 noundef 1, i32 noundef 0) #13
  br label %dma_map_single_attrs.exit.i

dma_map_single_attrs.exit.i:                      ; preds = %if.end39.i.i, %dev_name.exit.i.i, %land.rhs.i.i.dma_map_single_attrs.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %call41.i.i, %if.end39.i.i ], [ -1, %dev_name.exit.i.i ], [ -1, %land.rhs.i.i.dma_map_single_attrs.exit.i_crit_edge ]
  %mapping32.i = getelementptr %struct.de_private, ptr %add.ptr.i, i32 0, i32 8, i32 %entry1.0.i, i32 1
  %88 = ptrtoint ptr %mapping32.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %retval.0.i.i, ptr %mapping32.i, align 4
  %tx_ring33.i = getelementptr i8, ptr %dev, i32 2372
  %89 = ptrtoint ptr %tx_ring33.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %tx_ring33.i, align 4
  %arrayidx34.i = getelementptr %struct.de_desc, ptr %90, i32 %entry1.0.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %entry1.0.i)
  %cmp35.i = icmp eq i32 %entry1.0.i, 63
  %spec.select.i = select i1 %cmp35.i, i32 -1073741814, i32 -1073741816
  %91 = getelementptr %struct.de_desc, ptr %90, i32 %entry1.0.i, i32 1
  %92 = ptrtoint ptr %91 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %spec.select.i, ptr %91, align 4
  %93 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i.i) #13
  %addr141.i = getelementptr %struct.de_desc, ptr %90, i32 %entry1.0.i, i32 2
  %94 = ptrtoint ptr %addr141.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %93, ptr %addr141.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !225
  tail call void @arm_heavy_mb() #13
  %95 = ptrtoint ptr %arrayidx34.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 128, ptr %arrayidx34.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !226
  tail call void @arm_heavy_mb() #13
  %tobool45.not.i = icmp eq ptr %dummy_txd.0.i, null
  br i1 %tobool45.not.i, label %dma_map_single_attrs.exit.i.if.end51.i_crit_edge, label %if.then46.i

dma_map_single_attrs.exit.i.if.end51.i_crit_edge: ; preds = %dma_map_single_attrs.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end51.i

if.then46.i:                                      ; preds = %dma_map_single_attrs.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %96 = ptrtoint ptr %dummy_txd.0.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 128, ptr %dummy_txd.0.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !227
  tail call void @arm_heavy_mb() #13
  br label %if.end51.i

if.end51.i:                                       ; preds = %if.then46.i, %dma_map_single_attrs.exit.i.if.end51.i_crit_edge
  %add52.i = add nuw nsw i32 %entry1.0.i, 1
  %and53.i = and i32 %add52.i, 63
  %97 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %and53.i, ptr %add.ptr.i, align 4
  %tx_tail.i = getelementptr i8, ptr %dev, i32 2308
  %98 = ptrtoint ptr %tx_tail.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %tx_tail.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %99, i32 %and53.i)
  %cmp56.not.i = icmp ugt i32 %99, %and53.i
  %add58.i = xor i32 %and53.i, 63
  %notlhs.i = sub nsw i32 62, %entry1.0.i
  %100 = or i32 %notlhs.i, -64
  %add58.i.pn = select i1 %cmp56.not.i, i32 %100, i32 %add58.i
  %cond64.i = sub nsw i32 0, %add58.i.pn
  call void @__sanitizer_cov_trace_cmp4(i32 %99, i32 %cond64.i)
  %cmp65.i = icmp eq i32 %99, %cond64.i
  br i1 %cmp65.i, label %if.then66.i, label %if.end51.i.if.end67.i_crit_edge

if.end51.i.if.end67.i_crit_edge:                  ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end67.i

if.then66.i:                                      ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #15
  %_tx.i.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %101 = ptrtoint ptr %_tx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %_tx.i.i.i, align 128
  %state.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %102, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i.i) #13
  br label %if.end67.i

if.end67.i:                                       ; preds = %if.then66.i, %if.end51.i.if.end67.i_crit_edge
  %103 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %regs.i, align 4
  %add.ptr69.i = getelementptr i8, ptr %104, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !214
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr69.i, i32 16777216) #13, !srcloc !215
  br label %out.i

out.i:                                            ; preds = %if.end67.i, %if.then7.i, %if.then.i
  %macmode.0.i = phi i32 [ %or.i, %if.then.i ], [ %or8.i, %if.then7.i ], [ %and.i, %if.end67.i ]
  %105 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %regs.i, align 4
  %add.ptr71.i = getelementptr i8, ptr %106, i32 48
  %107 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr71.i) #13, !srcloc !216
  %108 = tail call i32 @llvm.bswap.i32(i32 %107) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !217
  call void @__sanitizer_cov_trace_cmp4(i32 %macmode.0.i, i32 %108)
  %cmp73.not.i = icmp eq i32 %macmode.0.i, %108
  br i1 %cmp73.not.i, label %out.i.__de_set_rx_mode.exit_crit_edge, label %if.then74.i

out.i.__de_set_rx_mode.exit_crit_edge:            ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %__de_set_rx_mode.exit

if.then74.i:                                      ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #15
  %109 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %regs.i, align 4
  %add.ptr76.i = getelementptr i8, ptr %110, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !214
  tail call void @arm_heavy_mb() #13
  %111 = tail call i32 @llvm.bswap.i32(i32 %macmode.0.i) #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr76.i, i32 %111) #13, !srcloc !215
  br label %__de_set_rx_mode.exit

__de_set_rx_mode.exit:                            ; preds = %if.then74.i, %out.i.__de_set_rx_mode.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_mac_addr(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_validate_addr(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @de_tx_timeout(ptr noundef %dev, i32 noundef %txqueue) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %pdev = getelementptr i8, ptr %dev, i32 3924
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 4
  %irq1 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 46
  %2 = ptrtoint ptr %irq1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @de_tx_timeout.__UNIQUE_ID_ddebug359, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@de_tx_timeout, %do.end15)) #13
          to label %if.then [label %do.end15], !srcloc !221

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %regs = getelementptr i8, ptr %dev, i32 2316
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 40
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #13, !srcloc !216
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !217
  %8 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs, align 4
  %add.ptr9 = getelementptr i8, ptr %9, i32 48
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9) #13, !srcloc !216
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !217
  %12 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs, align 4
  %add.ptr12 = getelementptr i8, ptr %13, i32 96
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12) #13, !srcloc !216
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !217
  %rx_tail = getelementptr i8, ptr %dev, i32 2312
  %16 = ptrtoint ptr %rx_tail to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rx_tail, align 4
  %18 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %add.ptr.i, align 4
  %tx_tail = getelementptr i8, ptr %dev, i32 2308
  %20 = ptrtoint ptr %tx_tail to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %tx_tail, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @de_tx_timeout.__UNIQUE_ID_ddebug359, ptr noundef %dev, ptr noundef nonnull @.str.58, i32 noundef %7, i32 noundef %11, i32 noundef %15, i32 noundef %17, i32 noundef %19, i32 noundef %21) #13
  br label %do.end15

do.end15:                                         ; preds = %if.then, %entry
  %media_timer = getelementptr i8, ptr %dev, i32 4172
  %call16 = tail call i32 @del_timer_sync(ptr noundef %media_timer) #13
  tail call void @disable_irq(i32 noundef %3) #13
  %lock = getelementptr i8, ptr %dev, i32 2324
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %22(i32 noundef 1073740) #13
  %regs.i = getelementptr i8, ptr %dev, i32 2316
  %23 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regs.i, align 4
  %add.ptr.i40 = getelementptr i8, ptr %24, i32 56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !214
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i40, i32 0) #13, !srcloc !215
  tail call fastcc void @de_stop_rxtx(ptr noundef %add.ptr.i) #13
  %25 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regs.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %26, i32 40
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #13, !srcloc !216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !217
  %28 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regs.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %29, i32 40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !214
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %27) #13, !srcloc !215
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %30 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %30(i32 noundef 2147480) #13
  %rx_tail.i = getelementptr i8, ptr %dev, i32 2312
  %31 = ptrtoint ptr %rx_tail.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %rx_tail.i, align 4
  %tx_tail.i = getelementptr i8, ptr %dev, i32 2308
  %32 = ptrtoint ptr %tx_tail.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %tx_tail.i, align 4
  %33 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %add.ptr.i, align 4
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %34 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %35, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #13
  tail call void @netif_carrier_off(ptr noundef %dev) #13
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #13
  tail call void @enable_irq(i32 noundef %3) #13
  %36 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regs.i, align 4
  %add.ptr.i42 = getelementptr i8, ptr %37, i32 64
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i42) #13, !srcloc !216
  %39 = tail call i32 @llvm.bswap.i32(i32 %38) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !217
  %and.i.i = and i32 %39, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %and3.i.i = and i32 %39, 65535
  %and3.sink.i.i = select i1 %tobool.not.i.i, i32 %and3.i.i, i32 65535, !prof !222
  %dev4.i.i = getelementptr i8, ptr %dev, i32 2320
  %40 = ptrtoint ptr %dev4.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev4.i.i, align 4
  %rx_missed_errors6.i.i = getelementptr inbounds %struct.net_device, ptr %41, i32 0, i32 36, i32 15
  %42 = ptrtoint ptr %rx_missed_errors6.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %rx_missed_errors6.i.i, align 4
  %add7.i.i = add i32 %and3.sink.i.i, %43
  store i32 %add7.i.i, ptr %rx_missed_errors6.i.i, align 4
  tail call void @synchronize_irq(i32 noundef %3) #13
  tail call fastcc void @de_clean_rings(ptr noundef %add.ptr.i)
  %call18 = tail call fastcc i32 @de_init_rings(ptr noundef %add.ptr.i)
  %call19 = tail call fastcc i32 @de_init_hw(ptr noundef %add.ptr.i)
  %44 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %_tx.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %45) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @de_get_stats(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr i8, ptr %dev, i32 2324
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #13
  %state.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 6
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state.i, align 4
  %4 = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.i10.not = icmp eq i32 %4, 0
  br i1 %tobool.i10.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %regs.i = getelementptr i8, ptr %dev, i32 2316
  %5 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs.i, align 4
  %add.ptr.i11 = getelementptr i8, ptr %6, i32 64
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i11) #13, !srcloc !216
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !217
  %and.i.i = and i32 %8, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %and3.i.i = and i32 %8, 65535
  %and3.sink.i.i = select i1 %tobool.not.i.i, i32 %and3.i.i, i32 65535, !prof !222
  %dev4.i.i = getelementptr i8, ptr %dev, i32 2320
  %9 = ptrtoint ptr %dev4.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev4.i.i, align 4
  %rx_missed_errors6.i.i = getelementptr inbounds %struct.net_device, ptr %10, i32 0, i32 36, i32 15
  %11 = ptrtoint ptr %rx_missed_errors6.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %rx_missed_errors6.i.i, align 4
  %add7.i.i = add i32 %and3.sink.i.i, %12
  store i32 %add7.i.i, ptr %rx_missed_errors6.i.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #13
  %stats = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36
  ret ptr %stats
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @de_interrupt(i32 noundef %irq, ptr noundef %dev_instance) #2 align 64 {
entry:
  %pci_status = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev_instance, i32 2304
  %regs = getelementptr i8, ptr %dev_instance, i32 2316
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 40
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #13, !srcloc !216
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !217
  %and = and i32 %3, 98304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -65536, i32 %2)
  %cmp = icmp eq i32 %2, -65536
  %or.cond = or i1 %cmp, %tobool.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.body:                                          ; preds = %entry
  %msg_enable = getelementptr i8, ptr %dev_instance, i32 3920
  %4 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %msg_enable, align 4
  %and2 = and i32 %5, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %do.body.do.end18_crit_edge, label %do.body5

do.body.do.end18_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end18

do.body5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @de_interrupt.__UNIQUE_ID_ddebug353, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@de_interrupt, %do.end18)) #13
          to label %if.then11 [label %do.end18], !srcloc !221

if.then11:                                        ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #15
  %6 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs, align 4
  %add.ptr13 = getelementptr i8, ptr %7, i32 48
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13) #13, !srcloc !216
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !217
  %rx_tail = getelementptr i8, ptr %dev_instance, i32 2312
  %10 = ptrtoint ptr %rx_tail to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rx_tail, align 4
  %12 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %add.ptr.i, align 4
  %tx_tail = getelementptr i8, ptr %dev_instance, i32 2308
  %14 = ptrtoint ptr %tx_tail to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tx_tail, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @de_interrupt.__UNIQUE_ID_ddebug353, ptr noundef %dev_instance, ptr noundef nonnull @.str.30, i32 noundef %3, i32 noundef %9, i32 noundef %11, i32 noundef %13, i32 noundef %15) #13
  br label %do.end18

do.end18:                                         ; preds = %if.then11, %do.body5, %do.body.do.end18_crit_edge
  %16 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs, align 4
  %add.ptr20 = getelementptr i8, ptr %17, i32 40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !214
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20, i32 %2) #13, !srcloc !215
  %and21 = and i32 %3, 192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %do.end18.if.end30_crit_edge, label %if.then23

do.end18.if.end30_crit_edge:                      ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end30

if.then23:                                        ; preds = %do.end18
  tail call fastcc void @de_rx(ptr noundef %add.ptr.i)
  %and24 = and i32 %3, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %if.then23.if.end30_crit_edge, label %if.then26

if.then23.if.end30_crit_edge:                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end30

if.then26:                                        ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #15
  %18 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs, align 4
  %add.ptr28 = getelementptr i8, ptr %19, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !214
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr28, i32 16777216) #13, !srcloc !215
  br label %if.end30

if.end30:                                         ; preds = %if.then26, %if.then23.if.end30_crit_edge, %do.end18.if.end30_crit_edge
  %lock = getelementptr i8, ptr %dev_instance, i32 2324
  tail call void @_raw_spin_lock(ptr noundef %lock) #13
  %and31 = and i32 %3, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %if.end30.if.end34_crit_edge, label %if.then33

if.end30.if.end34_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end34

if.then33:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @de_tx(ptr noundef %add.ptr.i)
  br label %if.end34

if.end34:                                         ; preds = %if.then33, %if.end30.if.end34_crit_edge
  %and35 = and i32 %3, 4112
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  br i1 %tobool36.not, label %if.end34.if.end38_crit_edge, label %if.then37

if.end34.if.end38_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end38

if.then37:                                        ; preds = %if.end34
  %and.i = and i32 %3, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.body.i, label %if.then.i

if.then.i:                                        ; preds = %if.then37
  %media_type.i = getelementptr i8, ptr %dev_instance, i32 4120
  %20 = ptrtoint ptr %media_type.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %media_type.i, align 4
  %.off.i = add i32 %21, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off.i)
  %switch.i = icmp ult i32 %.off.i, 2
  br i1 %switch.i, label %land.lhs.true.i, label %if.then.i.if.end14.i_crit_edge

if.then.i.if.end14.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end14.i

land.lhs.true.i:                                  ; preds = %if.then.i
  %media_lock.i = getelementptr i8, ptr %dev_instance, i32 4228
  %22 = ptrtoint ptr %media_lock.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %bf.load.i = load i8, ptr %media_lock.i, align 4
  %23 = and i8 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool3.not.i = icmp eq i8 %23, 0
  br i1 %tobool3.not.i, label %lor.lhs.false4.i, label %land.lhs.true.i.if.end38_crit_edge

land.lhs.true.i.if.end38_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end38

lor.lhs.false4.i:                                 ; preds = %land.lhs.true.i
  %media_advertise.i.i = getelementptr i8, ptr %dev_instance, i32 4128
  %24 = ptrtoint ptr %media_advertise.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %media_advertise.i.i, align 4
  %and.i.i = and i32 %25, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %and2.i.i = and i32 %25, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i)
  %tobool3.not.i.i = icmp eq i32 %and2.i.i, 0
  %or.cond.i.i = or i1 %tobool.not.i.i, %tobool3.not.i.i
  br i1 %or.cond.i.i, label %lor.lhs.false4.i.if.end38_crit_edge, label %if.then12.i

lor.lhs.false4.i.if.end38_crit_edge:              ; preds = %lor.lhs.false4.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end38

if.then12.i:                                      ; preds = %lor.lhs.false4.i
  %26 = ptrtoint ptr %media_type.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %media_type.i, align 4
  tail call fastcc void @de_stop_rxtx(ptr noundef %add.ptr.i) #13
  tail call fastcc void @de_set_media(ptr noundef %add.ptr.i) #13
  %27 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regs, align 4
  %add.ptr.i.i = getelementptr i8, ptr %28, i32 48
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #13, !srcloc !216
  %30 = tail call i32 @llvm.bswap.i32(i32 %29) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !217
  %and.i63.i = and i32 %30, 8194
  call void @__sanitizer_cov_trace_const_cmp4(i32 8194, i32 %and.i63.i)
  %cmp.not.i.i = icmp eq i32 %and.i63.i, 8194
  br i1 %cmp.not.i.i, label %if.then12.i.if.end14.i_crit_edge, label %if.then.i.i

if.then12.i.if.end14.i_crit_edge:                 ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end14.i

if.then.i.i:                                      ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #15
  %or.i.i = or i32 %30, 8194
  %31 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regs, align 4
  %add.ptr2.i.i = getelementptr i8, ptr %32, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !214
  tail call void @arm_heavy_mb() #13
  %33 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i.i, i32 %33) #13, !srcloc !215
  %34 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regs, align 4
  %add.ptr4.i.i = getelementptr i8, ptr %35, i32 48
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i.i) #13, !srcloc !216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !217
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.then.i.i, %if.then12.i.if.end14.i_crit_edge, %if.then.i.if.end14.i_crit_edge
  %dev.i.i = getelementptr i8, ptr %dev_instance, i32 2320
  %37 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev.i.i, align 4
  %state.i.i.i = getelementptr inbounds %struct.net_device, ptr %38, i32 0, i32 6
  %39 = ptrtoint ptr %state.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %state.i.i.i, align 4
  %41 = and i32 %40, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool.not.i.i.i = icmp eq i32 %41, 0
  br i1 %tobool.not.i.i.i, label %if.end14.i.if.end39.sink.split.i_crit_edge, label %if.then.i66.i

if.end14.i.if.end39.sink.split.i_crit_edge:       ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end39.sink.split.i

if.then.i66.i:                                    ; preds = %if.end14.i
  tail call void @netif_carrier_on(ptr noundef %38) #13
  %42 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %msg_enable, align 4
  %and.i64.i = and i32 %43, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i64.i)
  %tobool.not.i65.i = icmp eq i32 %and.i64.i, 0
  br i1 %tobool.not.i65.i, label %if.then.i66.i.if.end39.sink.split.i_crit_edge, label %if.then2.i.i

if.then.i66.i.if.end39.sink.split.i_crit_edge:    ; preds = %if.then.i66.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end39.sink.split.i

if.then2.i.i:                                     ; preds = %if.then.i66.i
  call void @__sanitizer_cov_trace_pc() #15
  %44 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev.i.i, align 4
  %46 = ptrtoint ptr %media_type.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %media_type.i, align 4
  %arrayidx.i.i = getelementptr [5 x ptr], ptr @media_name, i32 0, i32 %47
  %48 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx.i.i, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %45, ptr noundef nonnull @.str.51, ptr noundef %49) #16
  br label %if.end39.sink.split.i

do.body.i:                                        ; preds = %if.then37
  %and17.i = and i32 %3, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i)
  %tobool18.not.i = icmp eq i32 %and17.i, 0
  br i1 %tobool18.not.i, label %do.body23.i, label %do.end27.i, !prof !219

do.body23.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/dec/tulip/de2104x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1173, 0\0A.popsection", ""() #13, !srcloc !228
  unreachable

do.end27.i:                                       ; preds = %do.body.i
  %dev.i = getelementptr i8, ptr %dev_instance, i32 2320
  %50 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev.i, align 4
  %state.i.i = getelementptr inbounds %struct.net_device, ptr %51, i32 0, i32 6
  %52 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile i32, ptr %state.i.i, align 4
  %54 = and i32 %53, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool.not.i67.i = icmp eq i32 %54, 0
  br i1 %tobool.not.i67.i, label %land.lhs.true29.i, label %do.end27.i.if.end38_crit_edge

do.end27.i.if.end38_crit_edge:                    ; preds = %do.end27.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end38

land.lhs.true29.i:                                ; preds = %do.end27.i
  %media_type30.i = getelementptr i8, ptr %dev_instance, i32 4120
  %55 = ptrtoint ptr %media_type30.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %media_type30.i, align 4
  %.off61.i = add i32 %56, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off61.i)
  %switch62.i = icmp ult i32 %.off61.i, 2
  br i1 %switch62.i, label %land.lhs.true29.i.if.end38_crit_edge, label %if.then35.i

land.lhs.true29.i.if.end38_crit_edge:             ; preds = %land.lhs.true29.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end38

if.then35.i:                                      ; preds = %land.lhs.true29.i
  %57 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load volatile i32, ptr %state.i.i, align 4
  %59 = and i32 %58, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool.not.i.i70.i = icmp eq i32 %59, 0
  br i1 %tobool.not.i.i70.i, label %if.then.i74.i, label %if.then35.i.if.end39.sink.split.i_crit_edge

if.then35.i.if.end39.sink.split.i_crit_edge:      ; preds = %if.then35.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end39.sink.split.i

if.then.i74.i:                                    ; preds = %if.then35.i
  tail call void @netif_carrier_off(ptr noundef %51) #13
  %60 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %msg_enable, align 4
  %and.i72.i = and i32 %61, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i72.i)
  %tobool.not.i73.i = icmp eq i32 %and.i72.i, 0
  br i1 %tobool.not.i73.i, label %if.then.i74.i.if.end39.sink.split.i_crit_edge, label %if.then2.i75.i

if.then.i74.i.if.end39.sink.split.i_crit_edge:    ; preds = %if.then.i74.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end39.sink.split.i

if.then2.i75.i:                                   ; preds = %if.then.i74.i
  call void @__sanitizer_cov_trace_pc() #15
  %62 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %63, ptr noundef nonnull @.str.52) #16
  br label %if.end39.sink.split.i

if.end39.sink.split.i:                            ; preds = %if.then2.i75.i, %if.then.i74.i.if.end39.sink.split.i_crit_edge, %if.then35.i.if.end39.sink.split.i_crit_edge, %if.then2.i.i, %if.then.i66.i.if.end39.sink.split.i_crit_edge, %if.end14.i.if.end39.sink.split.i_crit_edge
  %.sink78.i = phi i32 [ 6000, %if.end14.i.if.end39.sink.split.i_crit_edge ], [ 6000, %if.then.i66.i.if.end39.sink.split.i_crit_edge ], [ 6000, %if.then2.i.i ], [ 500, %if.then35.i.if.end39.sink.split.i_crit_edge ], [ 500, %if.then.i74.i.if.end39.sink.split.i_crit_edge ], [ 500, %if.then2.i75.i ]
  %media_timer.i = getelementptr i8, ptr %dev_instance, i32 4172
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %64 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %64, %.sink78.i
  %call15.i = tail call i32 @mod_timer(ptr noundef %media_timer.i, i32 noundef %add.i) #13
  br label %if.end38

if.end38:                                         ; preds = %if.end39.sink.split.i, %land.lhs.true29.i.if.end38_crit_edge, %do.end27.i.if.end38_crit_edge, %lor.lhs.false4.i.if.end38_crit_edge, %land.lhs.true.i.if.end38_crit_edge, %if.end34.if.end38_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #13
  %and40 = and i32 %3, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool41.not = icmp eq i32 %and40, 0
  br i1 %tobool41.not, label %if.end38.cleanup_crit_edge, label %if.then42

if.end38.cleanup_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then42:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %pci_status) #13
  %65 = ptrtoint ptr %pci_status to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 -1, ptr %pci_status, align 2, !annotation !213
  %pdev = getelementptr i8, ptr %dev_instance, i32 3924
  %66 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %pdev, align 4
  %call43 = call i32 @pci_read_config_word(ptr noundef %67, i32 noundef 6, ptr noundef nonnull %pci_status) #13
  %68 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %pdev, align 4
  %70 = ptrtoint ptr %pci_status to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %pci_status, align 2
  %call45 = call i32 @pci_write_config_word(ptr noundef %69, i32 noundef 6, i16 noundef zeroext %71) #13
  %dev46 = getelementptr i8, ptr %dev_instance, i32 2320
  %72 = ptrtoint ptr %dev46 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %dev46, align 4
  %74 = ptrtoint ptr %pci_status to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %pci_status, align 2
  %conv = zext i16 %75 to i32
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %73, ptr noundef nonnull @.str.31, i32 noundef %3, i32 noundef %conv) #16
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %pci_status) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then42, %if.end38.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 1, %if.then42 ], [ 1, %if.end38.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @de_init_hw(ptr nocapture noundef readonly %de) unnamed_addr #2 align 64 {
entry:
  %pmctl.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.de_private, ptr %de, i32 0, i32 4
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pmctl.i) #13
  %2 = ptrtoint ptr %pmctl.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %pmctl.i, align 4, !annotation !213
  %de21040.i = getelementptr inbounds %struct.de_private, ptr %de, i32 0, i32 22
  %3 = ptrtoint ptr %de21040.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %bf.load.i = load i8, ptr %de21040.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool.not.i, label %if.end.i, label %entry.de_adapter_wake.exit_crit_edge

entry.de_adapter_wake.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %de_adapter_wake.exit

if.end.i:                                         ; preds = %entry
  %pdev.i = getelementptr inbounds %struct.de_private, ptr %de, i32 0, i32 13
  %4 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdev.i, align 4
  %call.i = call i32 @pci_read_config_dword(ptr noundef %5, i32 noundef 64, ptr noundef nonnull %pmctl.i) #13
  %6 = ptrtoint ptr %pmctl.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pmctl.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %7)
  %tobool1.not.i = icmp ult i32 %7, 1073741824
  br i1 %tobool1.not.i, label %if.end.i.de_adapter_wake.exit_crit_edge, label %if.then2.i

if.end.i.de_adapter_wake.exit_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %de_adapter_wake.exit

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %and3.i = and i32 %7, 1073741823
  %8 = ptrtoint ptr %pmctl.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %and3.i, ptr %pmctl.i, align 4
  %9 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pdev.i, align 4
  %call5.i = call i32 @pci_write_config_dword(ptr noundef %10, i32 noundef 64, i32 noundef %and3.i) #13
  call void @msleep(i32 noundef 10) #13
  br label %de_adapter_wake.exit

de_adapter_wake.exit:                             ; preds = %if.then2.i, %if.end.i.de_adapter_wake.exit_crit_edge, %entry.de_adapter_wake.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pmctl.i) #13
  %regs = getelementptr inbounds %struct.de_private, ptr %de, i32 0, i32 3
  %11 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %12, i32 48
  %13 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #13, !srcloc !216
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !217
  %call2 = call fastcc i32 @de_reset_mac(ptr noundef %de)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %de_adapter_wake.exit.cleanup_crit_edge

de_adapter_wake.exit.cleanup_crit_edge:           ; preds = %de_adapter_wake.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %de_adapter_wake.exit
  call void @__sanitizer_cov_trace_pc() #15
  %14 = and i32 %13, 365101055
  call fastcc void @de_set_media(ptr noundef %de)
  %ring_dma = getelementptr inbounds %struct.de_private, ptr %de, i32 0, i32 11
  %15 = ptrtoint ptr %ring_dma to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ring_dma, align 4
  %17 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs, align 4
  %add.ptr4 = getelementptr i8, ptr %18, i32 24
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !214
  call void @arm_heavy_mb() #13
  %19 = call i32 @llvm.bswap.i32(i32 %16) #13
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 %19) #13, !srcloc !215
  %20 = ptrtoint ptr %ring_dma to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %ring_dma, align 4
  %add = add i32 %21, 2048
  %22 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regs, align 4
  %add.ptr7 = getelementptr i8, ptr %23, i32 32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !214
  call void @arm_heavy_mb() #13
  %24 = call i32 @llvm.bswap.i32(i32 %add) #13
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 %24) #13, !srcloc !215
  %25 = or i32 %14, 35651584
  %26 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regs, align 4
  %add.ptr9 = getelementptr i8, ptr %27, i32 48
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !214
  call void @arm_heavy_mb() #13
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9, i32 %25) #13, !srcloc !215
  %28 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regs, align 4
  %add.ptr11 = getelementptr i8, ptr %29, i32 64
  %30 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11) #13, !srcloc !216
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !217
  %31 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regs, align 4
  %add.ptr14 = getelementptr i8, ptr %32, i32 56
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !214
  call void @arm_heavy_mb() #13
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14, i32 -709885696) #13, !srcloc !215
  call void @de_set_rx_mode(ptr noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %de_adapter_wake.exit.cleanup_crit_edge
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @de_init_rings(ptr nocapture noundef %de) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_ring = getelementptr inbounds %struct.de_private, ptr %de, i32 0, i32 7
  %0 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tx_ring, align 4
  %2 = call ptr @memset(ptr %1, i32 0, i32 1024)
  %3 = load ptr, ptr %tx_ring, align 4
  %opts2 = getelementptr %struct.de_desc, ptr %3, i32 63, i32 1
  %4 = ptrtoint ptr %opts2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 2, ptr %opts2, align 4
  %rx_tail = getelementptr inbounds %struct.de_private, ptr %de, i32 0, i32 2
  %5 = ptrtoint ptr %rx_tail to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %rx_tail, align 4
  %tx_tail = getelementptr inbounds %struct.de_private, ptr %de, i32 0, i32 1
  %6 = ptrtoint ptr %tx_tail to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %tx_tail, align 4
  %7 = ptrtoint ptr %de to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %de, align 4
  %dev.i = getelementptr inbounds %struct.de_private, ptr %de, i32 0, i32 4
  %rx_buf_sz.i = getelementptr inbounds %struct.de_private, ptr %de, i32 0, i32 10
  %pdev.i = getelementptr inbounds %struct.de_private, ptr %de, i32 0, i32 13
  %rx_ring.i = getelementptr inbounds %struct.de_private, ptr %de, i32 0, i32 6
  br label %for.body.i

for.body.i:                                       ; preds = %dma_map_single_attrs.exit.i.for.body.i_crit_edge, %entry
  %i.054.i = phi i32 [ 0, %entry ], [ %inc.i, %dma_map_single_attrs.exit.i.for.body.i_crit_edge ]
  %8 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i, align 4
  %10 = ptrtoint ptr %rx_buf_sz.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rx_buf_sz.i, align 4
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef %9, i32 noundef %11, i32 noundef 2592) #13
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %err_out.i, label %if.end.i

if.end.i:                                         ; preds = %for.body.i
  %12 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pdev.i, align 4
  %dev1.i = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %14 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data.i, align 4
  %16 = ptrtoint ptr %rx_buf_sz.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rx_buf_sz.i, align 4
  %call.i52.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %15) #13
  br i1 %call.i52.i, label %land.rhs.i.i, label %if.end39.i.i

land.rhs.i.i:                                     ; preds = %if.end.i
  %.b1.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs.i.i.dma_map_single_attrs.exit.i_crit_edge, label %if.then.i.i, !prof !222

land.rhs.i.i.dma_map_single_attrs.exit.i_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dma_map_single_attrs.exit.i

if.then.i.i:                                      ; preds = %land.rhs.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i = tail call ptr @dev_driver_string(ptr noundef %dev1.i) #13
  %init_name.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44, i32 3
  %18 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %19, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.dev_name.exit.i.i_crit_edge

if.then.i.i.dev_name.exit.i.i_crit_edge:          ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dev_name.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %20 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev1.i, align 4
  br label %dev_name.exit.i.i

dev_name.exit.i.i:                                ; preds = %if.end.i.i.i, %if.then.i.i.dev_name.exit.i.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %21, %if.end.i.i.i ], [ %19, %if.then.i.i.dev_name.exit.i.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.27, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.28, ptr noundef %call16.i.i, ptr noundef %retval.0.i.i.i) #13
  br label %dma_map_single_attrs.exit.i

if.end39.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @debug_dma_map_single(ptr noundef %dev1.i, ptr noundef %15, i32 noundef %17) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %22 = load ptr, ptr @mem_map, align 4
  %23 = ptrtoint ptr %15 to i32
  %sub.i.i = add i32 %23, 1073741824
  %shr.i.i = lshr i32 %sub.i.i, 12
  %add.ptr.i.i = getelementptr %struct.page, ptr %22, i32 %shr.i.i
  %and.i.i = and i32 %23, 4095
  %call41.i.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev1.i, ptr noundef %add.ptr.i.i, i32 noundef %and.i.i, i32 noundef %17, i32 noundef 2, i32 noundef 0) #13
  br label %dma_map_single_attrs.exit.i

dma_map_single_attrs.exit.i:                      ; preds = %if.end39.i.i, %dev_name.exit.i.i, %land.rhs.i.i.dma_map_single_attrs.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %call41.i.i, %if.end39.i.i ], [ -1, %dev_name.exit.i.i ], [ -1, %land.rhs.i.i.dma_map_single_attrs.exit.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.de_private, ptr %de, i32 0, i32 9, i32 %i.054.i
  %mapping.i = getelementptr %struct.de_private, ptr %de, i32 0, i32 9, i32 %i.054.i, i32 1
  %24 = ptrtoint ptr %mapping.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %retval.0.i.i, ptr %mapping.i, align 4
  %25 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call.i.i, ptr %arrayidx.i, align 4
  %26 = ptrtoint ptr %rx_ring.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %rx_ring.i, align 4
  %arrayidx7.i = getelementptr %struct.de_desc, ptr %27, i32 %i.054.i
  %28 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 128, ptr %arrayidx7.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %i.054.i)
  %cmp8.i = icmp eq i32 %i.054.i, 127
  %29 = ptrtoint ptr %rx_buf_sz.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %rx_buf_sz.i, align 4
  %or.i = or i32 %30, 33554432
  %or.sink.i = select i1 %cmp8.i, i32 %or.i, i32 %30
  %31 = tail call i32 @llvm.bswap.i32(i32 %or.sink.i) #13
  %32 = ptrtoint ptr %rx_ring.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %rx_ring.i, align 4
  %opts2.i = getelementptr %struct.de_desc, ptr %33, i32 %i.054.i, i32 1
  %34 = ptrtoint ptr %opts2.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %31, ptr %opts2.i, align 4
  %35 = ptrtoint ptr %mapping.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %mapping.i, align 4
  %37 = tail call i32 @llvm.bswap.i32(i32 %36) #13
  %38 = ptrtoint ptr %rx_ring.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %rx_ring.i, align 4
  %addr1.i = getelementptr %struct.de_desc, ptr %39, i32 %i.054.i, i32 2
  %40 = ptrtoint ptr %addr1.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %37, ptr %addr1.i, align 4
  %41 = load ptr, ptr %rx_ring.i, align 4
  %addr2.i = getelementptr %struct.de_desc, ptr %41, i32 %i.054.i, i32 3
  %42 = ptrtoint ptr %addr2.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %addr2.i, align 4
  %inc.i = add nuw nsw i32 %i.054.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 128
  br i1 %exitcond.not.i, label %dma_map_single_attrs.exit.i.de_refill_rx.exit_crit_edge, label %dma_map_single_attrs.exit.i.for.body.i_crit_edge

dma_map_single_attrs.exit.i.for.body.i_crit_edge: ; preds = %dma_map_single_attrs.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

dma_map_single_attrs.exit.i.de_refill_rx.exit_crit_edge: ; preds = %dma_map_single_attrs.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %de_refill_rx.exit

err_out.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @de_clean_rings(ptr noundef %de) #13
  br label %de_refill_rx.exit

de_refill_rx.exit:                                ; preds = %err_out.i, %dma_map_single_attrs.exit.i.de_refill_rx.exit_crit_edge
  %retval.0.i = phi i32 [ -12, %err_out.i ], [ 0, %dma_map_single_attrs.exit.i.de_refill_rx.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @de_clean_rings(ptr nocapture noundef %de) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_ring = getelementptr inbounds %struct.de_private, ptr %de, i32 0, i32 6
  %0 = ptrtoint ptr %rx_ring to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rx_ring, align 4
  %2 = call ptr @memset(ptr %1, i32 0, i32 2048)
  %3 = load ptr, ptr %rx_ring, align 4
  %opts2 = getelementptr %struct.de_desc, ptr %3, i32 127, i32 1
  %4 = ptrtoint ptr %opts2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 2, ptr %opts2, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !229
  tail call void @arm_heavy_mb() #13
  %tx_ring = getelementptr inbounds %struct.de_private, ptr %de, i32 0, i32 7
  %5 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %tx_ring, align 4
  %7 = call ptr @memset(ptr %6, i32 0, i32 1024)
  %8 = load ptr, ptr %tx_ring, align 4
  %opts24 = getelementptr %struct.de_desc, ptr %8, i32 63, i32 1
  %9 = ptrtoint ptr %opts24 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 2, ptr %opts24, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !230
  tail call void @arm_heavy_mb() #13
  %pdev = getelementptr inbounds %struct.de_private, ptr %de, i32 0, i32 13
  %rx_buf_sz = getelementptr inbounds %struct.de_private, ptr %de, i32 0, i32 10
  br label %for.body

for.cond14.preheader:                             ; preds = %for.inc
  %dev25 = getelementptr inbounds %struct.de_private, ptr %de, i32 0, i32 4
  br label %for.body16

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.074 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx8 = getelementptr %struct.de_private, ptr %de, i32 0, i32 9, i32 %i.074
  %10 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx8, align 4
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %12 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44
  %mapping = getelementptr %struct.de_private, ptr %de, i32 0, i32 9, i32 %i.074, i32 1
  %14 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mapping, align 4
  %16 = ptrtoint ptr %rx_buf_sz to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rx_buf_sz, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev, i32 noundef %15, i32 noundef %17, i32 noundef 2, i32 noundef 0) #13
  %18 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx8, align 4
  tail call void @consume_skb(ptr noundef %19) #13
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.074, 1
  %exitcond.not = icmp eq i32 %inc, 128
  br i1 %exitcond.not, label %for.cond14.preheader, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.body16:                                       ; preds = %if.end38.for.body16_crit_edge, %for.cond14.preheader
  %i.176 = phi i32 [ 0, %for.cond14.preheader ], [ %inc40, %if.end38.for.body16_crit_edge ]
  %arrayidx18 = getelementptr %struct.de_private, ptr %de, i32 0, i32 8, i32 %i.176
  %20 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx18, align 4
  %magicptr73 = ptrtoint ptr %21 to i32
  %22 = zext i32 %magicptr73 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.84)
  switch i32 %magicptr73, label %if.then24 [
    i32 0, label %for.body16.if.end38_crit_edge
    i32 2, label %for.body16.if.end38_crit_edge79
    i32 1, label %if.else
  ]

for.body16.if.end38_crit_edge79:                  ; preds = %for.body16
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end38

for.body16.if.end38_crit_edge:                    ; preds = %for.body16
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end38

if.then24:                                        ; preds = %for.body16
  call void @__sanitizer_cov_trace_pc() #15
  %23 = ptrtoint ptr %dev25 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev25, align 4
  %tx_dropped = getelementptr inbounds %struct.net_device, ptr %24, i32 0, i32 36, i32 7
  %25 = ptrtoint ptr %tx_dropped to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %tx_dropped, align 4
  %inc26 = add i32 %26, 1
  store i32 %inc26, ptr %tx_dropped, align 4
  %27 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pdev, align 4
  %dev28 = getelementptr inbounds %struct.pci_dev, ptr %28, i32 0, i32 44
  %mapping31 = getelementptr %struct.de_private, ptr %de, i32 0, i32 8, i32 %i.176, i32 1
  %29 = ptrtoint ptr %mapping31 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %mapping31, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %21, i32 0, i32 6
  %31 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %len, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev28, i32 noundef %30, i32 noundef %32, i32 noundef 1, i32 noundef 0) #13
  tail call void @consume_skb(ptr noundef nonnull %21) #13
  br label %if.end38

if.else:                                          ; preds = %for.body16
  call void @__sanitizer_cov_trace_pc() #15
  %33 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pdev, align 4
  %dev33 = getelementptr inbounds %struct.pci_dev, ptr %34, i32 0, i32 44
  %mapping36 = getelementptr %struct.de_private, ptr %de, i32 0, i32 8, i32 %i.176, i32 1
  %35 = ptrtoint ptr %mapping36 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %mapping36, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev33, i32 noundef %36, i32 noundef 192, i32 noundef 1, i32 noundef 0) #13
  br label %if.end38

if.end38:                                         ; preds = %if.else, %if.then24, %for.body16.if.end38_crit_edge, %for.body16.if.end38_crit_edge79
  %inc40 = add nuw nsw i32 %i.176, 1
  %exitcond78.not = icmp eq i32 %inc40, 64
  br i1 %exitcond78.not, label %for.end41, label %if.end38.for.body16_crit_edge

if.end38.for.body16_crit_edge:                    ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body16

for.end41:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #15
  %tx_skb43 = getelementptr inbounds %struct.de_private, ptr %de, i32 0, i32 8
  %37 = call ptr @memset(ptr %tx_skb43, i32 0, i32 1536)
  ret void
}

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
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @de_rx(ptr nocapture noundef %de) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_tail1 = getelementptr inbounds %struct.de_private, ptr %de, i32 0, i32 2
  %0 = ptrtoint ptr %rx_tail1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rx_tail1, align 4
  %rx_ring = getelementptr inbounds %struct.de_private, ptr %de, i32 0, i32 6
  %dev = getelementptr inbounds %struct.de_private, ptr %de, i32 0, i32 4
  %msg_enable = getelementptr inbounds %struct.de_private, ptr %de, i32 0, i32 12
  %rx_buf_sz = getelementptr inbounds %struct.de_private, ptr %de, i32 0, i32 10
  %pdev = getelementptr inbounds %struct.de_private, ptr %de, i32 0, i32 13
  br label %while.body

while.body:                                       ; preds = %rx_next.while.body_crit_edge, %entry
  %dec249 = phi i32 [ 127, %entry ], [ %dec, %rx_next.while.body_crit_edge ]
  %rx_tail.0248 = phi i32 [ %1, %entry ], [ %and134, %rx_next.while.body_crit_edge ]
  %drop.0247 = phi i32 [ 0, %entry ], [ %drop.1, %rx_next.while.body_crit_edge ]
  %arrayidx = getelementptr %struct.de_private, ptr %de, i32 0, i32 9, i32 %rx_tail.0248
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool3.not = icmp eq ptr %3, null
  br i1 %tobool3.not, label %do.body7, label %do.end12, !prof !219

do.body7:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/dec/tulip/de2104x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 408, 0\0A.popsection", ""() #13, !srcloc !231
  unreachable

do.end12:                                         ; preds = %while.body
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !232
  %4 = ptrtoint ptr %rx_ring to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rx_ring, align 4
  %arrayidx13 = getelementptr %struct.de_desc, ptr %5, i32 %rx_tail.0248
  %6 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx13, align 4
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %8)
  %tobool14.not = icmp sgt i32 %8, -1
  br i1 %tobool14.not, label %if.end16, label %do.end12.if.end144_crit_edge

do.end12.if.end144_crit_edge:                     ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end144

if.end16:                                         ; preds = %do.end12
  %shr = lshr i32 %8, 16
  %sub = add nsw i32 %shr, -4
  %mapping20 = getelementptr %struct.de_private, ptr %de, i32 0, i32 9, i32 %rx_tail.0248, i32 1
  %9 = ptrtoint ptr %mapping20 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %mapping20, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %drop.0247)
  %tobool21.not = icmp eq i32 %drop.0247, 0
  br i1 %tobool21.not, label %if.end29, label %if.then28, !prof !222

if.then28:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #15
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 4
  %rx_dropped = getelementptr inbounds %struct.net_device, ptr %12, i32 0, i32 36, i32 6
  %13 = ptrtoint ptr %rx_dropped to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %rx_dropped, align 8
  %inc = add i32 %14, 1
  store i32 %inc, ptr %rx_dropped, align 8
  br label %rx_next

if.end29:                                         ; preds = %if.end16
  %and30 = and i32 %8, 939557632
  call void @__sanitizer_cov_trace_const_cmp4(i32 768, i32 %and30)
  %cmp.not = icmp eq i32 %and30, 768
  br i1 %cmp.not, label %if.end38, label %if.then37, !prof !222

if.then37:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @de_rx_err_acct(ptr noundef %de, i32 noundef %rx_tail.0248, i32 noundef %8, i32 noundef %sub)
  br label %rx_next

if.end38:                                         ; preds = %if.end29
  %15 = load i32, ptr @rx_copybreak, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %15)
  %cmp39 = icmp ule i32 %sub, %15
  %conv = zext i1 %cmp39 to i32
  %16 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %msg_enable, align 4
  %and41 = and i32 %17, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41)
  %tobool42.not = icmp eq i32 %and41, 0
  br i1 %tobool42.not, label %if.end38.do.end61_crit_edge, label %do.body44

if.end38.do.end61_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end61

do.body44:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @de_rx.__UNIQUE_ID_ddebug352, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@de_rx, %do.end61)) #13
          to label %if.then54 [label %do.end61], !srcloc !221

if.then54:                                        ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #15
  %18 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @de_rx.__UNIQUE_ID_ddebug352, ptr noundef %19, ptr noundef nonnull @.str.33, i32 noundef %rx_tail.0248, i32 noundef %8, i32 noundef %sub, i32 noundef %conv) #13
  br label %do.end61

do.end61:                                         ; preds = %if.then54, %do.body44, %if.end38.do.end61_crit_edge
  br i1 %cmp39, label %cond.end, label %cond.end.thread

cond.end:                                         ; preds = %do.end61
  %add = add nsw i32 %shr, -2
  %20 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev, align 4
  %call.i = tail call ptr @__netdev_alloc_skb(ptr noundef %21, i32 noundef %add, i32 noundef 2592) #13
  %tobool65.not = icmp eq ptr %call.i, null
  br i1 %tobool65.not, label %cond.end.if.then74_crit_edge, label %if.else, !prof !219

cond.end.if.then74_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then74

cond.end.thread:                                  ; preds = %do.end61
  %22 = ptrtoint ptr %rx_buf_sz to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %rx_buf_sz, align 4
  %24 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev, align 4
  %call.i224 = tail call ptr @__netdev_alloc_skb(ptr noundef %25, i32 noundef %23, i32 noundef 2592) #13
  %tobool65.not225 = icmp eq ptr %call.i224, null
  br i1 %tobool65.not225, label %cond.end.thread.if.then74_crit_edge, label %if.then81, !prof !219

cond.end.thread.if.then74_crit_edge:              ; preds = %cond.end.thread
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then74

if.then74:                                        ; preds = %cond.end.thread.if.then74_crit_edge, %cond.end.if.then74_crit_edge
  %26 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev, align 4
  %rx_dropped77 = getelementptr inbounds %struct.net_device, ptr %27, i32 0, i32 36, i32 6
  %28 = ptrtoint ptr %rx_dropped77 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %rx_dropped77, align 8
  %inc78 = add i32 %29, 1
  store i32 %inc78, ptr %rx_dropped77, align 8
  br label %rx_next

if.then81:                                        ; preds = %cond.end.thread
  %30 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pdev, align 4
  %dev82 = getelementptr inbounds %struct.pci_dev, ptr %31, i32 0, i32 44
  tail call void @dma_unmap_page_attrs(ptr noundef %dev82, i32 noundef %10, i32 noundef %23, i32 noundef 2, i32 noundef 0) #13
  %call83 = tail call ptr @skb_put(ptr noundef nonnull %3, i32 noundef %sub) #13
  %32 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pdev, align 4
  %dev85 = getelementptr inbounds %struct.pci_dev, ptr %33, i32 0, i32 44
  %data = getelementptr inbounds %struct.sk_buff, ptr %call.i224, i32 0, i32 19
  %34 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %data, align 4
  %call.i217 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %35) #13
  br i1 %call.i217, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %if.then81
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit_crit_edge, label %if.then.i, !prof !222

land.rhs.i.dma_map_single_attrs.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dma_map_single_attrs.exit

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %dev85) #13
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %33, i32 0, i32 44, i32 3
  %36 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %37, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  %38 = ptrtoint ptr %dev85 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev85, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %39, %if.end.i.i ], [ %37, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.27, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.28, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #13
  br label %dma_map_single_attrs.exit

if.end39.i:                                       ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @debug_dma_map_single(ptr noundef %dev85, ptr noundef %35, i32 noundef %23) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %40 = load ptr, ptr @mem_map, align 4
  %41 = ptrtoint ptr %35 to i32
  %sub.i = add i32 %41, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i = getelementptr %struct.page, ptr %40, i32 %shr.i
  %and.i = and i32 %41, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev85, ptr noundef %add.ptr.i, i32 noundef %and.i, i32 noundef %23, i32 noundef 2, i32 noundef 0) #13
  br label %dma_map_single_attrs.exit

dma_map_single_attrs.exit:                        ; preds = %if.end39.i, %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit_crit_edge
  %retval.0.i218 = phi i32 [ %call41.i, %if.end39.i ], [ -1, %dev_name.exit.i ], [ -1, %land.rhs.i.dma_map_single_attrs.exit_crit_edge ]
  %42 = ptrtoint ptr %mapping20 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %retval.0.i218, ptr %mapping20, align 4
  %43 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call.i224, ptr %arrayidx, align 4
  br label %if.end98

if.else:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  %44 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %pdev, align 4
  %dev94 = getelementptr inbounds %struct.pci_dev, ptr %45, i32 0, i32 44
  tail call void @dma_sync_single_for_cpu(ptr noundef %dev94, i32 noundef %10, i32 noundef %sub, i32 noundef 2) #13
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %46 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %data.i, align 4
  %add.ptr.i219 = getelementptr i8, ptr %47, i32 2
  store ptr %add.ptr.i219, ptr %data.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 16
  %48 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %tail.i, align 8
  %add.ptr1.i = getelementptr i8, ptr %49, i32 2
  store ptr %add.ptr1.i, ptr %tail.i, align 8
  %call95 = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef %sub) #13
  %data.i220 = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 19
  %50 = ptrtoint ptr %data.i220 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %data.i220, align 4
  %52 = call ptr @memcpy(ptr %call95, ptr %51, i32 %sub)
  %53 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %pdev, align 4
  %dev97 = getelementptr inbounds %struct.pci_dev, ptr %54, i32 0, i32 44
  tail call void @dma_sync_single_for_device(ptr noundef %dev97, i32 noundef %10, i32 noundef %sub, i32 noundef 2) #13
  br label %if.end98

if.end98:                                         ; preds = %if.else, %dma_map_single_attrs.exit
  %mapping.0 = phi i32 [ %10, %if.else ], [ %retval.0.i218, %dma_map_single_attrs.exit ]
  %skb.0 = phi ptr [ %call.i, %if.else ], [ %3, %dma_map_single_attrs.exit ]
  %55 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dev, align 4
  %call100 = tail call zeroext i16 @eth_type_trans(ptr noundef nonnull %skb.0, ptr noundef %56) #13
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %skb.0, i32 0, i32 15, i32 0, i32 18
  %57 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 %call100, ptr %protocol, align 8
  %58 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dev, align 4
  %stats102 = getelementptr inbounds %struct.net_device, ptr %59, i32 0, i32 36
  %60 = ptrtoint ptr %stats102 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %stats102, align 8
  %inc103 = add i32 %61, 1
  store i32 %inc103, ptr %stats102, align 8
  %len104 = getelementptr inbounds %struct.sk_buff, ptr %skb.0, i32 0, i32 6
  %62 = ptrtoint ptr %len104 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %len104, align 4
  %64 = load ptr, ptr %dev, align 4
  %rx_bytes = getelementptr inbounds %struct.net_device, ptr %64, i32 0, i32 36, i32 2
  %65 = ptrtoint ptr %rx_bytes to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %rx_bytes, align 8
  %add107 = add i32 %66, %63
  store i32 %add107, ptr %rx_bytes, align 8
  %call108 = tail call i32 @netif_rx(ptr noundef nonnull %skb.0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call108)
  %cmp109 = icmp eq i32 %call108, 1
  %spec.select = zext i1 %cmp109 to i32
  br label %rx_next

rx_next:                                          ; preds = %if.end98, %if.then74, %if.then37, %if.then28
  %drop.1 = phi i32 [ 1, %if.then28 ], [ 0, %if.then37 ], [ 1, %if.then74 ], [ %spec.select, %if.end98 ]
  %mapping.1 = phi i32 [ %10, %if.then28 ], [ %10, %if.then37 ], [ %10, %if.then74 ], [ %mapping.0, %if.end98 ]
  %rx_work.1 = phi i32 [ %dec249, %if.then28 ], [ %dec249, %if.then37 ], [ 100, %if.then74 ], [ %dec249, %if.end98 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %rx_tail.0248)
  %cmp113 = icmp eq i32 %rx_tail.0248, 127
  %67 = ptrtoint ptr %rx_buf_sz to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %rx_buf_sz, align 4
  %or = or i32 %68, 33554432
  %or.sink = select i1 %cmp113, i32 %or, i32 %68
  %69 = tail call i32 @llvm.bswap.i32(i32 %or.sink)
  %70 = ptrtoint ptr %rx_ring to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %rx_ring, align 4
  %opts2 = getelementptr %struct.de_desc, ptr %71, i32 %rx_tail.0248, i32 1
  %72 = ptrtoint ptr %opts2 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %69, ptr %opts2, align 4
  %73 = tail call i32 @llvm.bswap.i32(i32 %mapping.1)
  %74 = ptrtoint ptr %rx_ring to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %rx_ring, align 4
  %addr1 = getelementptr %struct.de_desc, ptr %75, i32 %rx_tail.0248, i32 2
  %76 = ptrtoint ptr %addr1 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %73, ptr %addr1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !233
  tail call void @arm_heavy_mb() #13
  %77 = ptrtoint ptr %rx_ring to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %rx_ring, align 4
  %arrayidx131 = getelementptr %struct.de_desc, ptr %78, i32 %rx_tail.0248
  %79 = ptrtoint ptr %arrayidx131 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 128, ptr %arrayidx131, align 4
  %add133 = add i32 %rx_tail.0248, 1
  %and134 = and i32 %add133, 127
  %dec = add i32 %rx_work.1, -1
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %if.then142, label %rx_next.while.body_crit_edge

rx_next.while.body_crit_edge:                     ; preds = %rx_next
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

if.then142:                                       ; preds = %rx_next
  call void @__sanitizer_cov_trace_pc() #15
  %80 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %81, ptr noundef nonnull @.str.34) #16
  br label %if.end144

if.end144:                                        ; preds = %if.then142, %do.end12.if.end144_crit_edge
  %rx_tail.0246 = phi i32 [ %and134, %if.then142 ], [ %rx_tail.0248, %do.end12.if.end144_crit_edge ]
  %82 = ptrtoint ptr %rx_tail1 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %rx_tail.0246, ptr %rx_tail1, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @de_tx(ptr nocapture noundef %de) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %de to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %de, align 4
  %tx_tail2 = getelementptr inbounds %struct.de_private, ptr %de, i32 0, i32 1
  %2 = ptrtoint ptr %tx_tail2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tx_tail2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %1)
  %cmp.not219 = icmp eq i32 %3, %1
  br i1 %cmp.not219, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %tx_ring = getelementptr inbounds %struct.de_private, ptr %de, i32 0, i32 7
  %pdev = getelementptr inbounds %struct.de_private, ptr %de, i32 0, i32 13
  %msg_enable = getelementptr inbounds %struct.de_private, ptr %de, i32 0, i32 12
  %dev63 = getelementptr inbounds %struct.de_private, ptr %de, i32 0, i32 4
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %tx_tail.0220 = phi i32 [ %3, %while.body.lr.ph ], [ %and138, %cleanup.while.body_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !234
  %4 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tx_ring, align 4
  %arrayidx = getelementptr %struct.de_desc, ptr %5, i32 %tx_tail.0220
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %8)
  %tobool.not = icmp sgt i32 %8, -1
  br i1 %tobool.not, label %if.end, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

if.end:                                           ; preds = %while.body
  %arrayidx3 = getelementptr %struct.de_private, ptr %de, i32 0, i32 8, i32 %tx_tail.0220
  %9 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx3, align 4
  %magicptr208 = ptrtoint ptr %10 to i32
  %11 = zext i32 %magicptr208 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.85)
  switch i32 %magicptr208, label %if.end36 [
    i32 0, label %do.body10
    i32 2, label %if.end.cleanup_crit_edge
    i32 1, label %if.then33
  ], !prof !235

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.body10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/dec/tulip/de2104x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 554, 0\0A.popsection", ""() #13, !srcloc !236
  unreachable

if.then33:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %12 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44
  %mapping = getelementptr %struct.de_private, ptr %de, i32 0, i32 8, i32 %tx_tail.0220, i32 1
  %14 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mapping, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev, i32 noundef %15, i32 noundef 192, i32 noundef 1, i32 noundef 0) #13
  br label %cleanup

if.end36:                                         ; preds = %if.end
  %16 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pdev, align 4
  %dev38 = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 44
  %mapping41 = getelementptr %struct.de_private, ptr %de, i32 0, i32 8, i32 %tx_tail.0220, i32 1
  %18 = ptrtoint ptr %mapping41 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %mapping41, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %10, i32 0, i32 6
  %20 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %len, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev38, i32 noundef %19, i32 noundef %21, i32 noundef 1, i32 noundef 0) #13
  %and42 = and i32 %8, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42)
  %tobool43.not = icmp eq i32 %and42, 0
  br i1 %tobool43.not, label %if.end36.cleanup_crit_edge, label %if.then44

if.end36.cleanup_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then44:                                        ; preds = %if.end36
  %and45 = and i32 %8, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45)
  %tobool46.not = icmp eq i32 %and45, 0
  br i1 %tobool46.not, label %if.else, label %do.body48

do.body48:                                        ; preds = %if.then44
  %22 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %msg_enable, align 4
  %and49 = and i32 %23, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49)
  %tobool50.not = icmp eq i32 %and49, 0
  br i1 %tobool50.not, label %do.body48.do.end69_crit_edge, label %do.body52

do.body48.do.end69_crit_edge:                     ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end69

do.body52:                                        ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @de_tx.__UNIQUE_ID_ddebug354, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@de_tx, %do.end69)) #13
          to label %if.then62 [label %do.end69], !srcloc !221

if.then62:                                        ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #15
  %24 = ptrtoint ptr %dev63 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev63, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @de_tx.__UNIQUE_ID_ddebug354, ptr noundef %25, ptr noundef nonnull @.str.39, i32 noundef %8) #13
  br label %do.end69

do.end69:                                         ; preds = %if.then62, %do.body52, %do.body48.do.end69_crit_edge
  %26 = ptrtoint ptr %dev63 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev63, align 4
  %tx_errors = getelementptr inbounds %struct.net_device, ptr %27, i32 0, i32 36, i32 5
  %28 = ptrtoint ptr %tx_errors to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %tx_errors, align 4
  %inc = add i32 %29, 1
  store i32 %inc, ptr %tx_errors, align 4
  %and71 = and i32 %8, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and71)
  %tobool72.not = icmp eq i32 %and71, 0
  br i1 %tobool72.not, label %do.end69.if.end77_crit_edge, label %if.then73

do.end69.if.end77_crit_edge:                      ; preds = %do.end69
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end77

if.then73:                                        ; preds = %do.end69
  call void @__sanitizer_cov_trace_pc() #15
  %30 = ptrtoint ptr %dev63 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev63, align 4
  %tx_window_errors = getelementptr inbounds %struct.net_device, ptr %31, i32 0, i32 36, i32 20
  %32 = ptrtoint ptr %tx_window_errors to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %tx_window_errors, align 8
  %inc76 = add i32 %33, 1
  store i32 %inc76, ptr %tx_window_errors, align 8
  br label %if.end77

if.end77:                                         ; preds = %if.then73, %do.end69.if.end77_crit_edge
  %and78 = and i32 %8, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and78)
  %tobool79.not = icmp eq i32 %and78, 0
  br i1 %tobool79.not, label %if.end77.if.end84_crit_edge, label %if.then80

if.end77.if.end84_crit_edge:                      ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end84

if.then80:                                        ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #15
  %34 = ptrtoint ptr %dev63 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev63, align 4
  %tx_aborted_errors = getelementptr inbounds %struct.net_device, ptr %35, i32 0, i32 36, i32 16
  %36 = ptrtoint ptr %tx_aborted_errors to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %tx_aborted_errors, align 8
  %inc83 = add i32 %37, 1
  store i32 %inc83, ptr %tx_aborted_errors, align 8
  br label %if.end84

if.end84:                                         ; preds = %if.then80, %if.end77.if.end84_crit_edge
  %and85 = and i32 %8, 3076
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and85)
  %tobool86.not = icmp eq i32 %and85, 0
  br i1 %tobool86.not, label %if.end84.if.end91_crit_edge, label %if.then87

if.end84.if.end91_crit_edge:                      ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end91

if.then87:                                        ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #15
  %38 = ptrtoint ptr %dev63 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev63, align 4
  %tx_carrier_errors = getelementptr inbounds %struct.net_device, ptr %39, i32 0, i32 36, i32 17
  %40 = ptrtoint ptr %tx_carrier_errors to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %tx_carrier_errors, align 4
  %inc90 = add i32 %41, 1
  store i32 %inc90, ptr %tx_carrier_errors, align 4
  br label %if.end91

if.end91:                                         ; preds = %if.then87, %if.end84.if.end91_crit_edge
  %and92 = and i32 %8, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and92)
  %tobool93.not = icmp eq i32 %and92, 0
  br i1 %tobool93.not, label %if.end91.if.end132_crit_edge, label %if.then94

if.end91.if.end132_crit_edge:                     ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end132

if.then94:                                        ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #15
  %42 = ptrtoint ptr %dev63 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev63, align 4
  %tx_fifo_errors = getelementptr inbounds %struct.net_device, ptr %43, i32 0, i32 36, i32 18
  %44 = ptrtoint ptr %tx_fifo_errors to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %tx_fifo_errors, align 8
  %inc97 = add i32 %45, 1
  store i32 %inc97, ptr %tx_fifo_errors, align 8
  br label %if.end132

if.else:                                          ; preds = %if.then44
  %46 = ptrtoint ptr %dev63 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev63, align 4
  %tx_packets = getelementptr inbounds %struct.net_device, ptr %47, i32 0, i32 36, i32 1
  %48 = ptrtoint ptr %tx_packets to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %tx_packets, align 4
  %inc101 = add i32 %49, 1
  store i32 %inc101, ptr %tx_packets, align 4
  %50 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %len, align 4
  %52 = load ptr, ptr %dev63, align 4
  %tx_bytes = getelementptr inbounds %struct.net_device, ptr %52, i32 0, i32 36, i32 3
  %53 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %tx_bytes, align 4
  %add = add i32 %54, %51
  store i32 %add, ptr %tx_bytes, align 4
  %55 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %msg_enable, align 4
  %and107 = and i32 %56, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and107)
  %tobool108.not = icmp eq i32 %and107, 0
  br i1 %tobool108.not, label %if.else.if.end132_crit_edge, label %do.body110

if.else.if.end132_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end132

do.body110:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @de_tx.__UNIQUE_ID_ddebug355, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@de_tx, %if.end132)) #13
          to label %if.then124 [label %if.end132], !srcloc !221

if.then124:                                       ; preds = %do.body110
  call void @__sanitizer_cov_trace_pc() #15
  %57 = ptrtoint ptr %dev63 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dev63, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @de_tx.__UNIQUE_ID_ddebug355, ptr noundef %58, ptr noundef nonnull @.str.40, i32 noundef %tx_tail.0220) #13
  br label %if.end132

if.end132:                                        ; preds = %if.then124, %do.body110, %if.else.if.end132_crit_edge, %if.then94, %if.end91.if.end132_crit_edge
  tail call void @__dev_kfree_skb_irq(ptr noundef %10, i32 noundef 0) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end132, %if.end36.cleanup_crit_edge, %if.then33, %if.end.cleanup_crit_edge
  %59 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr null, ptr %arrayidx3, align 4
  %add137 = add i32 %tx_tail.0220, 1
  %and138 = and i32 %add137, 63
  %cmp.not = icmp eq i32 %and138, %1
  br i1 %cmp.not, label %cleanup.while.end_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  %tx_tail.0.lcssa = phi i32 [ %1, %entry.while.end_crit_edge ], [ %tx_tail.0220, %while.body.while.end_crit_edge ], [ %1, %cleanup.while.end_crit_edge ]
  %60 = ptrtoint ptr %tx_tail2 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %tx_tail.0.lcssa, ptr %tx_tail2, align 4
  %dev141 = getelementptr inbounds %struct.de_private, ptr %de, i32 0, i32 4
  %61 = ptrtoint ptr %dev141 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %dev141, align 4
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %62, i32 0, i32 103
  %63 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %64, i32 0, i32 13
  %65 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load volatile i32, ptr %state.i.i, align 4
  %and1.i.i.i = and i32 %66, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.i.i.not = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.i.i.not, label %while.end.if.end156_crit_edge, label %land.lhs.true

while.end.if.end156_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end156

land.lhs.true:                                    ; preds = %while.end
  %67 = ptrtoint ptr %de to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %de, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %tx_tail.0.lcssa, i32 %68)
  %cmp145.not = icmp ugt i32 %tx_tail.0.lcssa, %68
  %add147 = add i32 %tx_tail.0.lcssa, 63
  %sub = sub i32 %add147, %68
  %69 = xor i32 %68, -1
  %sub152 = add i32 %tx_tail.0.lcssa, %69
  %cond = select i1 %cmp145.not, i32 %sub152, i32 %sub
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %cond)
  %cmp153 = icmp ugt i32 %cond, 16
  br i1 %cmp153, label %if.then154, label %land.lhs.true.if.end156_crit_edge

land.lhs.true.if.end156_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end156

if.then154:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @netif_tx_wake_queue(ptr noundef %64) #13
  br label %if.end156

if.end156:                                        ; preds = %if.then154, %land.lhs.true.if.end156_crit_edge, %while.end.if.end156_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_word(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_word(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @de_rx_err_acct(ptr nocapture noundef readonly %de, i32 noundef %rx_tail, i32 noundef %status, i32 noundef %len) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_enable = getelementptr inbounds %struct.de_private, ptr %de, i32 0, i32 12
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msg_enable, align 4
  %and = and i32 %1, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end8_crit_edge, label %do.body1

entry.do.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end8

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @de_rx_err_acct.__UNIQUE_ID_ddebug351, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@de_rx_err_acct, %do.end8)) #13
          to label %if.then6 [label %do.end8], !srcloc !221

if.then6:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #15
  %dev = getelementptr inbounds %struct.de_private, ptr %de, i32 0, i32 4
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @de_rx_err_acct.__UNIQUE_ID_ddebug351, ptr noundef %3, ptr noundef nonnull @.str.36, i32 noundef %rx_tail, i32 noundef %status, i32 noundef %len) #13
  br label %do.end8

do.end8:                                          ; preds = %if.then6, %do.body1, %entry.do.end8_crit_edge
  %and9 = and i32 %status, 939524864
  call void @__sanitizer_cov_trace_const_cmp4(i32 768, i32 %and9)
  %cmp.not = icmp eq i32 %and9, 768
  br i1 %cmp.not, label %if.else, label %if.then10

if.then10:                                        ; preds = %do.end8
  %and11 = and i32 %status, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 32767, i32 %and11)
  %cmp12.not = icmp eq i32 %and11, 32767
  br i1 %cmp12.not, label %if.then10.if.end53_crit_edge, label %do.body14

if.then10.if.end53_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end53

do.body14:                                        ; preds = %if.then10
  %4 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %msg_enable, align 4
  %and16 = and i32 %5, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %do.body14.do.end21_crit_edge, label %if.then18

do.body14.do.end21_crit_edge:                     ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end21

if.then18:                                        ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #15
  %dev19 = getelementptr inbounds %struct.de_private, ptr %de, i32 0, i32 4
  %6 = ptrtoint ptr %dev19 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev19, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %7, ptr noundef nonnull @.str.37, i32 noundef %status) #16
  br label %do.end21

do.end21:                                         ; preds = %if.then18, %do.body14.do.end21_crit_edge
  %dev22 = getelementptr inbounds %struct.de_private, ptr %de, i32 0, i32 4
  %8 = ptrtoint ptr %dev22 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev22, align 4
  %rx_length_errors = getelementptr inbounds %struct.net_device, ptr %9, i32 0, i32 36, i32 10
  br label %if.end53.sink.split

if.else:                                          ; preds = %do.end8
  %and24 = and i32 %status, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %if.else.if.end53_crit_edge, label %if.then26

if.else.if.end53_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end53

if.then26:                                        ; preds = %if.else
  %dev27 = getelementptr inbounds %struct.de_private, ptr %de, i32 0, i32 4
  %10 = ptrtoint ptr %dev27 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev27, align 4
  %rx_errors = getelementptr inbounds %struct.net_device, ptr %11, i32 0, i32 36, i32 4
  %12 = ptrtoint ptr %rx_errors to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rx_errors, align 8
  %inc29 = add i32 %13, 1
  store i32 %inc29, ptr %rx_errors, align 8
  %and30 = and i32 %status, 2192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  br i1 %tobool31.not, label %if.then26.if.end37_crit_edge, label %if.then32

if.then26.if.end37_crit_edge:                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end37

if.then32:                                        ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #15
  %14 = ptrtoint ptr %dev27 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev27, align 4
  %rx_length_errors35 = getelementptr inbounds %struct.net_device, ptr %15, i32 0, i32 36, i32 10
  %16 = ptrtoint ptr %rx_length_errors35 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rx_length_errors35, align 8
  %inc36 = add i32 %17, 1
  store i32 %inc36, ptr %rx_length_errors35, align 8
  br label %if.end37

if.end37:                                         ; preds = %if.then32, %if.then26.if.end37_crit_edge
  %and38 = and i32 %status, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  br i1 %tobool39.not, label %if.end37.if.end44_crit_edge, label %if.then40

if.end37.if.end44_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end44

if.then40:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #15
  %18 = ptrtoint ptr %dev27 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev27, align 4
  %rx_crc_errors = getelementptr inbounds %struct.net_device, ptr %19, i32 0, i32 36, i32 12
  %20 = ptrtoint ptr %rx_crc_errors to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %rx_crc_errors, align 8
  %inc43 = add i32 %21, 1
  store i32 %inc43, ptr %rx_crc_errors, align 8
  br label %if.end44

if.end44:                                         ; preds = %if.then40, %if.end37.if.end44_crit_edge
  %and45 = and i32 %status, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45)
  %tobool46.not = icmp eq i32 %and45, 0
  br i1 %tobool46.not, label %if.end44.if.end53_crit_edge, label %if.then47

if.end44.if.end53_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end53

if.then47:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #15
  %22 = ptrtoint ptr %dev27 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev27, align 4
  %rx_fifo_errors = getelementptr inbounds %struct.net_device, ptr %23, i32 0, i32 36, i32 14
  br label %if.end53.sink.split

if.end53.sink.split:                              ; preds = %if.then47, %do.end21
  %rx_fifo_errors.sink70 = phi ptr [ %rx_fifo_errors, %if.then47 ], [ %rx_length_errors, %do.end21 ]
  %24 = ptrtoint ptr %rx_fifo_errors.sink70 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %rx_fifo_errors.sink70, align 8
  %inc50 = add i32 %25, 1
  store i32 %inc50, ptr %rx_fifo_errors.sink70, align 8
  br label %if.end53

if.end53:                                         ; preds = %if.end53.sink.split, %if.end44.if.end53_crit_edge, %if.else.if.end53_crit_edge, %if.then10.if.end53_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_cpu(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @eth_type_trans(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_rx(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @de_stop_rxtx(ptr nocapture noundef readonly %de) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr inbounds %struct.de_private, ptr %de, i32 0, i32 3
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 48
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #13, !srcloc !216
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !217
  %and = and i32 %3, 8194
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %and1 = and i32 %3, -8195
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs, align 4
  %add.ptr3 = getelementptr i8, ptr %5, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !214
  tail call void @arm_heavy_mb() #13
  %6 = tail call i32 @llvm.bswap.i32(i32 %and1) #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %6) #13, !srcloc !215
  %7 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regs, align 4
  %add.ptr5 = getelementptr i8, ptr %8, i32 48
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5) #13, !srcloc !216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !217
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %10 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 40
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #13, !srcloc !216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !217
  %13 = and i32 %12, 32256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i.not = icmp eq i32 %13, 0
  br i1 %tobool.not.i.not, label %if.end.cleanup_crit_edge, label %if.end11

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end11:                                         ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 21474800) #13
  %15 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regs, align 4
  %add.ptr.i.1 = getelementptr i8, ptr %16, i32 40
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.1) #13, !srcloc !216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !217
  %18 = and i32 %17, 32256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.i.not.1 = icmp eq i32 %18, 0
  br i1 %tobool.not.i.not.1, label %if.end11.cleanup_crit_edge, label %if.end11.1

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end11.1:                                       ; preds = %if.end11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %19(i32 noundef 21474800) #13
  %20 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regs, align 4
  %add.ptr.i.2 = getelementptr i8, ptr %21, i32 40
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.2) #13, !srcloc !216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !217
  %23 = and i32 %22, 32256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not.i.not.2 = icmp eq i32 %23, 0
  br i1 %tobool.not.i.not.2, label %if.end11.1.cleanup_crit_edge, label %if.end11.2

if.end11.1.cleanup_crit_edge:                     ; preds = %if.end11.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end11.2:                                       ; preds = %if.end11.1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %24(i32 noundef 21474800) #13
  %25 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regs, align 4
  %add.ptr.i.3 = getelementptr i8, ptr %26, i32 40
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.3) #13, !srcloc !216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !217
  %28 = and i32 %27, 32256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.not.i.not.3 = icmp eq i32 %28, 0
  br i1 %tobool.not.i.not.3, label %if.end11.2.cleanup_crit_edge, label %if.end11.3

if.end11.2.cleanup_crit_edge:                     ; preds = %if.end11.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end11.3:                                       ; preds = %if.end11.2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %29(i32 noundef 21474800) #13
  %30 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regs, align 4
  %add.ptr.i.4 = getelementptr i8, ptr %31, i32 40
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.4) #13, !srcloc !216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !217
  %33 = and i32 %32, 32256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool.not.i.not.4 = icmp eq i32 %33, 0
  br i1 %tobool.not.i.not.4, label %if.end11.3.cleanup_crit_edge, label %if.end11.4

if.end11.3.cleanup_crit_edge:                     ; preds = %if.end11.3
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end11.4:                                       ; preds = %if.end11.3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %34 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %34(i32 noundef 21474800) #13
  %35 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regs, align 4
  %add.ptr.i.5 = getelementptr i8, ptr %36, i32 40
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.5) #13, !srcloc !216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !217
  %38 = and i32 %37, 32256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool.not.i.not.5 = icmp eq i32 %38, 0
  br i1 %tobool.not.i.not.5, label %if.end11.4.cleanup_crit_edge, label %if.end11.5

if.end11.4.cleanup_crit_edge:                     ; preds = %if.end11.4
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end11.5:                                       ; preds = %if.end11.4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %39 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %39(i32 noundef 21474800) #13
  %40 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %regs, align 4
  %add.ptr.i.6 = getelementptr i8, ptr %41, i32 40
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.6) #13, !srcloc !216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !217
  %43 = and i32 %42, 32256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool.not.i.not.6 = icmp eq i32 %43, 0
  br i1 %tobool.not.i.not.6, label %if.end11.5.cleanup_crit_edge, label %if.end11.6

if.end11.5.cleanup_crit_edge:                     ; preds = %if.end11.5
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end11.6:                                       ; preds = %if.end11.5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %44 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %44(i32 noundef 21474800) #13
  %45 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %regs, align 4
  %add.ptr.i.7 = getelementptr i8, ptr %46, i32 40
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.7) #13, !srcloc !216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !217
  %48 = and i32 %47, 32256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool.not.i.not.7 = icmp eq i32 %48, 0
  br i1 %tobool.not.i.not.7, label %if.end11.6.cleanup_crit_edge, label %if.end11.7

if.end11.6.cleanup_crit_edge:                     ; preds = %if.end11.6
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end11.7:                                       ; preds = %if.end11.6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %49 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %49(i32 noundef 21474800) #13
  %50 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %regs, align 4
  %add.ptr.i.8 = getelementptr i8, ptr %51, i32 40
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.8) #13, !srcloc !216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !217
  %53 = and i32 %52, 32256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool.not.i.not.8 = icmp eq i32 %53, 0
  br i1 %tobool.not.i.not.8, label %if.end11.7.cleanup_crit_edge, label %if.end11.8

if.end11.7.cleanup_crit_edge:                     ; preds = %if.end11.7
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end11.8:                                       ; preds = %if.end11.7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %54 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %54(i32 noundef 21474800) #13
  %55 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %regs, align 4
  %add.ptr.i.9 = getelementptr i8, ptr %56, i32 40
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.9) #13, !srcloc !216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !217
  %58 = and i32 %57, 32256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool.not.i.not.9 = icmp eq i32 %58, 0
  br i1 %tobool.not.i.not.9, label %if.end11.8.cleanup_crit_edge, label %if.end11.9

if.end11.8.cleanup_crit_edge:                     ; preds = %if.end11.8
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end11.9:                                       ; preds = %if.end11.8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %59 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %59(i32 noundef 21474800) #13
  %60 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %regs, align 4
  %add.ptr.i.10 = getelementptr i8, ptr %61, i32 40
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.10) #13, !srcloc !216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !217
  %63 = and i32 %62, 32256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %tobool.not.i.not.10 = icmp eq i32 %63, 0
  br i1 %tobool.not.i.not.10, label %if.end11.9.cleanup_crit_edge, label %if.end11.10

if.end11.9.cleanup_crit_edge:                     ; preds = %if.end11.9
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end11.10:                                      ; preds = %if.end11.9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %64 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %64(i32 noundef 21474800) #13
  %65 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %regs, align 4
  %add.ptr.i.11 = getelementptr i8, ptr %66, i32 40
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.11) #13, !srcloc !216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !217
  %68 = and i32 %67, 32256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %tobool.not.i.not.11 = icmp eq i32 %68, 0
  br i1 %tobool.not.i.not.11, label %if.end11.10.cleanup_crit_edge, label %if.end11.11

if.end11.10.cleanup_crit_edge:                    ; preds = %if.end11.10
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end11.11:                                      ; preds = %if.end11.10
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %69 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %69(i32 noundef 21474800) #13
  %dev = getelementptr inbounds %struct.de_private, ptr %de, i32 0, i32 4
  %70 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %71, ptr noundef nonnull @.str.41) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end11.11, %if.end11.10.cleanup_crit_edge, %if.end11.9.cleanup_crit_edge, %if.end11.8.cleanup_crit_edge, %if.end11.7.cleanup_crit_edge, %if.end11.6.cleanup_crit_edge, %if.end11.5.cleanup_crit_edge, %if.end11.4.cleanup_crit_edge, %if.end11.3.cleanup_crit_edge, %if.end11.2.cleanup_crit_edge, %if.end11.1.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %if.end.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @de_set_media(ptr nocapture noundef readonly %de) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %media_type = getelementptr inbounds %struct.de_private, ptr %de, i32 0, i32 15
  %0 = ptrtoint ptr %media_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %media_type, align 4
  %regs = getelementptr inbounds %struct.de_private, ptr %de, i32 0, i32 3
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 48
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #13, !srcloc !216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !217
  %5 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 40
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #13, !srcloc !216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !217
  %8 = and i32 %7, 32256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i.not = icmp eq i32 %8, 0
  br i1 %tobool.not.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %dev = getelementptr inbounds %struct.de_private, ptr %de, i32 0, i32 4
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %10, ptr noundef nonnull @.str.42) #16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %de21040 = getelementptr inbounds %struct.de_private, ptr %de, i32 0, i32 22
  %11 = ptrtoint ptr %de21040 to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load = load i8, ptr %de21040, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool2.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool2.not, label %if.end.if.end6_crit_edge, label %if.then3

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end6

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %12 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs, align 4
  %add.ptr5 = getelementptr i8, ptr %13, i32 88
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !214
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 1768488960) #13, !srcloc !215
  br label %if.end6

if.end6:                                          ; preds = %if.then3, %if.end.if.end6_crit_edge
  %14 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs, align 4
  %add.ptr8 = getelementptr i8, ptr %15, i32 104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !214
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 0) #13, !srcloc !215
  %csr14 = getelementptr %struct.de_private, ptr %de, i32 0, i32 18, i32 %1, i32 2
  %16 = ptrtoint ptr %csr14 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %csr14, align 4
  %conv = zext i16 %17 to i32
  %18 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs, align 4
  %add.ptr11 = getelementptr i8, ptr %19, i32 112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !214
  tail call void @arm_heavy_mb() #13
  %20 = tail call i32 @llvm.bswap.i32(i32 %conv) #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11, i32 %20) #13, !srcloc !215
  %csr15 = getelementptr %struct.de_private, ptr %de, i32 0, i32 18, i32 %1, i32 3
  %21 = ptrtoint ptr %csr15 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %csr15, align 2
  %conv14 = zext i16 %22 to i32
  %23 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regs, align 4
  %add.ptr16 = getelementptr i8, ptr %24, i32 120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !214
  tail call void @arm_heavy_mb() #13
  %25 = tail call i32 @llvm.bswap.i32(i32 %conv14) #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16, i32 %25) #13, !srcloc !215
  %csr13 = getelementptr %struct.de_private, ptr %de, i32 0, i32 18, i32 %1, i32 1
  %26 = ptrtoint ptr %csr13 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %csr13, align 2
  %conv19 = zext i16 %27 to i32
  %28 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regs, align 4
  %add.ptr21 = getelementptr i8, ptr %29, i32 104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !214
  tail call void @arm_heavy_mb() #13
  %30 = tail call i32 @llvm.bswap.i32(i32 %conv19) #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21, i32 %30) #13, !srcloc !215
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %31 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %31(i32 noundef 214748000) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %32 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %32(i32 noundef 214748000) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %33 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %33(i32 noundef 214748000) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %34 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %34(i32 noundef 214748000) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %35 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %35(i32 noundef 214748000) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %36 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %36(i32 noundef 214748000) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %37 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %37(i32 noundef 214748000) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %38 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %38(i32 noundef 214748000) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %39 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %39(i32 noundef 214748000) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %40 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %40(i32 noundef 214748000) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %cmp = icmp eq i32 %1, 4
  %41 = and i32 %4, -131073
  %42 = tail call i32 @llvm.bswap.i32(i32 %41)
  %masksel = select i1 %cmp, i32 512, i32 0
  %macmode.0 = or i32 %42, %masksel
  %msg_enable = getelementptr inbounds %struct.de_private, ptr %de, i32 0, i32 12
  %43 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %msg_enable, align 4
  %and26 = and i32 %44, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %if.end6.do.body32_crit_edge, label %if.then28

if.end6.do.body32_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body32

if.then28:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  %dev29 = getelementptr inbounds %struct.de_private, ptr %de, i32 0, i32 4
  %45 = ptrtoint ptr %dev29 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev29, align 4
  %arrayidx30 = getelementptr [5 x ptr], ptr @media_name, i32 0, i32 %1
  %47 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arrayidx30, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %46, ptr noundef nonnull @.str.43, ptr noundef %48) #16
  br label %do.body32

do.body32:                                        ; preds = %if.then28, %if.end6.do.body32_crit_edge
  %49 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %msg_enable, align 4
  %and34 = and i32 %50, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  br i1 %tobool35.not, label %do.body32.do.body56_crit_edge, label %if.then36

do.body32.do.body56_crit_edge:                    ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body56

if.then36:                                        ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #15
  %dev37 = getelementptr inbounds %struct.de_private, ptr %de, i32 0, i32 4
  %51 = ptrtoint ptr %dev37 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev37, align 4
  %53 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %regs, align 4
  %add.ptr39 = getelementptr i8, ptr %54, i32 48
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr39) #13, !srcloc !216
  %56 = tail call i32 @llvm.bswap.i32(i32 %55) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !217
  %57 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %regs, align 4
  %add.ptr42 = getelementptr i8, ptr %58, i32 96
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr42) #13, !srcloc !216
  %60 = tail call i32 @llvm.bswap.i32(i32 %59) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !217
  %61 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %regs, align 4
  %add.ptr45 = getelementptr i8, ptr %62, i32 104
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr45) #13, !srcloc !216
  %64 = tail call i32 @llvm.bswap.i32(i32 %63) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !217
  %65 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %regs, align 4
  %add.ptr48 = getelementptr i8, ptr %66, i32 112
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr48) #13, !srcloc !216
  %68 = tail call i32 @llvm.bswap.i32(i32 %67) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !217
  %69 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %regs, align 4
  %add.ptr51 = getelementptr i8, ptr %70, i32 120
  %71 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51) #13, !srcloc !216
  %72 = tail call i32 @llvm.bswap.i32(i32 %71) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !217
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %52, ptr noundef nonnull @.str.44, i32 noundef %56, i32 noundef %60, i32 noundef %64, i32 noundef %68, i32 noundef %72) #16
  br label %do.body56

do.body56:                                        ; preds = %if.then36, %do.body32.do.body56_crit_edge
  %73 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %msg_enable, align 4
  %and58 = and i32 %74, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and58)
  %tobool59.not = icmp eq i32 %and58, 0
  br i1 %tobool59.not, label %do.body56.do.end76_crit_edge, label %if.then60

do.body56.do.end76_crit_edge:                     ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end76

if.then60:                                        ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #15
  %dev61 = getelementptr inbounds %struct.de_private, ptr %de, i32 0, i32 4
  %75 = ptrtoint ptr %dev61 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %dev61, align 4
  %77 = ptrtoint ptr %csr13 to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %csr13, align 2
  %conv65 = zext i16 %78 to i32
  %79 = ptrtoint ptr %csr14 to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %csr14, align 4
  %conv69 = zext i16 %80 to i32
  %81 = ptrtoint ptr %csr15 to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %csr15, align 2
  %conv73 = zext i16 %82 to i32
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %76, ptr noundef nonnull @.str.45, i32 noundef %macmode.0, i32 noundef %conv65, i32 noundef %conv69, i32 noundef %conv73) #16
  br label %do.end76

do.end76:                                         ; preds = %if.then60, %do.body56.do.end76_crit_edge
  %83 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %regs, align 4
  %add.ptr78 = getelementptr i8, ptr %84, i32 48
  %85 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr78) #13, !srcloc !216
  %86 = tail call i32 @llvm.bswap.i32(i32 %85) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !217
  call void @__sanitizer_cov_trace_cmp4(i32 %macmode.0, i32 %86)
  %cmp80.not = icmp eq i32 %macmode.0, %86
  br i1 %cmp80.not, label %do.end76.if.end85_crit_edge, label %if.then82

do.end76.if.end85_crit_edge:                      ; preds = %do.end76
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end85

if.then82:                                        ; preds = %do.end76
  call void @__sanitizer_cov_trace_pc() #15
  %87 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %regs, align 4
  %add.ptr84 = getelementptr i8, ptr %88, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !214
  tail call void @arm_heavy_mb() #13
  %89 = tail call i32 @llvm.bswap.i32(i32 %macmode.0) #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr84, i32 %89) #13, !srcloc !215
  br label %if.end85

if.end85:                                         ; preds = %if.then82, %do.end76.if.end85_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_on(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_le(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @de_get_drvinfo(ptr nocapture noundef readonly %dev, ptr noundef %info) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 1
  %call1 = tail call i32 @strlcpy(ptr noundef %driver, ptr noundef nonnull @.str, i32 noundef 32) #13
  %pdev = getelementptr i8, ptr %dev, i32 3924
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %entry.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %5, %if.end.i.i ], [ %3, %entry.pci_name.exit_crit_edge ]
  %bus_info = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 4
  %call4 = tail call i32 @strlcpy(ptr noundef %bus_info, ptr noundef %retval.0.i.i, i32 noundef 32) #13
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @de_get_regs_len(ptr nocapture noundef readnone %dev) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 64
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @de_get_regs(ptr noundef %dev, ptr nocapture noundef writeonly %regs, ptr nocapture noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %de21040 = getelementptr i8, ptr %dev, i32 4228
  %0 = ptrtoint ptr %de21040 to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %de21040, align 4
  %bf.lshr = lshr i8 %bf.load, 7
  %1 = or i8 %bf.lshr, 4
  %or = zext i8 %1 to i32
  %version = getelementptr inbounds %struct.ethtool_regs, ptr %regs, i32 0, i32 1
  %2 = ptrtoint ptr %version to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %or, ptr %version, align 4
  %lock = getelementptr i8, ptr %dev, i32 2324
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #13
  %regs.i = getelementptr i8, ptr %dev, i32 2316
  %3 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regs.i, align 4
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #13, !srcloc !216
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !217
  %7 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %data, align 4
  %8 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs.i, align 4
  %add.ptr.1.i = getelementptr i8, ptr %9, i32 8
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.1.i) #13, !srcloc !216
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !217
  %arrayidx.1.i = getelementptr i32, ptr %data, i32 1
  %12 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %arrayidx.1.i, align 4
  %13 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs.i, align 4
  %add.ptr.2.i = getelementptr i8, ptr %14, i32 16
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.2.i) #13, !srcloc !216
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !217
  %arrayidx.2.i = getelementptr i32, ptr %data, i32 2
  %17 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %arrayidx.2.i, align 4
  %18 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs.i, align 4
  %add.ptr.3.i = getelementptr i8, ptr %19, i32 24
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.3.i) #13, !srcloc !216
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !217
  %arrayidx.3.i = getelementptr i32, ptr %data, i32 3
  %22 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %arrayidx.3.i, align 4
  %23 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regs.i, align 4
  %add.ptr.4.i = getelementptr i8, ptr %24, i32 32
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.4.i) #13, !srcloc !216
  %26 = tail call i32 @llvm.bswap.i32(i32 %25) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !217
  %arrayidx.4.i = getelementptr i32, ptr %data, i32 4
  %27 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %arrayidx.4.i, align 4
  %28 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regs.i, align 4
  %add.ptr.5.i = getelementptr i8, ptr %29, i32 40
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.5.i) #13, !srcloc !216
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !217
  %arrayidx.5.i = getelementptr i32, ptr %data, i32 5
  %32 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %arrayidx.5.i, align 4
  %33 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regs.i, align 4
  %add.ptr.6.i = getelementptr i8, ptr %34, i32 48
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.6.i) #13, !srcloc !216
  %36 = tail call i32 @llvm.bswap.i32(i32 %35) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !217
  %arrayidx.6.i = getelementptr i32, ptr %data, i32 6
  %37 = ptrtoint ptr %arrayidx.6.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %arrayidx.6.i, align 4
  %38 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regs.i, align 4
  %add.ptr.7.i = getelementptr i8, ptr %39, i32 56
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.7.i) #13, !srcloc !216
  %41 = tail call i32 @llvm.bswap.i32(i32 %40) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !217
  %arrayidx.7.i = getelementptr i32, ptr %data, i32 7
  %42 = ptrtoint ptr %arrayidx.7.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %arrayidx.7.i, align 4
  %43 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %regs.i, align 4
  %add.ptr.8.i = getelementptr i8, ptr %44, i32 64
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.8.i) #13, !srcloc !216
  %46 = tail call i32 @llvm.bswap.i32(i32 %45) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !217
  %arrayidx.8.i = getelementptr i32, ptr %data, i32 8
  %47 = ptrtoint ptr %arrayidx.8.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %arrayidx.8.i, align 4
  %48 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %regs.i, align 4
  %add.ptr.9.i = getelementptr i8, ptr %49, i32 72
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.9.i) #13, !srcloc !216
  %51 = tail call i32 @llvm.bswap.i32(i32 %50) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !217
  %arrayidx.9.i = getelementptr i32, ptr %data, i32 9
  %52 = ptrtoint ptr %arrayidx.9.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %arrayidx.9.i, align 4
  %53 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %regs.i, align 4
  %add.ptr.10.i = getelementptr i8, ptr %54, i32 80
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.10.i) #13, !srcloc !216
  %56 = tail call i32 @llvm.bswap.i32(i32 %55) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !217
  %arrayidx.10.i = getelementptr i32, ptr %data, i32 10
  %57 = ptrtoint ptr %arrayidx.10.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %arrayidx.10.i, align 4
  %58 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %regs.i, align 4
  %add.ptr.11.i = getelementptr i8, ptr %59, i32 88
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.11.i) #13, !srcloc !216
  %61 = tail call i32 @llvm.bswap.i32(i32 %60) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !217
  %arrayidx.11.i = getelementptr i32, ptr %data, i32 11
  %62 = ptrtoint ptr %arrayidx.11.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %arrayidx.11.i, align 4
  %63 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %regs.i, align 4
  %add.ptr.12.i = getelementptr i8, ptr %64, i32 96
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.12.i) #13, !srcloc !216
  %66 = tail call i32 @llvm.bswap.i32(i32 %65) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !217
  %arrayidx.12.i = getelementptr i32, ptr %data, i32 12
  %67 = ptrtoint ptr %arrayidx.12.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %arrayidx.12.i, align 4
  %68 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %regs.i, align 4
  %add.ptr.13.i = getelementptr i8, ptr %69, i32 104
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.13.i) #13, !srcloc !216
  %71 = tail call i32 @llvm.bswap.i32(i32 %70) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !217
  %arrayidx.13.i = getelementptr i32, ptr %data, i32 13
  %72 = ptrtoint ptr %arrayidx.13.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %71, ptr %arrayidx.13.i, align 4
  %73 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %regs.i, align 4
  %add.ptr.14.i = getelementptr i8, ptr %74, i32 112
  %75 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.14.i) #13, !srcloc !216
  %76 = tail call i32 @llvm.bswap.i32(i32 %75) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !217
  %arrayidx.14.i = getelementptr i32, ptr %data, i32 14
  %77 = ptrtoint ptr %arrayidx.14.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %76, ptr %arrayidx.14.i, align 4
  %78 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %regs.i, align 4
  %add.ptr.15.i = getelementptr i8, ptr %79, i32 120
  %80 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.15.i) #13, !srcloc !216
  %81 = tail call i32 @llvm.bswap.i32(i32 %80) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !217
  %arrayidx.15.i = getelementptr i32, ptr %data, i32 15
  %82 = ptrtoint ptr %arrayidx.15.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %81, ptr %arrayidx.15.i, align 4
  %83 = ptrtoint ptr %arrayidx.8.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %arrayidx.8.i, align 4
  %and.i.i = and i32 %84, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %and3.i.i = and i32 %84, 65535
  %and3.sink.i.i = select i1 %tobool.not.i.i, i32 %and3.i.i, i32 65535, !prof !222
  %dev4.i.i = getelementptr i8, ptr %dev, i32 2320
  %85 = ptrtoint ptr %dev4.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %dev4.i.i, align 4
  %rx_missed_errors6.i.i = getelementptr inbounds %struct.net_device, ptr %86, i32 0, i32 36, i32 15
  %87 = ptrtoint ptr %rx_missed_errors6.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %rx_missed_errors6.i.i, align 4
  %add7.i.i = add i32 %and3.sink.i.i, %88
  store i32 %add7.i.i, ptr %rx_missed_errors6.i.i, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #13
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @de_get_msglevel(ptr nocapture noundef readonly %dev) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_enable = getelementptr i8, ptr %dev, i32 3920
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msg_enable, align 4
  ret i32 %1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @de_set_msglevel(ptr nocapture noundef writeonly %dev, i32 noundef %msglvl) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_enable = getelementptr i8, ptr %dev, i32 3920
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %msglvl, ptr %msg_enable, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @de_nway_reset(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %media_type = getelementptr i8, ptr %dev, i32 4120
  %0 = ptrtoint ptr %media_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %media_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev1 = getelementptr i8, ptr %dev, i32 2320
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  %state.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %state.i, align 4
  %6 = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i, label %if.then3, label %if.end.if.end4_crit_edge

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end4

if.then3:                                         ; preds = %if.end
  %7 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %state.i, align 4
  %9 = and i32 %8, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i.i, label %if.then.i, label %if.then3.if.end4_crit_edge

if.then3.if.end4_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end4

if.then.i:                                        ; preds = %if.then3
  tail call void @netif_carrier_off(ptr noundef %3) #13
  %msg_enable.i = getelementptr i8, ptr %dev, i32 3920
  %10 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %msg_enable.i, align 4
  %and.i = and i32 %11, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i23 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i23, label %if.then.i.if.end4_crit_edge, label %if.then2.i

if.then.i.if.end4_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end4

if.then2.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  %12 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev1, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %13, ptr noundef nonnull @.str.52) #16
  br label %if.end4

if.end4:                                          ; preds = %if.then2.i, %if.then.i.if.end4_crit_edge, %if.then3.if.end4_crit_edge, %if.end.if.end4_crit_edge
  %regs = getelementptr i8, ptr %dev, i32 2316
  %14 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %15, i32 96
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #13, !srcloc !216
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !217
  %and = and i32 %17, -28673
  %or = or i32 %and, 4096
  %18 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs, align 4
  %add.ptr7 = getelementptr i8, ptr %19, i32 96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !214
  tail call void @arm_heavy_mb() #13
  %20 = tail call i32 @llvm.bswap.i32(i32 %or) #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 %20) #13, !srcloc !215
  %msg_enable = getelementptr i8, ptr %dev, i32 3920
  %21 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %msg_enable, align 4
  %and8 = and i32 %22, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool.not = icmp eq i32 %and8, 0
  br i1 %tobool.not, label %if.end4.cleanup_crit_edge, label %if.then9

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then9:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  %23 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regs, align 4
  %add.ptr11 = getelementptr i8, ptr %24, i32 96
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11) #13, !srcloc !216
  %26 = tail call i32 @llvm.bswap.i32(i32 %25) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !217
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %dev, ptr noundef nonnull @.str.59, i32 noundef %17, i32 noundef %26) #16
  br label %cleanup

cleanup:                                          ; preds = %if.then9, %if.end4.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.then9 ], [ 0, %if.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethtool_op_get_link(ptr noundef) #1

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @de_get_eeprom(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %eeprom, ptr nocapture noundef writeonly %data) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %ee_data = getelementptr i8, ptr %dev, i32 4220
  %0 = ptrtoint ptr %ee_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ee_data, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %offset = getelementptr inbounds %struct.ethtool_eeprom, ptr %eeprom, i32 0, i32 2
  %2 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %offset, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not = icmp eq i32 %3, 0
  br i1 %cmp.not, label %lor.lhs.false, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %magic = getelementptr inbounds %struct.ethtool_eeprom, ptr %eeprom, i32 0, i32 1
  %4 = ptrtoint ptr %magic to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %magic, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp1.not = icmp eq i32 %5, 0
  br i1 %cmp1.not, label %lor.lhs.false2, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %len = getelementptr inbounds %struct.ethtool_eeprom, ptr %eeprom, i32 0, i32 3
  %6 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %7)
  %cmp3.not = icmp eq i32 %7, 512
  br i1 %cmp3.not, label %if.end5, label %lor.lhs.false2.cleanup_crit_edge

lor.lhs.false2.cleanup_crit_edge:                 ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end5:                                          ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #15
  %8 = call ptr @memcpy(ptr %data, ptr %1, i32 512)
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %lor.lhs.false2.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end5 ], [ -95, %entry.cleanup_crit_edge ], [ -22, %lor.lhs.false2.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @de_get_link_ksettings(ptr noundef %dev, ptr noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr i8, ptr %dev, i32 2324
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #13
  %link_modes.i = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %cmd, i32 0, i32 1
  %media_supported.i = getelementptr i8, ptr %dev, i32 4124
  %0 = ptrtoint ptr %media_supported.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %media_supported.i, align 4
  tail call void @ethtool_convert_legacy_u32_to_link_mode(ptr noundef %link_modes.i, i32 noundef %1) #13
  %phy_address.i = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 4
  %2 = ptrtoint ptr %phy_address.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %phy_address.i, align 2
  %advertising.i = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %cmd, i32 0, i32 1, i32 1
  %media_advertise.i = getelementptr i8, ptr %dev, i32 4128
  %3 = ptrtoint ptr %media_advertise.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %media_advertise.i, align 4
  tail call void @ethtool_convert_legacy_u32_to_link_mode(ptr noundef %advertising.i, i32 noundef %4) #13
  %media_type.i = getelementptr i8, ptr %dev, i32 4120
  %5 = ptrtoint ptr %media_type.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %media_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %switch.selectcmp.i = icmp eq i32 %6, 1
  %switch.select.i = select i1 %switch.selectcmp.i, i8 4, i8 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %6)
  %switch.selectcmp36.i = icmp eq i32 %6, 2
  %switch.select37.i = select i1 %switch.selectcmp36.i, i8 1, i8 %switch.select.i
  %port8.i = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 3
  %7 = ptrtoint ptr %port8.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %switch.select37.i, ptr %port8.i, align 1
  %speed.i = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 1
  %8 = ptrtoint ptr %speed.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 10, ptr %speed.i, align 4
  %regs.i = getelementptr i8, ptr %dev, i32 2316
  %9 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs.i, align 4
  %add.ptr.i4 = getelementptr i8, ptr %10, i32 48
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i4) #13, !srcloc !216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !217
  %12 = lshr i32 %11, 17
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 1
  %15 = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 2
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %14, ptr %15, align 4
  %media_lock.i = getelementptr i8, ptr %dev, i32 4228
  %17 = ptrtoint ptr %media_lock.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %bf.load.i = load i8, ptr %media_lock.i, align 4
  %18 = lshr i8 %bf.load.i, 6
  %.lobit.i = and i8 %18, 1
  %19 = xor i8 %.lobit.i, 1
  %20 = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 5
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %19, ptr %20, align 1
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #13
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @de_set_link_ksettings(ptr noundef %dev, ptr noundef %cmd) #2 align 64 {
entry:
  %advertising.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %lock = getelementptr i8, ptr %dev, i32 2324
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #13
  %duplex1.i = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 2
  %0 = ptrtoint ptr %duplex1.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %duplex1.i, align 4
  %port3.i = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 3
  %2 = ptrtoint ptr %port3.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %port3.i, align 1
  %autoneg5.i = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 5
  %4 = ptrtoint ptr %autoneg5.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %autoneg5.i, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %advertising.i) #13
  %6 = ptrtoint ptr %advertising.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %advertising.i, align 4, !annotation !213
  %advertising6.i = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %cmd, i32 0, i32 1, i32 1
  %call.i = call zeroext i1 @ethtool_convert_link_mode_to_legacy_u32(ptr noundef nonnull %advertising.i, ptr noundef %advertising6.i) #13
  %speed.i = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 1
  %7 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %speed.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %8)
  %cmp.not.i = icmp eq i32 %8, 10
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %1)
  %switch.i = icmp ult i8 %1, 2
  %or.cond144.i = select i1 %cmp.not.i, i1 %switch.i, i1 false
  br i1 %or.cond144.i, label %if.end14.i, label %entry.__de_set_link_ksettings.exit_crit_edge

entry.__de_set_link_ksettings.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %__de_set_link_ksettings.exit

if.end14.i:                                       ; preds = %entry
  %9 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.86)
  switch i8 %3, label %if.end14.i.__de_set_link_ksettings.exit_crit_edge [
    i8 0, label %if.end14.i.if.end27.i_crit_edge
    i8 1, label %if.end14.i.if.end27.i_crit_edge13
    i8 4, label %if.end14.i.if.end27.i_crit_edge14
  ]

if.end14.i.if.end27.i_crit_edge14:                ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end27.i

if.end14.i.if.end27.i_crit_edge13:                ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end27.i

if.end14.i.if.end27.i_crit_edge:                  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end27.i

if.end14.i.__de_set_link_ksettings.exit_crit_edge: ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %__de_set_link_ksettings.exit

if.end27.i:                                       ; preds = %if.end14.i.if.end27.i_crit_edge, %if.end14.i.if.end27.i_crit_edge13, %if.end14.i.if.end27.i_crit_edge14
  %de21040.i = getelementptr i8, ptr %dev, i32 4228
  %10 = ptrtoint ptr %de21040.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load.i = load i8, ptr %de21040.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool.not.i = icmp sgt i8 %bf.load.i, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %3)
  %cmp30.i = icmp ne i8 %3, 4
  %or.cond.i = select i1 %tobool.not.i, i1 true, i1 %cmp30.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %5)
  %switch145.i = icmp ult i8 %5, 2
  %or.cond146.i = select i1 %or.cond.i, i1 %switch145.i, i1 false
  br i1 %or.cond146.i, label %if.end42.i, label %if.end27.i.__de_set_link_ksettings.exit_crit_edge

if.end27.i.__de_set_link_ksettings.exit_crit_edge: ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %__de_set_link_ksettings.exit

if.end42.i:                                       ; preds = %if.end27.i
  %11 = ptrtoint ptr %advertising.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %advertising.i, align 4
  %media_supported.i = getelementptr i8, ptr %dev, i32 4124
  %13 = ptrtoint ptr %media_supported.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %media_supported.i, align 4
  %neg.i = xor i32 %14, -1
  %and.i = and i32 %12, %neg.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool43.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool43.not.i, label %if.end45.i, label %if.end42.i.__de_set_link_ksettings.exit_crit_edge

if.end42.i.__de_set_link_ksettings.exit_crit_edge: ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %__de_set_link_ksettings.exit

if.end45.i:                                       ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %5)
  %cmp47.i = icmp eq i8 %5, 1
  %and50.i = and i32 %12, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50.i)
  %tobool51.not.i = icmp eq i32 %and50.i, 0
  %or.cond143.i = select i1 %cmp47.i, i1 %tobool51.not.i, i1 false
  br i1 %or.cond143.i, label %if.end45.i.__de_set_link_ksettings.exit_crit_edge, label %if.end53.i

if.end45.i.__de_set_link_ksettings.exit_crit_edge: ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %__de_set_link_ksettings.exit

if.end53.i:                                       ; preds = %if.end45.i
  %15 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.87)
  switch i8 %3, label %sw.default.i [
    i8 1, label %sw.bb.i
    i8 4, label %sw.bb59.i
  ]

sw.bb.i:                                          ; preds = %if.end53.i
  %and55.i = and i32 %12, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55.i)
  %tobool56.not.i = icmp eq i32 %and55.i, 0
  br i1 %tobool56.not.i, label %sw.bb.i.__de_set_link_ksettings.exit_crit_edge, label %sw.bb.i.sw.epilog.i_crit_edge

sw.bb.i.sw.epilog.i_crit_edge:                    ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog.i

sw.bb.i.__de_set_link_ksettings.exit_crit_edge:   ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %__de_set_link_ksettings.exit

sw.bb59.i:                                        ; preds = %if.end53.i
  %and60.i = and i32 %12, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60.i)
  %tobool61.not.i = icmp eq i32 %and60.i, 0
  br i1 %tobool61.not.i, label %sw.bb59.i.__de_set_link_ksettings.exit_crit_edge, label %sw.bb59.i.sw.epilog.i_crit_edge

sw.bb59.i.sw.epilog.i_crit_edge:                  ; preds = %sw.bb59.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog.i

sw.bb59.i.__de_set_link_ksettings.exit_crit_edge: ; preds = %sw.bb59.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %__de_set_link_ksettings.exit

sw.default.i:                                     ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp69.i = icmp eq i8 %1, 1
  %..i = select i1 %cmp69.i, i32 4, i32 3
  %new_media.0.i = select i1 %cmp47.i, i32 0, i32 %..i
  %and75.i = and i32 %12, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and75.i)
  %tobool76.not.i = icmp eq i32 %and75.i, 0
  %and79.i = and i32 %12, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and79.i)
  %tobool80.not.i = icmp eq i32 %and79.i, 0
  %or.cond147.i = or i1 %tobool76.not.i, %tobool80.not.i
  br i1 %or.cond147.i, label %sw.default.i.__de_set_link_ksettings.exit_crit_edge, label %sw.default.i.sw.epilog.i_crit_edge

sw.default.i.sw.epilog.i_crit_edge:               ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog.i

sw.default.i.__de_set_link_ksettings.exit_crit_edge: ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %__de_set_link_ksettings.exit

sw.epilog.i:                                      ; preds = %sw.default.i.sw.epilog.i_crit_edge, %sw.bb59.i.sw.epilog.i_crit_edge, %sw.bb.i.sw.epilog.i_crit_edge
  %new_media.1.i = phi i32 [ 1, %sw.bb59.i.sw.epilog.i_crit_edge ], [ 2, %sw.bb.i.sw.epilog.i_crit_edge ], [ %new_media.0.i, %sw.default.i.sw.epilog.i_crit_edge ]
  %media_type.i = getelementptr i8, ptr %dev, i32 4120
  %16 = ptrtoint ptr %media_type.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %media_type.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %new_media.1.i, i32 %17)
  %cmp86.i = icmp eq i32 %new_media.1.i, %17
  br i1 %cmp86.i, label %land.lhs.true88.i, label %sw.epilog.i.if.end99.i_crit_edge

sw.epilog.i.if.end99.i_crit_edge:                 ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end99.i

land.lhs.true88.i:                                ; preds = %sw.epilog.i
  %18 = and i8 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %19 = icmp ne i8 %18, 0
  %cmp93.i = xor i1 %cmp47.i, %19
  br i1 %cmp93.i, label %land.lhs.true95.i, label %land.lhs.true88.i.if.end99.i_crit_edge

land.lhs.true88.i.if.end99.i_crit_edge:           ; preds = %land.lhs.true88.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end99.i

land.lhs.true95.i:                                ; preds = %land.lhs.true88.i
  %media_advertise.i = getelementptr i8, ptr %dev, i32 4128
  %20 = ptrtoint ptr %media_advertise.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %media_advertise.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %21)
  %cmp96.i = icmp eq i32 %12, %21
  br i1 %cmp96.i, label %land.lhs.true95.i.__de_set_link_ksettings.exit_crit_edge, label %land.lhs.true95.i.if.end99.i_crit_edge

land.lhs.true95.i.if.end99.i_crit_edge:           ; preds = %land.lhs.true95.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end99.i

land.lhs.true95.i.__de_set_link_ksettings.exit_crit_edge: ; preds = %land.lhs.true95.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %__de_set_link_ksettings.exit

if.end99.i:                                       ; preds = %land.lhs.true95.i.if.end99.i_crit_edge, %land.lhs.true88.i.if.end99.i_crit_edge, %sw.epilog.i.if.end99.i_crit_edge
  %dev.i8 = getelementptr i8, ptr %dev, i32 2320
  %22 = ptrtoint ptr %dev.i8 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev.i8, align 4
  %state.i.i9 = getelementptr inbounds %struct.net_device, ptr %23, i32 0, i32 6
  %24 = ptrtoint ptr %state.i.i9 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %state.i.i9, align 4
  %26 = and i32 %25, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.not.i.i = icmp eq i32 %26, 0
  br i1 %tobool.not.i.i, label %if.then.i12, label %if.end99.i.de_link_down.exit_crit_edge

if.end99.i.de_link_down.exit_crit_edge:           ; preds = %if.end99.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %de_link_down.exit

if.then.i12:                                      ; preds = %if.end99.i
  call void @netif_carrier_off(ptr noundef %23) #13
  %msg_enable.i = getelementptr i8, ptr %dev, i32 3920
  %27 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %msg_enable.i, align 4
  %and.i10 = and i32 %28, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i10)
  %tobool.not.i11 = icmp eq i32 %and.i10, 0
  br i1 %tobool.not.i11, label %if.then.i12.de_link_down.exit_crit_edge, label %if.then2.i

if.then.i12.de_link_down.exit_crit_edge:          ; preds = %if.then.i12
  call void @__sanitizer_cov_trace_pc() #15
  br label %de_link_down.exit

if.then2.i:                                       ; preds = %if.then.i12
  call void @__sanitizer_cov_trace_pc() #15
  %29 = ptrtoint ptr %dev.i8 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev.i8, align 4
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %30, ptr noundef nonnull @.str.52) #16
  br label %de_link_down.exit

de_link_down.exit:                                ; preds = %if.then2.i, %if.then.i12.de_link_down.exit_crit_edge, %if.end99.i.de_link_down.exit_crit_edge
  %media_timer.i = getelementptr i8, ptr %dev, i32 4172
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %31 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %31, 500
  %call100.i = call i32 @mod_timer(ptr noundef %media_timer.i, i32 noundef %add.i) #13
  call fastcc void @de_stop_rxtx(ptr noundef %add.ptr.i) #13
  %32 = ptrtoint ptr %media_type.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %new_media.1.i, ptr %media_type.i, align 4
  %33 = ptrtoint ptr %de21040.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %bf.load103.i = load i8, ptr %de21040.i, align 4
  %bf.shl.i = select i1 %cmp47.i, i8 0, i8 64
  %bf.clear104.i = and i8 %bf.load103.i, -65
  %bf.set.i = or i8 %bf.clear104.i, %bf.shl.i
  store i8 %bf.set.i, ptr %de21040.i, align 4
  %34 = ptrtoint ptr %advertising.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %advertising.i, align 4
  %media_advertise105.i = getelementptr i8, ptr %dev, i32 4128
  %36 = ptrtoint ptr %media_advertise105.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %media_advertise105.i, align 4
  call fastcc void @de_set_media(ptr noundef %add.ptr.i) #13
  %37 = ptrtoint ptr %dev.i8 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev.i8, align 4
  %state.i.i = getelementptr inbounds %struct.net_device, ptr %38, i32 0, i32 6
  %39 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %state.i.i, align 4
  %and1.i.i.i = and i32 %40, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.i.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.i.not.i, label %de_link_down.exit.__de_set_link_ksettings.exit_crit_edge, label %if.then107.i

de_link_down.exit.__de_set_link_ksettings.exit_crit_edge: ; preds = %de_link_down.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %__de_set_link_ksettings.exit

if.then107.i:                                     ; preds = %de_link_down.exit
  %regs.i = getelementptr i8, ptr %dev, i32 2316
  %41 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %regs.i, align 4
  %add.ptr.i5 = getelementptr i8, ptr %42, i32 48
  %43 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5) #13, !srcloc !216
  %44 = call i32 @llvm.bswap.i32(i32 %43) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !217
  %and.i6 = and i32 %44, 8194
  call void @__sanitizer_cov_trace_const_cmp4(i32 8194, i32 %and.i6)
  %cmp.not.i7 = icmp eq i32 %and.i6, 8194
  br i1 %cmp.not.i7, label %if.then107.i.__de_set_link_ksettings.exit_crit_edge, label %if.then.i

if.then107.i.__de_set_link_ksettings.exit_crit_edge: ; preds = %if.then107.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %__de_set_link_ksettings.exit

if.then.i:                                        ; preds = %if.then107.i
  call void @__sanitizer_cov_trace_pc() #15
  %or.i = or i32 %44, 8194
  %45 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %regs.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %46, i32 48
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !214
  call void @arm_heavy_mb() #13
  %47 = call i32 @llvm.bswap.i32(i32 %or.i) #13
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 %47) #13, !srcloc !215
  %48 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %regs.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %49, i32 48
  %50 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i) #13, !srcloc !216
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !217
  br label %__de_set_link_ksettings.exit

__de_set_link_ksettings.exit:                     ; preds = %if.then.i, %if.then107.i.__de_set_link_ksettings.exit_crit_edge, %de_link_down.exit.__de_set_link_ksettings.exit_crit_edge, %land.lhs.true95.i.__de_set_link_ksettings.exit_crit_edge, %sw.default.i.__de_set_link_ksettings.exit_crit_edge, %sw.bb59.i.__de_set_link_ksettings.exit_crit_edge, %sw.bb.i.__de_set_link_ksettings.exit_crit_edge, %if.end45.i.__de_set_link_ksettings.exit_crit_edge, %if.end42.i.__de_set_link_ksettings.exit_crit_edge, %if.end27.i.__de_set_link_ksettings.exit_crit_edge, %if.end14.i.__de_set_link_ksettings.exit_crit_edge, %entry.__de_set_link_ksettings.exit_crit_edge
  %retval.0.i = phi i32 [ -22, %entry.__de_set_link_ksettings.exit_crit_edge ], [ -22, %if.end14.i.__de_set_link_ksettings.exit_crit_edge ], [ -22, %if.end27.i.__de_set_link_ksettings.exit_crit_edge ], [ -22, %if.end42.i.__de_set_link_ksettings.exit_crit_edge ], [ -22, %if.end45.i.__de_set_link_ksettings.exit_crit_edge ], [ -22, %sw.bb.i.__de_set_link_ksettings.exit_crit_edge ], [ -22, %sw.bb59.i.__de_set_link_ksettings.exit_crit_edge ], [ -22, %sw.default.i.__de_set_link_ksettings.exit_crit_edge ], [ 0, %land.lhs.true95.i.__de_set_link_ksettings.exit_crit_edge ], [ 0, %de_link_down.exit.__de_set_link_ksettings.exit_crit_edge ], [ 0, %if.then107.i.__de_set_link_ksettings.exit_crit_edge ], [ 0, %if.then.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %advertising.i) #13
  call void @_raw_spin_unlock_irq(ptr noundef %lock) #13
  ret i32 %retval.0.i
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local void @ethtool_convert_legacy_u32_to_link_mode(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ethtool_convert_link_mode_to_legacy_u32(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_timer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_dword(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_dword(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tulip_read_eeprom(ptr noundef %regs, i32 noundef %location, i32 noundef %addr_len) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %regs, i32 72
  %shl = shl i32 6, %addr_len
  %or = or i32 %shl, %location
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !237
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 4718592) #13, !srcloc !215
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !238
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 21495808) #13, !srcloc !215
  %add = add i32 %addr_len, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %add)
  %cmp100 = icmp sgt i32 %add, -1
  br i1 %cmp100, label %entry.for.body_crit_edge, label %entry.do.body33_crit_edge

entry.do.body33_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body33

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.0102 = phi i32 [ %dec, %for.body.for.body_crit_edge ], [ %add, %entry.for.body_crit_edge ]
  %retval1.0101 = phi i32 [ %or32, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %shl5 = shl nuw i32 1, %i.0102
  %and = and i32 %shl5, %or
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !239
  tail call void @arm_heavy_mb() #13
  %or10 = select i1 %tobool.not, i32 18433, i32 18437
  %0 = tail call i32 @llvm.bswap.i32(i32 %or10)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %0) #13, !srcloc !215
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #13, !srcloc !216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !240
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !241
  tail call void @arm_heavy_mb() #13
  %or17 = or i32 %or10, 2
  %2 = tail call i32 @llvm.bswap.i32(i32 %or17)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %2) #13, !srcloc !215
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #13, !srcloc !216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !242
  %shl23 = shl i32 %retval1.0101, 1
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #13, !srcloc !216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !243
  %5 = lshr i32 %4, 27
  %.lobit99 = and i32 %5, 1
  %or32 = or i32 %.lobit99, %shl23
  %dec = add nsw i32 %i.0102, -1
  %cmp.not = icmp eq i32 %i.0102, 0
  br i1 %cmp.not, label %for.body.do.body33_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.body.do.body33_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body33

do.body33:                                        ; preds = %for.body.do.body33_crit_edge, %entry.do.body33_crit_edge
  %retval1.0.lcssa = phi i32 [ 0, %entry.do.body33_crit_edge ], [ %or32, %for.body.do.body33_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !244
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 21495808) #13, !srcloc !215
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #13, !srcloc !216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !245
  br label %do.body45

do.body45:                                        ; preds = %do.body45.do.body45_crit_edge, %do.body33
  %i.1104 = phi i32 [ 16, %do.body33 ], [ %dec72, %do.body45.do.body45_crit_edge ]
  %retval1.1103 = phi i32 [ %retval1.0.lcssa, %do.body33 ], [ %or62, %do.body45.do.body45_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !246
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 55050240) #13, !srcloc !215
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #13, !srcloc !216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !247
  %shl53 = shl i32 %retval1.1103, 1
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #13, !srcloc !216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !248
  %9 = lshr i32 %8, 27
  %.lobit = and i32 %9, 1
  %or62 = or i32 %.lobit, %shl53
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !249
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 21495808) #13, !srcloc !215
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #13, !srcloc !216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !250
  %dec72 = add nsw i32 %i.1104, -1
  %cmp42 = icmp ugt i32 %i.1104, 1
  br i1 %cmp42, label %do.body45.do.body45_crit_edge, label %do.body74

do.body45.do.body45_crit_edge:                    ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body45

do.body74:                                        ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !251
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 4718592) #13, !srcloc !215
  ret i32 %or62
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_close(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @de_suspend(ptr nocapture noundef readonly %dev_d) #2 align 64 {
entry:
  %pmctl.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev_d, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @rtnl_lock() #13
  %state.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  %irq3 = getelementptr i8, ptr %dev_d, i32 932
  %4 = ptrtoint ptr %irq3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq3, align 4
  %media_timer = getelementptr i8, ptr %1, i32 4172
  %call4 = tail call i32 @del_timer_sync(ptr noundef %media_timer) #13
  tail call void @disable_irq(i32 noundef %5) #13
  %lock = getelementptr i8, ptr %1, i32 2324
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 1073740) #13
  %regs.i = getelementptr i8, ptr %1, i32 2316
  %7 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regs.i, align 4
  %add.ptr.i20 = getelementptr i8, ptr %8, i32 56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !214
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i20, i32 0) #13, !srcloc !215
  tail call fastcc void @de_stop_rxtx(ptr noundef %add.ptr.i) #13
  %9 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %10, i32 40
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #13, !srcloc !216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !217
  %12 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %13, i32 40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !214
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %11) #13, !srcloc !215
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 2147480) #13
  %rx_tail.i = getelementptr i8, ptr %1, i32 2312
  %15 = ptrtoint ptr %rx_tail.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %rx_tail.i, align 4
  %tx_tail.i = getelementptr i8, ptr %1, i32 2308
  %16 = ptrtoint ptr %tx_tail.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %tx_tail.i, align 4
  %17 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %add.ptr.i, align 4
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 103
  %18 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %19, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #13
  tail call void @netif_device_detach(ptr noundef %1) #13
  tail call void @netif_carrier_off(ptr noundef %1) #13
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #13
  tail call void @enable_irq(i32 noundef %5) #13
  %20 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regs.i, align 4
  %add.ptr.i22 = getelementptr i8, ptr %21, i32 64
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i22) #13, !srcloc !216
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !217
  %and.i.i = and i32 %23, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %and3.i.i = and i32 %23, 65535
  %and3.sink.i.i = select i1 %tobool.not.i.i, i32 %and3.i.i, i32 65535, !prof !222
  %dev4.i.i = getelementptr i8, ptr %1, i32 2320
  %24 = ptrtoint ptr %dev4.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev4.i.i, align 4
  %rx_missed_errors6.i.i = getelementptr inbounds %struct.net_device, ptr %25, i32 0, i32 36, i32 15
  %26 = ptrtoint ptr %rx_missed_errors6.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %rx_missed_errors6.i.i, align 4
  %add7.i.i = add i32 %and3.sink.i.i, %27
  store i32 %add7.i.i, ptr %rx_missed_errors6.i.i, align 4
  tail call void @synchronize_irq(i32 noundef %5) #13
  tail call fastcc void @de_clean_rings(ptr noundef %add.ptr.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pmctl.i) #13
  %28 = ptrtoint ptr %pmctl.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 -1, ptr %pmctl.i, align 4, !annotation !213
  %de21040.i = getelementptr i8, ptr %1, i32 4228
  %29 = ptrtoint ptr %de21040.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %bf.load.i = load i8, ptr %de21040.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool.not.i, label %if.end.i, label %if.then.de_adapter_sleep.exit_crit_edge

if.then.de_adapter_sleep.exit_crit_edge:          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %de_adapter_sleep.exit

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %30 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regs.i, align 4
  %add.ptr.i24 = getelementptr i8, ptr %31, i32 104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !214
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i24, i32 0) #13, !srcloc !215
  %pdev.i = getelementptr i8, ptr %1, i32 3924
  %32 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pdev.i, align 4
  %call.i = call i32 @pci_read_config_dword(ptr noundef %33, i32 noundef 64, ptr noundef nonnull %pmctl.i) #13
  %34 = ptrtoint ptr %pmctl.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %pmctl.i, align 4
  %or.i = or i32 %35, -2147483648
  store i32 %or.i, ptr %pmctl.i, align 4
  %36 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pdev.i, align 4
  %call2.i = call i32 @pci_write_config_dword(ptr noundef %37, i32 noundef 64, i32 noundef %or.i) #13
  br label %de_adapter_sleep.exit

de_adapter_sleep.exit:                            ; preds = %if.end.i, %if.then.de_adapter_sleep.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pmctl.i) #13
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @netif_device_detach(ptr noundef %1) #13
  br label %if.end

if.end:                                           ; preds = %if.else, %de_adapter_sleep.exit
  call void @rtnl_unlock() #13
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @de_resume(ptr noundef %dev_d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev_d, i32 -136
  %driver_data.i.i = getelementptr i8, ptr %dev_d, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  tail call void @rtnl_lock() #13
  %state.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state.i, align 4
  %4 = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.i.not = icmp eq i32 %4, 0
  br i1 %tobool.i.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i14.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i14.not, label %if.end.out_attach_crit_edge, label %if.end5

if.end.out_attach_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_attach

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @pci_set_master(ptr noundef %add.ptr) #13
  %call6 = tail call fastcc i32 @de_init_rings(ptr noundef %add.ptr.i)
  %call7 = tail call fastcc i32 @de_init_hw(ptr noundef %add.ptr.i)
  br label %out_attach

out_attach:                                       ; preds = %if.end5, %if.end.out_attach_crit_edge
  tail call void @netif_device_attach(ptr noundef %1) #13
  br label %out

out:                                              ; preds = %out_attach, %entry.out_crit_edge
  tail call void @rtnl_unlock() #13
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_detach(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_attach(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 82)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 82)
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
attributes #9 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { cold nounwind }
attributes #17 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !12, !14, !15, !17, !19, !20, !21, !23, !24, !26, !27, !29, !31, !33, !35, !36, !38, !39, !41, !42, !43, !44, !45, !47, !48, !49, !51, !52, !53, !55, !56, !57, !59, !60, !61, !63, !65, !67, !69, !71, !72, !73, !75, !77, !79, !81, !82, !83, !85, !86, !87, !89, !91, !92, !93, !95, !97, !98, !99, !101, !103, !104, !105, !107, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !137, !138, !140, !141, !142, !144, !145, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !169, !170, !171, !173, !175, !177, !179, !180, !181, !182, !184, !185, !186, !188, !189, !190, !192, !193, !194, !196, !198, !200, !202}
!llvm.module.flags = !{!204, !205, !206, !207, !208, !209, !210, !211}
!llvm.ident = !{!212}

!0 = !{ptr @__UNIQUE_ID_author343, !1, !"__UNIQUE_ID_author343", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/dec/tulip/de2104x.c", i32 54, i32 1}
!2 = !{ptr @__UNIQUE_ID_description344, !3, !"__UNIQUE_ID_description344", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/dec/tulip/de2104x.c", i32 55, i32 1}
!4 = !{ptr @__UNIQUE_ID_file345, !5, !"__UNIQUE_ID_file345", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/dec/tulip/de2104x.c", i32 56, i32 1}
!6 = !{ptr @__UNIQUE_ID_license346, !5, !"__UNIQUE_ID_license346", i1 false, i1 false}
!7 = !{ptr @__param_debug, !8, !"__param_debug", i1 false, i1 false}
!8 = !{!"../drivers/net/ethernet/dec/tulip/de2104x.c", i32 59, i32 1}
!9 = !{ptr @__UNIQUE_ID_debugtype347, !8, !"__UNIQUE_ID_debugtype347", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_debug348, !11, !"__UNIQUE_ID_debug348", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/dec/tulip/de2104x.c", i32 60, i32 1}
!12 = !{ptr @__param_rx_copybreak, !13, !"__param_rx_copybreak", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/dec/tulip/de2104x.c", i32 70, i32 1}
!14 = !{ptr @__UNIQUE_ID_rx_copybreaktype349, !13, !"__UNIQUE_ID_rx_copybreaktype349", i1 false, i1 false}
!15 = !{ptr @__UNIQUE_ID_rx_copybreak350, !16, !"__UNIQUE_ID_rx_copybreak350", i1 false, i1 false}
!16 = !{!"../drivers/net/ethernet/dec/tulip/de2104x.c", i32 71, i32 1}
!17 = !{ptr @__initcall__kmod_de2104x__360_2197_de_driver_init6, !18, !"__initcall__kmod_de2104x__360_2197_de_driver_init6", i1 false, i1 false}
!18 = !{!"../drivers/net/ethernet/dec/tulip/de2104x.c", i32 2197, i32 1}
!19 = !{ptr @__exitcall_de_driver_exit, !18, !"__exitcall_de_driver_exit", i1 false, i1 false}
!20 = !{ptr @__param_str_debug, !8, !"__param_str_debug", i1 false, i1 false}
!21 = !{ptr @debug, !22, !"debug", i1 false, i1 false}
!22 = !{!"../drivers/net/ethernet/dec/tulip/de2104x.c", i32 58, i32 12}
!23 = !{ptr @__param_str_rx_copybreak, !13, !"__param_str_rx_copybreak", i1 false, i1 false}
!24 = !{ptr @rx_copybreak, !25, !"rx_copybreak", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/dec/tulip/de2104x.c", i32 66, i32 12}
!26 = !{ptr @.str, !18, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @de_driver, !28, !"de_driver", i1 false, i1 false}
!28 = !{!"../drivers/net/ethernet/dec/tulip/de2104x.c", i32 2188, i32 26}
!29 = !{ptr @de_pci_tbl, !30, !"de_pci_tbl", i1 false, i1 false}
!30 = !{!"../drivers/net/ethernet/dec/tulip/de2104x.c", i32 335, i32 35}
!31 = !{ptr @de_init_one.board_idx, !32, !"board_idx", i1 false, i1 false}
!32 = !{!"../drivers/net/ethernet/dec/tulip/de2104x.c", i32 1983, i32 13}
!33 = !{ptr @de_init_one.__key, !34, !"__key", i1 false, i1 false}
!34 = !{!"../drivers/net/ethernet/dec/tulip/de2104x.c", i32 2003, i32 2}
!35 = !{ptr @.str.1, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @de_init_one.__key.2, !37, !"__key", i1 false, i1 false}
!37 = !{!"../drivers/net/ethernet/dec/tulip/de2104x.c", i32 2004, i32 2}
!38 = !{ptr @.str.3, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.4, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/ethernet/dec/tulip/de2104x.c", i32 2023, i32 3}
!41 = !{ptr @.str.5, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.6, !40, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @de_init_one._entry, !40, !"_entry", i1 false, i1 false}
!44 = !{ptr @de_init_one._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.8, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/ethernet/dec/tulip/de2104x.c", i32 2032, i32 3}
!47 = !{ptr @de_init_one._entry.7, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @de_init_one._entry_ptr.9, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.11, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/ethernet/dec/tulip/de2104x.c", i32 2037, i32 3}
!51 = !{ptr @de_init_one._entry.10, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @de_init_one._entry_ptr.12, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.14, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/ethernet/dec/tulip/de2104x.c", i32 2047, i32 3}
!55 = !{ptr @de_init_one._entry.13, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @de_init_one._entry_ptr.15, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.17, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/net/ethernet/dec/tulip/de2104x.c", i32 2059, i32 3}
!59 = !{ptr @de_init_one._entry.16, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @de_init_one._entry_ptr.18, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.19, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/net/ethernet/dec/tulip/de2104x.c", i32 2079, i32 19}
!63 = !{ptr @.str.20, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/net/ethernet/dec/tulip/de2104x.c", i32 2080, i32 21}
!65 = !{ptr @.str.21, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/net/ethernet/dec/tulip/de2104x.c", i32 2080, i32 31}
!67 = !{ptr @de_netdev_ops, !68, !"de_netdev_ops", i1 false, i1 false}
!68 = !{!"../drivers/net/ethernet/dec/tulip/de2104x.c", i32 1965, i32 36}
!69 = !{ptr @.str.22, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/net/ethernet/dec/tulip/de2104x.c", i32 1388, i32 2}
!71 = !{ptr @.str.23, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @de_open.__UNIQUE_ID_ddebug357, !70, !"__UNIQUE_ID_ddebug357", i1 false, i1 false}
!73 = !{ptr @.str.24, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/net/ethernet/dec/tulip/de2104x.c", i32 1394, i32 19}
!75 = !{ptr @.str.25, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/net/ethernet/dec/tulip/de2104x.c", i32 1402, i32 19}
!77 = !{ptr @.str.26, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/net/ethernet/dec/tulip/de2104x.c", i32 1408, i32 19}
!79 = distinct !{null, !80, !"__already_done", i1 false, i1 false}
!80 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!81 = !{ptr @.str.27, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @.str.28, !80, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @.str.29, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/net/ethernet/dec/tulip/de2104x.c", i32 504, i32 2}
!85 = !{ptr @.str.30, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @de_interrupt.__UNIQUE_ID_ddebug353, !84, !"__UNIQUE_ID_ddebug353", i1 false, i1 false}
!87 = !{ptr @.str.31, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/net/ethernet/dec/tulip/de2104x.c", i32 532, i32 7}
!89 = !{ptr @.str.32, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/net/ethernet/dec/tulip/de2104x.c", i32 432, i32 3}
!91 = !{ptr @.str.33, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @de_rx.__UNIQUE_ID_ddebug352, !90, !"__UNIQUE_ID_ddebug352", i1 false, i1 false}
!93 = !{ptr @.str.34, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/net/ethernet/dec/tulip/de2104x.c", i32 489, i32 24}
!95 = !{ptr @.str.35, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/net/ethernet/dec/tulip/de2104x.c", i32 373, i32 2}
!97 = !{ptr @.str.36, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @de_rx_err_acct.__UNIQUE_ID_ddebug351, !96, !"__UNIQUE_ID_ddebug351", i1 false, i1 false}
!99 = !{ptr @.str.37, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/net/ethernet/dec/tulip/de2104x.c", i32 380, i32 4}
!101 = !{ptr @.str.38, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/net/ethernet/dec/tulip/de2104x.c", i32 571, i32 5}
!103 = !{ptr @.str.39, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @de_tx.__UNIQUE_ID_ddebug354, !102, !"__UNIQUE_ID_ddebug354", i1 false, i1 false}
!105 = !{ptr @.str.40, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/net/ethernet/dec/tulip/de2104x.c", i32 586, i32 5}
!107 = !{ptr @de_tx.__UNIQUE_ID_ddebug355, !106, !"__UNIQUE_ID_ddebug355", i1 false, i1 false}
!108 = !{ptr @.str.41, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/net/ethernet/dec/tulip/de2104x.c", i32 868, i32 23}
!110 = !{ptr @.str.42, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/net/ethernet/dec/tulip/de2104x.c", i32 921, i32 24}
!112 = !{ptr @.str.43, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/net/ethernet/dec/tulip/de2104x.c", i32 940, i32 2}
!114 = !{ptr @.str.44, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/net/ethernet/dec/tulip/de2104x.c", i32 941, i32 2}
!116 = !{ptr @.str.45, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/net/ethernet/dec/tulip/de2104x.c", i32 944, i32 2}
!118 = !{ptr @.str.46, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/net/ethernet/dec/tulip/de2104x.c", i32 345, i32 2}
!120 = !{ptr @.str.47, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/net/ethernet/dec/tulip/de2104x.c", i32 346, i32 2}
!122 = !{ptr @.str.48, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/net/ethernet/dec/tulip/de2104x.c", i32 347, i32 2}
!124 = !{ptr @.str.49, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/net/ethernet/dec/tulip/de2104x.c", i32 348, i32 2}
!126 = !{ptr @.str.50, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/net/ethernet/dec/tulip/de2104x.c", i32 349, i32 2}
!128 = !{ptr @media_name, !129, !"media_name", i1 false, i1 false}
!129 = !{!"../drivers/net/ethernet/dec/tulip/de2104x.c", i32 344, i32 27}
!130 = !{ptr @.str.51, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/net/ethernet/dec/tulip/de2104x.c", i32 902, i32 3}
!132 = !{ptr @.str.52, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/net/ethernet/dec/tulip/de2104x.c", i32 911, i32 3}
!134 = !{ptr @.str.53, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/net/ethernet/dec/tulip/de2104x.c", i32 1429, i32 2}
!136 = !{ptr @.str.54, !135, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @de_close.__UNIQUE_ID_ddebug358, !135, !"__UNIQUE_ID_ddebug358", i1 false, i1 false}
!138 = !{ptr @.str.55, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/net/ethernet/dec/tulip/de2104x.c", i32 645, i32 2}
!140 = !{ptr @.str.56, !139, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @de_start_xmit.__UNIQUE_ID_ddebug356, !139, !"__UNIQUE_ID_ddebug356", i1 false, i1 false}
!142 = !{ptr @.str.57, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/net/ethernet/dec/tulip/de2104x.c", i32 1451, i32 2}
!144 = !{ptr @.str.58, !143, !"<string literal>", i1 false, i1 false}
!145 = !{ptr @de_tx_timeout.__UNIQUE_ID_ddebug359, !143, !"__UNIQUE_ID_ddebug359", i1 false, i1 false}
!146 = !{ptr @de_ethtool_ops, !147, !"de_ethtool_ops", i1 false, i1 false}
!147 = !{!"../drivers/net/ethernet/dec/tulip/de2104x.c", i32 1701, i32 33}
!148 = !{ptr @.str.59, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/net/ethernet/dec/tulip/de2104x.c", i32 1684, i32 2}
!150 = !{ptr @.str.60, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/net/ethernet/dec/tulip/de2104x.c", i32 983, i32 4}
!152 = distinct !{null, !153, !"next_state", i1 false, i1 false}
!153 = !{!"../drivers/net/ethernet/dec/tulip/de2104x.c", i32 994, i32 20}
!154 = distinct !{null, !155, !"next_state", i1 false, i1 false}
!155 = !{!"../drivers/net/ethernet/dec/tulip/de2104x.c", i32 997, i32 20}
!156 = !{ptr @.str.62, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/net/ethernet/dec/tulip/de2104x.c", i32 1011, i32 2}
!158 = !{ptr @.str.63, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/net/ethernet/dec/tulip/de2104x.c", i32 1070, i32 4}
!160 = distinct !{null, !161, !"next_states", i1 false, i1 false}
!161 = !{!"../drivers/net/ethernet/dec/tulip/de2104x.c", i32 1120, i32 20}
!162 = distinct !{null, !163, !"next_states", i1 false, i1 false}
!163 = !{!"../drivers/net/ethernet/dec/tulip/de2104x.c", i32 1125, i32 20}
!164 = distinct !{null, !165, !"next_states", i1 false, i1 false}
!165 = !{!"../drivers/net/ethernet/dec/tulip/de2104x.c", i32 1130, i32 20}
!166 = !{ptr @.str.66, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/net/ethernet/dec/tulip/de2104x.c", i32 1731, i32 4}
!168 = !{ptr @.str.67, !167, !"<string literal>", i1 false, i1 false}
!169 = !{ptr @de21040_get_mac_address._entry, !167, !"_entry", i1 false, i1 false}
!170 = !{ptr @de21040_get_mac_address._entry_ptr, !167, !"_entry_ptr", i1 false, i1 false}
!171 = distinct !{null, !172, !"t21040_csr13", i1 false, i1 false}
!172 = !{!"../drivers/net/ethernet/dec/tulip/de2104x.c", i32 354, i32 12}
!173 = distinct !{null, !174, !"t21040_csr14", i1 false, i1 false}
!174 = !{!"../drivers/net/ethernet/dec/tulip/de2104x.c", i32 355, i32 12}
!175 = distinct !{null, !176, !"t21040_csr15", i1 false, i1 false}
!176 = !{!"../drivers/net/ethernet/dec/tulip/de2104x.c", i32 356, i32 12}
!177 = !{ptr @.str.68, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/net/ethernet/dec/tulip/de2104x.c", i32 1852, i32 3}
!179 = !{ptr @.str.69, !178, !"<string literal>", i1 false, i1 false}
!180 = !{ptr @de21041_get_srom_info._entry, !178, !"_entry", i1 false, i1 false}
!181 = !{ptr @de21041_get_srom_info._entry_ptr, !178, !"_entry_ptr", i1 false, i1 false}
!182 = !{ptr @.str.71, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/net/ethernet/dec/tulip/de2104x.c", i32 1900, i32 4}
!184 = !{ptr @de21041_get_srom_info._entry.70, !183, !"_entry", i1 false, i1 false}
!185 = !{ptr @de21041_get_srom_info._entry_ptr.72, !183, !"_entry_ptr", i1 false, i1 false}
!186 = !{ptr @.str.74, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/net/ethernet/dec/tulip/de2104x.c", i32 1914, i32 5}
!188 = !{ptr @de21041_get_srom_info._entry.73, !187, !"_entry", i1 false, i1 false}
!189 = !{ptr @de21041_get_srom_info._entry_ptr.75, !187, !"_entry_ptr", i1 false, i1 false}
!190 = !{ptr @.str.77, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/net/ethernet/dec/tulip/de2104x.c", i32 1921, i32 5}
!192 = !{ptr @de21041_get_srom_info._entry.76, !191, !"_entry", i1 false, i1 false}
!193 = !{ptr @de21041_get_srom_info._entry_ptr.78, !191, !"_entry_ptr", i1 false, i1 false}
!194 = distinct !{null, !195, !"t21041_csr13", i1 false, i1 false}
!195 = !{!"../drivers/net/ethernet/dec/tulip/de2104x.c", i32 359, i32 12}
!196 = distinct !{null, !197, !"t21041_csr14_brk", i1 false, i1 false}
!197 = !{!"../drivers/net/ethernet/dec/tulip/de2104x.c", i32 362, i32 12}
!198 = distinct !{null, !199, !"t21041_csr14", i1 false, i1 false}
!199 = !{!"../drivers/net/ethernet/dec/tulip/de2104x.c", i32 360, i32 12}
!200 = distinct !{null, !201, !"t21041_csr15", i1 false, i1 false}
!201 = !{!"../drivers/net/ethernet/dec/tulip/de2104x.c", i32 363, i32 12}
!202 = !{ptr @de_pm_ops, !203, !"de_pm_ops", i1 false, i1 false}
!203 = !{!"../drivers/net/ethernet/dec/tulip/de2104x.c", i32 2177, i32 8}
!204 = !{i32 1, !"wchar_size", i32 2}
!205 = !{i32 1, !"min_enum_size", i32 4}
!206 = !{i32 8, !"branch-target-enforcement", i32 0}
!207 = !{i32 8, !"sign-return-address", i32 0}
!208 = !{i32 8, !"sign-return-address-all", i32 0}
!209 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!210 = !{i32 7, !"uwtable", i32 1}
!211 = !{i32 7, !"frame-pointer", i32 2}
!212 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!213 = !{!"auto-init"}
!214 = !{i64 2154303889}
!215 = !{i64 6761767}
!216 = !{i64 6762185}
!217 = !{i64 2154302534}
!218 = !{i64 2156620219}
!219 = !{!"branch_weights", i32 1, i32 2000}
!220 = !{i64 2156656904, i64 2156657410, i64 2156656941, i64 2156656997, i64 2156657031, i64 2156657055, i64 2156657096, i64 2156657117, i64 2156657145, i64 2156657179}
!221 = !{i64 2149005848, i64 2149005853, i64 2149005866, i64 2149005910, i64 2149005944, i64 2149005965}
!222 = !{!"branch_weights", i32 2000, i32 1}
!223 = !{i64 2156567596}
!224 = !{i64 2156567847}
!225 = !{i64 2156578669}
!226 = !{i64 2156578920}
!227 = !{i64 2156579171}
!228 = !{i64 2156600153, i64 2156600659, i64 2156600190, i64 2156600246, i64 2156600280, i64 2156600304, i64 2156600345, i64 2156600366, i64 2156600394, i64 2156600428}
!229 = !{i64 2156608564}
!230 = !{i64 2156608821}
!231 = !{i64 2156551076, i64 2156551581, i64 2156551113, i64 2156551169, i64 2156551203, i64 2156551227, i64 2156551268, i64 2156551289, i64 2156551317, i64 2156551351}
!232 = !{i64 2156552432}
!233 = !{i64 2156556230}
!234 = !{i64 2156559589}
!235 = !{!"branch_weights", i32 -294967296, i32 2002000, i32 2001000, i32 2000000}
!236 = !{i64 2156560120, i64 2156560625, i64 2156560157, i64 2156560213, i64 2156560247, i64 2156560271, i64 2156560312, i64 2156560333, i64 2156560361, i64 2156560395}
!237 = !{i64 2156623329}
!238 = !{i64 2156623737}
!239 = !{i64 2156624128}
!240 = !{i64 2156624778}
!241 = !{i64 2156625010}
!242 = !{i64 2156625705}
!243 = !{i64 2156626151}
!244 = !{i64 2156626358}
!245 = !{i64 2156626978}
!246 = !{i64 2156627200}
!247 = !{i64 2156627865}
!248 = !{i64 2156628311}
!249 = !{i64 2156628518}
!250 = !{i64 2156629138}
!251 = !{i64 2156629354}
