; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/sis/sis190.c_pt.bc'
source_filename = "../drivers/net/ethernet/sis/sis190.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.97 }
%union.anon.97 = type { ptr }
%struct.anon.121 = type { i32 }
%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
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
%struct.anon.123 = type { ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.anon.124 = type { i32, i32, ptr }
%struct.mii_chip_info = type { ptr, [2 x i16], i32, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.122, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
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
%union.anon.122 = type { ptr }
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
%struct.sis190_phy = type { %struct.list_head, i32, [2 x i16], i16, i8 }
%struct.sis190_private = type { ptr, ptr, ptr, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, [64 x ptr], [64 x ptr], %struct.work_struct, %struct.timer_list, i32, %struct.mii_if_info, %struct.list_head, i32, i32, i32 }
%struct.mii_if_info = type { i32, i32, i32, i32, i8, ptr, ptr, ptr }
%struct.RxDesc = type { i32, i32, i32, i32 }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.TxDesc = type { i32, i32, i32, i32 }
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
%struct.ethtool_drvinfo = type { i32, [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8], [12 x i8], i32, i32, i32, i32, i32 }
%struct.ethtool_regs = type { i32, i32, i32, [0 x i8] }

@__UNIQUE_ID_description343 = internal constant [58 x i8] c"sis190.description=SiS sis190/191 Gigabit Ethernet driver\00", section ".modinfo", align 1
@__param_str_rx_copybreak = internal constant [20 x i8] c"sis190.rx_copybreak\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@rx_copybreak = internal global { i32, [28 x i8] } { i32 200, [28 x i8] zeroinitializer }, align 32
@__param_rx_copybreak = internal constant %struct.kernel_param { ptr @__param_str_rx_copybreak, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.97 { ptr @rx_copybreak } }, section "__param", align 4
@__UNIQUE_ID_rx_copybreaktype344 = internal constant [33 x i8] c"sis190.parmtype=rx_copybreak:int\00", section ".modinfo", align 1
@__UNIQUE_ID_rx_copybreak345 = internal constant [67 x i8] c"sis190.parm=rx_copybreak:Copy breakpoint for copy-only-tiny-frames\00", section ".modinfo", align 1
@__param_str_debug = internal constant [13 x i8] c"sis190.debug\00", align 1
@debug = internal global { %struct.anon.121, [28 x i8] } { %struct.anon.121 { i32 -1 }, [28 x i8] zeroinitializer }, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.97 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype346 = internal constant [26 x i8] c"sis190.parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug347 = internal constant [62 x i8] c"sis190.parm=debug:Debug verbosity level (0=none, ..., 16=all)\00", section ".modinfo", align 1
@__UNIQUE_ID_author348 = internal constant [70 x i8] c"sis190.author=K.M. Liu <kmliu@sis.com>, Ueimor <romieu@fr.zoreil.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_version349 = internal constant [19 x i8] c"sis190.version=1.4\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"sis190\00", [25 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"1.4\00", [28 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@__UNIQUE_ID_file350 = internal constant [44 x i8] c"sis190.file=drivers/net/ethernet/sis/sis190\00", section ".modinfo", align 1
@__UNIQUE_ID_license351 = internal constant [19 x i8] c"sis190.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_sis190__352_1948_sis190_pci_driver_init6 = internal global ptr @sis190_pci_driver_init, section ".initcall6.init", align 4
@sis190_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str.1, ptr @sis190_pci_tbl, ptr @sis190_init_one, ptr @sis190_remove_one, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_sis190_pci_driver_exit = internal global ptr @sis190_pci_driver_exit, section ".exitcall.exit", align 4
@sis190_pci_tbl = internal constant { [3 x %struct.pci_device_id], [32 x i8] } { [3 x %struct.pci_device_id] [%struct.pci_device_id { i32 4153, i32 400, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4153, i32 401, i32 -1, i32 -1, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@sis190_init_one.printed_version = internal global { i1, [31 x i8] } zeroinitializer, align 32
@sis190_init_one._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 1870, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\016sis190: sis190 Gigabit Ethernet driver 1.4 loaded\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sis190_init_one\00", [16 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/net/ethernet/sis/sis190.c\00", [62 x i8] zeroinitializer }, align 32
@sis190_init_one._entry_ptr = internal global ptr @sis190_init_one._entry, section ".printk_index", align 4
@sis190_init_one.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"(work_completion)(&tp->phy_task)\00", [63 x i8] zeroinitializer }, align 32
@sis190_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @sis190_open, ptr @sis190_close, ptr @sis190_start_xmit, ptr null, ptr null, ptr null, ptr @sis190_set_rx_mode, ptr @sis190_mac_addr, ptr @eth_validate_addr, ptr null, ptr @sis190_ioctl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sis190_tx_timeout, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sis190_netpoll, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@sis190_ethtool_ops = internal constant { %struct.ethtool_ops, [68 x i8] } { %struct.ethtool_ops { i8 0, i32 0, i32 0, ptr @sis190_get_drvinfo, ptr @sis190_get_regs_len, ptr @sis190_get_regs, ptr null, ptr null, ptr @sis190_get_msglevel, ptr @sis190_set_msglevel, ptr @sis190_nway_reset, ptr @ethtool_op_get_link, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sis190_get_link_ksettings, ptr @sis190_set_link_ksettings, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [68 x i8] zeroinitializer }, align 32
@sis190_init_one.__key.7 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&tp->lock\00", [22 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: %s at %p (IRQ: %d), %pM\0A\00", [35 x i8] zeroinitializer }, align 32
@sis_chip_info = internal constant { [2 x %struct.anon.123], [24 x i8] } { [2 x %struct.anon.123] [%struct.anon.123 { ptr @.str.79 }, %struct.anon.123 { ptr @.str.80 }], [24 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%s mode.\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"RGMII\00", [26 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"GMII\00", [27 x i8] zeroinitializer }, align 32
@sis190_init_board._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.5, i32 1484, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013sis190: %s: enable failure\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sis190_init_board\00", [46 x i8] zeroinitializer }, align 32
@sis190_init_board._entry_ptr = internal global ptr @sis190_init_board._entry, section ".printk_index", align 4
@sis190_init_board._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.14, ptr @.str.5, i32 1493, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013sis190: %s: region #0 is no MMIO resource\0A\00", [51 x i8] zeroinitializer }, align 32
@sis190_init_board._entry_ptr.17 = internal global ptr @sis190_init_board._entry.15, section ".printk_index", align 4
@sis190_init_board._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.14, ptr @.str.5, i32 1499, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013sis190: %s: invalid PCI region size(s)\0A\00", [54 x i8] zeroinitializer }, align 32
@sis190_init_board._entry_ptr.20 = internal global ptr @sis190_init_board._entry.18, section ".printk_index", align 4
@sis190_init_board._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.14, ptr @.str.5, i32 1507, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013sis190: %s: could not request regions\0A\00", [55 x i8] zeroinitializer }, align 32
@sis190_init_board._entry_ptr.23 = internal global ptr @sis190_init_board._entry.21, section ".printk_index", align 4
@sis190_init_board._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.14, ptr @.str.5, i32 1515, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013sis190: %s: DMA configuration failed\0A\00", [56 x i8] zeroinitializer }, align 32
@sis190_init_board._entry_ptr.26 = internal global ptr @sis190_init_board._entry.24, section ".printk_index", align 4
@sis190_init_board._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.14, ptr @.str.5, i32 1525, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013sis190: %s: cannot remap MMIO, aborting\0A\00", [53 x i8] zeroinitializer }, align 32
@sis190_init_board._entry_ptr.29 = internal global ptr @sis190_init_board._entry.27, section ".printk_index", align 4
@sis190_get_mac_addr_from_eeprom._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.5, i32 1594, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\016sis190: %s: Read MAC address from EEPROM\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"sis190_get_mac_addr_from_eeprom\00", [32 x i8] zeroinitializer }, align 32
@sis190_get_mac_addr_from_eeprom._entry_ptr = internal global ptr @sis190_get_mac_addr_from_eeprom._entry, section ".printk_index", align 4
@sis190_get_mac_addr_from_eeprom._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.31, ptr @.str.5, i32 1602, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\016sis190: %s: Error EEPROM read %x\0A\00", [60 x i8] zeroinitializer }, align 32
@sis190_get_mac_addr_from_eeprom._entry_ptr.34 = internal global ptr @sis190_get_mac_addr_from_eeprom._entry.32, section ".printk_index", align 4
@sis190_get_mac_addr_from_apc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.5, i32 1639, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\016sis190: %s: Read MAC address from APC\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"sis190_get_mac_addr_from_apc\00", [35 x i8] zeroinitializer }, align 32
@sis190_get_mac_addr_from_apc._entry_ptr = internal global ptr @sis190_get_mac_addr_from_apc._entry, section ".printk_index", align 4
@sis190_get_mac_addr_from_apc._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.36, ptr @.str.5, i32 1650, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\016sis190: %s: Can not find ISA bridge\0A\00", [57 x i8] zeroinitializer }, align 32
@sis190_get_mac_addr_from_apc._entry_ptr.39 = internal global ptr @sis190_get_mac_addr_from_apc._entry.37, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.40 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"auto-negotiating...\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"1000 Mbps Full Duplex\00", [42 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"1000 Mbps Half Duplex\00", [42 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"100 Mbps Full Duplex\00", [43 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"100 Mbps Half Duplex\00", [43 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"10 Mbps Full Duplex\00", [44 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"10 Mbps Half Duplex\00", [44 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"unknown\00", [24 x i8] zeroinitializer }, align 32
@__const.sis190_phy_task.reg31 = private unnamed_addr constant [7 x %struct.anon.124] [%struct.anon.124 { i32 2048, i32 117447680, ptr @.str.41 }, %struct.anon.124 { i32 1024, i32 117443584, ptr @.str.42 }, %struct.anon.124 { i32 256, i32 67115008, ptr @.str.43 }, %struct.anon.124 { i32 128, i32 67110912, ptr @.str.44 }, %struct.anon.124 { i32 64, i32 67113984, ptr @.str.45 }, %struct.anon.124 { i32 32, i32 67109888, ptr @.str.46 }, %struct.anon.124 { i32 0, i32 67109888, ptr @.str.47 }], align 4
@.str.48 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mii ext = %04x\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"mii lpa=%04x adv=%04x exp=%04x\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"link on %s mode\0A\00", [47 x i8] zeroinitializer }, align 32
@__mdio_cmd._entry = internal constant %struct.pi_entry { ptr @.str.51, ptr @.str.52, ptr @.str.5, i32 380, ptr null, ptr null }, align 1
@.str.51 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013sis190: PHY command failed !\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"__mdio_cmd\00", [21 x i8] zeroinitializer }, align 32
@__mdio_cmd._entry_ptr = internal global ptr @__mdio_cmd._entry, section ".printk_index", align 4
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.53 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@sis190_request_timer.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.55 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"(timer)\00", [24 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.56 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"link change\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"(frag) status = %08x\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"no Rx buffer allocated\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Rx buffers exhausted\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"BUG! Tx Ring full when queue awake!\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"PCI mapping failed, dropping packet\00", [60 x i8] zeroinitializer }, align 32
@byte_rev_table = external dso_local local_unnamed_addr constant [256 x i8], align 1
@.str.62 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Transmit timeout, status %08x %08x\0A\00", [60 x i8] zeroinitializer }, align 32
@sis190_mii_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.64, ptr @.str.5, i32 1425, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016sis190: %s: No MII transceivers found!\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sis190_mii_probe\00", [47 x i8] zeroinitializer }, align 32
@sis190_mii_probe._entry_ptr = internal global ptr @sis190_mii_probe._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@mii_chip_table = internal constant { [8 x %struct.mii_chip_info], [32 x i8] } { [8 x %struct.mii_chip_info] [%struct.mii_chip_info { ptr @.str.70, [2 x i16] [i16 77, i16 -12272], i32 2, i32 0 }, %struct.mii_chip_info { ptr @.str.71, [2 x i16] [i16 77, i16 -12256], i32 2, i32 0 }, %struct.mii_chip_info { ptr @.str.72, [2 x i16] [i16 32, i16 24768], i32 2, i32 4 }, %struct.mii_chip_info { ptr @.str.73, [2 x i16] [i16 323, i16 -17296], i32 2, i32 0 }, %struct.mii_chip_info { ptr @.str.74, [2 x i16] [i16 642, i16 -4080], i32 2, i32 0 }, %struct.mii_chip_info { ptr @.str.75, [2 x i16] [i16 321, i16 3264], i32 2, i32 2 }, %struct.mii_chip_info { ptr @.str.76, [2 x i16] [i16 0, i16 -32256], i32 2, i32 0 }, %struct.mii_chip_info zeroinitializer], [32 x i8] zeroinitializer }, align 32
@sis190_init_phy._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.66, ptr @.str.5, i32 1353, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\016sis190: %s: %s transceiver at address %d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sis190_init_phy\00", [16 x i8] zeroinitializer }, align 32
@sis190_init_phy._entry_ptr = internal global ptr @sis190_init_phy._entry, section ".printk_index", align 4
@sis190_init_phy._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.66, ptr @.str.5, i32 1359, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\016sis190: %s: unknown PHY 0x%x:0x%x transceiver at address %d\0A\00", [33 x i8] zeroinitializer }, align 32
@sis190_init_phy._entry_ptr.69 = internal global ptr @sis190_init_phy._entry.67, section ".printk_index", align 4
@.str.70 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Atheros PHY\00", [20 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Atheros PHY AR8012\00", [45 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Broadcom PHY BCM5461\00", [43 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Broadcom PHY AC131\00", [45 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Agere PHY ET1101B\00", [46 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Marvell PHY 88E1111\00", [44 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Realtek PHY RTL8201\00", [44 x i8] zeroinitializer }, align 32
@sis190_default_phy._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.78, ptr @.str.5, i32 1313, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\016sis190: %s: Using transceiver at address %d as default\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sis190_default_phy\00", [45 x i8] zeroinitializer }, align 32
@sis190_default_phy._entry_ptr = internal global ptr @sis190_default_phy._entry, section ".printk_index", align 4
@.str.79 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"SiS 190 PCI Fast Ethernet adapter\00", [62 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"SiS 191 PCI Gigabit Ethernet adapter\00", [59 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Enabling Auto-negotiation\0A\00", [37 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 65535]
@__sancov_gen_cov_switch_values.82 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 65535]
@__sancov_gen_cov_switch_values.83 = internal global [8 x i64] [i64 6, i64 16, i64 0, i64 32, i64 77, i64 321, i64 323, i64 642]
@__sancov_gen_cov_switch_values.84 = internal global [4 x i64] [i64 2, i64 16, i64 53264, i64 53280]
@__sancov_gen_cov_switch_values.85 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.86 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@___asan_gen_.87 = private unnamed_addr constant [13 x i8] c"rx_copybreak\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 341, i32 12 }
@___asan_gen_.90 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 345, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 353, i32 1 }
@___asan_gen_.102 = private unnamed_addr constant [18 x i8] c"sis190_pci_driver\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 1941, i32 26 }
@___asan_gen_.105 = private unnamed_addr constant [15 x i8] c"sis190_pci_tbl\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 333, i32 35 }
@___asan_gen_.108 = private unnamed_addr constant [32 x i8] c"sis190_init_one.printed_version\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 1870, i32 4 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 1891, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant [18 x i8] c"sis190_netdev_ops\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 1845, i32 36 }
@___asan_gen_.130 = private unnamed_addr constant [19 x i8] c"sis190_ethtool_ops\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 1815, i32 33 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 1898, i32 2 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 1909, i32 20 }
@___asan_gen_.142 = private unnamed_addr constant [14 x i8] c"sis_chip_info\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 328, i32 3 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 1913, i32 20 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 1914, i32 39 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 1914, i32 49 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 1484, i32 4 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 1492, i32 4 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 1498, i32 4 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 1506, i32 4 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 1514, i32 4 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 1524, i32 4 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 1594, i32 3 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 1601, i32 4 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 1639, i32 3 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 1649, i32 4 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 940, i32 3 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 950, i32 5 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 952, i32 5 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 954, i32 5 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 956, i32 5 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 958, i32 5 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 960, i32 5 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 961, i32 21 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 966, i32 3 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 971, i32 3 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 1013, i32 3 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 380, i32 3 }
@___asan_gen_.266 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 326, i32 6 }
@___asan_gen_.268 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 1045, i32 2 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 760, i32 3 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 605, i32 5 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 643, i32 3 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 647, i32 3 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 1204, i32 3 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 1212, i32 3 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 1562, i32 2 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 1424, i32 4 }
@___asan_gen_.304 = private unnamed_addr constant [15 x i8] c"mii_chip_table\00", align 1
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 315, i32 3 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 1352, i32 4 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 1357, i32 4 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 316, i32 4 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 317, i32 4 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 318, i32 4 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 319, i32 4 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 320, i32 4 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 321, i32 4 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 322, i32 4 }
@___asan_gen_.343 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 1312, i32 4 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 329, i32 4 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 330, i32 4 }
@___asan_gen_.358 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.359 = private constant [37 x i8] c"../drivers/net/ethernet/sis/sis190.c\00", align 1
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 1731, i32 2 }
@llvm.compiler.used = appending global [124 x ptr] [ptr @__UNIQUE_ID_author348, ptr @__UNIQUE_ID_debug347, ptr @__UNIQUE_ID_debugtype346, ptr @__UNIQUE_ID_description343, ptr @__UNIQUE_ID_file350, ptr @__UNIQUE_ID_license351, ptr @__UNIQUE_ID_rx_copybreak345, ptr @__UNIQUE_ID_rx_copybreaktype344, ptr @__UNIQUE_ID_version349, ptr @__exitcall_sis190_pci_driver_exit, ptr @__initcall__kmod_sis190__352_1948_sis190_pci_driver_init6, ptr @__mdio_cmd._entry, ptr @__mdio_cmd._entry_ptr, ptr @__modver_attr, ptr @__param_debug, ptr @__param_rx_copybreak, ptr @sis190_default_phy._entry, ptr @sis190_default_phy._entry_ptr, ptr @sis190_get_mac_addr_from_apc._entry, ptr @sis190_get_mac_addr_from_apc._entry.37, ptr @sis190_get_mac_addr_from_apc._entry_ptr, ptr @sis190_get_mac_addr_from_apc._entry_ptr.39, ptr @sis190_get_mac_addr_from_eeprom._entry, ptr @sis190_get_mac_addr_from_eeprom._entry.32, ptr @sis190_get_mac_addr_from_eeprom._entry_ptr, ptr @sis190_get_mac_addr_from_eeprom._entry_ptr.34, ptr @sis190_init_board._entry, ptr @sis190_init_board._entry.15, ptr @sis190_init_board._entry.18, ptr @sis190_init_board._entry.21, ptr @sis190_init_board._entry.24, ptr @sis190_init_board._entry.27, ptr @sis190_init_board._entry_ptr, ptr @sis190_init_board._entry_ptr.17, ptr @sis190_init_board._entry_ptr.20, ptr @sis190_init_board._entry_ptr.23, ptr @sis190_init_board._entry_ptr.26, ptr @sis190_init_board._entry_ptr.29, ptr @sis190_init_one._entry, ptr @sis190_init_one._entry_ptr, ptr @sis190_init_phy._entry, ptr @sis190_init_phy._entry.67, ptr @sis190_init_phy._entry_ptr, ptr @sis190_init_phy._entry_ptr.69, ptr @sis190_mii_probe._entry, ptr @sis190_mii_probe._entry_ptr, ptr @sis190_pci_driver_exit, ptr @rx_copybreak, ptr @debug, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @sis190_pci_driver, ptr @sis190_pci_tbl, ptr @sis190_init_one.printed_version, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @sis190_init_one.__key, ptr @.str.6, ptr @sis190_netdev_ops, ptr @sis190_ethtool_ops, ptr @sis190_init_one.__key.7, ptr @.str.8, ptr @.str.9, ptr @sis_chip_info, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.19, ptr @.str.22, ptr @.str.25, ptr @.str.28, ptr @.str.30, ptr @.str.31, ptr @.str.33, ptr @.str.35, ptr @.str.36, ptr @.str.38, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @sis190_request_timer.__key, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @mii_chip_table, ptr @.str.65, ptr @.str.66, ptr @.str.68, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81], section "llvm.metadata"
@0 = internal global [92 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_copybreak to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sis190_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sis190_pci_tbl to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sis190_init_one.printed_version to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sis190_init_one._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sis190_init_one.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sis190_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sis190_ethtool_ops to i32), i32 284, i32 352, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sis190_init_one.__key.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sis_chip_info to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sis190_init_board._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sis190_init_board._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sis190_init_board._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sis190_init_board._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sis190_init_board._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sis190_init_board._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sis190_get_mac_addr_from_eeprom._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sis190_get_mac_addr_from_eeprom._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sis190_get_mac_addr_from_apc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sis190_get_mac_addr_from_apc._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sis190_request_timer.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sis190_mii_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mii_chip_table to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sis190_init_phy._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sis190_init_phy._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sis190_default_phy._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sis190_pci_driver_init() #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @sis190_pci_driver, ptr noundef null, ptr noundef nonnull @.str.1) #14
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sis190_pci_driver_exit() #1 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @pci_unregister_driver(ptr noundef nonnull @sis190_pci_driver) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sis190_init_one(ptr noundef %pdev, ptr nocapture noundef readonly %ent) #2 align 64 {
entry:
  %addr.i9.i = alloca [6 x i8], align 1
  %reg.i.i = alloca i8, align 1
  %tmp8.i.i = alloca i8, align 1
  %addr.i.i = alloca [3 x i16], align 2
  %reg.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %.b = load i1, ptr @sis190_init_one.printed_version, align 4
  br i1 %.b, label %entry.if.end3_crit_edge, label %if.then

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end3

if.then:                                          ; preds = %entry
  %0 = load i32, ptr @debug, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.then.if.end_crit_edge, label %do.end

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #17
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then.if.end_crit_edge
  store i1 true, ptr @sis190_init_one.printed_version, align 4
  br label %if.end3

if.end3:                                          ; preds = %if.end, %entry.if.end3_crit_edge
  %call.i = tail call ptr @alloc_etherdev_mqs(i32 noundef 752, i32 noundef 1, i32 noundef 1) #14
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end3.err_out_0.i_crit_edge, label %if.end.i

if.end3.err_out_0.i_crit_edge:                    ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_out_0.i

if.end.i:                                         ; preds = %if.end3
  %dev1.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %parent.i = getelementptr inbounds %struct.net_device, ptr %call.i, i32 0, i32 133, i32 1
  %1 = ptrtoint ptr %parent.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %dev1.i, ptr %parent.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %call.i, i32 2304
  %dev4.i = getelementptr i8, ptr %call.i, i32 2312
  %2 = ptrtoint ptr %dev4.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i, ptr %dev4.i, align 4
  %3 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %3)
  %cmp1.i.i = icmp ugt i32 %3, 31
  br i1 %cmp1.i.i, label %if.end.i.netif_msg_init.exit.i_crit_edge, label %if.end.i.i

if.end.i.netif_msg_init.exit.i_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %netif_msg_init.exit.i

if.end.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp2.i.i = icmp eq i32 %3, 0
  br i1 %cmp2.i.i, label %if.end.i.i.netif_msg_init.exit.i_crit_edge, label %if.end4.i.i

if.end.i.i.netif_msg_init.exit.i_crit_edge:       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %netif_msg_init.exit.i

if.end4.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %notmask.i.i = shl nsw i32 -1, %3
  %sub.i.i = xor i32 %notmask.i.i, -1
  br label %netif_msg_init.exit.i

netif_msg_init.exit.i:                            ; preds = %if.end4.i.i, %if.end.i.i.netif_msg_init.exit.i_crit_edge, %if.end.i.netif_msg_init.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.end4.i.i ], [ 55, %if.end.i.netif_msg_init.exit.i_crit_edge ], [ 0, %if.end.i.i.netif_msg_init.exit.i_crit_edge ]
  %msg_enable.i = getelementptr i8, ptr %call.i, i32 3000
  %4 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %retval.0.i.i, ptr %msg_enable.i, align 4
  %call6.i = tail call i32 @pci_enable_device(ptr noundef %pdev) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %cmp.i = icmp slt i32 %call6.i, 0
  br i1 %cmp.i, label %if.then7.i, label %if.end14.i

if.then7.i:                                       ; preds = %netif_msg_init.exit.i
  %5 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %msg_enable.i, align 4
  %and.i = and i32 %6, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool9.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool9.not.i, label %if.then7.i.err_free_dev_1.i_crit_edge, label %do.end.i

if.then7.i.err_free_dev_1.i_crit_edge:            ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_free_dev_1.i

do.end.i:                                         ; preds = %if.then7.i
  %init_name.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 3
  %7 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %8, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %do.end.i.pci_name.exit.i_crit_edge

do.end.i.pci_name.exit.i_crit_edge:               ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %pci_name.exit.i

if.end.i.i.i:                                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %9 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev1.i, align 4
  br label %pci_name.exit.i

pci_name.exit.i:                                  ; preds = %if.end.i.i.i, %do.end.i.pci_name.exit.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %10, %if.end.i.i.i ], [ %8, %do.end.i.pci_name.exit.i_crit_edge ]
  %call12.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef %retval.0.i.i.i) #17
  br label %err_free_dev_1.i

if.end14.i:                                       ; preds = %netif_msg_init.exit.i
  %resource.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 47
  %flags.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 0, i32 3
  %11 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags.i, align 4
  %and15.i = and i32 %12, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.i)
  %tobool16.not.i = icmp eq i32 %and15.i, 0
  br i1 %tobool16.not.i, label %if.then17.i, label %if.end29.i

if.then17.i:                                      ; preds = %if.end14.i
  %13 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %msg_enable.i, align 4
  %and19.i = and i32 %14, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19.i)
  %tobool20.not.i = icmp eq i32 %and19.i, 0
  br i1 %tobool20.not.i, label %if.then17.i.err_pci_disable_2.i_crit_edge, label %do.end24.i

if.then17.i.err_pci_disable_2.i_crit_edge:        ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_pci_disable_2.i

do.end24.i:                                       ; preds = %if.then17.i
  %init_name.i.i141.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 3
  %15 = ptrtoint ptr %init_name.i.i141.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %init_name.i.i141.i, align 8
  %tobool.not.i.i142.i = icmp eq ptr %16, null
  br i1 %tobool.not.i.i142.i, label %if.end.i.i144.i, label %do.end24.i.pci_name.exit146.i_crit_edge

do.end24.i.pci_name.exit146.i_crit_edge:          ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %pci_name.exit146.i

if.end.i.i144.i:                                  ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #16
  %17 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev1.i, align 4
  br label %pci_name.exit146.i

pci_name.exit146.i:                               ; preds = %if.end.i.i144.i, %do.end24.i.pci_name.exit146.i_crit_edge
  %retval.0.i.i145.i = phi ptr [ %18, %if.end.i.i144.i ], [ %16, %do.end24.i.pci_name.exit146.i_crit_edge ]
  %call27.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef %retval.0.i.i145.i) #17
  br label %err_pci_disable_2.i

if.end29.i:                                       ; preds = %if.end14.i
  %end.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 0, i32 1
  %19 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %end.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp32.i = icmp eq i32 %20, 0
  br i1 %cmp32.i, label %if.end29.i.if.then39.i_crit_edge, label %cond.false.i

if.end29.i.if.then39.i_crit_edge:                 ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then39.i

cond.false.i:                                     ; preds = %if.end29.i
  %21 = ptrtoint ptr %resource.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %resource.i, align 8
  %sub.i = add i32 %20, 1
  %add.i = sub i32 %sub.i, %22
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %add.i)
  %phi.cmp.i = icmp ult i32 %add.i, 128
  br i1 %phi.cmp.i, label %cond.false.i.if.then39.i_crit_edge, label %if.end51.i

cond.false.i.if.then39.i_crit_edge:               ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then39.i

if.then39.i:                                      ; preds = %cond.false.i.if.then39.i_crit_edge, %if.end29.i.if.then39.i_crit_edge
  %23 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %msg_enable.i, align 4
  %and41.i = and i32 %24, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41.i)
  %tobool42.not.i = icmp eq i32 %and41.i, 0
  br i1 %tobool42.not.i, label %if.then39.i.err_pci_disable_2.i_crit_edge, label %do.end46.i

if.then39.i.err_pci_disable_2.i_crit_edge:        ; preds = %if.then39.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_pci_disable_2.i

do.end46.i:                                       ; preds = %if.then39.i
  %init_name.i.i147.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 3
  %25 = ptrtoint ptr %init_name.i.i147.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %init_name.i.i147.i, align 8
  %tobool.not.i.i148.i = icmp eq ptr %26, null
  br i1 %tobool.not.i.i148.i, label %if.end.i.i150.i, label %do.end46.i.pci_name.exit152.i_crit_edge

do.end46.i.pci_name.exit152.i_crit_edge:          ; preds = %do.end46.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %pci_name.exit152.i

if.end.i.i150.i:                                  ; preds = %do.end46.i
  call void @__sanitizer_cov_trace_pc() #16
  %27 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev1.i, align 4
  br label %pci_name.exit152.i

pci_name.exit152.i:                               ; preds = %if.end.i.i150.i, %do.end46.i.pci_name.exit152.i_crit_edge
  %retval.0.i.i151.i = phi ptr [ %28, %if.end.i.i150.i ], [ %26, %do.end46.i.pci_name.exit152.i_crit_edge ]
  %call49.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %retval.0.i.i151.i) #17
  br label %err_pci_disable_2.i

if.end51.i:                                       ; preds = %cond.false.i
  %call52.i = tail call i32 @pci_request_regions(ptr noundef %pdev, ptr noundef nonnull @.str.1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52.i)
  %cmp53.i = icmp slt i32 %call52.i, 0
  br i1 %cmp53.i, label %if.then54.i, label %if.end66.i

if.then54.i:                                      ; preds = %if.end51.i
  %29 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %msg_enable.i, align 4
  %and56.i = and i32 %30, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56.i)
  %tobool57.not.i = icmp eq i32 %and56.i, 0
  br i1 %tobool57.not.i, label %if.then54.i.err_pci_disable_2.i_crit_edge, label %do.end61.i

if.then54.i.err_pci_disable_2.i_crit_edge:        ; preds = %if.then54.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_pci_disable_2.i

do.end61.i:                                       ; preds = %if.then54.i
  %init_name.i.i153.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 3
  %31 = ptrtoint ptr %init_name.i.i153.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %init_name.i.i153.i, align 8
  %tobool.not.i.i154.i = icmp eq ptr %32, null
  br i1 %tobool.not.i.i154.i, label %if.end.i.i156.i, label %do.end61.i.pci_name.exit158.i_crit_edge

do.end61.i.pci_name.exit158.i_crit_edge:          ; preds = %do.end61.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %pci_name.exit158.i

if.end.i.i156.i:                                  ; preds = %do.end61.i
  call void @__sanitizer_cov_trace_pc() #16
  %33 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev1.i, align 4
  br label %pci_name.exit158.i

pci_name.exit158.i:                               ; preds = %if.end.i.i156.i, %do.end61.i.pci_name.exit158.i_crit_edge
  %retval.0.i.i157.i = phi ptr [ %34, %if.end.i.i156.i ], [ %32, %do.end61.i.pci_name.exit158.i_crit_edge ]
  %call64.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef %retval.0.i.i157.i) #17
  br label %err_pci_disable_2.i

if.end66.i:                                       ; preds = %if.end51.i
  %call68.i = tail call i32 @dma_set_mask(ptr noundef %dev1.i, i64 noundef 4294967295) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68.i)
  %cmp69.i = icmp slt i32 %call68.i, 0
  br i1 %cmp69.i, label %if.then70.i, label %if.end82.i

if.then70.i:                                      ; preds = %if.end66.i
  %35 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %msg_enable.i, align 4
  %and72.i = and i32 %36, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and72.i)
  %tobool73.not.i = icmp eq i32 %and72.i, 0
  br i1 %tobool73.not.i, label %if.then70.i.err_free_res_3.i_crit_edge, label %do.end77.i

if.then70.i.err_free_res_3.i_crit_edge:           ; preds = %if.then70.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_free_res_3.i

do.end77.i:                                       ; preds = %if.then70.i
  %init_name.i.i159.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 3
  %37 = ptrtoint ptr %init_name.i.i159.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %init_name.i.i159.i, align 8
  %tobool.not.i.i160.i = icmp eq ptr %38, null
  br i1 %tobool.not.i.i160.i, label %if.end.i.i162.i, label %do.end77.i.pci_name.exit164.i_crit_edge

do.end77.i.pci_name.exit164.i_crit_edge:          ; preds = %do.end77.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %pci_name.exit164.i

if.end.i.i162.i:                                  ; preds = %do.end77.i
  call void @__sanitizer_cov_trace_pc() #16
  %39 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev1.i, align 4
  br label %pci_name.exit164.i

pci_name.exit164.i:                               ; preds = %if.end.i.i162.i, %do.end77.i.pci_name.exit164.i_crit_edge
  %retval.0.i.i163.i = phi ptr [ %40, %if.end.i.i162.i ], [ %38, %do.end77.i.pci_name.exit164.i_crit_edge ]
  %call80.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef %retval.0.i.i163.i) #17
  br label %err_free_res_3.i

if.end82.i:                                       ; preds = %if.end66.i
  tail call void @pci_set_master(ptr noundef %pdev) #14
  %41 = ptrtoint ptr %resource.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %resource.i, align 8
  %call86.i = tail call ptr @ioremap(i32 noundef %42, i32 noundef 128) #14
  %tobool87.not.i = icmp eq ptr %call86.i, null
  br i1 %tobool87.not.i, label %if.then88.i, label %if.end100.i

if.then88.i:                                      ; preds = %if.end82.i
  %43 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %msg_enable.i, align 4
  %and90.i = and i32 %44, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and90.i)
  %tobool91.not.i = icmp eq i32 %and90.i, 0
  br i1 %tobool91.not.i, label %if.then88.i.err_free_res_3.i_crit_edge, label %do.end95.i

if.then88.i.err_free_res_3.i_crit_edge:           ; preds = %if.then88.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_free_res_3.i

do.end95.i:                                       ; preds = %if.then88.i
  %init_name.i.i165.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 3
  %45 = ptrtoint ptr %init_name.i.i165.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %init_name.i.i165.i, align 8
  %tobool.not.i.i166.i = icmp eq ptr %46, null
  br i1 %tobool.not.i.i166.i, label %if.end.i.i168.i, label %do.end95.i.pci_name.exit170.i_crit_edge

do.end95.i.pci_name.exit170.i_crit_edge:          ; preds = %do.end95.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %pci_name.exit170.i

if.end.i.i168.i:                                  ; preds = %do.end95.i
  call void @__sanitizer_cov_trace_pc() #16
  %47 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev1.i, align 4
  br label %pci_name.exit170.i

pci_name.exit170.i:                               ; preds = %if.end.i.i168.i, %do.end95.i.pci_name.exit170.i_crit_edge
  %retval.0.i.i169.i = phi ptr [ %48, %if.end.i.i168.i ], [ %46, %do.end95.i.pci_name.exit170.i_crit_edge ]
  %call98.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef %retval.0.i.i169.i) #17
  br label %err_free_res_3.i

if.end100.i:                                      ; preds = %if.end82.i
  call void @__sanitizer_cov_trace_pc() #16
  %pci_dev.i = getelementptr i8, ptr %call.i, i32 2308
  %49 = ptrtoint ptr %pci_dev.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %pdev, ptr %pci_dev.i, align 4
  %50 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %call86.i, ptr %add.ptr.i.i, align 4
  %link_status.i = getelementptr i8, ptr %call.i, i32 3052
  %51 = ptrtoint ptr %link_status.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %link_status.i, align 4
  tail call fastcc void @sis190_irq_mask_and_ack(ptr noundef nonnull %call86.i) #14
  tail call fastcc void @sis190_soft_reset(ptr noundef nonnull %call86.i) #14
  br label %sis190_init_board.exit

err_free_res_3.i:                                 ; preds = %pci_name.exit170.i, %if.then88.i.err_free_res_3.i_crit_edge, %pci_name.exit164.i, %if.then70.i.err_free_res_3.i_crit_edge
  %rc.0.i = phi i32 [ %call68.i, %pci_name.exit164.i ], [ %call68.i, %if.then70.i.err_free_res_3.i_crit_edge ], [ -5, %pci_name.exit170.i ], [ -5, %if.then88.i.err_free_res_3.i_crit_edge ]
  tail call void @pci_release_regions(ptr noundef %pdev) #14
  br label %err_pci_disable_2.i

err_pci_disable_2.i:                              ; preds = %err_free_res_3.i, %pci_name.exit158.i, %if.then54.i.err_pci_disable_2.i_crit_edge, %pci_name.exit152.i, %if.then39.i.err_pci_disable_2.i_crit_edge, %pci_name.exit146.i, %if.then17.i.err_pci_disable_2.i_crit_edge
  %rc.1.i = phi i32 [ -19, %pci_name.exit152.i ], [ -19, %if.then39.i.err_pci_disable_2.i_crit_edge ], [ %call52.i, %pci_name.exit158.i ], [ %call52.i, %if.then54.i.err_pci_disable_2.i_crit_edge ], [ %rc.0.i, %err_free_res_3.i ], [ -19, %pci_name.exit146.i ], [ -19, %if.then17.i.err_pci_disable_2.i_crit_edge ]
  tail call void @pci_disable_device(ptr noundef %pdev) #14
  br label %err_free_dev_1.i

err_free_dev_1.i:                                 ; preds = %err_pci_disable_2.i, %pci_name.exit.i, %if.then7.i.err_free_dev_1.i_crit_edge
  %rc.2.i = phi i32 [ %call6.i, %pci_name.exit.i ], [ %call6.i, %if.then7.i.err_free_dev_1.i_crit_edge ], [ %rc.1.i, %err_pci_disable_2.i ]
  tail call void @free_netdev(ptr noundef nonnull %call.i) #14
  br label %err_out_0.i

err_out_0.i:                                      ; preds = %err_free_dev_1.i, %if.end3.err_out_0.i_crit_edge
  %rc.3.i = phi i32 [ %rc.2.i, %err_free_dev_1.i ], [ -12, %if.end3.err_out_0.i_crit_edge ]
  %52 = inttoptr i32 %rc.3.i to ptr
  br label %sis190_init_board.exit

sis190_init_board.exit:                           ; preds = %err_out_0.i, %if.end100.i
  %dev.0.i = phi ptr [ %52, %err_out_0.i ], [ %call.i, %if.end100.i ]
  %cmp.i72 = icmp ugt ptr %dev.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i72, label %if.then6, label %if.end8

if.then6:                                         ; preds = %sis190_init_board.exit
  call void @__sanitizer_cov_trace_pc() #16
  %53 = ptrtoint ptr %dev.0.i to i32
  br label %out

if.end8:                                          ; preds = %sis190_init_board.exit
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %54 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %dev.0.i, ptr %driver_data.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %dev.0.i, i32 2304
  %55 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %add.ptr.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %addr.i.i) #14
  %57 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 -1, ptr %addr.i.i, align 2, !annotation !207
  %58 = getelementptr inbounds [3 x i16], ptr %addr.i.i, i32 0, i32 1
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 -1, ptr %58, align 2, !annotation !207
  %60 = getelementptr inbounds [3 x i16], ptr %addr.i.i, i32 0, i32 2
  %msg_enable.i.i = getelementptr i8, ptr %dev.0.i, i32 3000
  %61 = ptrtoint ptr %msg_enable.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %msg_enable.i.i, align 4
  %and.i.i = and i32 %62, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end8.if.end.i.i74_crit_edge, label %do.end.i.i

if.end8.if.end.i.i74_crit_edge:                   ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i.i74

do.end.i.i:                                       ; preds = %if.end8
  %init_name.i.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 3
  %63 = ptrtoint ptr %init_name.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %init_name.i.i.i.i, align 8
  %tobool.not.i.i.i.i = icmp eq ptr %64, null
  br i1 %tobool.not.i.i.i.i, label %if.end.i.i.i.i, label %do.end.i.i.pci_name.exit.i.i_crit_edge

do.end.i.i.pci_name.exit.i.i_crit_edge:           ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %pci_name.exit.i.i

if.end.i.i.i.i:                                   ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %dev.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %65 = ptrtoint ptr %dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %dev.i.i.i, align 4
  br label %pci_name.exit.i.i

pci_name.exit.i.i:                                ; preds = %if.end.i.i.i.i, %do.end.i.i.pci_name.exit.i.i_crit_edge
  %retval.0.i.i.i.i = phi ptr [ %66, %if.end.i.i.i.i ], [ %64, %do.end.i.i.pci_name.exit.i.i_crit_edge ]
  %call2.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef %retval.0.i.i.i.i) #17
  br label %if.end.i.i74

if.end.i.i74:                                     ; preds = %pci_name.exit.i.i, %if.end8.if.end.i.i74_crit_edge
  %add.ptr.i43.i.i = getelementptr i8, ptr %56, i32 56
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i43.i.i) #14, !srcloc !208
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !209
  %68 = and i32 %67, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %tobool.not.i.i.i73 = icmp eq i32 %68, 0
  br i1 %tobool.not.i.i.i73, label %if.end.i.i74.if.then8.i.i_crit_edge, label %do.body.i.i.i

if.end.i.i74.if.then8.i.i_crit_edge:              ; preds = %if.end.i.i74
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then8.i.i

do.body.i.i.i:                                    ; preds = %if.end.i.i74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !210
  tail call void @arm_heavy_mb() #14
  %add.ptr2.i.i.i = getelementptr i8, ptr %56, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i.i.i, i32 -2147352576) #14, !srcloc !211
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %if.end19.i.i.i.for.body.i.i.i_crit_edge, %do.body.i.i.i
  %i.025.i.i.i = phi i32 [ 0, %do.body.i.i.i ], [ %inc.i.i.i, %if.end19.i.i.i.for.body.i.i.i_crit_edge ]
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i.i) #14, !srcloc !208
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !212
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %69)
  %tobool10.not.i.i.i = icmp sgt i32 %69, -1
  br i1 %tobool10.not.i.i.i, label %sis190_read_eeprom.exit.i.i, label %if.end19.i.i.i

if.end19.i.i.i:                                   ; preds = %for.body.i.i.i
  tail call void @msleep(i32 noundef 1) #14
  %inc.i.i.i = add nuw nsw i32 %i.025.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, 200
  br i1 %exitcond.not.i.i.i, label %if.end19.i.i.i.if.then8.i.i_crit_edge, label %if.end19.i.i.i.for.body.i.i.i_crit_edge

if.end19.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %if.end19.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i.i

if.end19.i.i.i.if.then8.i.i_crit_edge:            ; preds = %if.end19.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then8.i.i

sis190_read_eeprom.exit.i.i:                      ; preds = %for.body.i.i.i
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i.i) #14, !srcloc !208
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !213
  %71 = and i32 %70, 65535
  %72 = tail call i32 @llvm.bswap.i32(i32 %71) #14
  %shr.i.i.i = lshr exact i32 %72, 16
  %conv.i.i.i = trunc i32 %shr.i.i.i to i16
  %73 = zext i16 %conv.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %73, ptr @__sancov_gen_cov_switch_values)
  switch i16 %conv.i.i.i, label %for.cond.preheader.i.i [
    i16 -1, label %sis190_read_eeprom.exit.i.i.if.then8.i.i_crit_edge
    i16 0, label %sis190_read_eeprom.exit.i.i.if.then8.i.i_crit_edge141
  ]

sis190_read_eeprom.exit.i.i.if.then8.i.i_crit_edge141: ; preds = %sis190_read_eeprom.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then8.i.i

sis190_read_eeprom.exit.i.i.if.then8.i.i_crit_edge: ; preds = %sis190_read_eeprom.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then8.i.i

for.cond.preheader.i.i:                           ; preds = %sis190_read_eeprom.exit.i.i
  %74 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i43.i.i) #14, !srcloc !208
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !209
  %75 = and i32 %74, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %tobool.not.i51.i.i = icmp eq i32 %75, 0
  br i1 %tobool.not.i51.i.i, label %for.cond.preheader.i.i.sis190_read_eeprom.exit64.i.i_crit_edge, label %do.body.i53.i.i

for.cond.preheader.i.i.sis190_read_eeprom.exit64.i.i_crit_edge: ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sis190_read_eeprom.exit64.i.i

if.then8.i.i:                                     ; preds = %sis190_read_eeprom.exit.i.i.if.then8.i.i_crit_edge, %sis190_read_eeprom.exit.i.i.if.then8.i.i_crit_edge141, %if.end19.i.i.i.if.then8.i.i_crit_edge, %if.end.i.i74.if.then8.i.i_crit_edge
  %conv83.i.i = phi i32 [ %shr.i.i.i, %sis190_read_eeprom.exit.i.i.if.then8.i.i_crit_edge ], [ %shr.i.i.i, %sis190_read_eeprom.exit.i.i.if.then8.i.i_crit_edge141 ], [ 0, %if.end.i.i74.if.then8.i.i_crit_edge ], [ 65535, %if.end19.i.i.i.if.then8.i.i_crit_edge ]
  %76 = ptrtoint ptr %msg_enable.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %msg_enable.i.i, align 4
  %and10.i.i = and i32 %77, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i.i)
  %tobool11.not.i.i = icmp eq i32 %and10.i.i, 0
  br i1 %tobool11.not.i.i, label %if.then8.i.i.if.then.i_crit_edge, label %do.end15.i.i

if.then8.i.i.if.then.i_crit_edge:                 ; preds = %if.then8.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i

do.end15.i.i:                                     ; preds = %if.then8.i.i
  %init_name.i.i44.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 3
  %78 = ptrtoint ptr %init_name.i.i44.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %init_name.i.i44.i.i, align 8
  %tobool.not.i.i45.i.i = icmp eq ptr %79, null
  br i1 %tobool.not.i.i45.i.i, label %if.end.i.i47.i.i, label %do.end15.i.i.pci_name.exit49.i.i_crit_edge

do.end15.i.i.pci_name.exit49.i.i_crit_edge:       ; preds = %do.end15.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %pci_name.exit49.i.i

if.end.i.i47.i.i:                                 ; preds = %do.end15.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %dev.i46.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %80 = ptrtoint ptr %dev.i46.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %dev.i46.i.i, align 4
  br label %pci_name.exit49.i.i

pci_name.exit49.i.i:                              ; preds = %if.end.i.i47.i.i, %do.end15.i.i.pci_name.exit49.i.i_crit_edge
  %retval.0.i.i48.i.i = phi ptr [ %81, %if.end.i.i47.i.i ], [ %79, %do.end15.i.i.pci_name.exit49.i.i_crit_edge ]
  %call19.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef %retval.0.i.i48.i.i, i32 noundef %conv83.i.i) #17
  br label %if.then.i

do.body.i53.i.i:                                  ; preds = %for.cond.preheader.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !210
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i.i.i, i32 -2146566144) #14, !srcloc !211
  br label %for.body.i56.i.i

for.body.i56.i.i:                                 ; preds = %if.end19.i62.i.i.for.body.i56.i.i_crit_edge, %do.body.i53.i.i
  %i.025.i54.i.i = phi i32 [ 0, %do.body.i53.i.i ], [ %inc.i60.i.i, %if.end19.i62.i.i.for.body.i56.i.i_crit_edge ]
  %82 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i.i) #14, !srcloc !208
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !212
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %82)
  %tobool10.not.i55.i.i = icmp sgt i32 %82, -1
  br i1 %tobool10.not.i55.i.i, label %if.then11.i59.i.i, label %if.end19.i62.i.i

if.then11.i59.i.i:                                ; preds = %for.body.i56.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %83 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i.i) #14, !srcloc !208
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !213
  %84 = and i32 %83, 65535
  %85 = tail call i32 @llvm.bswap.i32(i32 %84) #14
  %shr.i57.i.i = lshr exact i32 %85, 16
  %conv.i58.i.i = trunc i32 %shr.i57.i.i to i16
  br label %sis190_read_eeprom.exit64.i.i

if.end19.i62.i.i:                                 ; preds = %for.body.i56.i.i
  tail call void @msleep(i32 noundef 1) #14
  %inc.i60.i.i = add nuw nsw i32 %i.025.i54.i.i, 1
  %exitcond.not.i61.i.i = icmp eq i32 %inc.i60.i.i, 200
  br i1 %exitcond.not.i61.i.i, label %if.end19.i62.i.i.sis190_read_eeprom.exit64.i.i_crit_edge, label %if.end19.i62.i.i.for.body.i56.i.i_crit_edge

if.end19.i62.i.i.for.body.i56.i.i_crit_edge:      ; preds = %if.end19.i62.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i56.i.i

if.end19.i62.i.i.sis190_read_eeprom.exit64.i.i_crit_edge: ; preds = %if.end19.i62.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sis190_read_eeprom.exit64.i.i

sis190_read_eeprom.exit64.i.i:                    ; preds = %if.end19.i62.i.i.sis190_read_eeprom.exit64.i.i_crit_edge, %if.then11.i59.i.i, %for.cond.preheader.i.i.sis190_read_eeprom.exit64.i.i_crit_edge
  %retval.0.i63.i.i = phi i16 [ 0, %for.cond.preheader.i.i.sis190_read_eeprom.exit64.i.i_crit_edge ], [ %conv.i58.i.i, %if.then11.i59.i.i ], [ -1, %if.end19.i62.i.i.sis190_read_eeprom.exit64.i.i_crit_edge ]
  %86 = tail call i16 @llvm.bswap.i16(i16 %retval.0.i63.i.i) #14
  %87 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_store2_noabort(i32 %87)
  store i16 %86, ptr %addr.i.i, align 2
  %88 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i43.i.i) #14, !srcloc !208
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !209
  %89 = and i32 %88, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %89)
  %tobool.not.i51.1.i.i = icmp eq i32 %89, 0
  br i1 %tobool.not.i51.1.i.i, label %sis190_read_eeprom.exit64.i.i.sis190_read_eeprom.exit64.1.i.i_crit_edge, label %do.body.i53.1.i.i

sis190_read_eeprom.exit64.i.i.sis190_read_eeprom.exit64.1.i.i_crit_edge: ; preds = %sis190_read_eeprom.exit64.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sis190_read_eeprom.exit64.1.i.i

do.body.i53.1.i.i:                                ; preds = %sis190_read_eeprom.exit64.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !210
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i.i.i, i32 -2146304000) #14, !srcloc !211
  br label %for.body.i56.1.i.i

for.body.i56.1.i.i:                               ; preds = %if.end19.i62.1.i.i.for.body.i56.1.i.i_crit_edge, %do.body.i53.1.i.i
  %i.025.i54.1.i.i = phi i32 [ 0, %do.body.i53.1.i.i ], [ %inc.i60.1.i.i, %if.end19.i62.1.i.i.for.body.i56.1.i.i_crit_edge ]
  %90 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i.i) #14, !srcloc !208
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !212
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %90)
  %tobool10.not.i55.1.i.i = icmp sgt i32 %90, -1
  br i1 %tobool10.not.i55.1.i.i, label %if.then11.i59.1.i.i, label %if.end19.i62.1.i.i

if.end19.i62.1.i.i:                               ; preds = %for.body.i56.1.i.i
  tail call void @msleep(i32 noundef 1) #14
  %inc.i60.1.i.i = add nuw nsw i32 %i.025.i54.1.i.i, 1
  %exitcond.not.i61.1.i.i = icmp eq i32 %inc.i60.1.i.i, 200
  br i1 %exitcond.not.i61.1.i.i, label %if.end19.i62.1.i.i.sis190_read_eeprom.exit64.1.i.i_crit_edge, label %if.end19.i62.1.i.i.for.body.i56.1.i.i_crit_edge

if.end19.i62.1.i.i.for.body.i56.1.i.i_crit_edge:  ; preds = %if.end19.i62.1.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i56.1.i.i

if.end19.i62.1.i.i.sis190_read_eeprom.exit64.1.i.i_crit_edge: ; preds = %if.end19.i62.1.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sis190_read_eeprom.exit64.1.i.i

if.then11.i59.1.i.i:                              ; preds = %for.body.i56.1.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %91 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i.i) #14, !srcloc !208
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !213
  %92 = and i32 %91, 65535
  %93 = tail call i32 @llvm.bswap.i32(i32 %92) #14
  %shr.i57.1.i.i = lshr exact i32 %93, 16
  %conv.i58.1.i.i = trunc i32 %shr.i57.1.i.i to i16
  br label %sis190_read_eeprom.exit64.1.i.i

sis190_read_eeprom.exit64.1.i.i:                  ; preds = %if.then11.i59.1.i.i, %if.end19.i62.1.i.i.sis190_read_eeprom.exit64.1.i.i_crit_edge, %sis190_read_eeprom.exit64.i.i.sis190_read_eeprom.exit64.1.i.i_crit_edge
  %retval.0.i63.1.i.i = phi i16 [ 0, %sis190_read_eeprom.exit64.i.i.sis190_read_eeprom.exit64.1.i.i_crit_edge ], [ %conv.i58.1.i.i, %if.then11.i59.1.i.i ], [ -1, %if.end19.i62.1.i.i.sis190_read_eeprom.exit64.1.i.i_crit_edge ]
  %94 = tail call i16 @llvm.bswap.i16(i16 %retval.0.i63.1.i.i) #14
  %95 = ptrtoint ptr %58 to i32
  call void @__asan_store2_noabort(i32 %95)
  store i16 %94, ptr %58, align 2
  %96 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i43.i.i) #14, !srcloc !208
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !209
  %97 = and i32 %96, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %97)
  %tobool.not.i51.2.i.i = icmp eq i32 %97, 0
  br i1 %tobool.not.i51.2.i.i, label %sis190_read_eeprom.exit64.1.i.i.sis190_read_eeprom.exit64.2.i.i_crit_edge, label %do.body.i53.2.i.i

sis190_read_eeprom.exit64.1.i.i.sis190_read_eeprom.exit64.2.i.i_crit_edge: ; preds = %sis190_read_eeprom.exit64.1.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sis190_read_eeprom.exit64.2.i.i

do.body.i53.2.i.i:                                ; preds = %sis190_read_eeprom.exit64.1.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !210
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i.i.i, i32 -2146041856) #14, !srcloc !211
  br label %for.body.i56.2.i.i

for.body.i56.2.i.i:                               ; preds = %if.end19.i62.2.i.i.for.body.i56.2.i.i_crit_edge, %do.body.i53.2.i.i
  %i.025.i54.2.i.i = phi i32 [ 0, %do.body.i53.2.i.i ], [ %inc.i60.2.i.i, %if.end19.i62.2.i.i.for.body.i56.2.i.i_crit_edge ]
  %98 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i.i) #14, !srcloc !208
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !212
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %98)
  %tobool10.not.i55.2.i.i = icmp sgt i32 %98, -1
  br i1 %tobool10.not.i55.2.i.i, label %if.then11.i59.2.i.i, label %if.end19.i62.2.i.i

if.end19.i62.2.i.i:                               ; preds = %for.body.i56.2.i.i
  tail call void @msleep(i32 noundef 1) #14
  %inc.i60.2.i.i = add nuw nsw i32 %i.025.i54.2.i.i, 1
  %exitcond.not.i61.2.i.i = icmp eq i32 %inc.i60.2.i.i, 200
  br i1 %exitcond.not.i61.2.i.i, label %if.end19.i62.2.i.i.sis190_read_eeprom.exit64.2.i.i_crit_edge, label %if.end19.i62.2.i.i.for.body.i56.2.i.i_crit_edge

if.end19.i62.2.i.i.for.body.i56.2.i.i_crit_edge:  ; preds = %if.end19.i62.2.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i56.2.i.i

if.end19.i62.2.i.i.sis190_read_eeprom.exit64.2.i.i_crit_edge: ; preds = %if.end19.i62.2.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sis190_read_eeprom.exit64.2.i.i

if.then11.i59.2.i.i:                              ; preds = %for.body.i56.2.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %99 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i.i) #14, !srcloc !208
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !213
  %100 = and i32 %99, 65535
  %101 = tail call i32 @llvm.bswap.i32(i32 %100) #14
  %shr.i57.2.i.i = lshr exact i32 %101, 16
  %conv.i58.2.i.i = trunc i32 %shr.i57.2.i.i to i16
  br label %sis190_read_eeprom.exit64.2.i.i

sis190_read_eeprom.exit64.2.i.i:                  ; preds = %if.then11.i59.2.i.i, %if.end19.i62.2.i.i.sis190_read_eeprom.exit64.2.i.i_crit_edge, %sis190_read_eeprom.exit64.1.i.i.sis190_read_eeprom.exit64.2.i.i_crit_edge
  %retval.0.i63.2.i.i = phi i16 [ 0, %sis190_read_eeprom.exit64.1.i.i.sis190_read_eeprom.exit64.2.i.i_crit_edge ], [ %conv.i58.2.i.i, %if.then11.i59.2.i.i ], [ -1, %if.end19.i62.2.i.i.sis190_read_eeprom.exit64.2.i.i_crit_edge ]
  %102 = tail call i16 @llvm.bswap.i16(i16 %retval.0.i63.2.i.i) #14
  %103 = ptrtoint ptr %60 to i32
  call void @__asan_store2_noabort(i32 %103)
  store i16 %102, ptr %60, align 2
  call void @dev_addr_mod(ptr noundef %dev.0.i, i32 noundef 0, ptr noundef nonnull %addr.i.i, i32 noundef 6) #14
  %104 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i43.i.i) #14, !srcloc !208
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !209
  %105 = and i32 %104, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %105)
  %tobool.not.i66.i.i = icmp eq i32 %105, 0
  br i1 %tobool.not.i66.i.i, label %sis190_read_eeprom.exit64.2.i.i.sis190_get_mac_addr.exit.thread_crit_edge, label %do.body.i68.i.i

sis190_read_eeprom.exit64.2.i.i.sis190_get_mac_addr.exit.thread_crit_edge: ; preds = %sis190_read_eeprom.exit64.2.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sis190_get_mac_addr.exit.thread

do.body.i68.i.i:                                  ; preds = %sis190_read_eeprom.exit64.2.i.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !210
  call void @arm_heavy_mb() #14
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i.i.i, i32 -2146828288) #14, !srcloc !211
  br label %for.body.i71.i.i

for.body.i71.i.i:                                 ; preds = %if.end19.i77.i.i.for.body.i71.i.i_crit_edge, %do.body.i68.i.i
  %i.025.i69.i.i = phi i32 [ 0, %do.body.i68.i.i ], [ %inc.i75.i.i, %if.end19.i77.i.i.for.body.i71.i.i_crit_edge ]
  %106 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i.i) #14, !srcloc !208
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !212
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %106)
  %tobool10.not.i70.i.i = icmp sgt i32 %106, -1
  br i1 %tobool10.not.i70.i.i, label %if.then11.i74.i.i, label %if.end19.i77.i.i

if.then11.i74.i.i:                                ; preds = %for.body.i71.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %107 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i.i) #14, !srcloc !208
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !213
  %108 = lshr i32 %107, 15
  %phi.bo84.i.i = and i32 %108, 1
  br label %sis190_get_mac_addr.exit.thread

if.end19.i77.i.i:                                 ; preds = %for.body.i71.i.i
  call void @msleep(i32 noundef 1) #14
  %inc.i75.i.i = add nuw nsw i32 %i.025.i69.i.i, 1
  %exitcond.not.i76.i.i = icmp eq i32 %inc.i75.i.i, 200
  br i1 %exitcond.not.i76.i.i, label %if.end19.i77.i.i.sis190_get_mac_addr.exit.thread_crit_edge, label %if.end19.i77.i.i.for.body.i71.i.i_crit_edge

if.end19.i77.i.i.for.body.i71.i.i_crit_edge:      ; preds = %if.end19.i77.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i71.i.i

if.end19.i77.i.i.sis190_get_mac_addr.exit.thread_crit_edge: ; preds = %if.end19.i77.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sis190_get_mac_addr.exit.thread

sis190_get_mac_addr.exit.thread:                  ; preds = %if.end19.i77.i.i.sis190_get_mac_addr.exit.thread_crit_edge, %if.then11.i74.i.i, %sis190_read_eeprom.exit64.2.i.i.sis190_get_mac_addr.exit.thread_crit_edge
  %retval.0.i78.off0.i.i = phi i32 [ 0, %sis190_read_eeprom.exit64.2.i.i.sis190_get_mac_addr.exit.thread_crit_edge ], [ %phi.bo84.i.i, %if.then11.i74.i.i ], [ 1, %if.end19.i77.i.i.sis190_get_mac_addr.exit.thread_crit_edge ]
  %features.i.i.i = getelementptr i8, ptr %dev.0.i, i32 3044
  %109 = ptrtoint ptr %features.i.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %features.i.i.i, align 4
  %or.i80.i.i = or i32 %110, %retval.0.i78.off0.i.i
  store i32 %or.i80.i.i, ptr %features.i.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr.i.i) #14
  br label %if.end12

if.then.i:                                        ; preds = %pci_name.exit49.i.i, %if.then8.i.i.if.then.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr.i.i) #14
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.i) #14
  %111 = ptrtoint ptr %reg.i to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 -1, ptr %reg.i, align 1, !annotation !207
  %call1.i = call i32 @pci_read_config_byte(ptr noundef %pdev, i32 noundef 115, ptr noundef nonnull %reg.i) #14
  %112 = ptrtoint ptr %reg.i to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %reg.i, align 1
  %114 = and i8 %113, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %114)
  %tobool.not.i75 = icmp eq i8 %114, 0
  br i1 %tobool.not.i75, label %sis190_get_mac_addr.exit.thread128, label %if.then2.i

sis190_get_mac_addr.exit.thread128:               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.i) #14
  br label %err_release_board

if.then2.i:                                       ; preds = %if.then.i
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %addr.i9.i) #14
  %115 = getelementptr inbounds [6 x i8], ptr %addr.i9.i, i32 0, i32 1
  %116 = getelementptr inbounds [6 x i8], ptr %addr.i9.i, i32 0, i32 2
  %117 = getelementptr inbounds [6 x i8], ptr %addr.i9.i, i32 0, i32 3
  %118 = getelementptr inbounds [6 x i8], ptr %addr.i9.i, i32 0, i32 4
  %119 = getelementptr inbounds [6 x i8], ptr %addr.i9.i, i32 0, i32 5
  %120 = call ptr @memset(ptr %117, i32 255, i32 3)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.i.i) #14
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp8.i.i) #14
  %121 = ptrtoint ptr %tmp8.i.i to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 -1, ptr %tmp8.i.i, align 1, !annotation !207
  %122 = ptrtoint ptr %msg_enable.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %msg_enable.i.i, align 4
  %and.i11.i = and i32 %123, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i11.i)
  %tobool.not.i12.i = icmp eq i32 %and.i11.i, 0
  br i1 %tobool.not.i12.i, label %if.then2.i.if.end.i21.i_crit_edge, label %do.end.i15.i

if.then2.i.if.end.i21.i_crit_edge:                ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i21.i

do.end.i15.i:                                     ; preds = %if.then2.i
  %init_name.i.i.i13.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 3
  %124 = ptrtoint ptr %init_name.i.i.i13.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %init_name.i.i.i13.i, align 8
  %tobool.not.i.i.i14.i = icmp eq ptr %125, null
  br i1 %tobool.not.i.i.i14.i, label %if.end.i.i.i17.i, label %do.end.i15.i.pci_name.exit.i20.i_crit_edge

do.end.i15.i.pci_name.exit.i20.i_crit_edge:       ; preds = %do.end.i15.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %pci_name.exit.i20.i

if.end.i.i.i17.i:                                 ; preds = %do.end.i15.i
  call void @__sanitizer_cov_trace_pc() #16
  %dev.i.i16.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %126 = ptrtoint ptr %dev.i.i16.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %dev.i.i16.i, align 4
  br label %pci_name.exit.i20.i

pci_name.exit.i20.i:                              ; preds = %if.end.i.i.i17.i, %do.end.i15.i.pci_name.exit.i20.i_crit_edge
  %retval.0.i.i.i18.i = phi ptr [ %127, %if.end.i.i.i17.i ], [ %125, %do.end.i15.i.pci_name.exit.i20.i_crit_edge ]
  %call2.i19.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef %retval.0.i.i.i18.i) #17
  br label %if.end.i21.i

if.end.i21.i:                                     ; preds = %pci_name.exit.i20.i, %if.then2.i.if.end.i21.i_crit_edge
  %call3.i.i = call ptr @pci_get_device(i32 noundef 4153, i32 noundef 2405, ptr noundef null) #14
  %tobool4.not.i.i = icmp eq ptr %call3.i.i, null
  br i1 %tobool4.not.i.i, label %for.cond.i.i, label %if.end.i21.i.sis190_get_mac_addr.exit_crit_edge

if.end.i21.i.sis190_get_mac_addr.exit_crit_edge:  ; preds = %if.end.i21.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sis190_get_mac_addr.exit

for.cond.i.i:                                     ; preds = %if.end.i21.i
  %call3.1.i.i = call ptr @pci_get_device(i32 noundef 4153, i32 noundef 2406, ptr noundef null) #14
  %tobool4.not.1.i.i = icmp eq ptr %call3.1.i.i, null
  br i1 %tobool4.not.1.i.i, label %for.cond.1.i.i, label %for.cond.i.i.sis190_get_mac_addr.exit_crit_edge

for.cond.i.i.sis190_get_mac_addr.exit_crit_edge:  ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sis190_get_mac_addr.exit

for.cond.1.i.i:                                   ; preds = %for.cond.i.i
  %call3.2.i.i = call ptr @pci_get_device(i32 noundef 4153, i32 noundef 2408, ptr noundef null) #14
  %tobool4.not.2.i.i = icmp eq ptr %call3.2.i.i, null
  br i1 %tobool4.not.2.i.i, label %for.cond.2.i.i, label %for.cond.1.i.i.sis190_get_mac_addr.exit_crit_edge

for.cond.1.i.i.sis190_get_mac_addr.exit_crit_edge: ; preds = %for.cond.1.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sis190_get_mac_addr.exit

for.cond.2.i.i:                                   ; preds = %for.cond.1.i.i
  %128 = ptrtoint ptr %msg_enable.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %msg_enable.i.i, align 4
  %and10.i22.i = and i32 %129, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i22.i)
  %tobool11.not.i23.i = icmp eq i32 %and10.i22.i, 0
  br i1 %tobool11.not.i23.i, label %for.cond.2.i.i.sis190_get_mac_addr.exit.thread131_crit_edge, label %do.end15.i24.i

for.cond.2.i.i.sis190_get_mac_addr.exit.thread131_crit_edge: ; preds = %for.cond.2.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sis190_get_mac_addr.exit.thread131

do.end15.i24.i:                                   ; preds = %for.cond.2.i.i
  %init_name.i.i73.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 3
  %130 = ptrtoint ptr %init_name.i.i73.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %init_name.i.i73.i.i, align 8
  %tobool.not.i.i74.i.i = icmp eq ptr %131, null
  br i1 %tobool.not.i.i74.i.i, label %if.end.i.i76.i.i, label %do.end15.i24.i.pci_name.exit78.i.i_crit_edge

do.end15.i24.i.pci_name.exit78.i.i_crit_edge:     ; preds = %do.end15.i24.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %pci_name.exit78.i.i

if.end.i.i76.i.i:                                 ; preds = %do.end15.i24.i
  call void @__sanitizer_cov_trace_pc() #16
  %dev.i75.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %132 = ptrtoint ptr %dev.i75.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %dev.i75.i.i, align 4
  br label %pci_name.exit78.i.i

pci_name.exit78.i.i:                              ; preds = %if.end.i.i76.i.i, %do.end15.i24.i.pci_name.exit78.i.i_crit_edge
  %retval.0.i.i77.i.i = phi ptr [ %133, %if.end.i.i76.i.i ], [ %131, %do.end15.i24.i.pci_name.exit78.i.i_crit_edge ]
  %call18.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, ptr noundef %retval.0.i.i77.i.i) #17
  br label %sis190_get_mac_addr.exit.thread131

sis190_get_mac_addr.exit.thread131:               ; preds = %pci_name.exit78.i.i, %for.cond.2.i.i.sis190_get_mac_addr.exit.thread131_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp8.i.i) #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.i.i) #14
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr.i9.i) #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.i) #14
  br label %err_release_board

sis190_get_mac_addr.exit:                         ; preds = %for.cond.1.i.i.sis190_get_mac_addr.exit_crit_edge, %for.cond.i.i.sis190_get_mac_addr.exit_crit_edge, %if.end.i21.i.sis190_get_mac_addr.exit_crit_edge
  %call3.lcssa.i.i = phi ptr [ %call3.i.i, %if.end.i21.i.sis190_get_mac_addr.exit_crit_edge ], [ %call3.1.i.i, %for.cond.i.i.sis190_get_mac_addr.exit_crit_edge ], [ %call3.2.i.i, %for.cond.1.i.i.sis190_get_mac_addr.exit_crit_edge ]
  %call21.i.i = call i32 @pci_read_config_byte(ptr noundef nonnull %call3.lcssa.i.i, i32 noundef 72, ptr noundef nonnull %tmp8.i.i) #14
  %134 = ptrtoint ptr %tmp8.i.i to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %tmp8.i.i, align 1
  %136 = and i8 %135, -3
  %137 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_store1_noabort(i32 %137)
  store i8 %136, ptr %reg.i.i, align 1
  %call25.i.i = call i32 @pci_write_config_byte(ptr noundef nonnull %call3.lcssa.i.i, i32 noundef 72, i8 noundef zeroext %136) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %138 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %138(i32 noundef 10737400) #14
  %call26.i.i = call i32 @pci_read_config_byte(ptr noundef nonnull %call3.lcssa.i.i, i32 noundef 72, ptr noundef nonnull %reg.i.i) #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !214
  call void @arm_heavy_mb() #14
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18874248 to ptr), i8 9) #14, !srcloc !215
  %139 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18874247 to ptr)) #14, !srcloc !216
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !217
  %140 = ptrtoint ptr %addr.i9.i to i32
  call void @__asan_store1_noabort(i32 %140)
  store i8 %139, ptr %addr.i9.i, align 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !214
  call void @arm_heavy_mb() #14
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18874248 to ptr), i8 10) #14, !srcloc !215
  %141 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18874247 to ptr)) #14, !srcloc !216
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !217
  %142 = ptrtoint ptr %115 to i32
  call void @__asan_store1_noabort(i32 %142)
  store i8 %141, ptr %115, align 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !214
  call void @arm_heavy_mb() #14
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18874248 to ptr), i8 11) #14, !srcloc !215
  %143 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18874247 to ptr)) #14, !srcloc !216
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !217
  %144 = ptrtoint ptr %116 to i32
  call void @__asan_store1_noabort(i32 %144)
  store i8 %143, ptr %116, align 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !214
  call void @arm_heavy_mb() #14
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18874248 to ptr), i8 12) #14, !srcloc !215
  %145 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18874247 to ptr)) #14, !srcloc !216
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !217
  %146 = ptrtoint ptr %117 to i32
  call void @__asan_store1_noabort(i32 %146)
  store i8 %145, ptr %117, align 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !214
  call void @arm_heavy_mb() #14
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18874248 to ptr), i8 13) #14, !srcloc !215
  %147 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18874247 to ptr)) #14, !srcloc !216
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !217
  %148 = ptrtoint ptr %118 to i32
  call void @__asan_store1_noabort(i32 %148)
  store i8 %147, ptr %118, align 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !214
  call void @arm_heavy_mb() #14
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18874248 to ptr), i8 14) #14, !srcloc !215
  %149 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18874247 to ptr)) #14, !srcloc !216
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !217
  %150 = ptrtoint ptr %119 to i32
  call void @__asan_store1_noabort(i32 %150)
  store i8 %149, ptr %119, align 1
  call void @dev_addr_mod(ptr noundef %dev.0.i, i32 noundef 0, ptr noundef nonnull %addr.i9.i, i32 noundef 6) #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !218
  call void @arm_heavy_mb() #14
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18874248 to ptr), i8 18) #14, !srcloc !215
  %151 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18874247 to ptr)) #14, !srcloc !216
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !219
  %152 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_store1_noabort(i32 %152)
  store i8 %151, ptr %reg.i.i, align 1
  %reg.lobit.i.i.i = lshr i8 %151, 7
  %153 = zext i8 %reg.lobit.i.i.i to i32
  %features.i.i25.i = getelementptr i8, ptr %dev.0.i, i32 3044
  %154 = ptrtoint ptr %features.i.i25.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %features.i.i25.i, align 4
  %or.i.i.i = or i32 %155, %153
  store i32 %or.i.i.i, ptr %features.i.i25.i, align 4
  %156 = ptrtoint ptr %tmp8.i.i to i32
  call void @__asan_load1_noabort(i32 %156)
  %157 = load i8, ptr %tmp8.i.i, align 1
  %call51.i.i = call i32 @pci_write_config_byte(ptr noundef nonnull %call3.lcssa.i.i, i32 noundef 72, i8 noundef zeroext %157) #14
  call void @pci_dev_put(ptr noundef nonnull %call3.lcssa.i.i) #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp8.i.i) #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.i.i) #14
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr.i9.i) #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.i) #14
  br label %if.end12

if.end12:                                         ; preds = %sis190_get_mac_addr.exit, %sis190_get_mac_addr.exit.thread
  call fastcc void @sis190_init_rxfilter(ptr noundef %dev.0.i)
  %phy_task = getelementptr i8, ptr %dev.0.i, i32 2908
  call void @__init_work(ptr noundef %phy_task, i32 noundef 0) #14
  %158 = ptrtoint ptr %phy_task to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 -64, ptr %phy_task, align 4
  %lockdep_map = getelementptr i8, ptr %dev.0.i, i32 2924
  call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.6, ptr noundef nonnull @sis190_init_one.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #14
  %entry17 = getelementptr i8, ptr %dev.0.i, i32 2912
  %159 = ptrtoint ptr %entry17 to i32
  call void @__asan_store4_noabort(i32 %159)
  store volatile ptr %entry17, ptr %entry17, align 4
  %prev.i = getelementptr i8, ptr %dev.0.i, i32 2916
  %160 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %160)
  store ptr %entry17, ptr %prev.i, align 4
  %func = getelementptr i8, ptr %dev.0.i, i32 2920
  %161 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %161)
  store ptr @sis190_phy_task, ptr %func, align 4
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %dev.0.i, i32 0, i32 16
  %162 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %162)
  store ptr @sis190_netdev_ops, ptr %netdev_ops, align 8
  %ethtool_ops = getelementptr inbounds %struct.net_device, ptr %dev.0.i, i32 0, i32 44
  %163 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_store4_noabort(i32 %163)
  store ptr @sis190_ethtool_ops, ptr %ethtool_ops, align 16
  %watchdog_timeo = getelementptr inbounds %struct.net_device, ptr %dev.0.i, i32 0, i32 115
  %164 = ptrtoint ptr %watchdog_timeo to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 600, ptr %watchdog_timeo, align 4
  %lock = getelementptr i8, ptr %dev.0.i, i32 2316
  call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.8, ptr noundef nonnull @sis190_init_one.__key.7, i16 noundef signext 3) #14
  %165 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %add.ptr.i, align 4
  %first_phy.i = getelementptr i8, ptr %dev.0.i, i32 3036
  %167 = ptrtoint ptr %first_phy.i to i32
  call void @__asan_store4_noabort(i32 %167)
  store volatile ptr %first_phy.i, ptr %first_phy.i, align 4
  %prev.i.i = getelementptr i8, ptr %dev.0.i, i32 3040
  %168 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %168)
  store ptr %first_phy.i, ptr %prev.i.i, align 4
  %features.i.i = getelementptr i8, ptr %dev.0.i, i32 3044
  %pci_dev.i.i = getelementptr i8, ptr %dev.0.i, i32 2308
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end12
  %phy_id.098.i = phi i32 [ 0, %if.end12 ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %call2.i = call fastcc zeroext i16 @mdio_read_latched(ptr noundef %166, i32 noundef %phy_id.098.i) #14
  %169 = zext i16 %call2.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %169, ptr @__sancov_gen_cov_switch_values.82)
  switch i16 %call2.i, label %if.end.i82 [
    i16 -1, label %for.body.i.for.inc.i_crit_edge
    i16 0, label %for.body.i.for.inc.i_crit_edge142
  ]

for.body.i.for.inc.i_crit_edge142:                ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

if.end.i82:                                       ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %170 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %170, i32 noundef 3264, i32 noundef 20) #18
  %tobool.not.i81 = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i81, label %if.then9.i, label %if.end11.i

if.then9.i:                                       ; preds = %if.end.i82
  %171 = ptrtoint ptr %first_phy.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %first_phy.i, align 4
  %cmp.not16.i.i = icmp eq ptr %172, %first_phy.i
  br i1 %cmp.not16.i.i, label %if.then9.i.err_release_board_crit_edge, label %if.then9.i.for.body.i.i_crit_edge

if.then9.i.for.body.i.i_crit_edge:                ; preds = %if.then9.i
  br label %for.body.i.i

if.then9.i.err_release_board_crit_edge:           ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_release_board

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.then9.i.for.body.i.i_crit_edge
  %cur.017.i.i = phi ptr [ %next.0.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %172, %if.then9.i.for.body.i.i_crit_edge ]
  %173 = ptrtoint ptr %cur.017.i.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %next.0.i.i = load ptr, ptr %cur.017.i.i, align 4
  call void @kfree(ptr noundef %cur.017.i.i) #14
  %cmp.not.i.i = icmp eq ptr %next.0.i.i, %first_phy.i
  br i1 %cmp.not.i.i, label %for.body.i.i.err_release_board_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i

for.body.i.i.err_release_board_crit_edge:         ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_release_board

if.end11.i:                                       ; preds = %if.end.i82
  %174 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %add.ptr.i, align 4
  %176 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %176)
  store volatile ptr %call7.i.i, ptr %call7.i.i, align 8
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %177 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %177)
  store ptr %call7.i.i, ptr %prev.i.i.i, align 4
  %status.i.i = getelementptr inbounds %struct.sis190_phy, ptr %call7.i.i, i32 0, i32 3
  %178 = ptrtoint ptr %status.i.i to i32
  call void @__asan_store2_noabort(i32 %178)
  store i16 %call2.i, ptr %status.i.i, align 8
  %phy_id1.i.i = getelementptr inbounds %struct.sis190_phy, ptr %call7.i.i, i32 0, i32 1
  %179 = ptrtoint ptr %phy_id1.i.i to i32
  call void @__asan_store4_noabort(i32 %179)
  store i32 %phy_id.098.i, ptr %phy_id1.i.i, align 8
  %shl1.i.i.i = shl i32 %phy_id.098.i, 6
  %or2.i.i.i = or i32 %shl1.i.i.i, 4112
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !220
  call void @arm_heavy_mb() #14
  %180 = call i32 @llvm.bswap.i32(i32 %or2.i.i.i) #14
  %add.ptr.i.i.i.i = getelementptr i8, ptr %175, i32 68
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i.i, i32 %180) #14, !srcloc !211
  call void @msleep(i32 noundef 1) #14
  br label %for.body.i.i.i.i

for.body.i.i.i.i:                                 ; preds = %if.end.i.i.i.i84.for.body.i.i.i.i_crit_edge, %if.end11.i
  %i.015.i.i.i.i = phi i32 [ 0, %if.end11.i ], [ %inc.i.i.i.i, %if.end.i.i.i.i84.for.body.i.i.i.i_crit_edge ]
  %181 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i) #14, !srcloc !208
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !221
  %182 = and i32 %181, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %182)
  %tobool.not.i.i.i.i83 = icmp eq i32 %182, 0
  br i1 %tobool.not.i.i.i.i83, label %for.body.i.i.i.i.mdio_read.exit.i.i_crit_edge, label %if.end.i.i.i.i84

for.body.i.i.i.i.mdio_read.exit.i.i_crit_edge:    ; preds = %for.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %mdio_read.exit.i.i

if.end.i.i.i.i84:                                 ; preds = %for.body.i.i.i.i
  call void @msleep(i32 noundef 1) #14
  %inc.i.i.i.i = add nuw nsw i32 %i.015.i.i.i.i, 1
  %exitcond.not.i.i.i.i = icmp eq i32 %inc.i.i.i.i, 100
  br i1 %exitcond.not.i.i.i.i, label %do.end7.i.i.i.i, label %if.end.i.i.i.i84.for.body.i.i.i.i_crit_edge

if.end.i.i.i.i84.for.body.i.i.i.i_crit_edge:      ; preds = %if.end.i.i.i.i84
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i.i.i

do.end7.i.i.i.i:                                  ; preds = %if.end.i.i.i.i84
  call void @__sanitizer_cov_trace_pc() #16
  %call9.i.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51) #17
  br label %mdio_read.exit.i.i

mdio_read.exit.i.i:                               ; preds = %do.end7.i.i.i.i, %for.body.i.i.i.i.mdio_read.exit.i.i_crit_edge
  %183 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i) #14, !srcloc !208
  %184 = call i32 @llvm.bswap.i32(i32 %183) #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !222
  %shr.i.i.i85 = lshr i32 %184, 16
  %conv.i.i = trunc i32 %shr.i.i.i85 to i16
  %id.i.i = getelementptr inbounds %struct.sis190_phy, ptr %call7.i.i, i32 0, i32 2
  %185 = ptrtoint ptr %id.i.i to i32
  call void @__asan_store2_noabort(i32 %185)
  store i16 %conv.i.i, ptr %id.i.i, align 4
  %or2.i3.i.i = or i32 %shl1.i.i.i, 6160
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !220
  call void @arm_heavy_mb() #14
  %186 = call i32 @llvm.bswap.i32(i32 %or2.i3.i.i) #14
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i.i, i32 %186) #14, !srcloc !211
  call void @msleep(i32 noundef 1) #14
  br label %for.body.i.i7.i.i

for.body.i.i7.i.i:                                ; preds = %if.end.i.i10.i.i.for.body.i.i7.i.i_crit_edge, %mdio_read.exit.i.i
  %i.015.i.i5.i.i = phi i32 [ 0, %mdio_read.exit.i.i ], [ %inc.i.i8.i.i, %if.end.i.i10.i.i.for.body.i.i7.i.i_crit_edge ]
  %187 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i) #14, !srcloc !208
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !221
  %188 = and i32 %187, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %188)
  %tobool.not.i.i6.i.i = icmp eq i32 %188, 0
  br i1 %tobool.not.i.i6.i.i, label %for.body.i.i7.i.i.mdio_read.exit14.i.i_crit_edge, label %if.end.i.i10.i.i

for.body.i.i7.i.i.mdio_read.exit14.i.i_crit_edge: ; preds = %for.body.i.i7.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %mdio_read.exit14.i.i

if.end.i.i10.i.i:                                 ; preds = %for.body.i.i7.i.i
  call void @msleep(i32 noundef 1) #14
  %inc.i.i8.i.i = add nuw nsw i32 %i.015.i.i5.i.i, 1
  %exitcond.not.i.i9.i.i = icmp eq i32 %inc.i.i8.i.i, 100
  br i1 %exitcond.not.i.i9.i.i, label %do.end7.i.i12.i.i, label %if.end.i.i10.i.i.for.body.i.i7.i.i_crit_edge

if.end.i.i10.i.i.for.body.i.i7.i.i_crit_edge:     ; preds = %if.end.i.i10.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i7.i.i

do.end7.i.i12.i.i:                                ; preds = %if.end.i.i10.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %call9.i.i11.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51) #17
  br label %mdio_read.exit14.i.i

mdio_read.exit14.i.i:                             ; preds = %do.end7.i.i12.i.i, %for.body.i.i7.i.i.mdio_read.exit14.i.i_crit_edge
  %189 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i) #14, !srcloc !208
  %190 = call i32 @llvm.bswap.i32(i32 %189) #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !222
  %shr.i13.i.i = lshr i32 %190, 16
  %conv3.i.i = trunc i32 %shr.i13.i.i to i16
  %arrayidx5.i.i = getelementptr %struct.sis190_phy, ptr %call7.i.i, i32 0, i32 2, i32 1
  %191 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_store2_noabort(i32 %191)
  store i16 %conv3.i.i, ptr %arrayidx5.i.i, align 2
  %192 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load2_noabort(i32 %192)
  %193 = load i16, ptr %id.i.i, align 4
  %194 = and i16 %conv3.i.i, -16
  %195 = zext i16 %193 to i64
  call void @__sanitizer_cov_trace_switch(i64 %195, ptr @__sancov_gen_cov_switch_values.83)
  switch i16 %193, label %mdio_read.exit14.i.i.for.inc.6.i.i_crit_edge [
    i16 77, label %land.lhs.true.i.i
    i16 32, label %land.lhs.true.2.i.i
    i16 323, label %land.lhs.true.3.i.i
    i16 642, label %land.lhs.true.4.i.i
    i16 321, label %land.lhs.true.5.i.i
    i16 0, label %land.lhs.true.6.i.i
  ]

mdio_read.exit14.i.i.for.inc.6.i.i_crit_edge:     ; preds = %mdio_read.exit14.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.6.i.i

land.lhs.true.i.i:                                ; preds = %mdio_read.exit14.i.i
  %196 = zext i16 %194 to i64
  call void @__sanitizer_cov_trace_switch(i64 %196, ptr @__sancov_gen_cov_switch_values.84)
  switch i16 %194, label %land.lhs.true.i.i.for.inc.6.i.i_crit_edge [
    i16 -12272, label %land.lhs.true.i.i.for.end.i.i_crit_edge
    i16 -12256, label %for.end.fold.split.i.i
  ]

land.lhs.true.i.i.for.end.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i.i

land.lhs.true.i.i.for.inc.6.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.6.i.i

land.lhs.true.2.i.i:                              ; preds = %mdio_read.exit14.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 24768, i16 %194)
  %cmp19.2.i.i = icmp eq i16 %194, 24768
  br i1 %cmp19.2.i.i, label %land.lhs.true.2.i.i.for.end.i.i_crit_edge, label %land.lhs.true.2.i.i.for.inc.6.i.i_crit_edge

land.lhs.true.2.i.i.for.inc.6.i.i_crit_edge:      ; preds = %land.lhs.true.2.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.6.i.i

land.lhs.true.2.i.i.for.end.i.i_crit_edge:        ; preds = %land.lhs.true.2.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i.i

land.lhs.true.3.i.i:                              ; preds = %mdio_read.exit14.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 -17296, i16 %194)
  %cmp19.3.i.i = icmp eq i16 %194, -17296
  br i1 %cmp19.3.i.i, label %land.lhs.true.3.i.i.for.end.i.i_crit_edge, label %land.lhs.true.3.i.i.for.inc.6.i.i_crit_edge

land.lhs.true.3.i.i.for.inc.6.i.i_crit_edge:      ; preds = %land.lhs.true.3.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.6.i.i

land.lhs.true.3.i.i.for.end.i.i_crit_edge:        ; preds = %land.lhs.true.3.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i.i

land.lhs.true.4.i.i:                              ; preds = %mdio_read.exit14.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 -4080, i16 %194)
  %cmp19.4.i.i = icmp eq i16 %194, -4080
  br i1 %cmp19.4.i.i, label %land.lhs.true.4.i.i.for.end.i.i_crit_edge, label %land.lhs.true.4.i.i.for.inc.6.i.i_crit_edge

land.lhs.true.4.i.i.for.inc.6.i.i_crit_edge:      ; preds = %land.lhs.true.4.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.6.i.i

land.lhs.true.4.i.i.for.end.i.i_crit_edge:        ; preds = %land.lhs.true.4.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i.i

land.lhs.true.5.i.i:                              ; preds = %mdio_read.exit14.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 3264, i16 %194)
  %cmp19.5.i.i = icmp eq i16 %194, 3264
  br i1 %cmp19.5.i.i, label %land.lhs.true.5.i.i.for.end.i.i_crit_edge, label %land.lhs.true.5.i.i.for.inc.6.i.i_crit_edge

land.lhs.true.5.i.i.for.inc.6.i.i_crit_edge:      ; preds = %land.lhs.true.5.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.6.i.i

land.lhs.true.5.i.i.for.end.i.i_crit_edge:        ; preds = %land.lhs.true.5.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i.i

land.lhs.true.6.i.i:                              ; preds = %mdio_read.exit14.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32256, i16 %194)
  %cmp19.6.i.i = icmp eq i16 %194, -32256
  br i1 %cmp19.6.i.i, label %land.lhs.true.6.i.i.for.end.i.i_crit_edge, label %land.lhs.true.6.i.i.for.inc.6.i.i_crit_edge

land.lhs.true.6.i.i.for.inc.6.i.i_crit_edge:      ; preds = %land.lhs.true.6.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.6.i.i

land.lhs.true.6.i.i.for.end.i.i_crit_edge:        ; preds = %land.lhs.true.6.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i.i

for.inc.6.i.i:                                    ; preds = %land.lhs.true.6.i.i.for.inc.6.i.i_crit_edge, %land.lhs.true.5.i.i.for.inc.6.i.i_crit_edge, %land.lhs.true.4.i.i.for.inc.6.i.i_crit_edge, %land.lhs.true.3.i.i.for.inc.6.i.i_crit_edge, %land.lhs.true.2.i.i.for.inc.6.i.i_crit_edge, %land.lhs.true.i.i.for.inc.6.i.i_crit_edge, %mdio_read.exit14.i.i.for.inc.6.i.i_crit_edge
  br label %for.end.i.i

for.end.fold.split.i.i:                           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %for.end.fold.split.i.i, %for.inc.6.i.i, %land.lhs.true.6.i.i.for.end.i.i_crit_edge, %land.lhs.true.5.i.i.for.end.i.i_crit_edge, %land.lhs.true.4.i.i.for.end.i.i_crit_edge, %land.lhs.true.3.i.i.for.end.i.i_crit_edge, %land.lhs.true.2.i.i.for.end.i.i_crit_edge, %land.lhs.true.i.i.for.end.i.i_crit_edge
  %p.0.lcssa.i.i = phi ptr [ @mii_chip_table, %land.lhs.true.i.i.for.end.i.i_crit_edge ], [ getelementptr inbounds ([8 x %struct.mii_chip_info], ptr @mii_chip_table, i32 0, i32 2), %land.lhs.true.2.i.i.for.end.i.i_crit_edge ], [ getelementptr inbounds ([8 x %struct.mii_chip_info], ptr @mii_chip_table, i32 0, i32 3), %land.lhs.true.3.i.i.for.end.i.i_crit_edge ], [ getelementptr inbounds ([8 x %struct.mii_chip_info], ptr @mii_chip_table, i32 0, i32 4), %land.lhs.true.4.i.i.for.end.i.i_crit_edge ], [ getelementptr inbounds ([8 x %struct.mii_chip_info], ptr @mii_chip_table, i32 0, i32 5), %land.lhs.true.5.i.i.for.end.i.i_crit_edge ], [ getelementptr inbounds ([8 x %struct.mii_chip_info], ptr @mii_chip_table, i32 0, i32 6), %land.lhs.true.6.i.i.for.end.i.i_crit_edge ], [ getelementptr inbounds ([8 x %struct.mii_chip_info], ptr @mii_chip_table, i32 0, i32 7, i32 0), %for.inc.6.i.i ], [ getelementptr inbounds ([8 x %struct.mii_chip_info], ptr @mii_chip_table, i32 0, i32 1), %for.end.fold.split.i.i ]
  %.lcssa.i.i = phi i8 [ 2, %land.lhs.true.i.i.for.end.i.i_crit_edge ], [ 2, %land.lhs.true.2.i.i.for.end.i.i_crit_edge ], [ 2, %land.lhs.true.3.i.i.for.end.i.i_crit_edge ], [ 2, %land.lhs.true.4.i.i.for.end.i.i_crit_edge ], [ 2, %land.lhs.true.5.i.i.for.end.i.i_crit_edge ], [ 2, %land.lhs.true.6.i.i.for.end.i.i_crit_edge ], [ 0, %for.inc.6.i.i ], [ 2, %for.end.fold.split.i.i ]
  %arrayidx22.i.i = getelementptr %struct.mii_chip_info, ptr %p.0.lcssa.i.i, i32 0, i32 1, i32 1
  %197 = ptrtoint ptr %arrayidx22.i.i to i32
  call void @__asan_load2_noabort(i32 %197)
  %198 = load i16, ptr %arrayidx22.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %198)
  %tobool23.not.i.i = icmp eq i16 %198, 0
  %type41.i.i = getelementptr inbounds %struct.sis190_phy, ptr %call7.i.i, i32 0, i32 4
  br i1 %tobool23.not.i.i, label %if.else.i.i, label %if.then24.i.i

if.then24.i.i:                                    ; preds = %for.end.i.i
  %199 = ptrtoint ptr %type41.i.i to i32
  call void @__asan_store1_noabort(i32 %199)
  store i8 %.lcssa.i.i, ptr %type41.i.i, align 2
  %feature.i.i = getelementptr inbounds %struct.mii_chip_info, ptr %p.0.lcssa.i.i, i32 0, i32 3
  %200 = ptrtoint ptr %feature.i.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %feature.i.i, align 4
  %202 = ptrtoint ptr %features.i.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %features.i.i, align 4
  %or.i.i = or i32 %203, %201
  store i32 %or.i.i, ptr %features.i.i, align 4
  %204 = ptrtoint ptr %msg_enable.i.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %msg_enable.i.i, align 4
  %and35.i.i = and i32 %205, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35.i.i)
  %tobool36.not.i.i = icmp eq i32 %and35.i.i, 0
  br i1 %tobool36.not.i.i, label %if.then24.i.i.sis190_init_phy.exit.i_crit_edge, label %do.end.i.i87

if.then24.i.i.sis190_init_phy.exit.i_crit_edge:   ; preds = %if.then24.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sis190_init_phy.exit.i

do.end.i.i87:                                     ; preds = %if.then24.i.i
  %206 = ptrtoint ptr %pci_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %pci_dev.i.i, align 4
  %init_name.i.i.i.i86 = getelementptr inbounds %struct.pci_dev, ptr %207, i32 0, i32 44, i32 3
  %208 = ptrtoint ptr %init_name.i.i.i.i86 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %init_name.i.i.i.i86, align 8
  %tobool.not.i.i15.i.i = icmp eq ptr %209, null
  br i1 %tobool.not.i.i15.i.i, label %if.end.i.i16.i.i, label %do.end.i.i87.pci_name.exit.i.i90_crit_edge

do.end.i.i87.pci_name.exit.i.i90_crit_edge:       ; preds = %do.end.i.i87
  call void @__sanitizer_cov_trace_pc() #16
  br label %pci_name.exit.i.i90

if.end.i.i16.i.i:                                 ; preds = %do.end.i.i87
  call void @__sanitizer_cov_trace_pc() #16
  %dev.i.i.i88 = getelementptr inbounds %struct.pci_dev, ptr %207, i32 0, i32 44
  %210 = ptrtoint ptr %dev.i.i.i88 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %dev.i.i.i88, align 4
  br label %pci_name.exit.i.i90

pci_name.exit.i.i90:                              ; preds = %if.end.i.i16.i.i, %do.end.i.i87.pci_name.exit.i.i90_crit_edge
  %retval.0.i.i.i.i89 = phi ptr [ %211, %if.end.i.i16.i.i ], [ %209, %do.end.i.i87.pci_name.exit.i.i90_crit_edge ]
  %212 = ptrtoint ptr %p.0.lcssa.i.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %p.0.lcssa.i.i, align 4
  %call39.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65, ptr noundef %retval.0.i.i.i.i89, ptr noundef %213, i32 noundef %phy_id.098.i) #17
  br label %sis190_init_phy.exit.i

if.else.i.i:                                      ; preds = %for.end.i.i
  %214 = ptrtoint ptr %type41.i.i to i32
  call void @__asan_store1_noabort(i32 %214)
  store i8 0, ptr %type41.i.i, align 2
  %215 = ptrtoint ptr %msg_enable.i.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %msg_enable.i.i, align 4
  %and43.i.i = and i32 %216, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43.i.i)
  %tobool44.not.i.i = icmp eq i32 %and43.i.i, 0
  br i1 %tobool44.not.i.i, label %if.else.i.i.sis190_init_phy.exit.i_crit_edge, label %do.end48.i.i

if.else.i.i.sis190_init_phy.exit.i_crit_edge:     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sis190_init_phy.exit.i

do.end48.i.i:                                     ; preds = %if.else.i.i
  %217 = ptrtoint ptr %pci_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %pci_dev.i.i, align 4
  %init_name.i.i17.i.i = getelementptr inbounds %struct.pci_dev, ptr %218, i32 0, i32 44, i32 3
  %219 = ptrtoint ptr %init_name.i.i17.i.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %init_name.i.i17.i.i, align 8
  %tobool.not.i.i18.i.i = icmp eq ptr %220, null
  br i1 %tobool.not.i.i18.i.i, label %if.end.i.i20.i.i, label %do.end48.i.i.pci_name.exit22.i.i_crit_edge

do.end48.i.i.pci_name.exit22.i.i_crit_edge:       ; preds = %do.end48.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %pci_name.exit22.i.i

if.end.i.i20.i.i:                                 ; preds = %do.end48.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %dev.i19.i.i = getelementptr inbounds %struct.pci_dev, ptr %218, i32 0, i32 44
  %221 = ptrtoint ptr %dev.i19.i.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %dev.i19.i.i, align 4
  br label %pci_name.exit22.i.i

pci_name.exit22.i.i:                              ; preds = %if.end.i.i20.i.i, %do.end48.i.i.pci_name.exit22.i.i_crit_edge
  %retval.0.i.i21.i.i = phi ptr [ %222, %if.end.i.i20.i.i ], [ %220, %do.end48.i.i.pci_name.exit22.i.i_crit_edge ]
  %conv54.i.i = zext i16 %193 to i32
  %223 = and i32 %shr.i13.i.i, 65520
  %call59.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68, ptr noundef %retval.0.i.i21.i.i, i32 noundef %conv54.i.i, i32 noundef %223, i32 noundef %phy_id.098.i) #17
  br label %sis190_init_phy.exit.i

sis190_init_phy.exit.i:                           ; preds = %pci_name.exit22.i.i, %if.else.i.i.sis190_init_phy.exit.i_crit_edge, %pci_name.exit.i.i90, %if.then24.i.i.sis190_init_phy.exit.i_crit_edge
  %224 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %call7.i.i, align 8
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %first_phy.i, ptr noundef nonnull %call7.i.i, ptr noundef %225) #14
  br i1 %call.i.i.i, label %if.end.i.i.i91, label %sis190_init_phy.exit.i.for.inc.i_crit_edge

sis190_init_phy.exit.i.for.inc.i_crit_edge:       ; preds = %sis190_init_phy.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

if.end.i.i.i91:                                   ; preds = %sis190_init_phy.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %225, i32 0, i32 1
  %226 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %226)
  store ptr %first_phy.i, ptr %prev1.i.i.i, align 4
  %227 = ptrtoint ptr %first_phy.i to i32
  call void @__asan_store4_noabort(i32 %227)
  store ptr %225, ptr %first_phy.i, align 4
  %228 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %228)
  store ptr %call7.i.i, ptr %prev.i.i, align 4
  %229 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %229)
  store volatile ptr %first_phy.i, ptr %call7.i.i, align 8
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i.i.i91, %sis190_init_phy.exit.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge142
  %inc.i = add nuw nsw i32 %phy_id.098.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 32
  br i1 %exitcond.not.i, label %for.end.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i
  %230 = ptrtoint ptr %first_phy.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load volatile ptr, ptr %first_phy.i, align 4
  %cmp.i.not.i = icmp eq ptr %231, %first_phy.i
  br i1 %cmp.i.not.i, label %if.then17.i93, label %for.body.lr.ph.i.i

if.then17.i93:                                    ; preds = %for.end.i
  %232 = ptrtoint ptr %msg_enable.i.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load i32, ptr %msg_enable.i.i, align 4
  %and.i92 = and i32 %233, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i92)
  %tobool18.not.i = icmp eq i32 %and.i92, 0
  br i1 %tobool18.not.i, label %if.then17.i93.err_release_board_crit_edge, label %do.end.i96

if.then17.i93.err_release_board_crit_edge:        ; preds = %if.then17.i93
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_release_board

do.end.i96:                                       ; preds = %if.then17.i93
  %234 = ptrtoint ptr %pci_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %pci_dev.i.i, align 4
  %init_name.i.i.i94 = getelementptr inbounds %struct.pci_dev, ptr %235, i32 0, i32 44, i32 3
  %236 = ptrtoint ptr %init_name.i.i.i94 to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %init_name.i.i.i94, align 8
  %tobool.not.i.i.i95 = icmp eq ptr %237, null
  br i1 %tobool.not.i.i.i95, label %if.end.i.i55.i, label %do.end.i96.pci_name.exit.i98_crit_edge

do.end.i96.pci_name.exit.i98_crit_edge:           ; preds = %do.end.i96
  call void @__sanitizer_cov_trace_pc() #16
  br label %pci_name.exit.i98

if.end.i.i55.i:                                   ; preds = %do.end.i96
  call void @__sanitizer_cov_trace_pc() #16
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %235, i32 0, i32 44
  %238 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %dev.i.i, align 4
  br label %pci_name.exit.i98

pci_name.exit.i98:                                ; preds = %if.end.i.i55.i, %do.end.i96.pci_name.exit.i98_crit_edge
  %retval.0.i.i.i97 = phi ptr [ %239, %if.end.i.i55.i ], [ %237, %do.end.i96.pci_name.exit.i98_crit_edge ]
  %call21.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, ptr noundef %retval.0.i.i.i97) #17
  br label %err_release_board

for.body.lr.ph.i.i:                               ; preds = %for.end.i
  %240 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i.i56.i = getelementptr i8, ptr %241, i32 68
  br label %for.body.i57.i

for.body.i57.i:                                   ; preds = %for.inc.i.i.for.body.i57.i_crit_edge, %for.body.lr.ph.i.i
  %phy.046.i.i = phi ptr [ %231, %for.body.lr.ph.i.i ], [ %phy.0.i.i, %for.inc.i.i.for.body.i57.i_crit_edge ]
  %phy_home.045.i.i = phi ptr [ null, %for.body.lr.ph.i.i ], [ %phy_home.1.i.i, %for.inc.i.i.for.body.i57.i_crit_edge ]
  %phy_default.044.i.i = phi ptr [ null, %for.body.lr.ph.i.i ], [ %phy_default.1.i.i, %for.inc.i.i.for.body.i57.i_crit_edge ]
  %phy_lan.043.i.i = phi ptr [ null, %for.body.lr.ph.i.i ], [ %phy_lan.1.i.i, %for.inc.i.i.for.body.i57.i_crit_edge ]
  %phy_id.i.i = getelementptr inbounds %struct.sis190_phy, ptr %phy.046.i.i, i32 0, i32 1
  %242 = ptrtoint ptr %phy_id.i.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load i32, ptr %phy_id.i.i, align 4
  %call3.i.i99 = call fastcc zeroext i16 @mdio_read_latched(ptr noundef %241, i32 noundef %243) #14
  %244 = and i16 %call3.i.i99, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %244)
  %tobool.not.i.i100 = icmp ne i16 %244, 0
  %tobool4.not.i.i101 = icmp eq ptr %phy_default.044.i.i, null
  %or.cond.i.i = select i1 %tobool.not.i.i100, i1 %tobool4.not.i.i101, i1 false
  br i1 %or.cond.i.i, label %land.lhs.true5.i.i, label %for.body.i57.i.if.else.i60.i_crit_edge

for.body.i57.i.if.else.i60.i_crit_edge:           ; preds = %for.body.i57.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else.i60.i

land.lhs.true5.i.i:                               ; preds = %for.body.i57.i
  %type.i.i = getelementptr inbounds %struct.sis190_phy, ptr %phy.046.i.i, i32 0, i32 4
  %245 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load1_noabort(i32 %245)
  %246 = load i8, ptr %type.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %246)
  %cmp7.not.i.i = icmp eq i8 %246, 0
  br i1 %cmp7.not.i.i, label %land.lhs.true5.i.i.if.else.i60.i_crit_edge, label %land.lhs.true5.i.i.for.inc.i.i_crit_edge

land.lhs.true5.i.i.for.inc.i.i_crit_edge:         ; preds = %land.lhs.true5.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i.i

land.lhs.true5.i.i.if.else.i60.i_crit_edge:       ; preds = %land.lhs.true5.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else.i60.i

if.else.i60.i:                                    ; preds = %land.lhs.true5.i.i.if.else.i60.i_crit_edge, %for.body.i57.i.if.else.i60.i_crit_edge
  %247 = ptrtoint ptr %phy_id.i.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load i32, ptr %phy_id.i.i, align 4
  %shl1.i.i58.i = shl i32 %248, 6
  %or2.i.i59.i = or i32 %shl1.i.i58.i, 16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !220
  call void @arm_heavy_mb() #14
  %249 = call i32 @llvm.bswap.i32(i32 %or2.i.i59.i) #14
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i56.i, i32 %249) #14, !srcloc !211
  call void @msleep(i32 noundef 1) #14
  br label %for.body.i.i.i63.i

for.body.i.i.i63.i:                               ; preds = %if.end.i.i.i66.i.for.body.i.i.i63.i_crit_edge, %if.else.i60.i
  %i.015.i.i.i61.i = phi i32 [ 0, %if.else.i60.i ], [ %inc.i.i.i64.i, %if.end.i.i.i66.i.for.body.i.i.i63.i_crit_edge ]
  %250 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i56.i) #14, !srcloc !208
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !221
  %251 = and i32 %250, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %251)
  %tobool.not.i.i.i62.i = icmp eq i32 %251, 0
  br i1 %tobool.not.i.i.i62.i, label %for.body.i.i.i63.i.mdio_read.exit.i69.i_crit_edge, label %if.end.i.i.i66.i

for.body.i.i.i63.i.mdio_read.exit.i69.i_crit_edge: ; preds = %for.body.i.i.i63.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %mdio_read.exit.i69.i

if.end.i.i.i66.i:                                 ; preds = %for.body.i.i.i63.i
  call void @msleep(i32 noundef 1) #14
  %inc.i.i.i64.i = add nuw nsw i32 %i.015.i.i.i61.i, 1
  %exitcond.not.i.i.i65.i = icmp eq i32 %inc.i.i.i64.i, 100
  br i1 %exitcond.not.i.i.i65.i, label %do.end7.i.i.i68.i, label %if.end.i.i.i66.i.for.body.i.i.i63.i_crit_edge

if.end.i.i.i66.i.for.body.i.i.i63.i_crit_edge:    ; preds = %if.end.i.i.i66.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i.i63.i

do.end7.i.i.i68.i:                                ; preds = %if.end.i.i.i66.i
  call void @__sanitizer_cov_trace_pc() #16
  %call9.i.i.i67.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51) #17
  br label %mdio_read.exit.i69.i

mdio_read.exit.i69.i:                             ; preds = %do.end7.i.i.i68.i, %for.body.i.i.i63.i.mdio_read.exit.i69.i_crit_edge
  %252 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i56.i) #14, !srcloc !208
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !222
  %253 = and i32 %252, 65515
  %254 = ptrtoint ptr %phy_id.i.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load i32, ptr %phy_id.i.i, align 4
  %shl1.i1.i.i = shl i32 %255, 6
  %256 = or i32 %253, 805306388
  %257 = call i32 @llvm.bswap.i32(i32 %256) #14
  %or4.i.i.i = or i32 %257, %shl1.i1.i.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !220
  call void @arm_heavy_mb() #14
  %258 = call i32 @llvm.bswap.i32(i32 %or4.i.i.i) #14
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i56.i, i32 %258) #14, !srcloc !211
  call void @msleep(i32 noundef 1) #14
  br label %for.body.i.i6.i.i

for.body.i.i6.i.i:                                ; preds = %if.end.i.i9.i.i.for.body.i.i6.i.i_crit_edge, %mdio_read.exit.i69.i
  %i.015.i.i4.i.i = phi i32 [ 0, %mdio_read.exit.i69.i ], [ %inc.i.i7.i.i, %if.end.i.i9.i.i.for.body.i.i6.i.i_crit_edge ]
  %259 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i56.i) #14, !srcloc !208
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !221
  %260 = and i32 %259, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %260)
  %tobool.not.i.i5.i.i = icmp eq i32 %260, 0
  br i1 %tobool.not.i.i5.i.i, label %for.body.i.i6.i.i.mdio_write.exit.i.i_crit_edge, label %if.end.i.i9.i.i

for.body.i.i6.i.i.mdio_write.exit.i.i_crit_edge:  ; preds = %for.body.i.i6.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %mdio_write.exit.i.i

if.end.i.i9.i.i:                                  ; preds = %for.body.i.i6.i.i
  call void @msleep(i32 noundef 1) #14
  %inc.i.i7.i.i = add nuw nsw i32 %i.015.i.i4.i.i, 1
  %exitcond.not.i.i8.i.i = icmp eq i32 %inc.i.i7.i.i, 100
  br i1 %exitcond.not.i.i8.i.i, label %do.end7.i.i11.i.i, label %if.end.i.i9.i.i.for.body.i.i6.i.i_crit_edge

if.end.i.i9.i.i.for.body.i.i6.i.i_crit_edge:      ; preds = %if.end.i.i9.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i6.i.i

do.end7.i.i11.i.i:                                ; preds = %if.end.i.i9.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %call9.i.i10.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51) #17
  br label %mdio_write.exit.i.i

mdio_write.exit.i.i:                              ; preds = %do.end7.i.i11.i.i, %for.body.i.i6.i.i.mdio_write.exit.i.i_crit_edge
  %type15.i.i = getelementptr inbounds %struct.sis190_phy, ptr %phy.046.i.i, i32 0, i32 4
  %261 = ptrtoint ptr %type15.i.i to i32
  call void @__asan_load1_noabort(i32 %261)
  %262 = load i8, ptr %type15.i.i, align 2
  %263 = zext i8 %262 to i64
  call void @__sanitizer_cov_trace_switch(i64 %263, ptr @__sancov_gen_cov_switch_values.85)
  switch i8 %262, label %for.inc.fold.split.i.i [
    i8 1, label %mdio_write.exit.i.i.for.inc.i.i_crit_edge
    i8 2, label %if.then25.i.i
  ]

mdio_write.exit.i.i.for.inc.i.i_crit_edge:        ; preds = %mdio_write.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i.i

if.then25.i.i:                                    ; preds = %mdio_write.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i.i

for.inc.fold.split.i.i:                           ; preds = %mdio_write.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %for.inc.fold.split.i.i, %if.then25.i.i, %mdio_write.exit.i.i.for.inc.i.i_crit_edge, %land.lhs.true5.i.i.for.inc.i.i_crit_edge
  %phy_lan.1.i.i = phi ptr [ %phy.046.i.i, %if.then25.i.i ], [ %phy_lan.043.i.i, %land.lhs.true5.i.i.for.inc.i.i_crit_edge ], [ %phy_lan.043.i.i, %mdio_write.exit.i.i.for.inc.i.i_crit_edge ], [ %phy_lan.043.i.i, %for.inc.fold.split.i.i ]
  %phy_default.1.i.i = phi ptr [ %phy_default.044.i.i, %if.then25.i.i ], [ %phy.046.i.i, %land.lhs.true5.i.i.for.inc.i.i_crit_edge ], [ %phy_default.044.i.i, %mdio_write.exit.i.i.for.inc.i.i_crit_edge ], [ %phy_default.044.i.i, %for.inc.fold.split.i.i ]
  %phy_home.1.i.i = phi ptr [ %phy_home.045.i.i, %if.then25.i.i ], [ %phy_home.045.i.i, %land.lhs.true5.i.i.for.inc.i.i_crit_edge ], [ %phy.046.i.i, %mdio_write.exit.i.i.for.inc.i.i_crit_edge ], [ %phy_home.045.i.i, %for.inc.fold.split.i.i ]
  %264 = ptrtoint ptr %phy.046.i.i to i32
  call void @__asan_load4_noabort(i32 %264)
  %phy.0.i.i = load ptr, ptr %phy.046.i.i, align 4
  %cmp.not.i70.i = icmp eq ptr %phy.0.i.i, %first_phy.i
  br i1 %cmp.not.i70.i, label %for.end.i71.i, label %for.inc.i.i.for.body.i57.i_crit_edge

for.inc.i.i.for.body.i57.i_crit_edge:             ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i57.i

for.end.i71.i:                                    ; preds = %for.inc.i.i
  %mii_if1.i.i = getelementptr i8, ptr %dev.0.i, i32 3004
  %tobool33.not.i.i = icmp eq ptr %phy_default.1.i.i, null
  br i1 %tobool33.not.i.i, label %if.then34.i.i, label %for.end.i71.i.if.end48.i.i_crit_edge

for.end.i71.i.if.end48.i.i_crit_edge:             ; preds = %for.end.i71.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end48.i.i

if.then34.i.i:                                    ; preds = %for.end.i71.i
  %tobool35.not.i.i = icmp eq ptr %phy_home.1.i.i, null
  br i1 %tobool35.not.i.i, label %if.else37.i.i, label %if.then34.i.i.if.end48.i.i_crit_edge

if.then34.i.i.if.end48.i.i_crit_edge:             ; preds = %if.then34.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end48.i.i

if.else37.i.i:                                    ; preds = %if.then34.i.i
  %tobool38.not.i.i = icmp eq ptr %phy_lan.1.i.i, null
  br i1 %tobool38.not.i.i, label %if.else40.i.i, label %if.else37.i.i.if.end48.i.i_crit_edge

if.else37.i.i.if.end48.i.i_crit_edge:             ; preds = %if.else37.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end48.i.i

if.else40.i.i:                                    ; preds = %if.else37.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %265 = ptrtoint ptr %first_phy.i to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %first_phy.i, align 4
  br label %if.end48.i.i

if.end48.i.i:                                     ; preds = %if.else40.i.i, %if.else37.i.i.if.end48.i.i_crit_edge, %if.then34.i.i.if.end48.i.i_crit_edge, %for.end.i71.i.if.end48.i.i_crit_edge
  %phy_default.2.i.i = phi ptr [ %phy_default.1.i.i, %for.end.i71.i.if.end48.i.i_crit_edge ], [ %266, %if.else40.i.i ], [ %phy_home.1.i.i, %if.then34.i.i.if.end48.i.i_crit_edge ], [ %phy_lan.1.i.i, %if.else37.i.i.if.end48.i.i_crit_edge ]
  %267 = ptrtoint ptr %mii_if1.i.i to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load i32, ptr %mii_if1.i.i, align 4
  %phy_id50.i.i = getelementptr inbounds %struct.sis190_phy, ptr %phy_default.2.i.i, i32 0, i32 1
  %269 = ptrtoint ptr %phy_id50.i.i to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load i32, ptr %phy_id50.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %268, i32 %270)
  %cmp51.not.i.i = icmp eq i32 %268, %270
  br i1 %cmp51.not.i.i, label %if.end48.i.i.if.end64.i.i_crit_edge, label %if.then53.i.i

if.end48.i.i.if.end64.i.i_crit_edge:              ; preds = %if.end48.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end64.i.i

if.then53.i.i:                                    ; preds = %if.end48.i.i
  %271 = ptrtoint ptr %mii_if1.i.i to i32
  call void @__asan_store4_noabort(i32 %271)
  store i32 %270, ptr %mii_if1.i.i, align 4
  %272 = ptrtoint ptr %msg_enable.i.i to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load i32, ptr %msg_enable.i.i, align 4
  %and56.i.i = and i32 %273, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56.i.i)
  %tobool57.not.i.i = icmp eq i32 %and56.i.i, 0
  br i1 %tobool57.not.i.i, label %if.then53.i.i.if.end64.i.i_crit_edge, label %do.end.i75.i

if.then53.i.i.if.end64.i.i_crit_edge:             ; preds = %if.then53.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end64.i.i

do.end.i75.i:                                     ; preds = %if.then53.i.i
  %274 = ptrtoint ptr %pci_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %pci_dev.i.i, align 4
  %init_name.i.i.i74.i = getelementptr inbounds %struct.pci_dev, ptr %275, i32 0, i32 44, i32 3
  %276 = ptrtoint ptr %init_name.i.i.i74.i to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %init_name.i.i.i74.i, align 8
  %tobool.not.i.i12.i.i = icmp eq ptr %277, null
  br i1 %tobool.not.i.i12.i.i, label %if.end.i.i13.i.i, label %do.end.i75.i.pci_name.exit.i78.i_crit_edge

do.end.i75.i.pci_name.exit.i78.i_crit_edge:       ; preds = %do.end.i75.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %pci_name.exit.i78.i

if.end.i.i13.i.i:                                 ; preds = %do.end.i75.i
  call void @__sanitizer_cov_trace_pc() #16
  %dev.i.i76.i = getelementptr inbounds %struct.pci_dev, ptr %275, i32 0, i32 44
  %278 = ptrtoint ptr %dev.i.i76.i to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %dev.i.i76.i, align 4
  br label %pci_name.exit.i78.i

pci_name.exit.i78.i:                              ; preds = %if.end.i.i13.i.i, %do.end.i75.i.pci_name.exit.i78.i_crit_edge
  %retval.0.i.i.i77.i = phi ptr [ %279, %if.end.i.i13.i.i ], [ %277, %do.end.i75.i.pci_name.exit.i78.i_crit_edge ]
  %call62.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.77, ptr noundef %retval.0.i.i.i77.i, i32 noundef %270) #17
  br label %if.end64.i.i

if.end64.i.i:                                     ; preds = %pci_name.exit.i78.i, %if.then53.i.i.if.end64.i.i_crit_edge, %if.end48.i.i.if.end64.i.i_crit_edge
  %280 = ptrtoint ptr %mii_if1.i.i to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load i32, ptr %mii_if1.i.i, align 4
  %shl1.i14.i.i = shl i32 %281, 6
  %or2.i15.i.i = or i32 %shl1.i14.i.i, 16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !220
  call void @arm_heavy_mb() #14
  %282 = call i32 @llvm.bswap.i32(i32 %or2.i15.i.i) #14
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i56.i, i32 %282) #14, !srcloc !211
  call void @msleep(i32 noundef 1) #14
  br label %for.body.i.i19.i.i

for.body.i.i19.i.i:                               ; preds = %if.end.i.i22.i.i.for.body.i.i19.i.i_crit_edge, %if.end64.i.i
  %i.015.i.i17.i.i = phi i32 [ 0, %if.end64.i.i ], [ %inc.i.i20.i.i, %if.end.i.i22.i.i.for.body.i.i19.i.i_crit_edge ]
  %283 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i56.i) #14, !srcloc !208
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !221
  %284 = and i32 %283, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %284)
  %tobool.not.i.i18.i79.i = icmp eq i32 %284, 0
  br i1 %tobool.not.i.i18.i79.i, label %for.body.i.i19.i.i.mdio_read.exit26.i.i_crit_edge, label %if.end.i.i22.i.i

for.body.i.i19.i.i.mdio_read.exit26.i.i_crit_edge: ; preds = %for.body.i.i19.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %mdio_read.exit26.i.i

if.end.i.i22.i.i:                                 ; preds = %for.body.i.i19.i.i
  call void @msleep(i32 noundef 1) #14
  %inc.i.i20.i.i = add nuw nsw i32 %i.015.i.i17.i.i, 1
  %exitcond.not.i.i21.i.i = icmp eq i32 %inc.i.i20.i.i, 100
  br i1 %exitcond.not.i.i21.i.i, label %do.end7.i.i24.i.i, label %if.end.i.i22.i.i.for.body.i.i19.i.i_crit_edge

if.end.i.i22.i.i.for.body.i.i19.i.i_crit_edge:    ; preds = %if.end.i.i22.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i19.i.i

do.end7.i.i24.i.i:                                ; preds = %if.end.i.i22.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %call9.i.i23.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51) #17
  br label %mdio_read.exit26.i.i

mdio_read.exit26.i.i:                             ; preds = %do.end7.i.i24.i.i, %for.body.i.i19.i.i.mdio_read.exit26.i.i_crit_edge
  %285 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i56.i) #14, !srcloc !208
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !222
  %286 = and i32 %285, 65531
  %287 = ptrtoint ptr %mii_if1.i.i to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load i32, ptr %mii_if1.i.i, align 4
  %shl1.i27.i.i = shl i32 %288, 6
  %289 = or i32 %286, 805306368
  %290 = call i32 @llvm.bswap.i32(i32 %289) #14
  %or4.i30.i.i = or i32 %290, %shl1.i27.i.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !220
  call void @arm_heavy_mb() #14
  %291 = call i32 @llvm.bswap.i32(i32 %or4.i30.i.i) #14
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i56.i, i32 %291) #14, !srcloc !211
  call void @msleep(i32 noundef 1) #14
  br label %for.body.i.i34.i.i

for.body.i.i34.i.i:                               ; preds = %if.end.i.i37.i.i.for.body.i.i34.i.i_crit_edge, %mdio_read.exit26.i.i
  %i.015.i.i32.i.i = phi i32 [ 0, %mdio_read.exit26.i.i ], [ %inc.i.i35.i.i, %if.end.i.i37.i.i.for.body.i.i34.i.i_crit_edge ]
  %292 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i56.i) #14, !srcloc !208
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !221
  %293 = and i32 %292, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %293)
  %tobool.not.i.i33.i.i = icmp eq i32 %293, 0
  br i1 %tobool.not.i.i33.i.i, label %for.body.i.i34.i.i.sis190_default_phy.exit.i_crit_edge, label %if.end.i.i37.i.i

for.body.i.i34.i.i.sis190_default_phy.exit.i_crit_edge: ; preds = %for.body.i.i34.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sis190_default_phy.exit.i

if.end.i.i37.i.i:                                 ; preds = %for.body.i.i34.i.i
  call void @msleep(i32 noundef 1) #14
  %inc.i.i35.i.i = add nuw nsw i32 %i.015.i.i32.i.i, 1
  %exitcond.not.i.i36.i.i = icmp eq i32 %inc.i.i35.i.i, 100
  br i1 %exitcond.not.i.i36.i.i, label %do.end7.i.i39.i.i, label %if.end.i.i37.i.i.for.body.i.i34.i.i_crit_edge

if.end.i.i37.i.i.for.body.i.i34.i.i_crit_edge:    ; preds = %if.end.i.i37.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i34.i.i

do.end7.i.i39.i.i:                                ; preds = %if.end.i.i37.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %call9.i.i38.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51) #17
  br label %sis190_default_phy.exit.i

sis190_default_phy.exit.i:                        ; preds = %do.end7.i.i39.i.i, %for.body.i.i34.i.i.sis190_default_phy.exit.i_crit_edge
  %294 = ptrtoint ptr %mii_if1.i.i to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load i32, ptr %mii_if1.i.i, align 4
  %call74.i.i = call fastcc zeroext i16 @mdio_read_latched(ptr noundef %241, i32 noundef %295) #14
  %296 = ptrtoint ptr %features.i.i to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load i32, ptr %features.i.i, align 4
  %and.i.i102 = and i32 %297, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i102)
  %tobool.not.i81.i = icmp eq i32 %and.i.i102, 0
  br i1 %tobool.not.i81.i, label %sis190_default_phy.exit.i.if.end28_crit_edge, label %if.then.i.i

sis190_default_phy.exit.i.if.end28_crit_edge:     ; preds = %sis190_default_phy.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end28

if.then.i.i:                                      ; preds = %sis190_default_phy.exit.i
  %298 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load ptr, ptr %add.ptr.i, align 4
  %300 = ptrtoint ptr %mii_if1.i.i to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load i32, ptr %mii_if1.i.i, align 4
  %and3.i.i = and i32 %297, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i.i)
  %tobool4.not.i82.i = icmp eq i32 %and3.i.i, 0
  %shl1.i.i83.i = shl i32 %301, 6
  %or.i.i.i103 = select i1 %tobool4.not.i82.i, i32 -2138056656, i32 -2138318800
  %or4.i.i84.i = or i32 %shl1.i.i83.i, %or.i.i.i103
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !220
  call void @arm_heavy_mb() #14
  %302 = call i32 @llvm.bswap.i32(i32 %or4.i.i84.i) #14
  %add.ptr.i.i.i85.i = getelementptr i8, ptr %299, i32 68
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i85.i, i32 %302) #14, !srcloc !211
  call void @msleep(i32 noundef 1) #14
  br label %for.body.i.i.i88.i

for.body.i.i.i88.i:                               ; preds = %if.end.i.i.i91.i.for.body.i.i.i88.i_crit_edge, %if.then.i.i
  %i.015.i.i.i86.i = phi i32 [ 0, %if.then.i.i ], [ %inc.i.i.i89.i, %if.end.i.i.i91.i.for.body.i.i.i88.i_crit_edge ]
  %303 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i85.i) #14, !srcloc !208
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !221
  %304 = and i32 %303, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %304)
  %tobool.not.i.i.i87.i = icmp eq i32 %304, 0
  br i1 %tobool.not.i.i.i87.i, label %for.body.i.i.i88.i.mdio_write.exit.i94.i_crit_edge, label %if.end.i.i.i91.i

for.body.i.i.i88.i.mdio_write.exit.i94.i_crit_edge: ; preds = %for.body.i.i.i88.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %mdio_write.exit.i94.i

if.end.i.i.i91.i:                                 ; preds = %for.body.i.i.i88.i
  call void @msleep(i32 noundef 1) #14
  %inc.i.i.i89.i = add nuw nsw i32 %i.015.i.i.i86.i, 1
  %exitcond.not.i.i.i90.i = icmp eq i32 %inc.i.i.i89.i, 100
  br i1 %exitcond.not.i.i.i90.i, label %do.end7.i.i.i93.i, label %if.end.i.i.i91.i.for.body.i.i.i88.i_crit_edge

if.end.i.i.i91.i.for.body.i.i.i88.i_crit_edge:    ; preds = %if.end.i.i.i91.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i.i88.i

do.end7.i.i.i93.i:                                ; preds = %if.end.i.i.i91.i
  call void @__sanitizer_cov_trace_pc() #16
  %call9.i.i.i92.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51) #17
  br label %mdio_write.exit.i94.i

mdio_write.exit.i94.i:                            ; preds = %do.end7.i.i.i93.i, %for.body.i.i.i88.i.mdio_write.exit.i94.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %305 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %305(i32 noundef 42949600) #14
  %or.i18.i.i = select i1 %tobool4.not.i82.i, i32 207659056, i32 216113200
  %or4.i20.i.i = or i32 %shl1.i.i83.i, %or.i18.i.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !220
  call void @arm_heavy_mb() #14
  %306 = call i32 @llvm.bswap.i32(i32 %or4.i20.i.i) #14
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i85.i, i32 %306) #14, !srcloc !211
  call void @msleep(i32 noundef 1) #14
  br label %for.body.i.i24.i.i

for.body.i.i24.i.i:                               ; preds = %if.end.i.i27.i.i.for.body.i.i24.i.i_crit_edge, %mdio_write.exit.i94.i
  %i.015.i.i22.i.i = phi i32 [ 0, %mdio_write.exit.i94.i ], [ %inc.i.i25.i.i, %if.end.i.i27.i.i.for.body.i.i24.i.i_crit_edge ]
  %307 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i85.i) #14, !srcloc !208
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !221
  %308 = and i32 %307, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %308)
  %tobool.not.i.i23.i.i = icmp eq i32 %308, 0
  br i1 %tobool.not.i.i23.i.i, label %for.body.i.i24.i.i.mdio_write.exit30.i.i_crit_edge, label %if.end.i.i27.i.i

for.body.i.i24.i.i.mdio_write.exit30.i.i_crit_edge: ; preds = %for.body.i.i24.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %mdio_write.exit30.i.i

if.end.i.i27.i.i:                                 ; preds = %for.body.i.i24.i.i
  call void @msleep(i32 noundef 1) #14
  %inc.i.i25.i.i = add nuw nsw i32 %i.015.i.i22.i.i, 1
  %exitcond.not.i.i26.i.i = icmp eq i32 %inc.i.i25.i.i, 100
  br i1 %exitcond.not.i.i26.i.i, label %do.end7.i.i29.i.i, label %if.end.i.i27.i.i.for.body.i.i24.i.i_crit_edge

if.end.i.i27.i.i.for.body.i.i24.i.i_crit_edge:    ; preds = %if.end.i.i27.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i24.i.i

do.end7.i.i29.i.i:                                ; preds = %if.end.i.i27.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %call9.i.i28.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51) #17
  br label %mdio_write.exit30.i.i

mdio_write.exit30.i.i:                            ; preds = %do.end7.i.i29.i.i, %for.body.i.i24.i.i.mdio_write.exit30.i.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %309 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %309(i32 noundef 42949600) #14
  br label %if.end28

if.end28:                                         ; preds = %mdio_write.exit30.i.i, %sis190_default_phy.exit.i.if.end28_crit_edge
  %dev25.i = getelementptr i8, ptr %dev.0.i, i32 3024
  %310 = ptrtoint ptr %dev25.i to i32
  call void @__asan_store4_noabort(i32 %310)
  store ptr %dev.0.i, ptr %dev25.i, align 4
  %mdio_read.i = getelementptr i8, ptr %dev.0.i, i32 3028
  %311 = ptrtoint ptr %mdio_read.i to i32
  call void @__asan_store4_noabort(i32 %311)
  store ptr @__mdio_read, ptr %mdio_read.i, align 4
  %mdio_write.i = getelementptr i8, ptr %dev.0.i, i32 3032
  %312 = ptrtoint ptr %mdio_write.i to i32
  call void @__asan_store4_noabort(i32 %312)
  store ptr @__mdio_write, ptr %mdio_write.i, align 4
  %phy_id_mask.i = getelementptr i8, ptr %dev.0.i, i32 3012
  %313 = ptrtoint ptr %phy_id_mask.i to i32
  call void @__asan_store4_noabort(i32 %313)
  store i32 31, ptr %phy_id_mask.i, align 4
  %reg_num_mask.i = getelementptr i8, ptr %dev.0.i, i32 3016
  %314 = ptrtoint ptr %reg_num_mask.i to i32
  call void @__asan_store4_noabort(i32 %314)
  store i32 31, ptr %reg_num_mask.i, align 4
  %call29 = call i32 @register_netdev(ptr noundef %dev.0.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %cmp30 = icmp slt i32 %call29, 0
  br i1 %cmp30, label %err_remove_mii, label %if.end32

if.end32:                                         ; preds = %if.end28
  %315 = ptrtoint ptr %msg_enable.i.i to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load i32, ptr %msg_enable.i.i, align 4
  %and33 = and i32 %316, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  br i1 %tobool34.not, label %if.end32.if.end39_crit_edge, label %if.then35

if.end32.if.end39_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end39

if.then35:                                        ; preds = %if.end32
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 3
  %317 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i104 = icmp eq ptr %318, null
  br i1 %tobool.not.i.i104, label %if.end.i.i105, label %if.then35.pci_name.exit_crit_edge

if.then35.pci_name.exit_crit_edge:                ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #16
  br label %pci_name.exit

if.end.i.i105:                                    ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #16
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %319 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load ptr, ptr %dev.i, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i105, %if.then35.pci_name.exit_crit_edge
  %retval.0.i.i106 = phi ptr [ %320, %if.end.i.i105 ], [ %318, %if.then35.pci_name.exit_crit_edge ]
  %driver_data = getelementptr inbounds %struct.pci_device_id, ptr %ent, i32 0, i32 6
  %321 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load i32, ptr %driver_data, align 4
  %arrayidx = getelementptr [2 x %struct.anon.123], ptr @sis_chip_info, i32 0, i32 %322
  %323 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load ptr, ptr %arrayidx, align 4
  %irq = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 46
  %325 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load i32, ptr %irq, align 4
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %dev.0.i, i32 0, i32 86
  %327 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load ptr, ptr %dev_addr, align 64
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %dev.0.i, ptr noundef nonnull @.str.9, ptr noundef %retval.0.i.i106, ptr noundef %324, ptr noundef %56, i32 noundef %326, ptr noundef %328) #17
  %329 = ptrtoint ptr %features.i.i to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load i32, ptr %features.i.i, align 4
  %and37 = and i32 %330, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  %cond = select i1 %tobool38.not, ptr @.str.12, ptr @.str.11
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %dev.0.i, ptr noundef nonnull @.str.10, ptr noundef nonnull %cond) #17
  br label %if.end39

if.end39:                                         ; preds = %pci_name.exit, %if.end32.if.end39_crit_edge
  call void @netif_carrier_off(ptr noundef %dev.0.i) #14
  %331 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load ptr, ptr %add.ptr.i, align 4
  %333 = ptrtoint ptr %mii_if1.i.i to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load i32, ptr %mii_if1.i.i, align 4
  %335 = ptrtoint ptr %msg_enable.i.i to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load i32, ptr %msg_enable.i.i, align 4
  %and.i109 = and i32 %336, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i109)
  %tobool.not.i110 = icmp eq i32 %and.i109, 0
  br i1 %tobool.not.i110, label %if.end39.do.end.i113_crit_edge, label %if.then.i111

if.end39.do.end.i113_crit_edge:                   ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end.i113

if.then.i111:                                     ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %dev.0.i, ptr noundef nonnull @.str.81) #17
  br label %do.end.i113

do.end.i113:                                      ; preds = %if.then.i111, %if.end39.do.end.i113_crit_edge
  %shl1.i.i = shl i32 %334, 6
  %or2.i.i = or i32 %shl1.i.i, 8208
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !220
  call void @arm_heavy_mb() #14
  %337 = call i32 @llvm.bswap.i32(i32 %or2.i.i) #14
  %add.ptr.i.i.i112 = getelementptr i8, ptr %332, i32 68
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i112, i32 %337) #14, !srcloc !211
  call void @msleep(i32 noundef 1) #14
  br label %for.body.i.i.i115

for.body.i.i.i115:                                ; preds = %if.end.i.i.i118.for.body.i.i.i115_crit_edge, %do.end.i113
  %i.015.i.i.i = phi i32 [ 0, %do.end.i113 ], [ %inc.i.i.i116, %if.end.i.i.i118.for.body.i.i.i115_crit_edge ]
  %338 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i112) #14, !srcloc !208
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !221
  %339 = and i32 %338, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %339)
  %tobool.not.i.i.i114 = icmp eq i32 %339, 0
  br i1 %tobool.not.i.i.i114, label %for.body.i.i.i115.mdio_read.exit.i_crit_edge, label %if.end.i.i.i118

for.body.i.i.i115.mdio_read.exit.i_crit_edge:     ; preds = %for.body.i.i.i115
  call void @__sanitizer_cov_trace_pc() #16
  br label %mdio_read.exit.i

if.end.i.i.i118:                                  ; preds = %for.body.i.i.i115
  call void @msleep(i32 noundef 1) #14
  %inc.i.i.i116 = add nuw nsw i32 %i.015.i.i.i, 1
  %exitcond.not.i.i.i117 = icmp eq i32 %inc.i.i.i116, 100
  br i1 %exitcond.not.i.i.i117, label %do.end7.i.i.i, label %if.end.i.i.i118.for.body.i.i.i115_crit_edge

if.end.i.i.i118.for.body.i.i.i115_crit_edge:      ; preds = %if.end.i.i.i118
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i.i115

do.end7.i.i.i:                                    ; preds = %if.end.i.i.i118
  call void @__sanitizer_cov_trace_pc() #16
  %call9.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51) #17
  br label %mdio_read.exit.i

mdio_read.exit.i:                                 ; preds = %do.end7.i.i.i, %for.body.i.i.i115.mdio_read.exit.i_crit_edge
  %340 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i112) #14, !srcloc !208
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !222
  %341 = shl i32 %340, 8
  %or6.i = and i32 %341, 2031616
  %shl3.i.i = or i32 %shl1.i.i, %or6.i
  %or4.i.i = or i32 %shl3.i.i, 31465520
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !220
  call void @arm_heavy_mb() #14
  %342 = call i32 @llvm.bswap.i32(i32 %or4.i.i) #14
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i112, i32 %342) #14, !srcloc !211
  call void @msleep(i32 noundef 1) #14
  br label %for.body.i.i22.i

for.body.i.i22.i:                                 ; preds = %if.end.i.i25.i.for.body.i.i22.i_crit_edge, %mdio_read.exit.i
  %i.015.i.i20.i = phi i32 [ 0, %mdio_read.exit.i ], [ %inc.i.i23.i, %if.end.i.i25.i.for.body.i.i22.i_crit_edge ]
  %343 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i112) #14, !srcloc !208
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !221
  %344 = and i32 %343, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %344)
  %tobool.not.i.i21.i = icmp eq i32 %344, 0
  br i1 %tobool.not.i.i21.i, label %for.body.i.i22.i.mdio_write.exit.i_crit_edge, label %if.end.i.i25.i

for.body.i.i22.i.mdio_write.exit.i_crit_edge:     ; preds = %for.body.i.i22.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %mdio_write.exit.i

if.end.i.i25.i:                                   ; preds = %for.body.i.i22.i
  call void @msleep(i32 noundef 1) #14
  %inc.i.i23.i = add nuw nsw i32 %i.015.i.i20.i, 1
  %exitcond.not.i.i24.i = icmp eq i32 %inc.i.i23.i, 100
  br i1 %exitcond.not.i.i24.i, label %do.end7.i.i27.i, label %if.end.i.i25.i.for.body.i.i22.i_crit_edge

if.end.i.i25.i.for.body.i.i22.i_crit_edge:        ; preds = %if.end.i.i25.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i22.i

do.end7.i.i27.i:                                  ; preds = %if.end.i.i25.i
  call void @__sanitizer_cov_trace_pc() #16
  %call9.i.i26.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51) #17
  br label %mdio_write.exit.i

mdio_write.exit.i:                                ; preds = %do.end7.i.i27.i, %for.body.i.i22.i.mdio_write.exit.i_crit_edge
  %or4.i31.i = or i32 %shl1.i.i, 33572912
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !220
  call void @arm_heavy_mb() #14
  %345 = call i32 @llvm.bswap.i32(i32 %or4.i31.i) #14
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i112, i32 %345) #14, !srcloc !211
  call void @msleep(i32 noundef 1) #14
  br label %for.body.i.i35.i

for.body.i.i35.i:                                 ; preds = %if.end.i.i38.i.for.body.i.i35.i_crit_edge, %mdio_write.exit.i
  %i.015.i.i33.i = phi i32 [ 0, %mdio_write.exit.i ], [ %inc.i.i36.i, %if.end.i.i38.i.for.body.i.i35.i_crit_edge ]
  %346 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i112) #14, !srcloc !208
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !221
  %347 = and i32 %346, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %347)
  %tobool.not.i.i34.i = icmp eq i32 %347, 0
  br i1 %tobool.not.i.i34.i, label %for.body.i.i35.i.mdio_write.exit41.i_crit_edge, label %if.end.i.i38.i

for.body.i.i35.i.mdio_write.exit41.i_crit_edge:   ; preds = %for.body.i.i35.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %mdio_write.exit41.i

if.end.i.i38.i:                                   ; preds = %for.body.i.i35.i
  call void @msleep(i32 noundef 1) #14
  %inc.i.i36.i = add nuw nsw i32 %i.015.i.i33.i, 1
  %exitcond.not.i.i37.i = icmp eq i32 %inc.i.i36.i, 100
  br i1 %exitcond.not.i.i37.i, label %do.end7.i.i40.i, label %if.end.i.i38.i.for.body.i.i35.i_crit_edge

if.end.i.i38.i.for.body.i.i35.i_crit_edge:        ; preds = %if.end.i.i38.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i35.i

do.end7.i.i40.i:                                  ; preds = %if.end.i.i38.i
  call void @__sanitizer_cov_trace_pc() #16
  %call9.i.i39.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51) #17
  br label %mdio_write.exit41.i

mdio_write.exit41.i:                              ; preds = %do.end7.i.i40.i, %for.body.i.i35.i.mdio_write.exit41.i_crit_edge
  %or4.i44.i = or i32 %shl1.i.i, -1845493712
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !220
  call void @arm_heavy_mb() #14
  %348 = call i32 @llvm.bswap.i32(i32 %or4.i44.i) #14
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i112, i32 %348) #14, !srcloc !211
  call void @msleep(i32 noundef 1) #14
  br label %for.body.i.i48.i

for.body.i.i48.i:                                 ; preds = %if.end.i.i51.i.for.body.i.i48.i_crit_edge, %mdio_write.exit41.i
  %i.015.i.i46.i = phi i32 [ 0, %mdio_write.exit41.i ], [ %inc.i.i49.i, %if.end.i.i51.i.for.body.i.i48.i_crit_edge ]
  %349 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i112) #14, !srcloc !208
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !221
  %350 = and i32 %349, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %350)
  %tobool.not.i.i47.i = icmp eq i32 %350, 0
  br i1 %tobool.not.i.i47.i, label %for.body.i.i48.i.out_crit_edge, label %if.end.i.i51.i

for.body.i.i48.i.out_crit_edge:                   ; preds = %for.body.i.i48.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end.i.i51.i:                                   ; preds = %for.body.i.i48.i
  call void @msleep(i32 noundef 1) #14
  %inc.i.i49.i = add nuw nsw i32 %i.015.i.i46.i, 1
  %exitcond.not.i.i50.i = icmp eq i32 %inc.i.i49.i, 100
  br i1 %exitcond.not.i.i50.i, label %do.end7.i.i53.i, label %if.end.i.i51.i.for.body.i.i48.i_crit_edge

if.end.i.i51.i.for.body.i.i48.i_crit_edge:        ; preds = %if.end.i.i51.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i48.i

do.end7.i.i53.i:                                  ; preds = %if.end.i.i51.i
  call void @__sanitizer_cov_trace_pc() #16
  %call9.i.i52.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51) #17
  br label %out

out:                                              ; preds = %err_release_board, %do.end7.i.i53.i, %for.body.i.i48.i.out_crit_edge, %if.then6
  %rc.0 = phi i32 [ %53, %if.then6 ], [ %rc.1, %err_release_board ], [ %call29, %do.end7.i.i53.i ], [ %call29, %for.body.i.i48.i.out_crit_edge ]
  ret i32 %rc.0

err_remove_mii:                                   ; preds = %if.end28
  %351 = ptrtoint ptr %first_phy.i to i32
  call void @__asan_load4_noabort(i32 %351)
  %352 = load ptr, ptr %first_phy.i, align 4
  %cmp.not16.i.i120 = icmp eq ptr %352, %first_phy.i
  br i1 %cmp.not16.i.i120, label %err_remove_mii.err_release_board_crit_edge, label %err_remove_mii.for.body.i.i124_crit_edge

err_remove_mii.for.body.i.i124_crit_edge:         ; preds = %err_remove_mii
  br label %for.body.i.i124

err_remove_mii.err_release_board_crit_edge:       ; preds = %err_remove_mii
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_release_board

for.body.i.i124:                                  ; preds = %for.body.i.i124.for.body.i.i124_crit_edge, %err_remove_mii.for.body.i.i124_crit_edge
  %cur.017.i.i121 = phi ptr [ %next.0.i.i122, %for.body.i.i124.for.body.i.i124_crit_edge ], [ %352, %err_remove_mii.for.body.i.i124_crit_edge ]
  %353 = ptrtoint ptr %cur.017.i.i121 to i32
  call void @__asan_load4_noabort(i32 %353)
  %next.0.i.i122 = load ptr, ptr %cur.017.i.i121, align 4
  call void @kfree(ptr noundef %cur.017.i.i121) #14
  %cmp.not.i.i123 = icmp eq ptr %next.0.i.i122, %first_phy.i
  br i1 %cmp.not.i.i123, label %for.body.i.i124.err_release_board_crit_edge, label %for.body.i.i124.for.body.i.i124_crit_edge

for.body.i.i124.for.body.i.i124_crit_edge:        ; preds = %for.body.i.i124
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i124

for.body.i.i124.err_release_board_crit_edge:      ; preds = %for.body.i.i124
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_release_board

err_release_board:                                ; preds = %for.body.i.i124.err_release_board_crit_edge, %err_remove_mii.err_release_board_crit_edge, %pci_name.exit.i98, %if.then17.i93.err_release_board_crit_edge, %for.body.i.i.err_release_board_crit_edge, %if.then9.i.err_release_board_crit_edge, %sis190_get_mac_addr.exit.thread131, %sis190_get_mac_addr.exit.thread128
  %rc.1 = phi i32 [ -5, %sis190_get_mac_addr.exit.thread128 ], [ -5, %sis190_get_mac_addr.exit.thread131 ], [ %call29, %err_remove_mii.err_release_board_crit_edge ], [ -12, %if.then9.i.err_release_board_crit_edge ], [ -5, %if.then17.i93.err_release_board_crit_edge ], [ -5, %pci_name.exit.i98 ], [ -12, %for.body.i.i.err_release_board_crit_edge ], [ %call29, %for.body.i.i124.err_release_board_crit_edge ]
  %354 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %354)
  %355 = load ptr, ptr %driver_data.i.i, align 4
  %add.ptr.i.i125 = getelementptr i8, ptr %355, i32 2304
  %356 = ptrtoint ptr %add.ptr.i.i125 to i32
  call void @__asan_load4_noabort(i32 %356)
  %357 = load ptr, ptr %add.ptr.i.i125, align 4
  call void @iounmap(ptr noundef %357) #14
  call void @pci_release_regions(ptr noundef %pdev) #14
  call void @pci_disable_device(ptr noundef %pdev) #14
  call void @free_netdev(ptr noundef %355) #14
  br label %out
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sis190_remove_one(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %first_phy.i = getelementptr i8, ptr %1, i32 3036
  %2 = ptrtoint ptr %first_phy.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %first_phy.i, align 4
  %cmp.not16.i.i = icmp eq ptr %3, %first_phy.i
  br i1 %cmp.not16.i.i, label %entry.sis190_mii_remove.exit_crit_edge, label %entry.for.body.i.i_crit_edge

entry.for.body.i.i_crit_edge:                     ; preds = %entry
  br label %for.body.i.i

entry.sis190_mii_remove.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sis190_mii_remove.exit

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %entry.for.body.i.i_crit_edge
  %cur.017.i.i = phi ptr [ %next.0.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %3, %entry.for.body.i.i_crit_edge ]
  %4 = ptrtoint ptr %cur.017.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %next.0.i.i = load ptr, ptr %cur.017.i.i, align 4
  tail call void @kfree(ptr noundef %cur.017.i.i) #14
  %cmp.not.i.i = icmp eq ptr %next.0.i.i, %first_phy.i
  br i1 %cmp.not.i.i, label %for.body.i.i.sis190_mii_remove.exit_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i

for.body.i.i.sis190_mii_remove.exit_crit_edge:    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sis190_mii_remove.exit

sis190_mii_remove.exit:                           ; preds = %for.body.i.i.sis190_mii_remove.exit_crit_edge, %entry.sis190_mii_remove.exit_crit_edge
  %phy_task = getelementptr i8, ptr %1, i32 2908
  %call2 = tail call zeroext i1 @cancel_work_sync(ptr noundef %phy_task) #14
  tail call void @unregister_netdev(ptr noundef %1) #14
  %5 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %driver_data.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %6, i32 2304
  %7 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %add.ptr.i.i, align 4
  tail call void @iounmap(ptr noundef %8) #14
  tail call void @pci_release_regions(ptr noundef %pdev) #14
  tail call void @pci_disable_device(ptr noundef %pdev) #14
  tail call void @free_netdev(ptr noundef %6) #14
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sis190_init_rxfilter(ptr nocapture noundef readonly %dev) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 96
  %2 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr) #14, !srcloc !223
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !224
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !225
  tail call void @arm_heavy_mb() #14
  %3 = and i16 %2, -16
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr, i16 %3) #14, !srcloc !226
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 86
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !227
  tail call void @arm_heavy_mb() #14
  %4 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_addr, align 64
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %5, align 1
  %add.ptr9 = getelementptr i8, ptr %1, i32 98
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr9, i8 %7) #14, !srcloc !215
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !227
  tail call void @arm_heavy_mb() #14
  %8 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev_addr, align 64
  %arrayidx.1 = getelementptr i8, ptr %9, i32 1
  %10 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx.1, align 1
  %add.ptr9.1 = getelementptr i8, ptr %1, i32 99
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr9.1, i8 %11) #14, !srcloc !215
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !227
  tail call void @arm_heavy_mb() #14
  %12 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev_addr, align 64
  %arrayidx.2 = getelementptr i8, ptr %13, i32 2
  %14 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx.2, align 1
  %add.ptr9.2 = getelementptr i8, ptr %1, i32 100
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr9.2, i8 %15) #14, !srcloc !215
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !227
  tail call void @arm_heavy_mb() #14
  %16 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev_addr, align 64
  %arrayidx.3 = getelementptr i8, ptr %17, i32 3
  %18 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx.3, align 1
  %add.ptr9.3 = getelementptr i8, ptr %1, i32 101
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr9.3, i8 %19) #14, !srcloc !215
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !227
  tail call void @arm_heavy_mb() #14
  %20 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev_addr, align 64
  %arrayidx.4 = getelementptr i8, ptr %21, i32 4
  %22 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx.4, align 1
  %add.ptr9.4 = getelementptr i8, ptr %1, i32 102
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr9.4, i8 %23) #14, !srcloc !215
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !227
  tail call void @arm_heavy_mb() #14
  %24 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev_addr, align 64
  %arrayidx.5 = getelementptr i8, ptr %25, i32 5
  %26 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx.5, align 1
  %add.ptr9.5 = getelementptr i8, ptr %1, i32 103
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr9.5, i8 %27) #14, !srcloc !215
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !228
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr, i16 %2) #14, !srcloc !226
  %add.ptr16 = getelementptr i8, ptr %1, i32 40
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr16) #14, !srcloc !208
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !229
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sis190_phy_task(ptr noundef %work) #2 align 64 {
entry:
  %reg31 = alloca [7 x %struct.anon.124], align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -604
  %dev1 = getelementptr i8, ptr %work, i32 -596
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 4
  %mii_if = getelementptr i8, ptr %work, i32 96
  %4 = ptrtoint ptr %mii_if to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mii_if, align 4
  tail call void @rtnl_lock() #14
  %state.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.out_unlock_crit_edge, label %if.end

entry.out_unlock_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_unlock

if.end:                                           ; preds = %entry
  %shl1.i = shl i32 %5, 6
  %or2.i = or i32 %shl1.i, 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !220
  tail call void @arm_heavy_mb() #14
  %8 = tail call i32 @llvm.bswap.i32(i32 %or2.i) #14
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %8) #14, !srcloc !211
  tail call void @msleep(i32 noundef 1) #14
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %if.end.i.i.for.body.i.i_crit_edge, %if.end
  %i.015.i.i = phi i32 [ 0, %if.end ], [ %inc.i.i, %if.end.i.i.for.body.i.i_crit_edge ]
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #14, !srcloc !208
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !221
  %10 = and i32 %9, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i.i = icmp eq i32 %10, 0
  br i1 %tobool.not.i.i, label %for.body.i.i.mdio_read.exit_crit_edge, label %if.end.i.i

for.body.i.i.mdio_read.exit_crit_edge:            ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %mdio_read.exit

if.end.i.i:                                       ; preds = %for.body.i.i
  tail call void @msleep(i32 noundef 1) #14
  %inc.i.i = add nuw nsw i32 %i.015.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 100
  br i1 %exitcond.not.i.i, label %do.end7.i.i, label %if.end.i.i.for.body.i.i_crit_edge

if.end.i.i.for.body.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i

do.end7.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %call9.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51) #17
  br label %mdio_read.exit

mdio_read.exit:                                   ; preds = %do.end7.i.i, %for.body.i.i.mdio_read.exit_crit_edge
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #14, !srcloc !208
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !222
  %12 = and i32 %11, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not = icmp eq i32 %12, 0
  br i1 %tobool.not, label %if.end7, label %if.then5

if.then5:                                         ; preds = %mdio_read.exit
  call void @__sanitizer_cov_trace_pc() #16
  %timer = getelementptr i8, ptr %work, i32 44
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %13 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %13, 10
  %call6 = tail call i32 @mod_timer(ptr noundef %timer, i32 noundef %add) #14
  br label %out_unlock

if.end7:                                          ; preds = %mdio_read.exit
  %call8 = tail call fastcc zeroext i16 @mdio_read_latched(ptr noundef %3, i32 noundef %5)
  %conv9 = zext i16 %call8 to i32
  %and10 = and i32 %conv9, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %land.lhs.true, label %if.end7.if.else_crit_edge

if.end7.if.else_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else

land.lhs.true:                                    ; preds = %if.end7
  %link_status = getelementptr i8, ptr %work, i32 144
  %14 = ptrtoint ptr %link_status to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %link_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %15)
  %cmp.not = icmp eq i32 %15, 2
  br i1 %cmp.not, label %land.lhs.true.if.else_crit_edge, label %if.then13

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else

if.then13:                                        ; preds = %land.lhs.true
  tail call void @netif_carrier_off(ptr noundef %1) #14
  %msg_enable = getelementptr i8, ptr %work, i32 92
  %16 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %msg_enable, align 4
  %and14 = and i32 %17, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %if.then13.do.end_crit_edge, label %if.then16

if.then13.do.end_crit_edge:                       ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

if.then16:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %1, ptr noundef nonnull @.str.40) #17
  br label %do.end

do.end:                                           ; preds = %if.then16, %if.then13.do.end_crit_edge
  %18 = ptrtoint ptr %link_status to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 2, ptr %link_status, align 4
  br label %if.end158

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end7.if.else_crit_edge
  %and20 = and i32 %conv9, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  %link_status151 = getelementptr i8, ptr %work, i32 144
  %19 = ptrtoint ptr %link_status151 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %link_status151, align 4
  br i1 %tobool21.not, label %land.lhs.true150.critedge, label %land.lhs.true22

land.lhs.true22:                                  ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %20)
  %cmp24.not = icmp eq i32 %20, 1
  br i1 %cmp24.not, label %land.lhs.true22.if.end158_crit_edge, label %if.then26

land.lhs.true22.if.end158_crit_edge:              ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end158

if.then26:                                        ; preds = %land.lhs.true22
  call void @llvm.lifetime.start.p0(i64 84, ptr nonnull %reg31) #14
  %21 = call ptr @memcpy(ptr %reg31, ptr @__const.sis190_phy_task.reg31, i32 84)
  %or2.i231 = or i32 %shl1.i, 63504
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !220
  tail call void @arm_heavy_mb() #14
  %22 = tail call i32 @llvm.bswap.i32(i32 %or2.i231) #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %22) #14, !srcloc !211
  tail call void @msleep(i32 noundef 1) #14
  br label %for.body.i.i235

for.body.i.i235:                                  ; preds = %if.end.i.i238.for.body.i.i235_crit_edge, %if.then26
  %i.015.i.i233 = phi i32 [ 0, %if.then26 ], [ %inc.i.i236, %if.end.i.i238.for.body.i.i235_crit_edge ]
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #14, !srcloc !208
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !221
  %24 = and i32 %23, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.not.i.i234 = icmp eq i32 %24, 0
  br i1 %tobool.not.i.i234, label %for.body.i.i235.mdio_read.exit242_crit_edge, label %if.end.i.i238

for.body.i.i235.mdio_read.exit242_crit_edge:      ; preds = %for.body.i.i235
  call void @__sanitizer_cov_trace_pc() #16
  br label %mdio_read.exit242

if.end.i.i238:                                    ; preds = %for.body.i.i235
  tail call void @msleep(i32 noundef 1) #14
  %inc.i.i236 = add nuw nsw i32 %i.015.i.i233, 1
  %exitcond.not.i.i237 = icmp eq i32 %inc.i.i236, 100
  br i1 %exitcond.not.i.i237, label %do.end7.i.i240, label %if.end.i.i238.for.body.i.i235_crit_edge

if.end.i.i238.for.body.i.i235_crit_edge:          ; preds = %if.end.i.i238
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i235

do.end7.i.i240:                                   ; preds = %if.end.i.i238
  call void @__sanitizer_cov_trace_pc() #16
  %call9.i.i239 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51) #17
  br label %mdio_read.exit242

mdio_read.exit242:                                ; preds = %do.end7.i.i240, %for.body.i.i235.mdio_read.exit242_crit_edge
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #14, !srcloc !208
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !222
  %msg_enable30 = getelementptr i8, ptr %work, i32 92
  %26 = ptrtoint ptr %msg_enable30 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %msg_enable30, align 4
  %and31 = and i32 %27, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %mdio_read.exit242.do.end37_crit_edge, label %if.then33

mdio_read.exit242.do.end37_crit_edge:             ; preds = %mdio_read.exit242
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end37

if.then33:                                        ; preds = %mdio_read.exit242
  call void @__sanitizer_cov_trace_pc() #16
  %28 = tail call i32 @llvm.bswap.i32(i32 %25) #14
  %shr.i241 = lshr i32 %28, 16
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %1, ptr noundef nonnull @.str.48, i32 noundef %shr.i241) #17
  br label %do.end37

do.end37:                                         ; preds = %if.then33, %mdio_read.exit242.do.end37_crit_edge
  %or2.i245 = or i32 %shl1.i, 10256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !220
  tail call void @arm_heavy_mb() #14
  %29 = tail call i32 @llvm.bswap.i32(i32 %or2.i245) #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %29) #14, !srcloc !211
  tail call void @msleep(i32 noundef 1) #14
  br label %for.body.i.i249

for.body.i.i249:                                  ; preds = %if.end.i.i252.for.body.i.i249_crit_edge, %do.end37
  %i.015.i.i247 = phi i32 [ 0, %do.end37 ], [ %inc.i.i250, %if.end.i.i252.for.body.i.i249_crit_edge ]
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #14, !srcloc !208
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !221
  %31 = and i32 %30, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool.not.i.i248 = icmp eq i32 %31, 0
  br i1 %tobool.not.i.i248, label %for.body.i.i249.mdio_read.exit256_crit_edge, label %if.end.i.i252

for.body.i.i249.mdio_read.exit256_crit_edge:      ; preds = %for.body.i.i249
  call void @__sanitizer_cov_trace_pc() #16
  br label %mdio_read.exit256

if.end.i.i252:                                    ; preds = %for.body.i.i249
  tail call void @msleep(i32 noundef 1) #14
  %inc.i.i250 = add nuw nsw i32 %i.015.i.i247, 1
  %exitcond.not.i.i251 = icmp eq i32 %inc.i.i250, 100
  br i1 %exitcond.not.i.i251, label %do.end7.i.i254, label %if.end.i.i252.for.body.i.i249_crit_edge

if.end.i.i252.for.body.i.i249_crit_edge:          ; preds = %if.end.i.i252
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i249

do.end7.i.i254:                                   ; preds = %if.end.i.i252
  call void @__sanitizer_cov_trace_pc() #16
  %call9.i.i253 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51) #17
  br label %mdio_read.exit256

mdio_read.exit256:                                ; preds = %do.end7.i.i254, %for.body.i.i249.mdio_read.exit256_crit_edge
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #14, !srcloc !208
  %33 = tail call i32 @llvm.bswap.i32(i32 %32) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !222
  %shr.i255 = lshr i32 %33, 16
  %or2.i259 = or i32 %shl1.i, 8208
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !220
  tail call void @arm_heavy_mb() #14
  %34 = tail call i32 @llvm.bswap.i32(i32 %or2.i259) #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %34) #14, !srcloc !211
  tail call void @msleep(i32 noundef 1) #14
  br label %for.body.i.i263

for.body.i.i263:                                  ; preds = %if.end.i.i266.for.body.i.i263_crit_edge, %mdio_read.exit256
  %i.015.i.i261 = phi i32 [ 0, %mdio_read.exit256 ], [ %inc.i.i264, %if.end.i.i266.for.body.i.i263_crit_edge ]
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #14, !srcloc !208
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !221
  %36 = and i32 %35, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool.not.i.i262 = icmp eq i32 %36, 0
  br i1 %tobool.not.i.i262, label %for.body.i.i263.mdio_read.exit270_crit_edge, label %if.end.i.i266

for.body.i.i263.mdio_read.exit270_crit_edge:      ; preds = %for.body.i.i263
  call void @__sanitizer_cov_trace_pc() #16
  br label %mdio_read.exit270

if.end.i.i266:                                    ; preds = %for.body.i.i263
  tail call void @msleep(i32 noundef 1) #14
  %inc.i.i264 = add nuw nsw i32 %i.015.i.i261, 1
  %exitcond.not.i.i265 = icmp eq i32 %inc.i.i264, 100
  br i1 %exitcond.not.i.i265, label %do.end7.i.i268, label %if.end.i.i266.for.body.i.i263_crit_edge

if.end.i.i266.for.body.i.i263_crit_edge:          ; preds = %if.end.i.i266
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i263

do.end7.i.i268:                                   ; preds = %if.end.i.i266
  call void @__sanitizer_cov_trace_pc() #16
  %call9.i.i267 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51) #17
  br label %mdio_read.exit270

mdio_read.exit270:                                ; preds = %do.end7.i.i268, %for.body.i.i263.mdio_read.exit270_crit_edge
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #14, !srcloc !208
  %38 = tail call i32 @llvm.bswap.i32(i32 %37) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !222
  %shr.i269 = lshr i32 %38, 16
  %or2.i273 = or i32 %shl1.i, 12304
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !220
  tail call void @arm_heavy_mb() #14
  %39 = tail call i32 @llvm.bswap.i32(i32 %or2.i273) #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %39) #14, !srcloc !211
  tail call void @msleep(i32 noundef 1) #14
  br label %for.body.i.i277

for.body.i.i277:                                  ; preds = %if.end.i.i280.for.body.i.i277_crit_edge, %mdio_read.exit270
  %i.015.i.i275 = phi i32 [ 0, %mdio_read.exit270 ], [ %inc.i.i278, %if.end.i.i280.for.body.i.i277_crit_edge ]
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #14, !srcloc !208
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !221
  %41 = and i32 %40, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool.not.i.i276 = icmp eq i32 %41, 0
  br i1 %tobool.not.i.i276, label %for.body.i.i277.mdio_read.exit284_crit_edge, label %if.end.i.i280

for.body.i.i277.mdio_read.exit284_crit_edge:      ; preds = %for.body.i.i277
  call void @__sanitizer_cov_trace_pc() #16
  br label %mdio_read.exit284

if.end.i.i280:                                    ; preds = %for.body.i.i277
  tail call void @msleep(i32 noundef 1) #14
  %inc.i.i278 = add nuw nsw i32 %i.015.i.i275, 1
  %exitcond.not.i.i279 = icmp eq i32 %inc.i.i278, 100
  br i1 %exitcond.not.i.i279, label %do.end7.i.i282, label %if.end.i.i280.for.body.i.i277_crit_edge

if.end.i.i280.for.body.i.i277_crit_edge:          ; preds = %if.end.i.i280
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i277

do.end7.i.i282:                                   ; preds = %if.end.i.i280
  call void @__sanitizer_cov_trace_pc() #16
  %call9.i.i281 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51) #17
  br label %mdio_read.exit284

mdio_read.exit284:                                ; preds = %do.end7.i.i282, %for.body.i.i277.mdio_read.exit284_crit_edge
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #14, !srcloc !208
  %43 = tail call i32 @llvm.bswap.i32(i32 %42) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !222
  %44 = ptrtoint ptr %msg_enable30 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %msg_enable30, align 4
  %and46 = and i32 %45, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46)
  %tobool47.not = icmp eq i32 %and46, 0
  br i1 %tobool47.not, label %mdio_read.exit284.do.end54_crit_edge, label %if.then48

mdio_read.exit284.do.end54_crit_edge:             ; preds = %mdio_read.exit284
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end54

if.then48:                                        ; preds = %mdio_read.exit284
  call void @__sanitizer_cov_trace_pc() #16
  %shr.i283 = lshr i32 %43, 16
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %1, ptr noundef nonnull @.str.49, i32 noundef %shr.i255, i32 noundef %shr.i269, i32 noundef %shr.i283) #17
  br label %do.end54

do.end54:                                         ; preds = %if.then48, %mdio_read.exit284.do.end54_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %33)
  %tobool57.not = icmp sgt i32 %33, -1
  %46 = and i32 %43, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool61.not = icmp eq i32 %46, 0
  %or.cond = select i1 %tobool57.not, i1 true, i1 %tobool61.not
  br i1 %or.cond, label %do.end54.if.then86_crit_edge, label %if.then62

do.end54.if.then86_crit_edge:                     ; preds = %do.end54
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then86

if.then62:                                        ; preds = %do.end54
  %or2.i287 = or i32 %shl1.i, 18448
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !220
  tail call void @arm_heavy_mb() #14
  %47 = tail call i32 @llvm.bswap.i32(i32 %or2.i287) #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %47) #14, !srcloc !211
  tail call void @msleep(i32 noundef 1) #14
  br label %for.body.i.i291

for.body.i.i291:                                  ; preds = %if.end.i.i294.for.body.i.i291_crit_edge, %if.then62
  %i.015.i.i289 = phi i32 [ 0, %if.then62 ], [ %inc.i.i292, %if.end.i.i294.for.body.i.i291_crit_edge ]
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #14, !srcloc !208
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !221
  %49 = and i32 %48, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool.not.i.i290 = icmp eq i32 %49, 0
  br i1 %tobool.not.i.i290, label %for.body.i.i291.mdio_read.exit298_crit_edge, label %if.end.i.i294

for.body.i.i291.mdio_read.exit298_crit_edge:      ; preds = %for.body.i.i291
  call void @__sanitizer_cov_trace_pc() #16
  br label %mdio_read.exit298

if.end.i.i294:                                    ; preds = %for.body.i.i291
  tail call void @msleep(i32 noundef 1) #14
  %inc.i.i292 = add nuw nsw i32 %i.015.i.i289, 1
  %exitcond.not.i.i293 = icmp eq i32 %inc.i.i292, 100
  br i1 %exitcond.not.i.i293, label %do.end7.i.i296, label %if.end.i.i294.for.body.i.i291_crit_edge

if.end.i.i294.for.body.i.i291_crit_edge:          ; preds = %if.end.i.i294
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i291

do.end7.i.i296:                                   ; preds = %if.end.i.i294
  call void @__sanitizer_cov_trace_pc() #16
  %call9.i.i295 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51) #17
  br label %mdio_read.exit298

mdio_read.exit298:                                ; preds = %do.end7.i.i296, %for.body.i.i291.mdio_read.exit298_crit_edge
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #14, !srcloc !208
  %51 = tail call i32 @llvm.bswap.i32(i32 %50) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !222
  %shr.i297 = lshr i32 %51, 16
  %or2.i301 = or i32 %shl1.i, 20496
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !220
  tail call void @arm_heavy_mb() #14
  %52 = tail call i32 @llvm.bswap.i32(i32 %or2.i301) #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %52) #14, !srcloc !211
  tail call void @msleep(i32 noundef 1) #14
  br label %for.body.i.i305

for.body.i.i305:                                  ; preds = %if.end.i.i308.for.body.i.i305_crit_edge, %mdio_read.exit298
  %i.015.i.i303 = phi i32 [ 0, %mdio_read.exit298 ], [ %inc.i.i306, %if.end.i.i308.for.body.i.i305_crit_edge ]
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #14, !srcloc !208
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !221
  %54 = and i32 %53, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool.not.i.i304 = icmp eq i32 %54, 0
  br i1 %tobool.not.i.i304, label %for.body.i.i305.mdio_read.exit312_crit_edge, label %if.end.i.i308

for.body.i.i305.mdio_read.exit312_crit_edge:      ; preds = %for.body.i.i305
  call void @__sanitizer_cov_trace_pc() #16
  br label %mdio_read.exit312

if.end.i.i308:                                    ; preds = %for.body.i.i305
  tail call void @msleep(i32 noundef 1) #14
  %inc.i.i306 = add nuw nsw i32 %i.015.i.i303, 1
  %exitcond.not.i.i307 = icmp eq i32 %inc.i.i306, 100
  br i1 %exitcond.not.i.i307, label %do.end7.i.i310, label %if.end.i.i308.for.body.i.i305_crit_edge

if.end.i.i308.for.body.i.i305_crit_edge:          ; preds = %if.end.i.i308
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i305

do.end7.i.i310:                                   ; preds = %if.end.i.i308
  call void @__sanitizer_cov_trace_pc() #16
  %call9.i.i309 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51) #17
  br label %mdio_read.exit312

mdio_read.exit312:                                ; preds = %do.end7.i.i310, %for.body.i.i305.mdio_read.exit312_crit_edge
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #14, !srcloc !208
  %56 = tail call i32 @llvm.bswap.i32(i32 %55) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !222
  %shr.i311 = lshr i32 %56, 18
  %and69 = and i32 %shr.i311, %shr.i297
  %and72 = and i32 %and69, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and72)
  %tobool73.not = icmp eq i32 %and72, 0
  br i1 %tobool73.not, label %if.else75, label %mdio_read.exit312.if.end102_crit_edge

mdio_read.exit312.if.end102_crit_edge:            ; preds = %mdio_read.exit312
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end102

if.else75:                                        ; preds = %mdio_read.exit312
  %and77 = and i32 %and69, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and77)
  %tobool78.not = icmp eq i32 %and77, 0
  %add.ptr81 = getelementptr inbounds %struct.anon.124, ptr %reg31, i32 1
  %tobool85.not = icmp eq ptr %add.ptr81, null
  %or.cond347 = select i1 %tobool78.not, i1 true, i1 %tobool85.not
  br i1 %or.cond347, label %if.else75.if.then86_crit_edge, label %if.else75.if.end102_crit_edge

if.else75.if.end102_crit_edge:                    ; preds = %if.else75
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end102

if.else75.if.then86_crit_edge:                    ; preds = %if.else75
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then86

if.then86:                                        ; preds = %if.else75.if.then86_crit_edge, %do.end54.if.then86_crit_edge
  %val.0342 = phi i32 [ %shr.i255, %do.end54.if.then86_crit_edge ], [ %and69, %if.else75.if.then86_crit_edge ]
  %and89 = and i32 %val.0342, %shr.i269
  br label %for.cond

for.cond:                                         ; preds = %for.cond.for.cond_crit_edge, %if.then86
  %p.1 = phi ptr [ %reg31, %if.then86 ], [ %incdec.ptr, %for.cond.for.cond_crit_edge ]
  %57 = ptrtoint ptr %p.1 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %p.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool93.not = icmp eq i32 %58, 0
  %and96 = and i32 %and89, %58
  call void @__sanitizer_cov_trace_cmp4(i32 %and96, i32 %58)
  %cmp98 = icmp eq i32 %and96, %58
  %or.cond348 = select i1 %tobool93.not, i1 true, i1 %cmp98
  %incdec.ptr = getelementptr %struct.anon.124, ptr %p.1, i32 1
  br i1 %or.cond348, label %for.cond.if.end102_crit_edge, label %for.cond.for.cond_crit_edge

for.cond.for.cond_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond

for.cond.if.end102_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end102

if.end102:                                        ; preds = %for.cond.if.end102_crit_edge, %if.else75.if.end102_crit_edge, %mdio_read.exit312.if.end102_crit_edge
  %p.2 = phi ptr [ %reg31, %mdio_read.exit312.if.end102_crit_edge ], [ %add.ptr81, %if.else75.if.end102_crit_edge ], [ %p.1, %for.cond.if.end102_crit_edge ]
  %add.ptr103 = getelementptr i8, ptr %3, i32 64
  %59 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr103) #14, !srcloc !208
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !230
  %60 = and i32 %59, -1835024
  %61 = call i32 @llvm.bswap.i32(i32 %60)
  %ctl = getelementptr inbounds %struct.anon.124, ptr %p.2, i32 0, i32 1
  %62 = ptrtoint ptr %ctl to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %ctl, align 4
  %or = or i32 %63, %61
  store i32 %or, ptr %ctl, align 4
  %features = getelementptr i8, ptr %work, i32 136
  %64 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %features, align 4
  %66 = and i32 %65, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %66)
  %.not = icmp eq i32 %66, 5
  br i1 %.not, label %if.then114, label %if.end102.do.body118_crit_edge

if.end102.do.body118_crit_edge:                   ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body118

if.then114:                                       ; preds = %if.end102
  %or4.i = or i32 %shl1.i, -238567376
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !220
  call void @arm_heavy_mb() #14
  %67 = call i32 @llvm.bswap.i32(i32 %or4.i) #14
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %67) #14, !srcloc !211
  call void @msleep(i32 noundef 1) #14
  br label %for.body.i.i319

for.body.i.i319:                                  ; preds = %if.end.i.i322.for.body.i.i319_crit_edge, %if.then114
  %i.015.i.i317 = phi i32 [ 0, %if.then114 ], [ %inc.i.i320, %if.end.i.i322.for.body.i.i319_crit_edge ]
  %68 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #14, !srcloc !208
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !221
  %69 = and i32 %68, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %tobool.not.i.i318 = icmp eq i32 %69, 0
  br i1 %tobool.not.i.i318, label %for.body.i.i319.mdio_write.exit_crit_edge, label %if.end.i.i322

for.body.i.i319.mdio_write.exit_crit_edge:        ; preds = %for.body.i.i319
  call void @__sanitizer_cov_trace_pc() #16
  br label %mdio_write.exit

if.end.i.i322:                                    ; preds = %for.body.i.i319
  call void @msleep(i32 noundef 1) #14
  %inc.i.i320 = add nuw nsw i32 %i.015.i.i317, 1
  %exitcond.not.i.i321 = icmp eq i32 %inc.i.i320, 100
  br i1 %exitcond.not.i.i321, label %do.end7.i.i324, label %if.end.i.i322.for.body.i.i319_crit_edge

if.end.i.i322.for.body.i.i319_crit_edge:          ; preds = %if.end.i.i322
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i319

do.end7.i.i324:                                   ; preds = %if.end.i.i322
  call void @__sanitizer_cov_trace_pc() #16
  %call9.i.i323 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51) #17
  br label %mdio_write.exit

mdio_write.exit:                                  ; preds = %do.end7.i.i324, %for.body.i.i319.mdio_write.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %70 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %70(i32 noundef 42949600) #14
  %or4.i328 = or i32 %shl1.i, -1946099664
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !220
  call void @arm_heavy_mb() #14
  %71 = call i32 @llvm.bswap.i32(i32 %or4.i328) #14
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %71) #14, !srcloc !211
  call void @msleep(i32 noundef 1) #14
  br label %for.body.i.i332

for.body.i.i332:                                  ; preds = %if.end.i.i335.for.body.i.i332_crit_edge, %mdio_write.exit
  %i.015.i.i330 = phi i32 [ 0, %mdio_write.exit ], [ %inc.i.i333, %if.end.i.i335.for.body.i.i332_crit_edge ]
  %72 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #14, !srcloc !208
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !221
  %73 = and i32 %72, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %tobool.not.i.i331 = icmp eq i32 %73, 0
  br i1 %tobool.not.i.i331, label %for.body.i.i332.mdio_write.exit338_crit_edge, label %if.end.i.i335

for.body.i.i332.mdio_write.exit338_crit_edge:     ; preds = %for.body.i.i332
  call void @__sanitizer_cov_trace_pc() #16
  br label %mdio_write.exit338

if.end.i.i335:                                    ; preds = %for.body.i.i332
  call void @msleep(i32 noundef 1) #14
  %inc.i.i333 = add nuw nsw i32 %i.015.i.i330, 1
  %exitcond.not.i.i334 = icmp eq i32 %inc.i.i333, 100
  br i1 %exitcond.not.i.i334, label %do.end7.i.i337, label %if.end.i.i335.for.body.i.i332_crit_edge

if.end.i.i335.for.body.i.i332_crit_edge:          ; preds = %if.end.i.i335
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i332

do.end7.i.i337:                                   ; preds = %if.end.i.i335
  call void @__sanitizer_cov_trace_pc() #16
  %call9.i.i336 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51) #17
  br label %mdio_write.exit338

mdio_write.exit338:                               ; preds = %do.end7.i.i337, %for.body.i.i332.mdio_write.exit338_crit_edge
  %74 = ptrtoint ptr %ctl to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %ctl, align 4
  %or116 = or i32 %75, 50331648
  store i32 %or116, ptr %ctl, align 4
  br label %do.body118

do.body118:                                       ; preds = %mdio_write.exit338, %if.end102.do.body118_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !231
  call void @arm_heavy_mb() #14
  %76 = ptrtoint ptr %ctl to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %ctl, align 4
  %78 = call i32 @llvm.bswap.i32(i32 %77)
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr103, i32 %78) #14, !srcloc !211
  %79 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %features, align 4
  %and124 = and i32 %80, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and124)
  %tobool125.not = icmp eq i32 %and124, 0
  br i1 %tobool125.not, label %do.body118.if.end135_crit_edge, label %do.body127

do.body118.if.end135_crit_edge:                   ; preds = %do.body118
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end135

do.body127:                                       ; preds = %do.body118
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !232
  call void @arm_heavy_mb() #14
  %add.ptr130 = getelementptr i8, ptr %3, i32 88
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr130, i32 1090781184) #14, !srcloc !211
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !233
  call void @arm_heavy_mb() #14
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr130, i32 1074003968) #14, !srcloc !211
  br label %if.end135

if.end135:                                        ; preds = %do.body127, %do.body118.if.end135_crit_edge
  %81 = ptrtoint ptr %p.2 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %p.2, align 4
  %negotiated_lpa = getelementptr i8, ptr %work, i32 140
  %83 = ptrtoint ptr %negotiated_lpa to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %82, ptr %negotiated_lpa, align 4
  %84 = ptrtoint ptr %msg_enable30 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %msg_enable30, align 4
  %and139 = and i32 %85, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and139)
  %tobool140.not = icmp eq i32 %and139, 0
  br i1 %tobool140.not, label %if.end135.do.end144_crit_edge, label %if.then141

if.end135.do.end144_crit_edge:                    ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end144

if.then141:                                       ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #16
  %msg = getelementptr inbounds %struct.anon.124, ptr %p.2, i32 0, i32 2
  %86 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %msg, align 4
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %1, ptr noundef nonnull @.str.50, ptr noundef %87) #17
  br label %do.end144

do.end144:                                        ; preds = %if.then141, %if.end135.do.end144_crit_edge
  call void @netif_carrier_on(ptr noundef %1) #14
  %88 = ptrtoint ptr %link_status151 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 1, ptr %link_status151, align 4
  call void @llvm.lifetime.end.p0(i64 84, ptr nonnull %reg31) #14
  br label %if.end158

land.lhs.true150.critedge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %20)
  %cmp152.not = icmp eq i32 %20, 2
  br i1 %cmp152.not, label %land.lhs.true150.critedge.if.end158_crit_edge, label %if.then154

land.lhs.true150.critedge.if.end158_crit_edge:    ; preds = %land.lhs.true150.critedge
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end158

if.then154:                                       ; preds = %land.lhs.true150.critedge
  call void @__sanitizer_cov_trace_pc() #16
  %89 = ptrtoint ptr %link_status151 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 0, ptr %link_status151, align 4
  br label %if.end158

if.end158:                                        ; preds = %if.then154, %land.lhs.true150.critedge.if.end158_crit_edge, %do.end144, %land.lhs.true22.if.end158_crit_edge, %do.end
  %timer159 = getelementptr i8, ptr %work, i32 44
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %90 = load volatile i32, ptr @jiffies, align 128
  %add160 = add i32 %90, 1000
  %call161 = call i32 @mod_timer(ptr noundef %timer159, i32 noundef %add160) #14
  br label %out_unlock

out_unlock:                                       ; preds = %if.end158, %if.then5, %entry.out_unlock_crit_edge
  call void @rtnl_unlock() #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #0

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_off(ptr noundef) local_unnamed_addr #0

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_etherdev_mqs(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_request_regions(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sis190_irq_mask_and_ack(ptr noundef %ioaddr) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !234
  tail call void @arm_heavy_mb() #14
  %add.ptr = getelementptr i8, ptr %ioaddr, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #14, !srcloc !211
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !235
  tail call void @arm_heavy_mb() #14
  %add.ptr3 = getelementptr i8, ptr %ioaddr, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 -1) #14, !srcloc !211
  %add.ptr4 = getelementptr i8, ptr %ioaddr, i32 40
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4) #14, !srcloc !208
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !236
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sis190_soft_reset(ptr noundef %ioaddr) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !237
  tail call void @arm_heavy_mb() #14
  %add.ptr = getelementptr i8, ptr %ioaddr, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 8388608) #14, !srcloc !211
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #14, !srcloc !208
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !238
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !239
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #14, !srcloc !211
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !240
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ioaddr, i32 1703936) #14, !srcloc !211
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !241
  tail call void @arm_heavy_mb() #14
  %add.ptr3.i = getelementptr i8, ptr %ioaddr, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 1703936) #14, !srcloc !211
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !234
  tail call void @arm_heavy_mb() #14
  %add.ptr.i.i = getelementptr i8, ptr %ioaddr, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #14, !srcloc !211
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !235
  tail call void @arm_heavy_mb() #14
  %add.ptr3.i.i = getelementptr i8, ptr %ioaddr, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i.i, i32 -1) #14, !srcloc !211
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #14, !srcloc !208
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !236
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_release_regions(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sis190_asic_down(ptr noundef %ioaddr) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !240
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ioaddr, i32 1703936) #14, !srcloc !211
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !241
  tail call void @arm_heavy_mb() #14
  %add.ptr3 = getelementptr i8, ptr %ioaddr, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 1703936) #14, !srcloc !211
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !234
  tail call void @arm_heavy_mb() #14
  %add.ptr.i = getelementptr i8, ptr %ioaddr, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #14, !srcloc !211
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !235
  tail call void @arm_heavy_mb() #14
  %add.ptr3.i = getelementptr i8, ptr %ioaddr, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 -1) #14, !srcloc !211
  %add.ptr4.i = getelementptr i8, ptr %ioaddr, i32 40
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i) #14, !srcloc !208
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !236
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_byte(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_get_device(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_byte(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_dev_put(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i16 @mdio_read_latched(ptr noundef %ioaddr, i32 noundef %phy_id) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %shl1.i = shl i32 %phy_id, 6
  %or2.i = or i32 %shl1.i, 2064
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !220
  tail call void @arm_heavy_mb() #14
  %0 = tail call i32 @llvm.bswap.i32(i32 %or2.i) #14
  %add.ptr.i.i = getelementptr i8, ptr %ioaddr, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %0) #14, !srcloc !211
  tail call void @msleep(i32 noundef 1) #14
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %if.end.i.i.for.body.i.i_crit_edge, %entry
  %i.015.i.i = phi i32 [ 0, %entry ], [ %inc.i.i, %if.end.i.i.for.body.i.i_crit_edge ]
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #14, !srcloc !208
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !221
  %2 = and i32 %1, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i.i, label %for.body.i.i.mdio_read.exit_crit_edge, label %if.end.i.i

for.body.i.i.mdio_read.exit_crit_edge:            ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %mdio_read.exit

if.end.i.i:                                       ; preds = %for.body.i.i
  tail call void @msleep(i32 noundef 1) #14
  %inc.i.i = add nuw nsw i32 %i.015.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 100
  br i1 %exitcond.not.i.i, label %do.end7.i.i, label %if.end.i.i.for.body.i.i_crit_edge

if.end.i.i.for.body.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i

do.end7.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %call9.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51) #17
  br label %mdio_read.exit

mdio_read.exit:                                   ; preds = %do.end7.i.i, %for.body.i.i.mdio_read.exit_crit_edge
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #14, !srcloc !208
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !222
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !220
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %0) #14, !srcloc !211
  tail call void @msleep(i32 noundef 1) #14
  br label %for.body.i.i7

for.body.i.i7:                                    ; preds = %if.end.i.i10.for.body.i.i7_crit_edge, %mdio_read.exit
  %i.015.i.i5 = phi i32 [ 0, %mdio_read.exit ], [ %inc.i.i8, %if.end.i.i10.for.body.i.i7_crit_edge ]
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #14, !srcloc !208
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !221
  %5 = and i32 %4, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i.i6 = icmp eq i32 %5, 0
  br i1 %tobool.not.i.i6, label %for.body.i.i7.mdio_read.exit14_crit_edge, label %if.end.i.i10

for.body.i.i7.mdio_read.exit14_crit_edge:         ; preds = %for.body.i.i7
  call void @__sanitizer_cov_trace_pc() #16
  br label %mdio_read.exit14

if.end.i.i10:                                     ; preds = %for.body.i.i7
  tail call void @msleep(i32 noundef 1) #14
  %inc.i.i8 = add nuw nsw i32 %i.015.i.i5, 1
  %exitcond.not.i.i9 = icmp eq i32 %inc.i.i8, 100
  br i1 %exitcond.not.i.i9, label %do.end7.i.i12, label %if.end.i.i10.for.body.i.i7_crit_edge

if.end.i.i10.for.body.i.i7_crit_edge:             ; preds = %if.end.i.i10
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i7

do.end7.i.i12:                                    ; preds = %if.end.i.i10
  call void @__sanitizer_cov_trace_pc() #16
  %call9.i.i11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51) #17
  br label %mdio_read.exit14

mdio_read.exit14:                                 ; preds = %do.end7.i.i12, %for.body.i.i7.mdio_read.exit14_crit_edge
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #14, !srcloc !208
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !222
  %shr.i13 = lshr i32 %7, 16
  %conv = trunc i32 %shr.i13 to i16
  ret i16 %conv
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_on(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sis190_open(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %pci_dev = getelementptr i8, ptr %dev, i32 2308
  %0 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pci_dev, align 4
  %mtu1.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 20
  %2 = ptrtoint ptr %mtu1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mtu1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1536, i32 %3)
  %cmp.i = icmp ugt i32 %3, 1536
  %add2.i = add i32 %3, 22
  %spec.select.i = select i1 %cmp.i, i32 %add2.i, i32 1536
  %and.i = and i32 %spec.select.i, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %add5.i = add i32 %spec.select.i, 8
  %and7.i = and i32 %add5.i, 65528
  %storemerge.i = select i1 %tobool.not.i, i32 %spec.select.i, i32 %and7.i
  %rx_buf_sz.i = getelementptr i8, ptr %dev, i32 2360
  %4 = ptrtoint ptr %rx_buf_sz.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %storemerge.i, ptr %rx_buf_sz.i, align 4
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %tx_dma = getelementptr i8, ptr %dev, i32 2384
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev1, i32 noundef 1024, ptr noundef %tx_dma, i32 noundef 3264, i32 noundef 0) #14
  %TxDescRing = getelementptr i8, ptr %dev, i32 2392
  %5 = ptrtoint ptr %TxDescRing to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call.i, ptr %TxDescRing, align 4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end:                                           ; preds = %entry
  %rx_dma = getelementptr i8, ptr %dev, i32 2380
  %call.i48 = tail call ptr @dma_alloc_attrs(ptr noundef %dev1, i32 noundef 1024, ptr noundef %rx_dma, i32 noundef 3264, i32 noundef 0) #14
  %RxDescRing = getelementptr i8, ptr %dev, i32 2388
  %6 = ptrtoint ptr %RxDescRing to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i48, ptr %RxDescRing, align 4
  %tobool7.not = icmp eq ptr %call.i48, null
  br i1 %tobool7.not, label %if.end.err_free_tx_0_crit_edge, label %if.end9

if.end.err_free_tx_0_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_free_tx_0

if.end9:                                          ; preds = %if.end
  %cur_rx.i.i = getelementptr i8, ptr %dev, i32 2364
  %7 = call ptr @memset(ptr %cur_rx.i.i, i32 0, i32 16)
  %Rx_skbuff.i = getelementptr i8, ptr %dev, i32 2396
  %8 = call ptr @memset(ptr %Rx_skbuff.i, i32 0, i32 512)
  %call2.i = tail call fastcc i32 @sis190_rx_fill(ptr noundef %add.ptr.i, i32 noundef 0, i32 noundef 64) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %call2.i)
  %cmp.not.i = icmp eq i32 %call2.i, 64
  br i1 %cmp.not.i, label %if.end12, label %if.end9.for.body.i.i_crit_edge

if.end9.for.body.i.i_crit_edge:                   ; preds = %if.end9
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end9.for.body.i.i_crit_edge
  %i.010.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %if.end9.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.sis190_private, ptr %add.ptr.i, i32 0, i32 13, i32 %i.010.i.i
  %9 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %10, null
  br i1 %tobool.not.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %if.end.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i.i

if.end.i.i:                                       ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr.i10.i = getelementptr ptr, ptr %Rx_skbuff.i, i32 %i.010.i.i
  %11 = ptrtoint ptr %RxDescRing to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %RxDescRing, align 4
  %add.ptr2.i.i = getelementptr %struct.RxDesc, ptr %12, i32 %i.010.i.i
  %13 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pci_dev, align 4
  %dev.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %14, i32 0, i32 44
  %addr.i.i.i = getelementptr %struct.RxDesc, ptr %12, i32 %i.010.i.i, i32 2
  %15 = ptrtoint ptr %addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %addr.i.i.i, align 4
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #14
  %18 = ptrtoint ptr %rx_buf_sz.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %rx_buf_sz.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev.i.i.i, i32 noundef %17, i32 noundef %19, i32 noundef 2, i32 noundef 0) #14
  %20 = ptrtoint ptr %add.ptr.i10.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %add.ptr.i10.i, align 4
  tail call void @consume_skb(ptr noundef %21) #14
  %22 = ptrtoint ptr %add.ptr.i10.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %add.ptr.i10.i, align 4
  %23 = ptrtoint ptr %add.ptr2.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %add.ptr2.i.i, align 4
  %24 = ptrtoint ptr %addr.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 -272716322, ptr %addr.i.i.i, align 4
  %size.i.i.i.i = getelementptr %struct.RxDesc, ptr %12, i32 %i.010.i.i, i32 3
  %25 = ptrtoint ptr %size.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %size.i.i.i.i, align 4
  %and.i.i.i.i = and i32 %26, 128
  store i32 %and.i.i.i.i, ptr %size.i.i.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !242
  tail call void @arm_heavy_mb() #14
  %status.i.i.i.i = getelementptr %struct.RxDesc, ptr %12, i32 %i.010.i.i, i32 1
  %27 = ptrtoint ptr %status.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %status.i.i.i.i, align 4
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.end.i.i, %for.body.i.i.for.inc.i.i_crit_edge
  %inc.i.i = add nuw nsw i32 %i.010.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 64
  br i1 %exitcond.not.i.i, label %for.inc.i.i.err_free_rx_1_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i

for.inc.i.i.err_free_rx_1_crit_edge:              ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_free_rx_1

if.end12:                                         ; preds = %if.end9
  %28 = ptrtoint ptr %RxDescRing to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %RxDescRing, align 4
  %size.i.i = getelementptr %struct.RxDesc, ptr %29, i32 63, i32 3
  %30 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %size.i.i, align 4
  %or.i.i = or i32 %31, 128
  store i32 %or.i.i, ptr %size.i.i, align 4
  %timer1.i = getelementptr i8, ptr %dev, i32 2952
  tail call void @init_timer_key(ptr noundef %timer1.i, ptr noundef nonnull @sis190_phy_timer, i32 noundef 0, ptr noundef nonnull @.str.55, ptr noundef nonnull @sis190_request_timer.__key) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %32 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %32, 1000
  %expires.i = getelementptr i8, ptr %dev, i32 2960
  %33 = ptrtoint ptr %expires.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %add.i, ptr %expires.i, align 4
  tail call void @add_timer(ptr noundef %timer1.i) #14
  %irq = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 46
  %34 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %irq, align 4
  %call.i49 = tail call i32 @request_threaded_irq(i32 noundef %35, ptr noundef nonnull @sis190_irq, ptr noundef null, i32 noundef 128, ptr noundef %dev, ptr noundef %dev) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i49)
  %cmp14 = icmp slt i32 %call.i49, 0
  br i1 %cmp14, label %err_release_timer_2, label %if.end16

if.end16:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @sis190_hw_start(ptr noundef %dev)
  br label %out

out:                                              ; preds = %err_free_tx_0, %if.end16, %entry.out_crit_edge
  %rc.0 = phi i32 [ %rc.2, %err_free_tx_0 ], [ %call.i49, %if.end16 ], [ -12, %entry.out_crit_edge ]
  ret i32 %rc.0

err_release_timer_2:                              ; preds = %if.end12
  %call1.i = tail call i32 @del_timer_sync(ptr noundef %timer1.i) #14
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %err_release_timer_2
  %i.010.i = phi i32 [ 0, %err_release_timer_2 ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.sis190_private, ptr %add.ptr.i, i32 0, i32 13, i32 %i.010.i
  %36 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i52 = icmp eq ptr %37, null
  br i1 %tobool.not.i52, label %for.body.i.for.inc.i_crit_edge, label %if.end.i54

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

if.end.i54:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr.i53 = getelementptr ptr, ptr %Rx_skbuff.i, i32 %i.010.i
  %38 = ptrtoint ptr %RxDescRing to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %RxDescRing, align 4
  %add.ptr2.i = getelementptr %struct.RxDesc, ptr %39, i32 %i.010.i
  %40 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %pci_dev, align 4
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %41, i32 0, i32 44
  %addr.i.i = getelementptr %struct.RxDesc, ptr %39, i32 %i.010.i, i32 2
  %42 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %addr.i.i, align 4
  %44 = tail call i32 @llvm.bswap.i32(i32 %43) #14
  %45 = ptrtoint ptr %rx_buf_sz.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %rx_buf_sz.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev.i.i, i32 noundef %44, i32 noundef %46, i32 noundef 2, i32 noundef 0) #14
  %47 = ptrtoint ptr %add.ptr.i53 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %add.ptr.i53, align 4
  tail call void @consume_skb(ptr noundef %48) #14
  %49 = ptrtoint ptr %add.ptr.i53 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr null, ptr %add.ptr.i53, align 4
  %50 = ptrtoint ptr %add.ptr2.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %add.ptr2.i, align 4
  %51 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 -272716322, ptr %addr.i.i, align 4
  %size.i.i.i = getelementptr %struct.RxDesc, ptr %39, i32 %i.010.i, i32 3
  %52 = ptrtoint ptr %size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %size.i.i.i, align 4
  %and.i.i.i = and i32 %53, 128
  store i32 %and.i.i.i, ptr %size.i.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !242
  tail call void @arm_heavy_mb() #14
  %status.i.i.i = getelementptr %struct.RxDesc, ptr %39, i32 %i.010.i, i32 1
  %54 = ptrtoint ptr %status.i.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 0, ptr %status.i.i.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i54, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.010.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 64
  br i1 %exitcond.not.i, label %for.inc.i.err_free_rx_1_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.inc.i.err_free_rx_1_crit_edge:                ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_free_rx_1

err_free_rx_1:                                    ; preds = %for.inc.i.err_free_rx_1_crit_edge, %for.inc.i.i.err_free_rx_1_crit_edge
  %rc.1 = phi i32 [ %call.i49, %for.inc.i.err_free_rx_1_crit_edge ], [ -12, %for.inc.i.i.err_free_rx_1_crit_edge ]
  %55 = ptrtoint ptr %RxDescRing to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %RxDescRing, align 4
  %57 = ptrtoint ptr %rx_dma to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %rx_dma, align 4
  tail call void @dma_free_attrs(ptr noundef %dev1, i32 noundef 1024, ptr noundef %56, i32 noundef %58, i32 noundef 0) #14
  br label %err_free_tx_0

err_free_tx_0:                                    ; preds = %err_free_rx_1, %if.end.err_free_tx_0_crit_edge
  %rc.2 = phi i32 [ %rc.1, %err_free_rx_1 ], [ -12, %if.end.err_free_tx_0_crit_edge ]
  %59 = ptrtoint ptr %TxDescRing to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %TxDescRing, align 4
  %61 = ptrtoint ptr %tx_dma to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %tx_dma, align 4
  tail call void @dma_free_attrs(ptr noundef %dev1, i32 noundef 1024, ptr noundef %60, i32 noundef %62, i32 noundef 0) #14
  br label %out
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sis190_close(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %pci_dev = getelementptr i8, ptr %dev, i32 2308
  %0 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pci_dev, align 4
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i, align 4
  %timer.i.i = getelementptr i8, ptr %dev, i32 2952
  %call1.i.i = tail call i32 @del_timer_sync(ptr noundef %timer.i.i) #14
  %_tx.i.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %4 = ptrtoint ptr %_tx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %_tx.i.i.i, align 128
  %state.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %5, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i.i) #14
  %lock.i = getelementptr i8, ptr %dev, i32 2316
  tail call void @_raw_spin_lock_irq(ptr noundef %lock.i) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !240
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 1703936) #14, !srcloc !211
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !241
  tail call void @arm_heavy_mb() #14
  %add.ptr3.i.i = getelementptr i8, ptr %3, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i.i, i32 1703936) #14, !srcloc !211
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !234
  tail call void @arm_heavy_mb() #14
  %add.ptr.i.i.i = getelementptr i8, ptr %3, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 0) #14, !srcloc !211
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !235
  tail call void @arm_heavy_mb() #14
  %add.ptr3.i.i.i = getelementptr i8, ptr %3, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i.i.i, i32 -1) #14, !srcloc !211
  %add.ptr4.i.i.i = getelementptr i8, ptr %3, i32 40
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i.i.i) #14, !srcloc !208
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !236
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock.i) #14
  %7 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pci_dev, align 4
  %irq.i = getelementptr inbounds %struct.pci_dev, ptr %8, i32 0, i32 46
  %9 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %irq.i, align 4
  tail call void @synchronize_irq(i32 noundef %10) #14
  tail call void @synchronize_rcu() #14
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #14, !srcloc !208
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !243
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool4.not28.i = icmp eq i32 %11, 0
  br i1 %tobool4.not28.i, label %entry.do.end.i_crit_edge, label %entry.if.end.critedge.i_crit_edge

entry.if.end.critedge.i_crit_edge:                ; preds = %entry
  br label %if.end.critedge.i

entry.do.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end.i

if.end.critedge.i:                                ; preds = %if.end.critedge.i.if.end.critedge.i_crit_edge, %entry.if.end.critedge.i_crit_edge
  tail call void @_raw_spin_lock_irq(ptr noundef %lock.i) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !240
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 1703936) #14, !srcloc !211
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !241
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i.i, i32 1703936) #14, !srcloc !211
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !234
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 0) #14, !srcloc !211
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !235
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i.i.i, i32 -1) #14, !srcloc !211
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i.i.i) #14, !srcloc !208
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !236
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock.i) #14
  %13 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pci_dev, align 4
  %irq.c.i = getelementptr inbounds %struct.pci_dev, ptr %14, i32 0, i32 46
  %15 = ptrtoint ptr %irq.c.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %irq.c.i, align 4
  tail call void @synchronize_irq(i32 noundef %16) #14
  tail call void @synchronize_rcu() #14
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #14, !srcloc !208
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !243
  %tobool4.not.i = icmp eq i32 %17, 0
  br i1 %tobool4.not.i, label %if.end.critedge.i.do.end.i_crit_edge, label %if.end.critedge.i.if.end.critedge.i_crit_edge

if.end.critedge.i.if.end.critedge.i_crit_edge:    ; preds = %if.end.critedge.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.critedge.i

if.end.critedge.i.do.end.i_crit_edge:             ; preds = %if.end.critedge.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end.i

do.end.i:                                         ; preds = %if.end.critedge.i.do.end.i_crit_edge, %entry.do.end.i_crit_edge
  %TxDescRing.i.i = getelementptr i8, ptr %dev, i32 2392
  %dev.i.i = getelementptr i8, ptr %dev, i32 2312
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %cleanup.i.i.for.body.i.i_crit_edge, %do.end.i
  %i.016.i.i = phi i32 [ 0, %do.end.i ], [ %inc3.i.i, %cleanup.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.sis190_private, ptr %add.ptr.i, i32 0, i32 14, i32 %i.016.i.i
  %18 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %19, null
  br i1 %tobool.not.i.i, label %for.body.i.i.cleanup.i.i_crit_edge, label %if.end.i.i

for.body.i.i.cleanup.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.i.i

if.end.i.i:                                       ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %20 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pci_dev, align 4
  %22 = ptrtoint ptr %TxDescRing.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %TxDescRing.i.i, align 4
  %add.ptr.i18.i = getelementptr %struct.TxDesc, ptr %23, i32 %i.016.i.i
  %len1.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %19, i32 0, i32 6
  %24 = ptrtoint ptr %len1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %len1.i.i.i, align 4
  %26 = tail call i32 @llvm.umax.i32(i32 %25, i32 60) #14
  %dev.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %21, i32 0, i32 44
  %addr.i.i.i = getelementptr %struct.TxDesc, ptr %23, i32 %i.016.i.i, i32 2
  %27 = ptrtoint ptr %addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %addr.i.i.i, align 4
  %29 = tail call i32 @llvm.bswap.i32(i32 %28) #14
  tail call void @dma_unmap_page_attrs(ptr noundef %dev.i.i.i, i32 noundef %29, i32 noundef %26, i32 noundef 1, i32 noundef 0) #14
  %30 = call ptr @memset(ptr %add.ptr.i18.i, i32 0, i32 16)
  %31 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %arrayidx.i.i, align 4
  tail call void @consume_skb(ptr noundef nonnull %19) #14
  %32 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev.i.i, align 4
  %tx_dropped.i.i = getelementptr inbounds %struct.net_device, ptr %33, i32 0, i32 36, i32 7
  %34 = ptrtoint ptr %tx_dropped.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %tx_dropped.i.i, align 4
  %inc.i.i = add i32 %35, 1
  store i32 %inc.i.i, ptr %tx_dropped.i.i, align 4
  br label %cleanup.i.i

cleanup.i.i:                                      ; preds = %if.end.i.i, %for.body.i.i.cleanup.i.i_crit_edge
  %inc3.i.i = add nuw nsw i32 %i.016.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc3.i.i, 64
  br i1 %exitcond.not.i.i, label %sis190_tx_clear.exit.i, label %cleanup.i.i.for.body.i.i_crit_edge

cleanup.i.i.for.body.i.i_crit_edge:               ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i

sis190_tx_clear.exit.i:                           ; preds = %cleanup.i.i
  %dirty_tx.i.i = getelementptr i8, ptr %dev, i32 2376
  %36 = ptrtoint ptr %dirty_tx.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %dirty_tx.i.i, align 4
  %cur_tx.i.i = getelementptr i8, ptr %dev, i32 2368
  %37 = ptrtoint ptr %cur_tx.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %cur_tx.i.i, align 4
  %Rx_skbuff.i.i = getelementptr i8, ptr %dev, i32 2396
  %RxDescRing.i.i = getelementptr i8, ptr %dev, i32 2388
  %rx_buf_sz.i.i.i = getelementptr i8, ptr %dev, i32 2360
  br label %for.body.i21.i

for.body.i21.i:                                   ; preds = %for.inc.i.i.for.body.i21.i_crit_edge, %sis190_tx_clear.exit.i
  %i.010.i.i = phi i32 [ 0, %sis190_tx_clear.exit.i ], [ %inc.i26.i, %for.inc.i.i.for.body.i21.i_crit_edge ]
  %arrayidx.i19.i = getelementptr %struct.sis190_private, ptr %add.ptr.i, i32 0, i32 13, i32 %i.010.i.i
  %38 = ptrtoint ptr %arrayidx.i19.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx.i19.i, align 4
  %tobool.not.i20.i = icmp eq ptr %39, null
  br i1 %tobool.not.i20.i, label %for.body.i21.i.for.inc.i.i_crit_edge, label %if.end.i25.i

for.body.i21.i.for.inc.i.i_crit_edge:             ; preds = %for.body.i21.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i.i

if.end.i25.i:                                     ; preds = %for.body.i21.i
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr.i22.i = getelementptr ptr, ptr %Rx_skbuff.i.i, i32 %i.010.i.i
  %40 = ptrtoint ptr %RxDescRing.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %RxDescRing.i.i, align 4
  %add.ptr2.i.i = getelementptr %struct.RxDesc, ptr %41, i32 %i.010.i.i
  %42 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %pci_dev, align 4
  %dev.i.i23.i = getelementptr inbounds %struct.pci_dev, ptr %43, i32 0, i32 44
  %addr.i.i24.i = getelementptr %struct.RxDesc, ptr %41, i32 %i.010.i.i, i32 2
  %44 = ptrtoint ptr %addr.i.i24.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %addr.i.i24.i, align 4
  %46 = tail call i32 @llvm.bswap.i32(i32 %45) #14
  %47 = ptrtoint ptr %rx_buf_sz.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %rx_buf_sz.i.i.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev.i.i23.i, i32 noundef %46, i32 noundef %48, i32 noundef 2, i32 noundef 0) #14
  %49 = ptrtoint ptr %add.ptr.i22.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %add.ptr.i22.i, align 4
  tail call void @consume_skb(ptr noundef %50) #14
  %51 = ptrtoint ptr %add.ptr.i22.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr null, ptr %add.ptr.i22.i, align 4
  %52 = ptrtoint ptr %add.ptr2.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 0, ptr %add.ptr2.i.i, align 4
  %53 = ptrtoint ptr %addr.i.i24.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 -272716322, ptr %addr.i.i24.i, align 4
  %size.i.i.i.i = getelementptr %struct.RxDesc, ptr %41, i32 %i.010.i.i, i32 3
  %54 = ptrtoint ptr %size.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %size.i.i.i.i, align 4
  %and.i.i.i.i = and i32 %55, 128
  store i32 %and.i.i.i.i, ptr %size.i.i.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !242
  tail call void @arm_heavy_mb() #14
  %status.i.i.i.i = getelementptr %struct.RxDesc, ptr %41, i32 %i.010.i.i, i32 1
  %56 = ptrtoint ptr %status.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 0, ptr %status.i.i.i.i, align 4
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.end.i25.i, %for.body.i21.i.for.inc.i.i_crit_edge
  %inc.i26.i = add nuw nsw i32 %i.010.i.i, 1
  %exitcond.not.i27.i = icmp eq i32 %inc.i26.i, 64
  br i1 %exitcond.not.i27.i, label %sis190_down.exit, label %for.inc.i.i.for.body.i21.i_crit_edge

for.inc.i.i.for.body.i21.i_crit_edge:             ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i21.i

sis190_down.exit:                                 ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %irq = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 46
  %57 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %irq, align 4
  %call1 = tail call ptr @free_irq(i32 noundef %58, ptr noundef %dev) #14
  %dev2 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %59 = ptrtoint ptr %TxDescRing.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %TxDescRing.i.i, align 4
  %tx_dma = getelementptr i8, ptr %dev, i32 2384
  %61 = ptrtoint ptr %tx_dma to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %tx_dma, align 4
  tail call void @dma_free_attrs(ptr noundef %dev2, i32 noundef 1024, ptr noundef %60, i32 noundef %62, i32 noundef 0) #14
  %63 = ptrtoint ptr %RxDescRing.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %RxDescRing.i.i, align 4
  %rx_dma = getelementptr i8, ptr %dev, i32 2380
  %65 = ptrtoint ptr %rx_dma to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %rx_dma, align 4
  tail call void @dma_free_attrs(ptr noundef %dev2, i32 noundef 1024, ptr noundef %64, i32 noundef %66, i32 noundef 0) #14
  %67 = ptrtoint ptr %TxDescRing.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr null, ptr %TxDescRing.i.i, align 4
  %68 = ptrtoint ptr %RxDescRing.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr null, ptr %RxDescRing.i.i, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sis190_start_xmit(ptr noundef %skb, ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %len2 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %2 = ptrtoint ptr %len2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 60, i32 %3)
  %cmp = icmp ult i32 %3, 60
  br i1 %cmp, label %skb_padto.exit, label %entry.if.end8_crit_edge, !prof !244

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end8

skb_padto.exit:                                   ; preds = %entry
  %sub.i = sub nuw nsw i32 60, %3
  %call.i.i = tail call i32 @__skb_pad(ptr noundef %skb, i32 noundef %sub.i, i1 noundef zeroext true) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool5.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool5.not, label %skb_padto.exit.if.end8_crit_edge, label %if.then6

skb_padto.exit.if.end8_crit_edge:                 ; preds = %skb_padto.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end8

if.then6:                                         ; preds = %skb_padto.exit
  call void @__sanitizer_cov_trace_pc() #16
  %tx_dropped = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 7
  %4 = ptrtoint ptr %tx_dropped to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tx_dropped, align 4
  %inc = add i32 %5, 1
  store i32 %inc, ptr %tx_dropped, align 4
  br label %cleanup

if.end8:                                          ; preds = %skb_padto.exit.if.end8_crit_edge, %entry.if.end8_crit_edge
  %len.0 = phi i32 [ 60, %skb_padto.exit.if.end8_crit_edge ], [ %3, %entry.if.end8_crit_edge ]
  %cur_tx = getelementptr i8, ptr %dev, i32 2368
  %6 = ptrtoint ptr %cur_tx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cur_tx, align 4
  %rem = and i32 %7, 63
  %TxDescRing = getelementptr i8, ptr %dev, i32 2392
  %8 = ptrtoint ptr %TxDescRing to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %TxDescRing, align 4
  %add.ptr = getelementptr %struct.TxDesc, ptr %9, i32 %rem
  %status = getelementptr %struct.TxDesc, ptr %9, i32 %rem, i32 1
  %10 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %status, align 4
  %.mask = and i32 %11, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask)
  %tobool9.not = icmp eq i32 %.mask, 0
  br i1 %tobool9.not, label %if.end21, label %if.then16, !prof !245

if.then16:                                        ; preds = %if.end8
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %12 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %13, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #14
  %msg_enable = getelementptr i8, ptr %dev, i32 3000
  %14 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %msg_enable, align 4
  %and17 = and i32 %15, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %if.then16.cleanup_crit_edge, label %if.then19

if.then16.cleanup_crit_edge:                      ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then19:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.60) #17
  br label %cleanup

if.end21:                                         ; preds = %if.end8
  %pci_dev = getelementptr i8, ptr %dev, i32 2308
  %16 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pci_dev, align 4
  %dev22 = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 44
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %18 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %data, align 4
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %19) #14
  br i1 %call.i, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %if.end21
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit_crit_edge, label %if.then.i, !prof !245

land.rhs.i.dma_map_single_attrs.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %dma_map_single_attrs.exit

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %dev22) #14
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 44, i32 3
  %20 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %21, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  %22 = ptrtoint ptr %dev22 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev22, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %23, %if.end.i.i ], [ %21, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.53, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.54, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #14
  br label %dma_map_single_attrs.exit

if.end39.i:                                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @debug_dma_map_single(ptr noundef %dev22, ptr noundef %19, i32 noundef %len.0) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %24 = load ptr, ptr @mem_map, align 4
  %25 = ptrtoint ptr %19 to i32
  %sub.i129 = add i32 %25, 1073741824
  %shr.i = lshr i32 %sub.i129, 12
  %add.ptr.i130 = getelementptr %struct.page, ptr %24, i32 %shr.i
  %and.i = and i32 %25, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev22, ptr noundef %add.ptr.i130, i32 noundef %and.i, i32 noundef %len.0, i32 noundef 1, i32 noundef 0) #14
  br label %dma_map_single_attrs.exit

dma_map_single_attrs.exit:                        ; preds = %if.end39.i, %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit_crit_edge
  %retval.0.i131 = phi i32 [ %call41.i, %if.end39.i ], [ -1, %dev_name.exit.i ], [ -1, %land.rhs.i.dma_map_single_attrs.exit_crit_edge ]
  %26 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pci_dev, align 4
  %dev25 = getelementptr inbounds %struct.pci_dev, ptr %27, i32 0, i32 44
  tail call void @debug_dma_mapping_error(ptr noundef %dev25, i32 noundef %retval.0.i131) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i131)
  %cmp.i132 = icmp eq i32 %retval.0.i131, -1
  br i1 %cmp.i132, label %do.body29, label %if.end37

do.body29:                                        ; preds = %dma_map_single_attrs.exit
  %msg_enable30 = getelementptr i8, ptr %dev, i32 3000
  %28 = ptrtoint ptr %msg_enable30 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %msg_enable30, align 4
  %and31 = and i32 %29, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %do.body29.cleanup_crit_edge, label %if.then33

do.body29.cleanup_crit_edge:                      ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then33:                                        ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.61) #17
  br label %cleanup

if.end37:                                         ; preds = %dma_map_single_attrs.exit
  %arrayidx = getelementptr %struct.sis190_private, ptr %add.ptr.i, i32 0, i32 14, i32 %rem
  %30 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %skb, ptr %arrayidx, align 4
  %31 = tail call i32 @llvm.bswap.i32(i32 %len.0)
  %32 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %add.ptr, align 4
  %33 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i131)
  %addr = getelementptr %struct.TxDesc, ptr %9, i32 %rem, i32 2
  %34 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %addr, align 4
  %size = getelementptr %struct.TxDesc, ptr %9, i32 %rem, i32 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %rem)
  %cmp38 = icmp eq i32 %rem, 63
  %or = or i32 %31, 128
  %spec.select = select i1 %cmp38, i32 %or, i32 %31
  %35 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %spec.select, ptr %size, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !246
  tail call void @arm_heavy_mb() #14
  %36 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 9152, ptr %status, align 4
  %negotiated_lpa = getelementptr i8, ptr %dev, i32 3048
  %37 = ptrtoint ptr %negotiated_lpa to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %negotiated_lpa, align 4
  %and46 = and i32 %38, 1184
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46)
  %tobool47.not = icmp eq i32 %and46, 0
  br i1 %tobool47.not, label %if.end37.if.end58_crit_edge, label %if.then48

if.end37.if.end58_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end58

if.then48:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #16
  %39 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 16320, ptr %status, align 4
  %40 = ptrtoint ptr %negotiated_lpa to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %negotiated_lpa, align 4
  %and52 = and i32 %41, 3072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52)
  %tobool53.not = icmp eq i32 %and52, 0
  %spec.store.select = select i1 %tobool53.not, i32 16320, i32 65472
  %42 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %spec.store.select, ptr %status, align 4
  br label %if.end58

if.end58:                                         ; preds = %if.then48, %if.end37.if.end58_crit_edge
  %43 = ptrtoint ptr %cur_tx to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %cur_tx, align 4
  %inc60 = add i32 %44, 1
  store i32 %inc60, ptr %cur_tx, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !247
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !248
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 286916608) #14, !srcloc !211
  %dirty_tx71 = getelementptr i8, ptr %dev, i32 2376
  %45 = ptrtoint ptr %dirty_tx71 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %dirty_tx71, align 4
  %47 = ptrtoint ptr %cur_tx to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %cur_tx, align 4
  %sub = add i32 %48, -64
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %46)
  %cmp73 = icmp eq i32 %sub, %46
  br i1 %cmp73, label %if.then74, label %if.end58.cleanup_crit_edge

if.end58.cleanup_crit_edge:                       ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then74:                                        ; preds = %if.end58
  %_tx.i.i133 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %49 = ptrtoint ptr %_tx.i.i133 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %_tx.i.i133, align 128
  %state.i.i134 = getelementptr inbounds %struct.netdev_queue, ptr %50, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i134) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !249
  %51 = ptrtoint ptr %dirty_tx71 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %dirty_tx71, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %46, i32 %52)
  %cmp82.not = icmp eq i32 %46, %52
  br i1 %cmp82.not, label %if.then74.cleanup_crit_edge, label %if.then83

if.then74.cleanup_crit_edge:                      ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then83:                                        ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #16
  %53 = ptrtoint ptr %_tx.i.i133 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %_tx.i.i133, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %54) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then83, %if.then74.cleanup_crit_edge, %if.end58.cleanup_crit_edge, %if.then33, %do.body29.cleanup_crit_edge, %if.then19, %if.then16.cleanup_crit_edge, %if.then6
  %retval.0 = phi i32 [ 16, %if.then19 ], [ 16, %if.then16.cleanup_crit_edge ], [ 16, %if.then33 ], [ 16, %do.body29.cleanup_crit_edge ], [ 0, %if.end58.cleanup_crit_edge ], [ 0, %if.then83 ], [ 0, %if.then74.cleanup_crit_edge ], [ 0, %if.then6 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sis190_set_rx_mode(ptr noundef %dev) #2 align 64 {
entry:
  %mc_filter = alloca [2 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %mc_filter) #14
  %2 = getelementptr inbounds [2 x i32], ptr %mc_filter, i32 0, i32 1
  %flags1 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 14
  %3 = ptrtoint ptr %flags1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags1, align 8
  %and = and i32 %4, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %entry.do.body55.sink.split_crit_edge

entry.do.body55.sink.split_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body55.sink.split

if.else:                                          ; preds = %entry
  %mc = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 66
  %count = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 66, i32 1
  %5 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 33, i32 %6)
  %cmp = icmp slt i32 %6, 33
  %and4 = and i32 %4, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  %or.cond = select i1 %cmp, i1 %tobool5.not, i1 false
  br i1 %or.cond, label %if.else9, label %if.else.do.body55.sink.split_crit_edge

if.else.do.body55.sink.split_crit_edge:           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body55.sink.split

if.else9:                                         ; preds = %if.else
  %7 = ptrtoint ptr %mc_filter to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %mc_filter, align 4
  %8 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %2, align 4
  %9 = ptrtoint ptr %mc to i32
  call void @__asan_load4_noabort(i32 %9)
  %ha.0106 = load ptr, ptr %mc, align 4
  %cmp16.not107 = icmp eq ptr %ha.0106, %mc
  br i1 %cmp16.not107, label %if.else9.do.body55_crit_edge, label %if.else9.cond.end_crit_edge

if.else9.cond.end_crit_edge:                      ; preds = %if.else9
  br label %cond.end

if.else9.do.body55_crit_edge:                     ; preds = %if.else9
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body55

cond.end:                                         ; preds = %cond.end.cond.end_crit_edge, %if.else9.cond.end_crit_edge
  %ha.0108 = phi ptr [ %ha.0, %cond.end.cond.end_crit_edge ], [ %ha.0106, %if.else9.cond.end_crit_edge ]
  %addr = getelementptr inbounds %struct.netdev_hw_addr, ptr %ha.0108, i32 0, i32 2
  %call17 = tail call i32 @crc32_le(i32 noundef -1, ptr noundef %addr, i32 noundef 6) #19
  %sum.shift.i = lshr i32 %call17, 24
  %arrayidx.i10.i11.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %sum.shift.i
  %10 = ptrtoint ptr %arrayidx.i10.i11.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx.i10.i11.i, align 1
  %conv6.i12.i = zext i8 %11 to i32
  %and42 = and i32 %conv6.i12.i, 31
  %shl43 = shl nuw i32 1, %and42
  %and41 = lshr i32 %conv6.i12.i, 5
  %12 = and i32 %and41, 1
  %arrayidx45 = getelementptr [2 x i32], ptr %mc_filter, i32 0, i32 %12
  %13 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx45, align 4
  %or46 = or i32 %shl43, %14
  store i32 %or46, ptr %arrayidx45, align 4
  %15 = ptrtoint ptr %ha.0108 to i32
  call void @__asan_load4_noabort(i32 %15)
  %ha.0 = load ptr, ptr %ha.0108, align 4
  %cmp16.not = icmp eq ptr %ha.0, %mc
  br i1 %cmp16.not, label %cond.end.do.body55_crit_edge, label %cond.end.cond.end_crit_edge

cond.end.cond.end_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end

cond.end.do.body55_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body55

do.body55.sink.split:                             ; preds = %if.else.do.body55.sink.split_crit_edge, %entry.do.body55.sink.split_crit_edge
  %rx_mode.1.ph = phi i16 [ 3842, %entry.do.body55.sink.split_crit_edge ], [ 3586, %if.else.do.body55.sink.split_crit_edge ]
  %16 = ptrtoint ptr %mc_filter to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %mc_filter, align 4
  %17 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -1, ptr %2, align 4
  br label %do.body55

do.body55:                                        ; preds = %do.body55.sink.split, %cond.end.do.body55_crit_edge, %if.else9.do.body55_crit_edge
  %rx_mode.1 = phi i16 [ 2562, %if.else9.do.body55_crit_edge ], [ %rx_mode.1.ph, %do.body55.sink.split ], [ 3586, %cond.end.do.body55_crit_edge ]
  %lock = getelementptr i8, ptr %dev, i32 2316
  %call60 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !250
  tail call void @arm_heavy_mb() #14
  %18 = tail call i16 @llvm.bswap.i16(i16 %rx_mode.1)
  %add.ptr69 = getelementptr i8, ptr %1, i32 96
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr69, i16 %18) #14, !srcloc !226
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !251
  tail call void @arm_heavy_mb() #14
  %19 = ptrtoint ptr %mc_filter to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %mc_filter, align 4
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  %add.ptr74 = getelementptr i8, ptr %1, i32 104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr74, i32 %21) #14, !srcloc !211
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !252
  tail call void @arm_heavy_mb() #14
  %22 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %2, align 4
  %24 = tail call i32 @llvm.bswap.i32(i32 %23)
  %add.ptr79 = getelementptr i8, ptr %1, i32 108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr79, i32 %24) #14, !srcloc !211
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call60) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %mc_filter) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sis190_mac_addr(ptr noundef %dev, ptr noundef %p) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @eth_mac_addr(ptr noundef %dev, ptr noundef %p) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @sis190_init_rxfilter(ptr noundef %dev)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_validate_addr(ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sis190_ioctl(ptr noundef %dev, ptr noundef %ifr, i32 noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %state.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 6
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.cond.end_crit_edge, label %cond.false

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %mii_if = getelementptr i8, ptr %dev, i32 3004
  %ifr_ifru.i = getelementptr inbounds %struct.ifreq, ptr %ifr, i32 0, i32 1
  %call3 = tail call i32 @generic_mii_ioctl(ptr noundef %mii_if, ptr noundef %ifr_ifru.i, i32 noundef %cmd, ptr noundef null) #14
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %cond = phi i32 [ %call3, %cond.false ], [ -22, %entry.cond.end_crit_edge ]
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sis190_tx_timeout(ptr noundef %dev, i32 noundef %txqueue) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %1) #14, !srcloc !216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !253
  %3 = and i8 %2, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.do.body7_crit_edge, label %do.body

entry.do.body7_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body7

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !254
  tail call void @arm_heavy_mb() #14
  %and4 = and i8 %2, -2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %1, i8 %and4) #14, !srcloc !215
  br label %do.body7

do.body7:                                         ; preds = %do.body, %entry.do.body7_crit_edge
  %msg_enable = getelementptr i8, ptr %dev, i32 3000
  %4 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %msg_enable, align 4
  %and8 = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %do.body7.do.body26_crit_edge, label %if.then10

do.body7.do.body26_crit_edge:                     ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body26

if.then10:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #16
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #14, !srcloc !208
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !255
  %add.ptr19 = getelementptr i8, ptr %1, i32 12
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr19) #14, !srcloc !208
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !256
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %dev, ptr noundef nonnull @.str.62, i32 noundef %7, i32 noundef %9) #17
  br label %do.body26

do.body26:                                        ; preds = %if.then10, %do.body7.do.body26_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !257
  tail call void @arm_heavy_mb() #14
  %add.ptr29 = getelementptr i8, ptr %1, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr29, i32 0) #14, !srcloc !211
  %lock = getelementptr i8, ptr %dev, i32 2316
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #14
  %pci_dev.i = getelementptr i8, ptr %dev, i32 2308
  %TxDescRing.i = getelementptr i8, ptr %dev, i32 2392
  %dev.i = getelementptr i8, ptr %dev, i32 2312
  br label %for.body.i

for.body.i:                                       ; preds = %cleanup.i.for.body.i_crit_edge, %do.body26
  %i.016.i = phi i32 [ 0, %do.body26 ], [ %inc3.i, %cleanup.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.sis190_private, ptr %add.ptr.i, i32 0, i32 14, i32 %i.016.i
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %for.body.i.cleanup.i_crit_edge, label %if.end.i

for.body.i.cleanup.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.i

if.end.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  %12 = ptrtoint ptr %pci_dev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pci_dev.i, align 4
  %14 = ptrtoint ptr %TxDescRing.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %TxDescRing.i, align 4
  %add.ptr.i43 = getelementptr %struct.TxDesc, ptr %15, i32 %i.016.i
  %len1.i.i = getelementptr inbounds %struct.sk_buff, ptr %11, i32 0, i32 6
  %16 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %len1.i.i, align 4
  %18 = tail call i32 @llvm.umax.i32(i32 %17, i32 60) #14
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44
  %addr.i.i = getelementptr %struct.TxDesc, ptr %15, i32 %i.016.i, i32 2
  %19 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %addr.i.i, align 4
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #14
  tail call void @dma_unmap_page_attrs(ptr noundef %dev.i.i, i32 noundef %21, i32 noundef %18, i32 noundef 1, i32 noundef 0) #14
  %22 = call ptr @memset(ptr %add.ptr.i43, i32 0, i32 16)
  %23 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %arrayidx.i, align 4
  tail call void @consume_skb(ptr noundef nonnull %11) #14
  %24 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev.i, align 4
  %tx_dropped.i = getelementptr inbounds %struct.net_device, ptr %25, i32 0, i32 36, i32 7
  %26 = ptrtoint ptr %tx_dropped.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %tx_dropped.i, align 4
  %inc.i = add i32 %27, 1
  store i32 %inc.i, ptr %tx_dropped.i, align 4
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end.i, %for.body.i.cleanup.i_crit_edge
  %inc3.i = add nuw nsw i32 %i.016.i, 1
  %exitcond.not.i = icmp eq i32 %inc3.i, 64
  br i1 %exitcond.not.i, label %sis190_tx_clear.exit, label %cleanup.i.for.body.i_crit_edge

cleanup.i.for.body.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

sis190_tx_clear.exit:                             ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #16
  %dirty_tx.i = getelementptr i8, ptr %dev, i32 2376
  %28 = ptrtoint ptr %dirty_tx.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %dirty_tx.i, align 4
  %cur_tx.i = getelementptr i8, ptr %dev, i32 2368
  %29 = ptrtoint ptr %cur_tx.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %cur_tx.i, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #14
  tail call fastcc void @sis190_hw_start(ptr noundef %dev)
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %30 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %_tx.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %31) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sis190_netpoll(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %pci_dev = getelementptr i8, ptr %dev, i32 2308
  %0 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pci_dev, align 4
  %irq1 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 46
  %2 = ptrtoint ptr %irq1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq1, align 4
  tail call void @disable_irq(i32 noundef %3) #14
  %call2 = tail call i32 @sis190_irq(i32 noundef %3, ptr noundef %dev)
  tail call void @enable_irq(i32 noundef %3) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sis190_irq(i32 noundef %irq, ptr noundef %__dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %__dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 32
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #14, !srcloc !208
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !258
  %4 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.86)
  switch i32 %2, label %if.end [
    i32 -1, label %entry.out_crit_edge
    i32 0, label %entry.out_crit_edge70
  ]

entry.out_crit_edge70:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end:                                           ; preds = %entry
  %state.i = getelementptr inbounds %struct.net_device, ptr %__dev, i32 0, i32 6
  %5 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.then7, label %do.body, !prof !244

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @sis190_asic_down(ptr noundef %1)
  br label %out

do.body:                                          ; preds = %if.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !259
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %2) #14, !srcloc !211
  %and = and i32 %3, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool10.not = icmp eq i32 %and, 0
  br i1 %tobool10.not, label %do.body.if.end21_crit_edge, label %do.body12

do.body.if.end21_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end21

do.body12:                                        ; preds = %do.body
  %msg_enable = getelementptr i8, ptr %__dev, i32 3000
  %7 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %msg_enable, align 4
  %and13 = and i32 %8, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %do.body12.do.end18_crit_edge, label %if.then15

do.body12.do.end18_crit_edge:                     ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end18

if.then15:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %__dev, ptr noundef nonnull @.str.56) #17
  br label %do.end18

do.end18:                                         ; preds = %if.then15, %do.body12.do.end18_crit_edge
  %timer = getelementptr i8, ptr %__dev, i32 2952
  %call19 = tail call i32 @del_timer(ptr noundef %timer) #14
  %phy_task = getelementptr i8, ptr %__dev, i32 2908
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %9 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %9, ptr noundef %phy_task) #14
  br label %if.end21

if.end21:                                         ; preds = %do.end18, %do.body.if.end21_crit_edge
  %and22 = and i32 %3, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %if.end21.if.end26_crit_edge, label %if.then24

if.end21.if.end26_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end26

if.then24:                                        ; preds = %if.end21
  %stats1.i = getelementptr inbounds %struct.net_device, ptr %__dev, i32 0, i32 36
  %cur_rx2.i = getelementptr i8, ptr %__dev, i32 2364
  %10 = ptrtoint ptr %cur_rx2.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cur_rx2.i, align 4
  %dirty_rx.i = getelementptr i8, ptr %__dev, i32 2372
  %12 = ptrtoint ptr %dirty_rx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dirty_rx.i, align 4
  %add.i = sub i32 64, %11
  %sub.i = add i32 %add.i, %13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.not24.i = icmp eq i32 %sub.i, 0
  br i1 %cmp.not24.i, label %if.then24.for.end.i_crit_edge, label %for.body.lr.ph.i

if.then24.for.end.i_crit_edge:                    ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %if.then24
  %RxDescRing.i = getelementptr i8, ptr %__dev, i32 2388
  %rx_over_errors.i.i = getelementptr inbounds %struct.net_device, ptr %__dev, i32 0, i32 36, i32 11
  %rx_length_errors.i.i = getelementptr inbounds %struct.net_device, ptr %__dev, i32 0, i32 36, i32 10
  %rx_frame_errors.i.i = getelementptr inbounds %struct.net_device, ptr %__dev, i32 0, i32 36, i32 13
  %rx_crc_errors.i.i = getelementptr inbounds %struct.net_device, ptr %__dev, i32 0, i32 36, i32 12
  %rx_errors.i.i = getelementptr inbounds %struct.net_device, ptr %__dev, i32 0, i32 36, i32 4
  %rx_buf_sz.i = getelementptr i8, ptr %__dev, i32 2360
  %pci_dev.i = getelementptr i8, ptr %__dev, i32 2308
  %dev.i.i = getelementptr i8, ptr %__dev, i32 2312
  %rx_bytes.i = getelementptr inbounds %struct.net_device, ptr %__dev, i32 0, i32 36, i32 2
  %multicast.i = getelementptr inbounds %struct.net_device, ptr %__dev, i32 0, i32 36, i32 8
  %msg_enable.i = getelementptr i8, ptr %__dev, i32 3000
  %rx_dropped.i = getelementptr inbounds %struct.net_device, ptr %__dev, i32 0, i32 36, i32 6
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %cur_rx.026.i = phi i32 [ %11, %for.body.lr.ph.i ], [ %inc52.i, %for.inc.i.for.body.i_crit_edge ]
  %rx_left.025.i = phi i32 [ %sub.i, %for.body.lr.ph.i ], [ %dec.i, %for.inc.i.for.body.i_crit_edge ]
  %rem.i = and i32 %cur_rx.026.i, 63
  %14 = ptrtoint ptr %RxDescRing.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %RxDescRing.i, align 4
  %add.ptr.i50 = getelementptr %struct.RxDesc, ptr %15, i32 %rem.i
  %status4.i = getelementptr %struct.RxDesc, ptr %15, i32 %rem.i, i32 1
  %16 = ptrtoint ptr %status4.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %status4.i, align 4
  %.mask.i = and i32 %17, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask.i)
  %tobool.not.i = icmp eq i32 %.mask.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i

if.end.i:                                         ; preds = %for.body.i
  %18 = ptrtoint ptr %add.ptr.i50 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %add.ptr.i50, align 4
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #14
  %21 = and i32 %20, 16711680
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %21)
  %.not.i.i = icmp eq i32 %21, 65536
  br i1 %.not.i.i, label %if.else.i, label %if.end.i.i

if.end.i.i:                                       ; preds = %if.end.i
  %and.i.i = and i32 %20, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i.if.end23.sink.split.i.i_crit_edge, label %if.else.i.i

if.end.i.i.if.end23.sink.split.i.i_crit_edge:     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end23.sink.split.i.i

if.else.i.i:                                      ; preds = %if.end.i.i
  %and6.i.i = and i32 %20, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i)
  %tobool7.not.i.i = icmp eq i32 %and6.i.i, 0
  br i1 %tobool7.not.i.i, label %if.else10.i.i, label %if.else.i.i.if.end23.sink.split.i.i_crit_edge

if.else.i.i.if.end23.sink.split.i.i_crit_edge:    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end23.sink.split.i.i

if.else10.i.i:                                    ; preds = %if.else.i.i
  %and11.i.i = and i32 %20, 6291456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i.i)
  %tobool12.not.i.i = icmp eq i32 %and11.i.i, 0
  br i1 %tobool12.not.i.i, label %if.else15.i.i, label %if.else10.i.i.if.end23.sink.split.i.i_crit_edge

if.else10.i.i.if.end23.sink.split.i.i_crit_edge:  ; preds = %if.else10.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end23.sink.split.i.i

if.else15.i.i:                                    ; preds = %if.else10.i.i
  %and16.i.i = and i32 %20, 1441792
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i.i)
  %tobool17.not.i.i = icmp eq i32 %and16.i.i, 0
  br i1 %tobool17.not.i.i, label %if.else15.i.i.if.then6.i_crit_edge, label %if.else15.i.i.if.end23.sink.split.i.i_crit_edge

if.else15.i.i.if.end23.sink.split.i.i_crit_edge:  ; preds = %if.else15.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end23.sink.split.i.i

if.else15.i.i.if.then6.i_crit_edge:               ; preds = %if.else15.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then6.i

if.end23.sink.split.i.i:                          ; preds = %if.else15.i.i.if.end23.sink.split.i.i_crit_edge, %if.else10.i.i.if.end23.sink.split.i.i_crit_edge, %if.else.i.i.if.end23.sink.split.i.i_crit_edge, %if.end.i.i.if.end23.sink.split.i.i_crit_edge
  %rx_over_errors.sink34.i.i = phi ptr [ %rx_crc_errors.i.i, %if.end.i.i.if.end23.sink.split.i.i_crit_edge ], [ %rx_over_errors.i.i, %if.else.i.i.if.end23.sink.split.i.i_crit_edge ], [ %rx_length_errors.i.i, %if.else10.i.i.if.end23.sink.split.i.i_crit_edge ], [ %rx_frame_errors.i.i, %if.else15.i.i.if.end23.sink.split.i.i_crit_edge ]
  %22 = ptrtoint ptr %rx_over_errors.sink34.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %rx_over_errors.sink34.i.i, align 4
  %inc9.i.i = add i32 %23, 1
  store i32 %inc9.i.i, ptr %rx_over_errors.sink34.i.i, align 4
  br label %if.then6.i

if.then6.i:                                       ; preds = %if.end23.sink.split.i.i, %if.else15.i.i.if.then6.i_crit_edge
  %24 = ptrtoint ptr %rx_errors.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %rx_errors.i.i, align 4
  %inc24.i.i = add i32 %25, 1
  store i32 %inc24.i.i, ptr %rx_errors.i.i, align 4
  %26 = ptrtoint ptr %rx_buf_sz.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %rx_buf_sz.i, align 4
  %size.i.i = getelementptr %struct.RxDesc, ptr %15, i32 %rem.i, i32 3
  %28 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %size.i.i, align 4
  %30 = shl i32 %29, 24
  %and.i1.i = and i32 %30, -2147483648
  %31 = ptrtoint ptr %add.ptr.i50 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %add.ptr.i50, align 4
  %and1.i.i51 = and i32 %27, 65528
  %or.i.i = or i32 %and.i1.i, %and1.i.i51
  %32 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #14
  %33 = ptrtoint ptr %size.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %size.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !260
  tail call void @arm_heavy_mb() #14
  %34 = ptrtoint ptr %status4.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 192, ptr %status4.i, align 4
  br label %for.inc.i

if.else.i:                                        ; preds = %if.end.i
  %arrayidx.i = getelementptr %struct.sis190_private, ptr %add.ptr.i, i32 0, i32 13, i32 %rem.i
  %35 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx.i, align 4
  %addr7.i = getelementptr %struct.RxDesc, ptr %15, i32 %rem.i, i32 2
  %37 = ptrtoint ptr %addr7.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %addr7.i, align 4
  %39 = tail call i32 @llvm.bswap.i32(i32 %38) #14
  %and8.i = and i32 %20, 65535
  %sub9.i = add nsw i32 %and8.i, -4
  %40 = ptrtoint ptr %pci_dev.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %pci_dev.i, align 4
  %42 = ptrtoint ptr %rx_buf_sz.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %rx_buf_sz.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub9.i, i32 %43)
  %cmp11.i = icmp ugt i32 %sub9.i, %43
  br i1 %cmp11.i, label %do.body.i, label %if.end21.i, !prof !244

do.body.i:                                        ; preds = %if.else.i
  %44 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %msg_enable.i, align 4
  %and15.i = and i32 %45, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.i)
  %tobool16.not.i = icmp eq i32 %and15.i, 0
  br i1 %tobool16.not.i, label %do.body.i.cleanup.i_crit_edge, label %if.then17.i

do.body.i.cleanup.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.i

if.then17.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %__dev, ptr noundef nonnull @.str.57, i32 noundef %20) #17
  br label %cleanup.i

if.end21.i:                                       ; preds = %if.else.i
  %46 = load i32, ptr @rx_copybreak, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %46, i32 %sub9.i)
  %cmp.not.i.i = icmp sgt i32 %46, %sub9.i
  br i1 %cmp.not.i.i, label %if.end.i2.i, label %if.end21.i.if.else27.i_crit_edge

if.end21.i.if.else27.i_crit_edge:                 ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else27.i

if.end.i2.i:                                      ; preds = %if.end21.i
  %47 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev.i.i, align 4
  %add.i.i.i.i = add nsw i32 %and8.i, -2
  %call.i.i.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef %48, i32 noundef %add.i.i.i.i, i32 noundef 2592) #14
  %tobool.not.i.i.i.i = icmp eq ptr %call.i.i.i.i, null
  br i1 %tobool.not.i.i.i.i, label %if.end.i2.i.if.else27.i_crit_edge, label %if.then23.i

if.end.i2.i.if.else27.i_crit_edge:                ; preds = %if.end.i2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else27.i

if.then23.i:                                      ; preds = %if.end.i2.i
  call void @__sanitizer_cov_trace_pc() #16
  %data.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 19
  %49 = ptrtoint ptr %data.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %data.i.i.i.i.i, align 4
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %50, i32 2
  store ptr %add.ptr.i.i.i.i.i, ptr %data.i.i.i.i.i, align 4
  %tail.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 16
  %51 = ptrtoint ptr %tail.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %tail.i.i.i.i.i, align 8
  %add.ptr1.i.i.i.i.i = getelementptr i8, ptr %52, i32 2
  store ptr %add.ptr1.i.i.i.i.i, ptr %tail.i.i.i.i.i, align 8
  %53 = ptrtoint ptr %pci_dev.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %pci_dev.i, align 4
  %dev3.i.i = getelementptr inbounds %struct.pci_dev, ptr %54, i32 0, i32 44
  %55 = ptrtoint ptr %rx_buf_sz.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %rx_buf_sz.i, align 4
  tail call void @dma_sync_single_for_cpu(ptr noundef %dev3.i.i, i32 noundef %39, i32 noundef %56, i32 noundef 2) #14
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %36, i32 0, i32 19
  %57 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %data.i.i, align 4
  %59 = ptrtoint ptr %data.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %data.i.i.i.i.i, align 4
  %61 = call ptr @memcpy(ptr %60, ptr %58, i32 %sub9.i)
  %dev24.i = getelementptr inbounds %struct.pci_dev, ptr %41, i32 0, i32 44
  %62 = ptrtoint ptr %rx_buf_sz.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %rx_buf_sz.i, align 4
  tail call void @dma_sync_single_for_device(ptr noundef %dev24.i, i32 noundef %39, i32 noundef %63, i32 noundef 2) #14
  %64 = ptrtoint ptr %rx_buf_sz.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %rx_buf_sz.i, align 4
  %size.i3.i = getelementptr %struct.RxDesc, ptr %15, i32 %rem.i, i32 3
  %66 = ptrtoint ptr %size.i3.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %size.i3.i, align 4
  %68 = shl i32 %67, 24
  %and.i4.i = and i32 %68, -2147483648
  %69 = ptrtoint ptr %add.ptr.i50 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 0, ptr %add.ptr.i50, align 4
  %and1.i5.i = and i32 %65, 65528
  %or.i6.i = or i32 %and.i4.i, %and1.i5.i
  %70 = tail call i32 @llvm.bswap.i32(i32 %or.i6.i) #14
  %71 = ptrtoint ptr %size.i3.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %70, ptr %size.i3.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !260
  br label %if.end32.i

if.else27.i:                                      ; preds = %if.end.i2.i.if.else27.i_crit_edge, %if.end21.i.if.else27.i_crit_edge
  %dev28.i = getelementptr inbounds %struct.pci_dev, ptr %41, i32 0, i32 44
  %72 = ptrtoint ptr %rx_buf_sz.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %rx_buf_sz.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev28.i, i32 noundef %39, i32 noundef %73, i32 noundef 2, i32 noundef 0) #14
  %74 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr null, ptr %arrayidx.i, align 4
  %75 = ptrtoint ptr %add.ptr.i50 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 0, ptr %add.ptr.i50, align 4
  %76 = ptrtoint ptr %addr7.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 -272716322, ptr %addr7.i, align 4
  %size.i8.i = getelementptr %struct.RxDesc, ptr %15, i32 %rem.i, i32 3
  %77 = ptrtoint ptr %size.i8.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %size.i8.i, align 4
  %and.i9.i = and i32 %78, 128
  store i32 %and.i9.i, ptr %size.i8.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !242
  br label %if.end32.i

if.end32.i:                                       ; preds = %if.else27.i, %if.then23.i
  %storemerge.i = phi i32 [ 0, %if.else27.i ], [ 192, %if.then23.i ]
  %skb.018.i = phi ptr [ %36, %if.else27.i ], [ %call.i.i.i.i, %if.then23.i ]
  tail call void @arm_heavy_mb() #14
  %79 = ptrtoint ptr %status4.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %storemerge.i, ptr %status4.i, align 4
  %call33.i = tail call ptr @skb_put(ptr noundef %skb.018.i, i32 noundef %sub9.i) #14
  %call34.i = tail call zeroext i16 @eth_type_trans(ptr noundef %skb.018.i, ptr noundef %__dev) #14
  %protocol.i = getelementptr inbounds %struct.sk_buff, ptr %skb.018.i, i32 0, i32 15, i32 0, i32 18
  %80 = ptrtoint ptr %protocol.i to i32
  call void @__asan_store2_noabort(i32 %80)
  store i16 %call34.i, ptr %protocol.i, align 8
  %call35.i = tail call i32 @netif_rx(ptr noundef %skb.018.i) #14
  %81 = ptrtoint ptr %stats1.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %stats1.i, align 4
  %inc36.i = add i32 %82, 1
  store i32 %inc36.i, ptr %stats1.i, align 4
  %83 = ptrtoint ptr %rx_bytes.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %rx_bytes.i, align 4
  %add37.i = add i32 %84, %sub9.i
  store i32 %add37.i, ptr %rx_bytes.i, align 4
  %and38.i = and i32 %20, 786432
  call void @__sanitizer_cov_trace_const_cmp4(i32 524288, i32 %and38.i)
  %cmp39.i = icmp eq i32 %and38.i, 524288
  br i1 %cmp39.i, label %if.then40.i, label %if.end32.i.for.inc.i_crit_edge

if.end32.i.for.inc.i_crit_edge:                   ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

if.then40.i:                                      ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #16
  %85 = ptrtoint ptr %multicast.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %multicast.i, align 4
  %inc41.i = add i32 %86, 1
  store i32 %inc41.i, ptr %multicast.i, align 4
  br label %for.inc.i

cleanup.i:                                        ; preds = %if.then17.i, %do.body.i.cleanup.i_crit_edge
  %87 = ptrtoint ptr %rx_dropped.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %rx_dropped.i, align 4
  %inc.i = add i32 %88, 1
  store i32 %inc.i, ptr %rx_dropped.i, align 4
  %89 = ptrtoint ptr %rx_length_errors.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %rx_length_errors.i.i, align 4
  %inc19.i = add i32 %90, 1
  store i32 %inc19.i, ptr %rx_length_errors.i.i, align 4
  %91 = ptrtoint ptr %rx_buf_sz.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %rx_buf_sz.i, align 4
  tail call fastcc void @sis190_give_to_asic(ptr noundef %add.ptr.i50, i32 noundef %92) #14
  br label %for.inc.i

for.inc.i:                                        ; preds = %cleanup.i, %if.then40.i, %if.end32.i.for.inc.i_crit_edge, %if.then6.i
  %dec.i = add i32 %rx_left.025.i, -1
  %inc52.i = add i32 %cur_rx.026.i, 1
  %cmp.not.i = icmp eq i32 %dec.i, 0
  br i1 %cmp.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %for.body.i.for.end.i_crit_edge, %if.then24.for.end.i_crit_edge
  %cur_rx.0.lcssa.i = phi i32 [ %11, %if.then24.for.end.i_crit_edge ], [ %inc52.i, %for.inc.i.for.end.i_crit_edge ], [ %cur_rx.026.i, %for.body.i.for.end.i_crit_edge ]
  %93 = ptrtoint ptr %cur_rx2.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %cur_rx2.i, align 4
  store i32 %cur_rx.0.lcssa.i, ptr %cur_rx2.i, align 4
  %95 = ptrtoint ptr %dirty_rx.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %dirty_rx.i, align 4
  %call58.i = tail call fastcc i32 @sis190_rx_fill(ptr noundef %add.ptr.i, i32 noundef %96, i32 noundef %cur_rx.0.lcssa.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58.i)
  %tobool59.not.i = icmp ne i32 %call58.i, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %cur_rx.0.lcssa.i, i32 %94)
  %tobool60.not.i = icmp eq i32 %cur_rx.0.lcssa.i, %94
  %or.cond.i = select i1 %tobool59.not.i, i1 true, i1 %tobool60.not.i
  br i1 %or.cond.i, label %for.end.i.if.end70.i_crit_edge, label %do.body62.i

for.end.i.if.end70.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end70.i

do.body62.i:                                      ; preds = %for.end.i
  %msg_enable63.i = getelementptr i8, ptr %__dev, i32 3000
  %97 = ptrtoint ptr %msg_enable63.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %msg_enable63.i, align 4
  %and64.i = and i32 %98, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and64.i)
  %tobool65.not.i = icmp eq i32 %and64.i, 0
  br i1 %tobool65.not.i, label %do.body62.i.if.end70.i_crit_edge, label %if.then66.i

do.body62.i.if.end70.i_crit_edge:                 ; preds = %do.body62.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end70.i

if.then66.i:                                      ; preds = %do.body62.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %__dev, ptr noundef nonnull @.str.58) #17
  br label %if.end70.i

if.end70.i:                                       ; preds = %if.then66.i, %do.body62.i.if.end70.i_crit_edge, %for.end.i.if.end70.i_crit_edge
  %99 = ptrtoint ptr %dirty_rx.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %dirty_rx.i, align 4
  %add72.i = add i32 %100, %call58.i
  store i32 %add72.i, ptr %dirty_rx.i, align 4
  %add74.i = add i32 %add72.i, 64
  %101 = ptrtoint ptr %cur_rx2.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %cur_rx2.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add74.i, i32 %102)
  %cmp76.i = icmp eq i32 %add74.i, %102
  br i1 %cmp76.i, label %do.body78.i, label %if.end70.i.if.end26_crit_edge

if.end70.i.if.end26_crit_edge:                    ; preds = %if.end70.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end26

do.body78.i:                                      ; preds = %if.end70.i
  %msg_enable79.i = getelementptr i8, ptr %__dev, i32 3000
  %103 = ptrtoint ptr %msg_enable79.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %msg_enable79.i, align 4
  %and80.i = and i32 %104, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and80.i)
  %tobool81.not.i = icmp eq i32 %and80.i, 0
  br i1 %tobool81.not.i, label %do.body78.i.if.end26_crit_edge, label %if.then82.i

do.body78.i.if.end26_crit_edge:                   ; preds = %do.body78.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end26

if.then82.i:                                      ; preds = %do.body78.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @netdev_emerg(ptr noundef %__dev, ptr noundef nonnull @.str.59) #17
  br label %if.end26

if.end26:                                         ; preds = %if.then82.i, %do.body78.i.if.end26_crit_edge, %if.end70.i.if.end26_crit_edge, %if.end21.if.end26_crit_edge
  %and27 = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool28.not, label %if.end26.out_crit_edge, label %if.then29

if.end26.out_crit_edge:                           ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.then29:                                        ; preds = %if.end26
  %dirty_tx2.i = getelementptr i8, ptr %__dev, i32 2376
  %105 = ptrtoint ptr %dirty_tx2.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %dirty_tx2.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !261
  %cur_tx.i = getelementptr i8, ptr %__dev, i32 2368
  %107 = ptrtoint ptr %cur_tx.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %cur_tx.i, align 4
  %sub.i52 = sub i32 %108, %106
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %sub.i52)
  %cmp.i = icmp eq i32 %sub.i52, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i52)
  %tobool.not5.i = icmp eq i32 %sub.i52, 0
  br i1 %tobool.not5.i, label %if.then29.for.end.i69_crit_edge, label %for.body.lr.ph.i54

if.then29.for.end.i69_crit_edge:                  ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i69

for.body.lr.ph.i54:                               ; preds = %if.then29
  %TxDescRing.i = getelementptr i8, ptr %__dev, i32 2392
  %tx_window_errors.i.i = getelementptr inbounds %struct.net_device, ptr %__dev, i32 0, i32 36, i32 20
  %tx_aborted_errors.i.i = getelementptr inbounds %struct.net_device, ptr %__dev, i32 0, i32 36, i32 16
  %tx_fifo_errors.i.i = getelementptr inbounds %struct.net_device, ptr %__dev, i32 0, i32 36, i32 18
  %tx_carrier_errors.i.i = getelementptr inbounds %struct.net_device, ptr %__dev, i32 0, i32 36, i32 17
  %tx_errors.i.i = getelementptr inbounds %struct.net_device, ptr %__dev, i32 0, i32 36, i32 5
  %tx_packets.i = getelementptr inbounds %struct.net_device, ptr %__dev, i32 0, i32 36, i32 1
  %tx_bytes.i = getelementptr inbounds %struct.net_device, ptr %__dev, i32 0, i32 36, i32 3
  %collisions.i = getelementptr inbounds %struct.net_device, ptr %__dev, i32 0, i32 36, i32 9
  %pci_dev.i53 = getelementptr i8, ptr %__dev, i32 2308
  br label %for.body.i57

for.body.i57:                                     ; preds = %for.inc.i68.for.body.i57_crit_edge, %for.body.lr.ph.i54
  %dirty_tx.07.i = phi i32 [ %106, %for.body.lr.ph.i54 ], [ %inc23.i, %for.inc.i68.for.body.i57_crit_edge ]
  %pending.06.i = phi i32 [ %sub.i52, %for.body.lr.ph.i54 ], [ %dec.i66, %for.inc.i68.for.body.i57_crit_edge ]
  %rem.i55 = and i32 %dirty_tx.07.i, 63
  %109 = ptrtoint ptr %TxDescRing.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %TxDescRing.i, align 4
  %add.ptr.i56 = getelementptr %struct.TxDesc, ptr %110, i32 %rem.i55
  %status7.i = getelementptr %struct.TxDesc, ptr %110, i32 %rem.i55, i32 1
  %111 = ptrtoint ptr %status7.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %status7.i, align 4
  %113 = tail call i32 @llvm.bswap.i32(i32 %112) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %113)
  %tobool8.not.i = icmp sgt i32 %113, -1
  br i1 %tobool8.not.i, label %if.end.i61, label %for.body.i57.for.end.i69_crit_edge

for.body.i57.for.end.i69_crit_edge:               ; preds = %for.body.i57
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i69

if.end.i61:                                       ; preds = %for.body.i57
  %arrayidx.i58 = getelementptr %struct.sis190_private, ptr %add.ptr.i, i32 0, i32 14, i32 %rem.i55
  %114 = ptrtoint ptr %arrayidx.i58 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %arrayidx.i58, align 4
  %and.i.i59 = and i32 %113, 983040
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i59)
  %tobool.not.i.i60 = icmp eq i32 %and.i.i59, 0
  br i1 %tobool.not.i.i60, label %if.then13.i, label %if.end.i.i62, !prof !245

if.end.i.i62:                                     ; preds = %if.end.i61
  %and3.i.i = and i32 %113, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i.i)
  %tobool4.not.i.i = icmp eq i32 %and3.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end.i.i62.if.end6.i.i_crit_edge, label %if.then5.i.i

if.end.i.i62.if.end6.i.i_crit_edge:               ; preds = %if.end.i.i62
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end6.i.i

if.then5.i.i:                                     ; preds = %if.end.i.i62
  call void @__sanitizer_cov_trace_pc() #16
  %116 = ptrtoint ptr %tx_window_errors.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %tx_window_errors.i.i, align 4
  %inc.i.i = add i32 %117, 1
  store i32 %inc.i.i, ptr %tx_window_errors.i.i, align 4
  br label %if.end6.i.i

if.end6.i.i:                                      ; preds = %if.then5.i.i, %if.end.i.i62.if.end6.i.i_crit_edge
  %and7.i.i = and i32 %113, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i.i)
  %tobool8.not.i.i = icmp eq i32 %and7.i.i, 0
  br i1 %tobool8.not.i.i, label %if.end6.i.i.if.end11.i.i_crit_edge, label %if.then9.i.i

if.end6.i.i.if.end11.i.i_crit_edge:               ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end11.i.i

if.then9.i.i:                                     ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %118 = ptrtoint ptr %tx_aborted_errors.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %tx_aborted_errors.i.i, align 4
  %inc10.i.i = add i32 %119, 1
  store i32 %inc10.i.i, ptr %tx_aborted_errors.i.i, align 4
  br label %if.end11.i.i

if.end11.i.i:                                     ; preds = %if.then9.i.i, %if.end6.i.i.if.end11.i.i_crit_edge
  %and12.i.i = and i32 %113, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i.i)
  %tobool13.not.i.i = icmp eq i32 %and12.i.i, 0
  br i1 %tobool13.not.i.i, label %if.end11.i.i.if.end16.i.i_crit_edge, label %if.then14.i.i

if.end11.i.i.if.end16.i.i_crit_edge:              ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end16.i.i

if.then14.i.i:                                    ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %120 = ptrtoint ptr %tx_fifo_errors.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %tx_fifo_errors.i.i, align 4
  %inc15.i.i = add i32 %121, 1
  store i32 %inc15.i.i, ptr %tx_fifo_errors.i.i, align 4
  br label %if.end16.i.i

if.end16.i.i:                                     ; preds = %if.then14.i.i, %if.end11.i.i.if.end16.i.i_crit_edge
  %and17.i.i = and i32 %113, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i.i)
  %tobool18.not.i.i = icmp eq i32 %and17.i.i, 0
  br i1 %tobool18.not.i.i, label %if.end16.i.i.sis190_tx_pkt_err.exit.i_crit_edge, label %if.then19.i.i

if.end16.i.i.sis190_tx_pkt_err.exit.i_crit_edge:  ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sis190_tx_pkt_err.exit.i

if.then19.i.i:                                    ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %122 = ptrtoint ptr %tx_carrier_errors.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %tx_carrier_errors.i.i, align 4
  %inc20.i.i = add i32 %123, 1
  store i32 %inc20.i.i, ptr %tx_carrier_errors.i.i, align 4
  br label %sis190_tx_pkt_err.exit.i

sis190_tx_pkt_err.exit.i:                         ; preds = %if.then19.i.i, %if.end16.i.i.sis190_tx_pkt_err.exit.i_crit_edge
  %124 = ptrtoint ptr %tx_errors.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %tx_errors.i.i, align 4
  br label %for.inc.i68

if.then13.i:                                      ; preds = %if.end.i61
  call void @__sanitizer_cov_trace_pc() #16
  %126 = ptrtoint ptr %tx_packets.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %tx_packets.i, align 4
  %inc.i63 = add i32 %127, 1
  store i32 %inc.i63, ptr %tx_packets.i, align 4
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %115, i32 0, i32 6
  %128 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %len.i, align 4
  %130 = ptrtoint ptr %tx_bytes.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %tx_bytes.i, align 4
  %add.i64 = add i32 %131, %129
  store i32 %add.i64, ptr %tx_bytes.i, align 4
  %and14.i = and i32 %113, 65535
  %sub15.i = add nsw i32 %and14.i, -1
  %132 = ptrtoint ptr %collisions.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %collisions.i, align 4
  br label %for.inc.i68

for.inc.i68:                                      ; preds = %if.then13.i, %sis190_tx_pkt_err.exit.i
  %.sink.i = phi i32 [ %133, %if.then13.i ], [ 1, %sis190_tx_pkt_err.exit.i ]
  %sub15.sink.i = phi i32 [ %sub15.i, %if.then13.i ], [ %125, %sis190_tx_pkt_err.exit.i ]
  %collisions.sink.i = phi ptr [ %collisions.i, %if.then13.i ], [ %tx_errors.i.i, %sis190_tx_pkt_err.exit.i ]
  %add16.i = add i32 %sub15.sink.i, %.sink.i
  %134 = ptrtoint ptr %collisions.sink.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 %add16.i, ptr %collisions.sink.i, align 4
  %135 = ptrtoint ptr %pci_dev.i53 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %pci_dev.i53, align 4
  %len1.i.i = getelementptr inbounds %struct.sk_buff, ptr %115, i32 0, i32 6
  %137 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %len1.i.i, align 4
  %139 = tail call i32 @llvm.umax.i32(i32 %138, i32 60) #14
  %dev.i.i65 = getelementptr inbounds %struct.pci_dev, ptr %136, i32 0, i32 44
  %addr.i.i = getelementptr %struct.TxDesc, ptr %110, i32 %rem.i55, i32 2
  %140 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %addr.i.i, align 4
  %142 = tail call i32 @llvm.bswap.i32(i32 %141) #14
  tail call void @dma_unmap_page_attrs(ptr noundef %dev.i.i65, i32 noundef %142, i32 noundef %139, i32 noundef 1, i32 noundef 0) #14
  %143 = call ptr @memset(ptr %add.ptr.i56, i32 0, i32 16)
  %144 = ptrtoint ptr %arrayidx.i58 to i32
  call void @__asan_store4_noabort(i32 %144)
  store ptr null, ptr %arrayidx.i58, align 4
  tail call void @__dev_kfree_skb_irq(ptr noundef %115, i32 noundef 0) #14
  %dec.i66 = add i32 %pending.06.i, -1
  %inc23.i = add i32 %dirty_tx.07.i, 1
  %tobool.not.i67 = icmp eq i32 %dec.i66, 0
  br i1 %tobool.not.i67, label %for.inc.i68.for.end.i69_crit_edge, label %for.inc.i68.for.body.i57_crit_edge

for.inc.i68.for.body.i57_crit_edge:               ; preds = %for.inc.i68
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i57

for.inc.i68.for.end.i69_crit_edge:                ; preds = %for.inc.i68
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i69

for.end.i69:                                      ; preds = %for.inc.i68.for.end.i69_crit_edge, %for.body.i57.for.end.i69_crit_edge, %if.then29.for.end.i69_crit_edge
  %dirty_tx.0.lcssa.i = phi i32 [ %106, %if.then29.for.end.i69_crit_edge ], [ %108, %for.inc.i68.for.end.i69_crit_edge ], [ %dirty_tx.07.i, %for.body.i57.for.end.i69_crit_edge ]
  %145 = ptrtoint ptr %dirty_tx2.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %dirty_tx2.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %146, i32 %dirty_tx.0.lcssa.i)
  %cmp25.not.i = icmp eq i32 %146, %dirty_tx.0.lcssa.i
  br i1 %cmp25.not.i, label %for.end.i69.out_crit_edge, label %if.then27.i

for.end.i69.out_crit_edge:                        ; preds = %for.end.i69
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.then27.i:                                      ; preds = %for.end.i69
  %147 = ptrtoint ptr %dirty_tx2.i to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 %dirty_tx.0.lcssa.i, ptr %dirty_tx2.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !262
  br i1 %cmp.i, label %if.then36.i, label %if.then27.i.out_crit_edge

if.then27.i.out_crit_edge:                        ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.then36.i:                                      ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #16
  %_tx.i.i.i = getelementptr inbounds %struct.net_device, ptr %__dev, i32 0, i32 103
  %148 = ptrtoint ptr %_tx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %_tx.i.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %149) #14
  br label %out

out:                                              ; preds = %if.then36.i, %if.then27.i.out_crit_edge, %for.end.i69.out_crit_edge, %if.end26.out_crit_edge, %if.then7, %entry.out_crit_edge, %entry.out_crit_edge70
  %tobool31.not = phi i32 [ 1, %if.end26.out_crit_edge ], [ 0, %entry.out_crit_edge ], [ 1, %if.then7 ], [ 0, %entry.out_crit_edge70 ], [ 1, %for.end.i69.out_crit_edge ], [ 1, %if.then27.i.out_crit_edge ], [ 1, %if.then36.i ]
  ret i32 %tobool31.not
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sis190_hw_start(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !237
  tail call void @arm_heavy_mb() #14
  %add.ptr.i75 = getelementptr i8, ptr %1, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i75, i32 8388608) #14, !srcloc !211
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i75) #14, !srcloc !208
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !238
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !239
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i75, i32 0) #14, !srcloc !211
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !240
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 1703936) #14, !srcloc !211
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !241
  tail call void @arm_heavy_mb() #14
  %add.ptr3.i.i = getelementptr i8, ptr %1, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i.i, i32 1703936) #14, !srcloc !211
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !234
  tail call void @arm_heavy_mb() #14
  %add.ptr.i.i.i = getelementptr i8, ptr %1, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 0) #14, !srcloc !211
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !235
  tail call void @arm_heavy_mb() #14
  %add.ptr3.i.i.i = getelementptr i8, ptr %1, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i.i.i, i32 -1) #14, !srcloc !211
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i75) #14, !srcloc !208
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !236
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !263
  tail call void @arm_heavy_mb() #14
  %tx_dma = getelementptr i8, ptr %dev, i32 2384
  %4 = ptrtoint ptr %tx_dma to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tx_dma, align 4
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %add.ptr = getelementptr i8, ptr %1, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %6) #14, !srcloc !211
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !264
  tail call void @arm_heavy_mb() #14
  %rx_dma = getelementptr i8, ptr %dev, i32 2380
  %7 = ptrtoint ptr %rx_dma to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %rx_dma, align 4
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  %add.ptr4 = getelementptr i8, ptr %1, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 %9) #14, !srcloc !211
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !265
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i.i.i, i32 -1) #14, !srcloc !211
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !266
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 0) #14, !srcloc !211
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !267
  tail call void @arm_heavy_mb() #14
  %add.ptr16 = getelementptr i8, ptr %1, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16, i32 0) #14, !srcloc !211
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !268
  tail call void @arm_heavy_mb() #14
  %add.ptr20 = getelementptr i8, ptr %1, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20, i32 1610612736) #14, !srcloc !211
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !269
  tail call void @arm_heavy_mb() #14
  %add.ptr24 = getelementptr i8, ptr %1, i32 96
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr24, i16 512) #14, !srcloc !226
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !270
  tail call void @arm_heavy_mb() #14
  %add.ptr28 = getelementptr i8, ptr %1, i32 104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr28, i32 0) #14, !srcloc !211
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !271
  tail call void @arm_heavy_mb() #14
  %add.ptr32 = getelementptr i8, ptr %1, i32 108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr32, i32 0) #14, !srcloc !211
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !272
  tail call void @arm_heavy_mb() #14
  %add.ptr36 = getelementptr i8, ptr %1, i32 112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr36, i32 0) #14, !srcloc !211
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !273
  tail call void @arm_heavy_mb() #14
  %add.ptr40 = getelementptr i8, ptr %1, i32 116
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr40, i32 0) #14, !srcloc !211
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i75) #14, !srcloc !208
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !274
  tail call void @sis190_set_rx_mode(ptr noundef %dev)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !275
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 -687865600) #14, !srcloc !211
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !276
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 18481152) #14, !srcloc !211
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !277
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i.i, i32 488243200) #14, !srcloc !211
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %11 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %12, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sis190_rx_fill(ptr nocapture noundef %tp, i32 noundef %start, i32 noundef %end) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_cmp4(i32 %start, i32 %end)
  %cmp4 = icmp ult i32 %start, %end
  br i1 %cmp4, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %RxDescRing = getelementptr inbounds %struct.sis190_private, ptr %tp, i32 0, i32 11
  %rx_buf_sz1.i = getelementptr inbounds %struct.sis190_private, ptr %tp, i32 0, i32 4
  %dev.i = getelementptr inbounds %struct.sis190_private, ptr %tp, i32 0, i32 2
  %pci_dev.i = getelementptr inbounds %struct.sis190_private, ptr %tp, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %cur.05 = phi i32 [ %start, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %rem = and i32 %cur.05, 63
  %arrayidx = getelementptr %struct.sis190_private, ptr %tp, i32 0, i32 13, i32 %rem
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.end:                                           ; preds = %for.body
  %2 = ptrtoint ptr %RxDescRing to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %RxDescRing, align 4
  %add.ptr = getelementptr %struct.RxDesc, ptr %3, i32 %rem
  %4 = ptrtoint ptr %rx_buf_sz1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rx_buf_sz1.i, align 4
  %6 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i, align 4
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef %7, i32 noundef %5, i32 noundef 2592) #14
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %if.end.skb_alloc_failed.i_crit_edge, label %if.end.i, !prof !244

if.end.skb_alloc_failed.i_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %skb_alloc_failed.i

if.end.i:                                         ; preds = %if.end
  %8 = ptrtoint ptr %pci_dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pci_dev.i, align 4
  %dev5.i = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %10 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data.i, align 4
  %12 = ptrtoint ptr %rx_buf_sz1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rx_buf_sz1.i, align 4
  %call.i26.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %11) #14
  br i1 %call.i26.i, label %land.rhs.i.i, label %if.end39.i.i

land.rhs.i.i:                                     ; preds = %if.end.i
  %.b1.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs.i.i.dma_map_single_attrs.exit.i_crit_edge, label %if.then.i.i, !prof !245

land.rhs.i.i.dma_map_single_attrs.exit.i_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %dma_map_single_attrs.exit.i

if.then.i.i:                                      ; preds = %land.rhs.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i = tail call ptr @dev_driver_string(ptr noundef %dev5.i) #14
  %init_name.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44, i32 3
  %14 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %15, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.dev_name.exit.i.i_crit_edge

if.then.i.i.dev_name.exit.i.i_crit_edge:          ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %dev_name.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %16 = ptrtoint ptr %dev5.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev5.i, align 4
  br label %dev_name.exit.i.i

dev_name.exit.i.i:                                ; preds = %if.end.i.i.i, %if.then.i.i.dev_name.exit.i.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %17, %if.end.i.i.i ], [ %15, %if.then.i.i.dev_name.exit.i.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.53, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.54, ptr noundef %call16.i.i, ptr noundef %retval.0.i.i.i) #14
  br label %dma_map_single_attrs.exit.i

if.end39.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @debug_dma_map_single(ptr noundef %dev5.i, ptr noundef %11, i32 noundef %13) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %18 = load ptr, ptr @mem_map, align 4
  %19 = ptrtoint ptr %11 to i32
  %sub.i.i = add i32 %19, 1073741824
  %shr.i.i = lshr i32 %sub.i.i, 12
  %add.ptr.i.i = getelementptr %struct.page, ptr %18, i32 %shr.i.i
  %and.i.i = and i32 %19, 4095
  %call41.i.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev5.i, ptr noundef %add.ptr.i.i, i32 noundef %and.i.i, i32 noundef %13, i32 noundef 2, i32 noundef 0) #14
  br label %dma_map_single_attrs.exit.i

dma_map_single_attrs.exit.i:                      ; preds = %if.end39.i.i, %dev_name.exit.i.i, %land.rhs.i.i.dma_map_single_attrs.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %call41.i.i, %if.end39.i.i ], [ -1, %dev_name.exit.i.i ], [ -1, %land.rhs.i.i.dma_map_single_attrs.exit.i_crit_edge ]
  %20 = ptrtoint ptr %pci_dev.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pci_dev.i, align 4
  %dev9.i = getelementptr inbounds %struct.pci_dev, ptr %21, i32 0, i32 44
  tail call void @debug_dma_mapping_error(ptr noundef %dev9.i, i32 noundef %retval.0.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i.i)
  %cmp.i.i = icmp eq i32 %retval.0.i.i, -1
  br i1 %cmp.i.i, label %out.i, label %if.end13.i

if.end13.i:                                       ; preds = %dma_map_single_attrs.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  %22 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i.i) #14
  %addr.i.i = getelementptr %struct.RxDesc, ptr %3, i32 %rem, i32 2
  %23 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %addr.i.i, align 4
  %size.i.i.i = getelementptr %struct.RxDesc, ptr %3, i32 %rem, i32 3
  %24 = ptrtoint ptr %size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %size.i.i.i, align 4
  %26 = shl i32 %25, 24
  %and.i.i.i = and i32 %26, -2147483648
  %27 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %add.ptr, align 4
  %and1.i.i.i = and i32 %5, 65528
  %or.i.i.i = or i32 %and.i.i.i, %and1.i.i.i
  %28 = tail call i32 @llvm.bswap.i32(i32 %or.i.i.i) #14
  %29 = ptrtoint ptr %size.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %size.i.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !260
  br label %cleanup

out.i:                                            ; preds = %dma_map_single_attrs.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %call.i.i, i32 noundef 1) #14
  br label %skb_alloc_failed.i

skb_alloc_failed.i:                               ; preds = %out.i, %if.end.skb_alloc_failed.i_crit_edge
  %30 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %add.ptr, align 4
  %addr.i27.i = getelementptr %struct.RxDesc, ptr %3, i32 %rem, i32 2
  %31 = ptrtoint ptr %addr.i27.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 -272716322, ptr %addr.i27.i, align 4
  %size.i.i = getelementptr %struct.RxDesc, ptr %3, i32 %rem, i32 3
  %32 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %size.i.i, align 4
  %and.i28.i = and i32 %33, 128
  store i32 %and.i28.i, ptr %size.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !242
  br label %cleanup

cleanup:                                          ; preds = %skb_alloc_failed.i, %if.end13.i
  %.sink.i = phi i32 [ 0, %skb_alloc_failed.i ], [ 192, %if.end13.i ]
  %retval.0.i = phi ptr [ null, %skb_alloc_failed.i ], [ %call.i.i, %if.end13.i ]
  tail call void @arm_heavy_mb() #14
  %status.i.i = getelementptr %struct.RxDesc, ptr %3, i32 %rem, i32 1
  %34 = ptrtoint ptr %status.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %.sink.i, ptr %status.i.i, align 4
  %35 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %retval.0.i, ptr %arrayidx, align 4
  %tobool5.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool5.not, label %cleanup.for.end_crit_edge, label %cleanup.for.inc_crit_edge

cleanup.for.inc_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.inc:                                          ; preds = %cleanup.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add i32 %cur.05, 1
  %exitcond.not = icmp eq i32 %inc, %end
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %cleanup.for.end_crit_edge, %entry.for.end_crit_edge
  %cur.0.lcssa = phi i32 [ %start, %entry.for.end_crit_edge ], [ %cur.05, %cleanup.for.end_crit_edge ], [ %end, %for.inc.for.end_crit_edge ]
  %sub = sub i32 %cur.0.lcssa, %start
  ret i32 %sub
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

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sis190_give_to_asic(ptr nocapture noundef %desc, i32 noundef %rx_buf_sz) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %size = getelementptr inbounds %struct.RxDesc, ptr %desc, i32 0, i32 3
  %0 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %size, align 4
  %2 = shl i32 %1, 24
  %and = and i32 %2, -2147483648
  %3 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %desc, align 4
  %and1 = and i32 %rx_buf_sz, 65528
  %or = or i32 %and, %and1
  %4 = tail call i32 @llvm.bswap.i32(i32 %or)
  %5 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %size, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !260
  tail call void @arm_heavy_mb() #14
  %status = getelementptr inbounds %struct.RxDesc, ptr %desc, i32 0, i32 1
  %6 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 192, ptr %status, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sis190_phy_timer(ptr noundef %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr i8, ptr %t, i32 -640
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %state.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.if.end_crit_edge, label %if.then, !prof !244

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %phy_task = getelementptr i8, ptr %t, i32 -44
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %4 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %4, ptr noundef %phy_task) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_timer(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @eth_type_trans(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_rx(ptr noundef) local_unnamed_addr #0

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_emerg(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_cpu(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_irq(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_irq(i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_rcu() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__skb_pad(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #0

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_le(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_mac_addr(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_mii_ioctl(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #0

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sis190_get_drvinfo(ptr nocapture noundef readonly %dev, ptr noundef %info) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %driver = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 1
  %call1 = tail call i32 @strlcpy(ptr noundef %driver, ptr noundef nonnull @.str.1, i32 noundef 32) #14
  %version = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 2
  %call3 = tail call i32 @strlcpy(ptr noundef %version, ptr noundef nonnull @.str.2, i32 noundef 32) #14
  %pci_dev = getelementptr i8, ptr %dev, i32 2308
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sis190_get_regs_len(ptr nocapture noundef readnone %dev) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 128
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sis190_get_regs(ptr noundef %dev, ptr nocapture noundef readonly %regs, ptr noundef %p) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %lock = getelementptr i8, ptr %dev, i32 2316
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #14
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %len = getelementptr inbounds %struct.ethtool_regs, ptr %regs, i32 0, i32 2
  %2 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len, align 4
  tail call void @mmiocpy(ptr noundef %p, ptr noundef %1, i32 noundef %3) #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #14
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sis190_get_msglevel(ptr nocapture noundef readonly %dev) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_enable = getelementptr i8, ptr %dev, i32 3000
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msg_enable, align 4
  ret i32 %1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @sis190_set_msglevel(ptr nocapture noundef writeonly %dev, i32 noundef %value) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_enable = getelementptr i8, ptr %dev, i32 3000
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %value, ptr %msg_enable, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sis190_nway_reset(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %mii_if = getelementptr i8, ptr %dev, i32 3004
  %call1 = tail call i32 @mii_nway_restart(ptr noundef %mii_if) #14
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethtool_op_get_link(ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sis190_get_link_ksettings(ptr noundef %dev, ptr noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %mii_if = getelementptr i8, ptr %dev, i32 3004
  tail call void @mii_ethtool_get_link_ksettings(ptr noundef %mii_if, ptr noundef %cmd) #14
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sis190_set_link_ksettings(ptr noundef %dev, ptr noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %mii_if = getelementptr i8, ptr %dev, i32 3004
  %call1 = tail call i32 @mii_ethtool_set_link_ksettings(ptr noundef %mii_if, ptr noundef %cmd) #14
  ret i32 %call1
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmiocpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mii_nway_restart(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @mii_ethtool_get_link_ksettings(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mii_ethtool_set_link_ksettings(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @__mdio_read(ptr nocapture noundef readonly %dev, i32 noundef %phy_id, i32 noundef %reg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %shl.i = shl i32 %reg, 11
  %shl1.i = shl i32 %phy_id, 6
  %or.i = or i32 %shl1.i, %shl.i
  %or2.i = or i32 %or.i, 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !220
  tail call void @arm_heavy_mb() #14
  %2 = tail call i32 @llvm.bswap.i32(i32 %or2.i) #14
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %2) #14, !srcloc !211
  tail call void @msleep(i32 noundef 1) #14
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %if.end.i.i.for.body.i.i_crit_edge, %entry
  %i.015.i.i = phi i32 [ 0, %entry ], [ %inc.i.i, %if.end.i.i.for.body.i.i_crit_edge ]
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #14, !srcloc !208
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !221
  %4 = and i32 %3, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i.i, label %for.body.i.i.mdio_read.exit_crit_edge, label %if.end.i.i

for.body.i.i.mdio_read.exit_crit_edge:            ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %mdio_read.exit

if.end.i.i:                                       ; preds = %for.body.i.i
  tail call void @msleep(i32 noundef 1) #14
  %inc.i.i = add nuw nsw i32 %i.015.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 100
  br i1 %exitcond.not.i.i, label %do.end7.i.i, label %if.end.i.i.for.body.i.i_crit_edge

if.end.i.i.for.body.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i

do.end7.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %call9.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51) #17
  br label %mdio_read.exit

mdio_read.exit:                                   ; preds = %do.end7.i.i, %for.body.i.i.mdio_read.exit_crit_edge
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #14, !srcloc !208
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !222
  %shr.i = lshr i32 %6, 16
  ret i32 %shr.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__mdio_write(ptr nocapture noundef readonly %dev, i32 noundef %phy_id, i32 noundef %reg, i32 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %shl.i = shl i32 %reg, 11
  %shl1.i = shl i32 %phy_id, 6
  %shl3.i = shl i32 %val, 16
  %or.i = or i32 %shl1.i, %shl.i
  %or2.i = or i32 %or.i, %shl3.i
  %or4.i = or i32 %or2.i, 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !220
  tail call void @arm_heavy_mb() #14
  %2 = tail call i32 @llvm.bswap.i32(i32 %or4.i) #14
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %2) #14, !srcloc !211
  tail call void @msleep(i32 noundef 1) #14
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %if.end.i.i.for.body.i.i_crit_edge, %entry
  %i.015.i.i = phi i32 [ 0, %entry ], [ %inc.i.i, %if.end.i.i.for.body.i.i_crit_edge ]
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #14, !srcloc !208
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !221
  %4 = and i32 %3, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i.i, label %for.body.i.i.mdio_write.exit_crit_edge, label %if.end.i.i

for.body.i.i.mdio_write.exit_crit_edge:           ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %mdio_write.exit

if.end.i.i:                                       ; preds = %for.body.i.i
  tail call void @msleep(i32 noundef 1) #14
  %inc.i.i = add nuw nsw i32 %i.015.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 100
  br i1 %exitcond.not.i.i, label %do.end7.i.i, label %if.end.i.i.for.body.i.i_crit_edge

if.end.i.i.for.body.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i

do.end7.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %call9.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51) #17
  br label %mdio_write.exit

mdio_write.exit:                                  ; preds = %do.end7.i.i, %for.body.i.i.mdio_write.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #14

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 92)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #15 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 92)
  ret void
}

attributes #0 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { nounwind }
attributes #15 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #16 = { nomerge }
attributes #17 = { cold nounwind }
attributes #18 = { nounwind allocsize(2) }
attributes #19 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !22, !23, !25, !26, !27, !29, !30, !32, !34, !36, !38, !40, !41, !42, !43, !44, !46, !47, !49, !50, !52, !54, !56, !58, !60, !61, !62, !63, !65, !66, !67, !69, !70, !71, !73, !74, !75, !77, !78, !79, !81, !82, !83, !85, !86, !87, !88, !90, !91, !92, !94, !96, !97, !98, !99, !101, !102, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !128, !129, !130, !132, !134, !135, !136, !138, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !158, !159, !160, !162, !163, !164, !165, !167, !168, !169, !171, !173, !175, !177, !179, !181, !183, !185, !187, !188, !189, !190, !192, !194, !196}
!llvm.module.flags = !{!198, !199, !200, !201, !202, !203, !204, !205}
!llvm.ident = !{!206}

!0 = !{ptr @__UNIQUE_ID_description343, !1, !"__UNIQUE_ID_description343", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/sis/sis190.c", i32 347, i32 1}
!2 = !{ptr @__param_rx_copybreak, !3, !"__param_rx_copybreak", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/sis/sis190.c", i32 348, i32 1}
!4 = !{ptr @__UNIQUE_ID_rx_copybreaktype344, !3, !"__UNIQUE_ID_rx_copybreaktype344", i1 false, i1 false}
!5 = !{ptr @__UNIQUE_ID_rx_copybreak345, !6, !"__UNIQUE_ID_rx_copybreak345", i1 false, i1 false}
!6 = !{!"../drivers/net/ethernet/sis/sis190.c", i32 349, i32 1}
!7 = !{ptr @__param_debug, !8, !"__param_debug", i1 false, i1 false}
!8 = !{!"../drivers/net/ethernet/sis/sis190.c", i32 350, i32 1}
!9 = !{ptr @__UNIQUE_ID_debugtype346, !8, !"__UNIQUE_ID_debugtype346", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_debug347, !11, !"__UNIQUE_ID_debug347", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/sis/sis190.c", i32 351, i32 1}
!12 = !{ptr @__UNIQUE_ID_author348, !13, !"__UNIQUE_ID_author348", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/sis/sis190.c", i32 352, i32 1}
!14 = !{ptr @__UNIQUE_ID_version349, !15, !"__UNIQUE_ID_version349", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/sis/sis190.c", i32 353, i32 1}
!16 = !{ptr @.str, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @__modver_attr, !15, !"__modver_attr", i1 false, i1 false}
!20 = !{ptr @__UNIQUE_ID_file350, !21, !"__UNIQUE_ID_file350", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/sis/sis190.c", i32 354, i32 1}
!22 = !{ptr @__UNIQUE_ID_license351, !21, !"__UNIQUE_ID_license351", i1 false, i1 false}
!23 = !{ptr @__initcall__kmod_sis190__352_1948_sis190_pci_driver_init6, !24, !"__initcall__kmod_sis190__352_1948_sis190_pci_driver_init6", i1 false, i1 false}
!24 = !{!"../drivers/net/ethernet/sis/sis190.c", i32 1948, i32 1}
!25 = !{ptr @__exitcall_sis190_pci_driver_exit, !24, !"__exitcall_sis190_pci_driver_exit", i1 false, i1 false}
!26 = !{ptr @__param_str_rx_copybreak, !3, !"__param_str_rx_copybreak", i1 false, i1 false}
!27 = !{ptr @rx_copybreak, !28, !"rx_copybreak", i1 false, i1 false}
!28 = !{!"../drivers/net/ethernet/sis/sis190.c", i32 341, i32 12}
!29 = !{ptr @__param_str_debug, !8, !"__param_str_debug", i1 false, i1 false}
!30 = !{ptr @debug, !31, !"debug", i1 false, i1 false}
!31 = !{!"../drivers/net/ethernet/sis/sis190.c", i32 345, i32 3}
!32 = !{ptr @sis190_pci_driver, !33, !"sis190_pci_driver", i1 false, i1 false}
!33 = !{!"../drivers/net/ethernet/sis/sis190.c", i32 1941, i32 26}
!34 = !{ptr @sis190_pci_tbl, !35, !"sis190_pci_tbl", i1 false, i1 false}
!35 = !{!"../drivers/net/ethernet/sis/sis190.c", i32 333, i32 35}
!36 = distinct !{null, !37, !"printed_version", i1 false, i1 false}
!37 = !{!"../drivers/net/ethernet/sis/sis190.c", i32 1862, i32 13}
!38 = !{ptr @.str.3, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/ethernet/sis/sis190.c", i32 1870, i32 4}
!40 = !{ptr @.str.4, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.5, !39, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @sis190_init_one._entry, !39, !"_entry", i1 false, i1 false}
!43 = !{ptr @sis190_init_one._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @sis190_init_one.__key, !45, !"__key", i1 false, i1 false}
!45 = !{!"../drivers/net/ethernet/sis/sis190.c", i32 1891, i32 2}
!46 = !{ptr @.str.6, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @sis190_init_one.__key.7, !48, !"__key", i1 false, i1 false}
!48 = !{!"../drivers/net/ethernet/sis/sis190.c", i32 1898, i32 2}
!49 = !{ptr @.str.8, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.9, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/ethernet/sis/sis190.c", i32 1909, i32 20}
!52 = !{ptr @.str.10, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/ethernet/sis/sis190.c", i32 1913, i32 20}
!54 = !{ptr @.str.11, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/ethernet/sis/sis190.c", i32 1914, i32 39}
!56 = !{ptr @.str.12, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/ethernet/sis/sis190.c", i32 1914, i32 49}
!58 = !{ptr @.str.13, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/ethernet/sis/sis190.c", i32 1484, i32 4}
!60 = !{ptr @.str.14, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @sis190_init_board._entry, !59, !"_entry", i1 false, i1 false}
!62 = !{ptr @sis190_init_board._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.16, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/net/ethernet/sis/sis190.c", i32 1492, i32 4}
!65 = !{ptr @sis190_init_board._entry.15, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @sis190_init_board._entry_ptr.17, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.19, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/net/ethernet/sis/sis190.c", i32 1498, i32 4}
!69 = !{ptr @sis190_init_board._entry.18, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @sis190_init_board._entry_ptr.20, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.22, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/net/ethernet/sis/sis190.c", i32 1506, i32 4}
!73 = !{ptr @sis190_init_board._entry.21, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @sis190_init_board._entry_ptr.23, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.25, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/net/ethernet/sis/sis190.c", i32 1514, i32 4}
!77 = !{ptr @sis190_init_board._entry.24, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @sis190_init_board._entry_ptr.26, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.28, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/net/ethernet/sis/sis190.c", i32 1524, i32 4}
!81 = !{ptr @sis190_init_board._entry.27, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @sis190_init_board._entry_ptr.29, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.30, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/net/ethernet/sis/sis190.c", i32 1594, i32 3}
!85 = !{ptr @.str.31, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @sis190_get_mac_addr_from_eeprom._entry, !84, !"_entry", i1 false, i1 false}
!87 = !{ptr @sis190_get_mac_addr_from_eeprom._entry_ptr, !84, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.33, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/net/ethernet/sis/sis190.c", i32 1601, i32 4}
!90 = !{ptr @sis190_get_mac_addr_from_eeprom._entry.32, !89, !"_entry", i1 false, i1 false}
!91 = !{ptr @sis190_get_mac_addr_from_eeprom._entry_ptr.34, !89, !"_entry_ptr", i1 false, i1 false}
!92 = distinct !{null, !93, !"ids", i1 false, i1 false}
!93 = !{!"../drivers/net/ethernet/sis/sis190.c", i32 1631, i32 19}
!94 = !{ptr @.str.35, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/net/ethernet/sis/sis190.c", i32 1639, i32 3}
!96 = !{ptr @.str.36, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @sis190_get_mac_addr_from_apc._entry, !95, !"_entry", i1 false, i1 false}
!98 = !{ptr @sis190_get_mac_addr_from_apc._entry_ptr, !95, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.38, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/net/ethernet/sis/sis190.c", i32 1649, i32 4}
!101 = !{ptr @sis190_get_mac_addr_from_apc._entry.37, !100, !"_entry", i1 false, i1 false}
!102 = !{ptr @sis190_get_mac_addr_from_apc._entry_ptr.39, !100, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.40, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/net/ethernet/sis/sis190.c", i32 940, i32 3}
!105 = !{ptr @.str.41, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/net/ethernet/sis/sis190.c", i32 950, i32 5}
!107 = !{ptr @.str.42, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/net/ethernet/sis/sis190.c", i32 952, i32 5}
!109 = !{ptr @.str.43, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/net/ethernet/sis/sis190.c", i32 954, i32 5}
!111 = !{ptr @.str.44, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/net/ethernet/sis/sis190.c", i32 956, i32 5}
!113 = !{ptr @.str.45, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/net/ethernet/sis/sis190.c", i32 958, i32 5}
!115 = !{ptr @.str.46, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/net/ethernet/sis/sis190.c", i32 960, i32 5}
!117 = !{ptr @.str.47, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/net/ethernet/sis/sis190.c", i32 961, i32 21}
!119 = !{ptr @.str.48, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/net/ethernet/sis/sis190.c", i32 966, i32 3}
!121 = !{ptr @.str.49, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/net/ethernet/sis/sis190.c", i32 971, i32 3}
!123 = !{ptr @.str.50, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/net/ethernet/sis/sis190.c", i32 1013, i32 3}
!125 = !{ptr @.str.51, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/net/ethernet/sis/sis190.c", i32 380, i32 3}
!127 = !{ptr @.str.52, !126, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @__mdio_cmd._entry, !126, !"_entry", i1 false, i1 false}
!129 = !{ptr @__mdio_cmd._entry_ptr, !126, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @sis190_netdev_ops, !131, !"sis190_netdev_ops", i1 false, i1 false}
!131 = !{!"../drivers/net/ethernet/sis/sis190.c", i32 1845, i32 36}
!132 = distinct !{null, !133, !"__already_done", i1 false, i1 false}
!133 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!134 = !{ptr @.str.53, !133, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @.str.54, !133, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @sis190_request_timer.__key, !137, !"__key", i1 false, i1 false}
!137 = !{!"../drivers/net/ethernet/sis/sis190.c", i32 1045, i32 2}
!138 = !{ptr @.str.55, !137, !"<string literal>", i1 false, i1 false}
!139 = !{ptr @.str.56, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/net/ethernet/sis/sis190.c", i32 760, i32 3}
!141 = !{ptr @.str.57, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/net/ethernet/sis/sis190.c", i32 605, i32 5}
!143 = !{ptr @.str.58, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/net/ethernet/sis/sis190.c", i32 643, i32 3}
!145 = !{ptr @.str.59, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/net/ethernet/sis/sis190.c", i32 647, i32 3}
!147 = !{ptr @.str.60, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/net/ethernet/sis/sis190.c", i32 1204, i32 3}
!149 = !{ptr @.str.61, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/net/ethernet/sis/sis190.c", i32 1212, i32 3}
!151 = !{ptr @.str.62, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/net/ethernet/sis/sis190.c", i32 1562, i32 2}
!153 = !{ptr @sis190_ethtool_ops, !154, !"sis190_ethtool_ops", i1 false, i1 false}
!154 = !{!"../drivers/net/ethernet/sis/sis190.c", i32 1815, i32 33}
!155 = !{ptr @.str.63, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/net/ethernet/sis/sis190.c", i32 1424, i32 4}
!157 = !{ptr @.str.64, !156, !"<string literal>", i1 false, i1 false}
!158 = !{ptr @sis190_mii_probe._entry, !156, !"_entry", i1 false, i1 false}
!159 = !{ptr @sis190_mii_probe._entry_ptr, !156, !"_entry_ptr", i1 false, i1 false}
!160 = !{ptr @.str.65, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/net/ethernet/sis/sis190.c", i32 1352, i32 4}
!162 = !{ptr @.str.66, !161, !"<string literal>", i1 false, i1 false}
!163 = !{ptr @sis190_init_phy._entry, !161, !"_entry", i1 false, i1 false}
!164 = !{ptr @sis190_init_phy._entry_ptr, !161, !"_entry_ptr", i1 false, i1 false}
!165 = !{ptr @.str.68, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/net/ethernet/sis/sis190.c", i32 1357, i32 4}
!167 = !{ptr @sis190_init_phy._entry.67, !166, !"_entry", i1 false, i1 false}
!168 = !{ptr @sis190_init_phy._entry_ptr.69, !166, !"_entry_ptr", i1 false, i1 false}
!169 = !{ptr @.str.70, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/net/ethernet/sis/sis190.c", i32 316, i32 4}
!171 = !{ptr @.str.71, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/net/ethernet/sis/sis190.c", i32 317, i32 4}
!173 = !{ptr @.str.72, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/net/ethernet/sis/sis190.c", i32 318, i32 4}
!175 = !{ptr @.str.73, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/net/ethernet/sis/sis190.c", i32 319, i32 4}
!177 = !{ptr @.str.74, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/net/ethernet/sis/sis190.c", i32 320, i32 4}
!179 = !{ptr @.str.75, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/net/ethernet/sis/sis190.c", i32 321, i32 4}
!181 = !{ptr @.str.76, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/net/ethernet/sis/sis190.c", i32 322, i32 4}
!183 = !{ptr @mii_chip_table, !184, !"mii_chip_table", i1 false, i1 false}
!184 = !{!"../drivers/net/ethernet/sis/sis190.c", i32 315, i32 3}
!185 = !{ptr @.str.77, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/net/ethernet/sis/sis190.c", i32 1312, i32 4}
!187 = !{ptr @.str.78, !186, !"<string literal>", i1 false, i1 false}
!188 = !{ptr @sis190_default_phy._entry, !186, !"_entry", i1 false, i1 false}
!189 = !{ptr @sis190_default_phy._entry_ptr, !186, !"_entry_ptr", i1 false, i1 false}
!190 = !{ptr @.str.79, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/net/ethernet/sis/sis190.c", i32 329, i32 4}
!192 = !{ptr @.str.80, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/net/ethernet/sis/sis190.c", i32 330, i32 4}
!194 = !{ptr @sis_chip_info, !195, !"sis_chip_info", i1 false, i1 false}
!195 = !{!"../drivers/net/ethernet/sis/sis190.c", i32 328, i32 3}
!196 = !{ptr @.str.81, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/net/ethernet/sis/sis190.c", i32 1731, i32 2}
!198 = !{i32 1, !"wchar_size", i32 2}
!199 = !{i32 1, !"min_enum_size", i32 4}
!200 = !{i32 8, !"branch-target-enforcement", i32 0}
!201 = !{i32 8, !"sign-return-address", i32 0}
!202 = !{i32 8, !"sign-return-address-all", i32 0}
!203 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!204 = !{i32 7, !"uwtable", i32 1}
!205 = !{i32 7, !"frame-pointer", i32 2}
!206 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!207 = !{!"auto-init"}
!208 = !{i64 4243711}
!209 = !{i64 2156584126}
!210 = !{i64 2156584448}
!211 = !{i64 4243293}
!212 = !{i64 2156585269}
!213 = !{i64 2156585823}
!214 = !{i64 2156669266}
!215 = !{i64 4243096}
!216 = !{i64 4243491}
!217 = !{i64 2156669648}
!218 = !{i64 2156669854}
!219 = !{i64 2156670236}
!220 = !{i64 2156580622}
!221 = !{i64 2156581365}
!222 = !{i64 2156583579}
!223 = !{i64 4242873}
!224 = !{i64 2156670959}
!225 = !{i64 2156671253}
!226 = !{i64 4242673}
!227 = !{i64 2156671782}
!228 = !{i64 2156672135}
!229 = !{i64 2156672900}
!230 = !{i64 2156613214}
!231 = !{i64 2156614046}
!232 = !{i64 2156614522}
!233 = !{i64 2156614991}
!234 = !{i64 2156586091}
!235 = !{i64 2156586569}
!236 = !{i64 2156587353}
!237 = !{i64 2156601413}
!238 = !{i64 2156602186}
!239 = !{i64 2156602458}
!240 = !{i64 2156587627}
!241 = !{i64 2156588102}
!242 = !{i64 2156589930}
!243 = !{i64 2156622646}
!244 = !{!"branch_weights", i32 1, i32 2000}
!245 = !{!"branch_weights", i32 2000, i32 1}
!246 = !{i64 2156624602}
!247 = !{i64 2156625212}
!248 = !{i64 2156625530}
!249 = !{i64 2156625965}
!250 = !{i64 2156599876}
!251 = !{i64 2156600391}
!252 = !{i64 2156600910}
!253 = !{i64 2156658068}
!254 = !{i64 2156658362}
!255 = !{i64 2156659506}
!256 = !{i64 2156660025}
!257 = !{i64 2156660297}
!258 = !{i64 2156593795}
!259 = !{i64 2156594118}
!260 = !{i64 2156589010}
!261 = !{i64 2156592873}
!262 = !{i64 2156593251}
!263 = !{i64 2156602946}
!264 = !{i64 2156603459}
!265 = !{i64 2156603962}
!266 = !{i64 2156604442}
!267 = !{i64 2156604905}
!268 = !{i64 2156605375}
!269 = !{i64 2156605849}
!270 = !{i64 2156606319}
!271 = !{i64 2156606771}
!272 = !{i64 2156607226}
!273 = !{i64 2156607686}
!274 = !{i64 2156608448}
!275 = !{i64 2156608740}
!276 = !{i64 2156609266}
!277 = !{i64 2156609774}
