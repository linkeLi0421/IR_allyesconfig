; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/smsc/smc911x.c_pt.bc'
source_filename = "../drivers/net/ethernet/smsc/smc911x.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.97 }
%union.anon.97 = type { ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.chip_id = type { i16, ptr }
%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.103, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.120, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.103 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.120 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
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
%struct.netdev_hw_addr = type { %struct.list_head, %struct.rb_node, [32 x i8], i8, i8, i32, i32, i32, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.ethtool_drvinfo = type { i32, [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8], [12 x i8], i32, i32, i32, i32, i32 }
%struct.ethtool_regs = type { i32, i32, i32, [0 x i8] }
%struct.ethtool_eeprom = type { i32, i32, i32, i32, [0 x i8] }
%struct.ethtool_link_settings = type { i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [1 x i8], [7 x i32], [0 x i32] }
%struct.ethtool_link_ksettings = type { %struct.ethtool_link_settings, %struct.anon.119, i32 }
%struct.anon.119 = type { [3 x i32], [3 x i32], [3 x i32] }

@__param_str_watchdog = internal constant [17 x i8] c"smc911x.watchdog\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@watchdog = internal global { i32, [28 x i8] } { i32 5000, [28 x i8] zeroinitializer }, align 32
@__param_watchdog = internal constant %struct.kernel_param { ptr @__param_str_watchdog, ptr null, ptr @param_ops_int, i16 256, i8 -1, i8 0, %union.anon.97 { ptr @watchdog } }, section "__param", align 4
@__UNIQUE_ID_watchdogtype339 = internal constant [30 x i8] c"smc911x.parmtype=watchdog:int\00", section ".modinfo", align 1
@__UNIQUE_ID_watchdog340 = internal constant [55 x i8] c"smc911x.parm=watchdog:transmit timeout in milliseconds\00", section ".modinfo", align 1
@__param_str_tx_fifo_kb = internal constant [19 x i8] c"smc911x.tx_fifo_kb\00", align 1
@tx_fifo_kb = internal global { i32, [28 x i8] } { i32 8, [28 x i8] zeroinitializer }, align 32
@__param_tx_fifo_kb = internal constant %struct.kernel_param { ptr @__param_str_tx_fifo_kb, ptr null, ptr @param_ops_int, i16 256, i8 -1, i8 0, %union.anon.97 { ptr @tx_fifo_kb } }, section "__param", align 4
@__UNIQUE_ID_tx_fifo_kbtype341 = internal constant [32 x i8] c"smc911x.parmtype=tx_fifo_kb:int\00", section ".modinfo", align 1
@__UNIQUE_ID_tx_fifo_kb342 = internal constant [69 x i8] c"smc911x.parm=tx_fifo_kb:transmit FIFO size in KB (1<x<15)(default=8)\00", section ".modinfo", align 1
@__UNIQUE_ID_file343 = internal constant [47 x i8] c"smc911x.file=drivers/net/ethernet/smsc/smc911x\00", section ".modinfo", align 1
@__UNIQUE_ID_license344 = internal constant [20 x i8] c"smc911x.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias345 = internal constant [31 x i8] c"smc911x.alias=platform:smc911x\00", section ".modinfo", align 1
@__initcall__kmod_smc911x__420_2198_smc911x_driver_init6 = internal global ptr @smc911x_driver_init, section ".initcall6.init", align 4
@smc911x_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @smc911x_drv_probe, ptr @smc911x_drv_remove, ptr null, ptr @smc911x_drv_suspend, ptr @smc911x_drv_resume, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_smc911x_driver_exit = internal global ptr @smc911x_driver_exit, section ".exitcall.exit", align 4
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"smc911x\00", [24 x i8] zeroinitializer }, align 32
@iomem_resource = external dso_local global %struct.resource, align 4
@smc911x_drv_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 2110, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\016%s: not found (%d).\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"smc911x_drv_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/net/ethernet/smsc/smc911x.c\00", [60 x i8] zeroinitializer }, align 32
@smc911x_drv_probe._entry_ptr = internal global ptr @smc911x_drv_probe._entry, section ".printk_index", align 4
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"smc911x_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Invalid chip endian 0x%08x\0A\00", [36 x i8] zeroinitializer }, align 32
@chip_ids = internal constant { [9 x %struct.chip_id], [56 x i8] } { [9 x %struct.chip_id] [%struct.chip_id { i16 277, ptr @.str.26 }, %struct.chip_id { i16 278, ptr @.str.27 }, %struct.chip_id { i16 279, ptr @.str.28 }, %struct.chip_id { i16 280, ptr @.str.29 }, %struct.chip_id { i16 -28143, ptr @.str.30 }, %struct.chip_id { i16 4442, ptr @.str.31 }, %struct.chip_id { i16 4474, ptr @.str.32 }, %struct.chip_id { i16 4490, ptr @.str.33 }, %struct.chip_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Unknown chip ID %04x\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Invalid TX FIFO size requested %d\0A\00", [61 x i8] zeroinitializer }, align 32
@smc911x_probe.__UNIQUE_ID_ddebug412 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.3, ptr @.str.13, i8 1, i8 -41, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"ERROR -- no AFC_CFG setting found\00", [62 x i8] zeroinitializer }, align 32
@smc911x_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.15 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&lp->lock\00", [22 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Couldn't autodetect your IRQ. Use irq=xx.\0A\00", [53 x i8] zeroinitializer }, align 32
@smc911x_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @smc911x_open, ptr @smc911x_close, ptr @smc911x_hard_start_xmit, ptr null, ptr null, ptr null, ptr @smc911x_set_multicast_list, ptr @eth_mac_addr, ptr @eth_validate_addr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @smc911x_timeout, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @smc911x_poll_controller, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@smc911x_ethtool_ops = internal constant { %struct.ethtool_ops, [68 x i8] } { %struct.ethtool_ops { i8 0, i32 0, i32 0, ptr @smc911x_ethtool_getdrvinfo, ptr @smc911x_ethtool_getregslen, ptr @smc911x_ethtool_getregs, ptr null, ptr null, ptr @smc911x_ethtool_getmsglevel, ptr @smc911x_ethtool_setmsglevel, ptr @smc911x_ethtool_nwayreset, ptr @ethtool_op_get_link, ptr null, ptr @smc911x_ethtool_geteeprom_len, ptr @smc911x_ethtool_geteeprom, ptr @smc911x_ethtool_seteeprom, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @smc911x_ethtool_get_link_ksettings, ptr @smc911x_ethtool_set_link_ksettings, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [68 x i8] zeroinitializer }, align 32
@smc911x_probe.__key.17 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.18 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"(work_completion)(&lp->phy_configure)\00", [58 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s (rev %d) at %#lx IRQ %d\00", [37 x i8] zeroinitializer }, align 32
@smc911x_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.4, ptr @.str.3, i32 2007, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\01c\0A\00", [28 x i8] zeroinitializer }, align 32
@smc911x_probe._entry_ptr = internal global ptr @smc911x_probe._entry, section ".printk_index", align 4
@.str.21 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"Invalid ethernet MAC address. Please set using ifconfig\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Ethernet addr: %pM\0A\00", [44 x i8] zeroinitializer }, align 32
@smc911x_probe.__UNIQUE_ID_ddebug414 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.3, ptr @.str.23, i8 1, i8 -8, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"No PHY found\0A\00", [18 x i8] zeroinitializer }, align 32
@smc911x_probe.__UNIQUE_ID_ddebug415 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.3, ptr @.str.24, i8 1, i8 -8, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"LAN911x Internal PHY\0A\00", [42 x i8] zeroinitializer }, align 32
@smc911x_probe.__UNIQUE_ID_ddebug416 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.3, ptr @.str.25, i8 1, i8 -7, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"External PHY 0x%08x\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"LAN9115\00", [24 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"LAN9116\00", [24 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"LAN9117\00", [24 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"LAN9118\00", [24 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"LAN9211\00", [24 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"LAN9215\00", [24 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"LAN9217\00", [24 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"LAN9218\00", [24 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"smc911x_reset\00", [18 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@smc911x_reset.__UNIQUE_ID_ddebug347 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.34, ptr @.str.3, ptr @.str.35, i8 0, i8 46, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"smc911x_reset timeout waiting for PM restore\0A\00", [50 x i8] zeroinitializer }, align 32
@smc911x_reset.__UNIQUE_ID_ddebug348 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.34, ptr @.str.3, ptr @.str.36, i8 0, i8 50, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"chip reset timeout, retrying...\0A\00", [63 x i8] zeroinitializer }, align 32
@smc911x_reset.__UNIQUE_ID_ddebug349 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.34, ptr @.str.3, ptr @.str.37, i8 0, i8 52, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"smc911x_reset timeout waiting for reset\0A\00", [55 x i8] zeroinitializer }, align 32
@smc911x_reset.__UNIQUE_ID_ddebug350 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.34, ptr @.str.3, ptr @.str.38, i8 0, i8 54, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"smc911x_reset timeout waiting for EEPROM busy\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"No Tx free space %d < %d\0A\00", [38 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@byte_rev_table = external dso_local local_unnamed_addr constant [256 x i8], align 1
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@version = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"smc911x.c: v1.0 04-16-2005 by Dustin McIntire <dustin@sensoria.com>\0A\00", [59 x i8] zeroinitializer }, align 32
@smc911x_ethtool_wait_eeprom_ready.__UNIQUE_ID_ddebug404 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.60, ptr @.str.3, ptr @.str.61, i8 1, i8 -115, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.60 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"smc911x_ethtool_wait_eeprom_ready\00", [62 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s timeout waiting for EEPROM to respond\0A\00", [54 x i8] zeroinitializer }, align 32
@smc911x_ethtool_wait_eeprom_ready.__UNIQUE_ID_ddebug405 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.60, ptr @.str.3, ptr @.str.62, i8 1, i8 -113, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.62 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s timeout waiting for EEPROM CMD not busy\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"PHY reset timed out\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Auto negotiation NOT supported\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"smc911x_rcv\00", [20 x i8] zeroinitializer }, align 32
@smc911x_rcv.__UNIQUE_ID_ddebug358 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.90, ptr @.str.3, ptr @.str.92, i8 0, i8 100, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.92 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Low memory, rcvd packet dropped.\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"smc911x_drop_pkt\00", [47 x i8] zeroinitializer }, align 32
@smc911x_drop_pkt.__UNIQUE_ID_ddebug355 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.94, ptr @.str.3, ptr @.str.95, i8 0, i8 89, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.95 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"timeout waiting for RX fast forward\0A\00", [59 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [15 x i64] [i64 13, i64 32, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14]
@__sancov_gen_cov_switch_values.105 = internal global [6 x i64] [i64 4, i64 16, i64 277, i64 279, i64 4442, i64 4474]
@__sancov_gen_cov_switch_values.106 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 8388608, i64 4294901760]
@__sancov_gen_cov_switch_values.107 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 8388608, i64 4294901760]
@__sancov_gen_cov_switch_values.108 = internal global [4 x i64] [i64 2, i64 32, i64 10, i64 100]
@___asan_gen_.109 = private unnamed_addr constant [9 x i8] c"watchdog\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 73, i32 12 }
@___asan_gen_.112 = private unnamed_addr constant [11 x i8] c"tx_fifo_kb\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 77, i32 12 }
@___asan_gen_.115 = private unnamed_addr constant [15 x i8] c"smc911x_driver\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 2188, i32 31 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 2194, i32 12 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 2110, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 1793, i32 2 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 1800, i32 19 }
@___asan_gen_.139 = private unnamed_addr constant [9 x i8] c"chip_ids\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 673, i32 29 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 1817, i32 19 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 1832, i32 19 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 1885, i32 5 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 1893, i32 2 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 1922, i32 20 }
@___asan_gen_.160 = private unnamed_addr constant [19 x i8] c"smc911x_netdev_ops\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 1744, i32 36 }
@___asan_gen_.163 = private unnamed_addr constant [20 x i8] c"smc911x_ethtool_ops\00", align 1
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 1682, i32 33 }
@___asan_gen_.166 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 1932, i32 2 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 1996, i32 20 }
@___asan_gen_.175 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 2007, i32 3 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 2009, i32 21 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 2012, i32 21 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 2017, i32 4 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 2019, i32 4 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 2021, i32 4 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 674, i32 15 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 675, i32 15 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 676, i32 15 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 677, i32 15 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 678, i32 15 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 679, i32 15 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 680, i32 15 }
@___asan_gen_.218 = private unnamed_addr constant [39 x i8] c"../drivers/net/ethernet/smsc/smc911x.h\00", align 1
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 681, i32 15 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 172, i32 2 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 184, i32 4 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 202, i32 5 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 209, i32 3 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 219, i32 3 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 542, i32 20 }
@___asan_gen_.238 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 17, i32 19 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 1587, i32 4 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 1595, i32 3 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 897, i32 20 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 919, i32 20 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 376, i32 2 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 400, i32 4 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 342, i32 2 }
@___asan_gen_.265 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.266 = private constant [39 x i8] c"../drivers/net/ethernet/smsc/smc911x.c\00", align 1
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 358, i32 4 }
@llvm.compiler.used = appending global [67 x ptr] [ptr @__UNIQUE_ID_alias345, ptr @__UNIQUE_ID_file343, ptr @__UNIQUE_ID_license344, ptr @__UNIQUE_ID_tx_fifo_kb342, ptr @__UNIQUE_ID_tx_fifo_kbtype341, ptr @__UNIQUE_ID_watchdog340, ptr @__UNIQUE_ID_watchdogtype339, ptr @__exitcall_smc911x_driver_exit, ptr @__initcall__kmod_smc911x__420_2198_smc911x_driver_init6, ptr @__param_tx_fifo_kb, ptr @__param_watchdog, ptr @smc911x_driver_exit, ptr @smc911x_drv_probe._entry, ptr @smc911x_drv_probe._entry_ptr, ptr @smc911x_probe._entry, ptr @smc911x_probe._entry_ptr, ptr @watchdog, ptr @tx_fifo_kb, ptr @smc911x_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.7, ptr @chip_ids, ptr @.str.9, ptr @.str.12, ptr @.str.13, ptr @smc911x_probe.__key, ptr @.str.15, ptr @.str.16, ptr @smc911x_netdev_ops, ptr @smc911x_ethtool_ops, ptr @smc911x_probe.__key.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.49, ptr @version, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.66, ptr @.str.67, ptr @.str.90, ptr @.str.92, ptr @.str.94, ptr @.str.95], section "llvm.metadata"
@0 = internal global [53 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @watchdog to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tx_fifo_kb to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smc911x_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smc911x_drv_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chip_ids to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smc911x_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smc911x_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smc911x_ethtool_ops to i32), i32 284, i32 352, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smc911x_probe.__key.17 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smc911x_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @version to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @smc911x_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @smc911x_driver, ptr noundef null) #13
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @smc911x_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @platform_driver_unregister(ptr noundef nonnull @smc911x_driver) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smc911x_drv_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #13
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %if.end

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %call, align 4
  %call1 = tail call ptr @__request_region(ptr noundef nonnull @iomem_resource, i32 noundef %1, i32 noundef 256, ptr noundef nonnull @.str, i32 noundef 0) #13
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.end.do.end_crit_edge, label %if.end4

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

if.end4:                                          ; preds = %if.end
  %call5 = tail call ptr @alloc_etherdev_mqs(i32 noundef 172, i32 noundef 1, i32 noundef 1) #13
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %if.end4.release_1_crit_edge, label %if.end8

if.end4.release_1_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  br label %release_1

if.end8:                                          ; preds = %if.end4
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %parent = getelementptr inbounds %struct.net_device, ptr %call5, i32 0, i32 133, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev, ptr %parent, align 8
  %dma = getelementptr inbounds %struct.net_device, ptr %call5, i32 0, i32 53
  %3 = ptrtoint ptr %dma to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %dma, align 1
  %call10 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #13
  %irq = getelementptr inbounds %struct.net_device, ptr %call5, i32 0, i32 64
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %call10, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp = icmp slt i32 %call10, 0
  br i1 %cmp, label %if.end8.release_both_crit_edge, label %if.end14

if.end8.release_both_crit_edge:                   ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  br label %release_both

if.end14:                                         ; preds = %if.end8
  %netdev = getelementptr i8, ptr %call5, i32 2468
  %5 = ptrtoint ptr %netdev to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call5, ptr %netdev, align 4
  %6 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %call, align 4
  %call17 = tail call ptr @ioremap(i32 noundef %7, i32 noundef 256) #13
  %tobool18.not = icmp eq ptr %call17, null
  br i1 %tobool18.not, label %if.end14.release_both_crit_edge, label %if.end20

if.end14.release_both_crit_edge:                  ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #15
  br label %release_both

if.end20:                                         ; preds = %if.end14
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %8 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call5, ptr %driver_data.i.i, align 4
  %base = getelementptr i8, ptr %call5, i32 2472
  %9 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call17, ptr %base, align 4
  %10 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %call, align 4
  %base_addr = getelementptr inbounds %struct.net_device, ptr %call5, i32 0, i32 5
  %12 = ptrtoint ptr %base_addr to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %base_addr, align 32
  %call22 = tail call fastcc i32 @smc911x_probe(ptr noundef nonnull %call5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %cmp23.not = icmp eq i32 %call22, 0
  br i1 %cmp23.not, label %if.end20.if.end27_crit_edge, label %if.then24

if.end20.if.end27_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end27

if.then24:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @iounmap(ptr noundef nonnull %call17) #13
  br label %release_both

release_both:                                     ; preds = %if.then24, %if.end14.release_both_crit_edge, %if.end8.release_both_crit_edge
  %ret.0 = phi i32 [ %call22, %if.then24 ], [ %call10, %if.end8.release_both_crit_edge ], [ -12, %if.end14.release_both_crit_edge ]
  tail call void @free_netdev(ptr noundef nonnull %call5) #13
  br label %release_1

release_1:                                        ; preds = %release_both, %if.end4.release_1_crit_edge
  %ret.1 = phi i32 [ %ret.0, %release_both ], [ -12, %if.end4.release_1_crit_edge ]
  %13 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %call, align 4
  tail call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %14, i32 noundef 256) #13
  br label %do.end

do.end:                                           ; preds = %release_1, %if.end.do.end_crit_edge, %entry.do.end_crit_edge
  %ret.2 = phi i32 [ %ret.1, %release_1 ], [ -19, %entry.do.end_crit_edge ], [ -16, %if.end.do.end_crit_edge ]
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef %ret.2) #16
  br label %if.end27

if.end27:                                         ; preds = %do.end, %if.end20.if.end27_crit_edge
  %ret.3 = phi i32 [ %ret.2, %do.end ], [ 0, %if.end20.if.end27_crit_edge ]
  ret i32 %ret.3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smc911x_drv_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @unregister_netdev(ptr noundef %1) #13
  %irq = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 64
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  %call8 = tail call ptr @free_irq(i32 noundef %3, ptr noundef %1) #13
  %base = getelementptr i8, ptr %1, i32 2472
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base, align 4
  tail call void @iounmap(ptr noundef %5) #13
  %call9 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #13
  %6 = ptrtoint ptr %call9 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %call9, align 4
  tail call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %7, i32 noundef 256) #13
  tail call void @free_netdev(ptr noundef %1) #13
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smc911x_drv_suspend(ptr nocapture noundef readonly %dev, [1 x i32] %state.coerce) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool8.not = icmp eq ptr %1, null
  br i1 %tobool8.not, label %entry.if.end16_crit_edge, label %if.then9

entry.if.end16_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end16

if.then9:                                         ; preds = %entry
  %state.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.then9.if.end16_crit_edge, label %if.then11

if.then9.if.end16_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end16

if.then11:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @netif_device_detach(ptr noundef nonnull %1) #13
  tail call fastcc void @smc911x_shutdown(ptr noundef nonnull %1)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !324
  tail call void @arm_heavy_mb() #13
  %base = getelementptr i8, ptr %1, i32 2472
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 2097152) #13, !srcloc !325
  br label %if.end16

if.end16:                                         ; preds = %if.then11, %if.then9.if.end16_crit_edge, %entry.if.end16_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smc911x_drv_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool7.not = icmp eq ptr %1, null
  br i1 %tobool7.not, label %entry.if.end15_crit_edge, label %if.then8

entry.if.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15

if.then8:                                         ; preds = %entry
  %state.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.then8.if.end15_crit_edge, label %if.then11

if.then8.if.end15_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15

if.then11:                                        ; preds = %if.then8
  tail call fastcc void @smc911x_reset(ptr noundef nonnull %1)
  %phy_type = getelementptr i8, ptr %1, i32 2340
  %4 = ptrtoint ptr %phy_type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %phy_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.not = icmp eq i32 %5, 0
  br i1 %cmp.not, label %if.then11.if.end13_crit_edge, label %if.then12

if.then11.if.end13_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end13

if.then12:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #15
  %phy_configure = getelementptr i8, ptr %1, i32 2376
  tail call void @smc911x_phy_configure(ptr noundef %phy_configure)
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %if.then11.if.end13_crit_edge
  tail call fastcc void @smc911x_enable(ptr noundef nonnull %1)
  tail call void @netif_device_attach(ptr noundef nonnull %1) #13
  br label %if.end15

if.end15:                                         ; preds = %if.end13, %if.then8.if.end15_crit_edge, %entry.if.end15_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__request_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_etherdev_mqs(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @smc911x_probe(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  %addr = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %addr) #13
  %0 = getelementptr inbounds [6 x i8], ptr %addr, i32 0, i32 1
  %1 = getelementptr inbounds [6 x i8], ptr %addr, i32 0, i32 2
  %2 = getelementptr inbounds [6 x i8], ptr %addr, i32 0, i32 3
  %3 = getelementptr inbounds [6 x i8], ptr %addr, i32 0, i32 4
  %4 = getelementptr inbounds [6 x i8], ptr %addr, i32 0, i32 5
  %base = getelementptr i8, ptr %dev, i32 2472
  %5 = call ptr @memset(ptr %addr, i32 255, i32 6)
  %6 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 100
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !327
  call void @__sanitizer_cov_trace_const_cmp4(i32 558065031, i32 %8)
  %cmp.not = icmp eq i32 %8, 558065031
  br i1 %cmp.not, label %if.end34, label %if.then33

if.then33:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.7, i32 noundef %9) #16
  br label %err_out

if.end34:                                         ; preds = %entry
  %10 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base, align 4
  %add.ptr38 = getelementptr i8, ptr %11, i32 80
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr38) #13, !srcloc !326
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !328
  %shr = lshr i32 %13, 16
  br label %for.cond

for.cond:                                         ; preds = %for.cond.for.cond_crit_edge, %if.end34
  %i.0 = phi i32 [ 0, %if.end34 ], [ %inc, %for.cond.for.cond_crit_edge ]
  %arrayidx = getelementptr [9 x %struct.chip_id], ptr @chip_ids, i32 0, i32 %i.0
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %cmp64.not = icmp eq i16 %15, 0
  %conv = zext i16 %15 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %shr, i32 %conv)
  %cmp69 = icmp eq i32 %shr, %conv
  %or.cond = select i1 %cmp64.not, i1 true, i1 %cmp69
  %inc = add nuw nsw i32 %i.0, 1
  br i1 %or.cond, label %for.end, label %for.cond.for.cond_crit_edge

for.cond.for.cond_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br i1 %cmp64.not, label %if.then76, label %if.end77

if.then76:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.9, i32 noundef %shr) #16
  br label %err_out

if.end77:                                         ; preds = %for.end
  %name = getelementptr [9 x %struct.chip_id], ptr @chip_ids, i32 0, i32 %i.0, i32 1
  %16 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %name, align 4
  %18 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base, align 4
  %add.ptr82 = getelementptr i8, ptr %19, i32 80
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr82) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !329
  %21 = load i32, ptr @tx_fifo_kb, align 4
  %22 = add i32 %21, -15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -13, i32 %22)
  %23 = icmp ult i32 %22, -13
  br i1 %23, label %if.then136, label %if.end137

if.then136:                                       ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.12, i32 noundef %21) #16
  br label %err_out

if.end137:                                        ; preds = %if.end77
  %24 = and i32 %20, -65536
  %25 = tail call i32 @llvm.bswap.i32(i32 %24)
  %version = getelementptr i8, ptr %dev, i32 2308
  %26 = ptrtoint ptr %version to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %15, ptr %version, align 4
  %conv140 = trunc i32 %25 to i16
  %revision141 = getelementptr i8, ptr %dev, i32 2310
  %27 = ptrtoint ptr %revision141 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %conv140, ptr %revision141, align 2
  %28 = load i32, ptr @tx_fifo_kb, align 4
  %tx_fifo_kb = getelementptr i8, ptr %dev, i32 2312
  %29 = ptrtoint ptr %tx_fifo_kb to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %tx_fifo_kb, align 4
  %shl = shl i32 %28, 10
  %sub = add i32 %shl, -512
  %tx_fifo_size = getelementptr i8, ptr %dev, i32 2316
  %30 = ptrtoint ptr %tx_fifo_size to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %sub, ptr %tx_fifo_size, align 4
  %sub144 = sub i32 16384, %shl
  %div = sdiv i32 %sub144, 16
  %mul = mul nsw i32 %div, 15
  %rx_fifo_size = getelementptr i8, ptr %dev, i32 2320
  %31 = ptrtoint ptr %rx_fifo_size to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %mul, ptr %rx_fifo_size, align 4
  %32 = zext i32 %28 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values)
  switch i32 %28, label %do.body171 [
    i32 2, label %sw.bb
    i32 3, label %sw.bb146
    i32 4, label %sw.bb148
    i32 5, label %sw.bb150
    i32 6, label %sw.bb152
    i32 7, label %sw.bb154
    i32 8, label %sw.bb156
    i32 9, label %sw.bb158
    i32 10, label %sw.bb160
    i32 11, label %sw.bb162
    i32 12, label %sw.bb164
    i32 13, label %sw.bb166
    i32 14, label %sw.bb168
  ]

sw.bb:                                            ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #15
  %afc_cfg = getelementptr i8, ptr %dev, i32 2324
  %33 = ptrtoint ptr %afc_cfg to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 9193135, ptr %afc_cfg, align 4
  br label %do.body214

sw.bb146:                                         ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #15
  %afc_cfg147 = getelementptr i8, ptr %dev, i32 2324
  %34 = ptrtoint ptr %afc_cfg147 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 8536479, ptr %afc_cfg147, align 4
  br label %do.body214

sw.bb148:                                         ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #15
  %afc_cfg149 = getelementptr i8, ptr %dev, i32 2324
  %35 = ptrtoint ptr %afc_cfg149 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 7879839, ptr %afc_cfg149, align 4
  br label %do.body214

sw.bb150:                                         ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #15
  %afc_cfg151 = getelementptr i8, ptr %dev, i32 2324
  %36 = ptrtoint ptr %afc_cfg151 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 7223119, ptr %afc_cfg151, align 4
  br label %do.body214

sw.bb152:                                         ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #15
  %afc_cfg153 = getelementptr i8, ptr %dev, i32 2324
  %37 = ptrtoint ptr %afc_cfg153 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 6566543, ptr %afc_cfg153, align 4
  br label %do.body214

sw.bb154:                                         ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #15
  %afc_cfg155 = getelementptr i8, ptr %dev, i32 2324
  %38 = ptrtoint ptr %afc_cfg155 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 5909887, ptr %afc_cfg155, align 4
  br label %do.body214

sw.bb156:                                         ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #15
  %afc_cfg157 = getelementptr i8, ptr %dev, i32 2324
  %39 = ptrtoint ptr %afc_cfg157 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 5253247, ptr %afc_cfg157, align 4
  br label %do.body214

sw.bb158:                                         ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #15
  %afc_cfg159 = getelementptr i8, ptr %dev, i32 2324
  %40 = ptrtoint ptr %afc_cfg159 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 4596591, ptr %afc_cfg159, align 4
  br label %do.body214

sw.bb160:                                         ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #15
  %afc_cfg161 = getelementptr i8, ptr %dev, i32 2324
  %41 = ptrtoint ptr %afc_cfg161 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 3939951, ptr %afc_cfg161, align 4
  br label %do.body214

sw.bb162:                                         ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #15
  %afc_cfg163 = getelementptr i8, ptr %dev, i32 2324
  %42 = ptrtoint ptr %afc_cfg163 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 3283295, ptr %afc_cfg163, align 4
  br label %do.body214

sw.bb164:                                         ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #15
  %afc_cfg165 = getelementptr i8, ptr %dev, i32 2324
  %43 = ptrtoint ptr %afc_cfg165 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 2363983, ptr %afc_cfg165, align 4
  br label %do.body214

sw.bb166:                                         ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #15
  %afc_cfg167 = getelementptr i8, ptr %dev, i32 2324
  %44 = ptrtoint ptr %afc_cfg167 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 1378111, ptr %afc_cfg167, align 4
  br label %do.body214

sw.bb168:                                         ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #15
  %afc_cfg169 = getelementptr i8, ptr %dev, i32 2324
  %45 = ptrtoint ptr %afc_cfg169 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 394031, ptr %afc_cfg169, align 4
  br label %do.body214

do.body171:                                       ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smc911x_probe.__UNIQUE_ID_ddebug412, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smc911x_probe, %if.then183)) #13
          to label %do.body214 [label %if.then183], !srcloc !330

if.then183:                                       ; preds = %do.body171
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @smc911x_probe.__UNIQUE_ID_ddebug412, ptr noundef %dev, ptr noundef nonnull @.str.13) #13
  br label %do.body214

do.body214:                                       ; preds = %if.then183, %do.body171, %sw.bb168, %sw.bb166, %sw.bb164, %sw.bb162, %sw.bb160, %sw.bb158, %sw.bb156, %sw.bb154, %sw.bb152, %sw.bb150, %sw.bb148, %sw.bb146, %sw.bb
  %lock = getelementptr i8, ptr %dev, i32 2424
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.15, ptr noundef nonnull @smc911x_probe.__key, i16 noundef signext 3) #13
  br label %while.cond221

while.cond221:                                    ; preds = %while.cond221.while.cond221_crit_edge, %do.body214
  %46 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %base, align 4
  %add.ptr225 = getelementptr i8, ptr %47, i32 164
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr225) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !331
  %.mask = and i32 %48, 128
  %tobool230.not = icmp eq i32 %.mask, 0
  br i1 %tobool230.not, label %do.body233, label %while.cond221.while.cond221_crit_edge

while.cond221.while.cond221_crit_edge:            ; preds = %while.cond221
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond221

do.body233:                                       ; preds = %while.cond221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !332
  tail call void @arm_heavy_mb() #13
  %49 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %base, align 4
  %add.ptr237 = getelementptr i8, ptr %50, i32 164
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr237, i32 50331840) #13, !srcloc !325
  br label %while.cond238

while.cond238:                                    ; preds = %while.cond238.while.cond238_crit_edge, %do.body233
  %51 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %base, align 4
  %add.ptr242 = getelementptr i8, ptr %52, i32 164
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr242) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !333
  %.mask551 = and i32 %53, 128
  %tobool247.not = icmp eq i32 %.mask551, 0
  br i1 %tobool247.not, label %while.end249, label %while.cond238.while.cond238_crit_edge

while.cond238.while.cond238_crit_edge:            ; preds = %while.cond238
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond238

while.end249:                                     ; preds = %while.cond238
  %54 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %base, align 4
  %add.ptr253 = getelementptr i8, ptr %55, i32 168
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr253) #13, !srcloc !326
  %57 = tail call i32 @llvm.bswap.i32(i32 %56)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !334
  %conv259 = trunc i32 %57 to i8
  %58 = ptrtoint ptr %addr to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %conv259, ptr %addr, align 1
  %shr261 = lshr i32 %57, 8
  %conv262 = trunc i32 %shr261 to i8
  %59 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %conv262, ptr %0, align 1
  %shr264 = lshr i32 %57, 16
  %conv265 = trunc i32 %shr264 to i8
  %60 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %conv265, ptr %1, align 1
  %shr267 = lshr i32 %57, 24
  %conv268 = trunc i32 %shr267 to i8
  %61 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %conv268, ptr %2, align 1
  br label %while.cond271

while.cond271:                                    ; preds = %while.cond271.while.cond271_crit_edge, %while.end249
  %62 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %base, align 4
  %add.ptr275 = getelementptr i8, ptr %63, i32 164
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr275) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !335
  %.mask552 = and i32 %64, 128
  %tobool280.not = icmp eq i32 %.mask552, 0
  br i1 %tobool280.not, label %do.body283, label %while.cond271.while.cond271_crit_edge

while.cond271.while.cond271_crit_edge:            ; preds = %while.cond271
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond271

do.body283:                                       ; preds = %while.cond271
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !336
  tail call void @arm_heavy_mb() #13
  %65 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %base, align 4
  %add.ptr287 = getelementptr i8, ptr %66, i32 164
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr287, i32 33554624) #13, !srcloc !325
  br label %while.cond288

while.cond288:                                    ; preds = %while.cond288.while.cond288_crit_edge, %do.body283
  %67 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %base, align 4
  %add.ptr292 = getelementptr i8, ptr %68, i32 164
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr292) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !337
  %.mask553 = and i32 %69, 128
  %tobool297.not = icmp eq i32 %.mask553, 0
  br i1 %tobool297.not, label %while.end299, label %while.cond288.while.cond288_crit_edge

while.cond288.while.cond288_crit_edge:            ; preds = %while.cond288
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond288

while.end299:                                     ; preds = %while.cond288
  %70 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %base, align 4
  %add.ptr303 = getelementptr i8, ptr %71, i32 168
  %72 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr303) #13, !srcloc !326
  %73 = tail call i32 @llvm.bswap.i32(i32 %72)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !338
  %conv309 = trunc i32 %73 to i8
  %74 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %conv309, ptr %3, align 1
  %shr311 = lshr i32 %73, 8
  %conv312 = trunc i32 %shr311 to i8
  %75 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 %conv312, ptr %4, align 1
  call void @dev_addr_mod(ptr noundef %dev, i32 noundef 0, ptr noundef nonnull %addr, i32 noundef 6) #13
  call fastcc void @smc911x_reset(ptr noundef %dev)
  %irq = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 64
  %76 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %77)
  %cmp316 = icmp slt i32 %77, 1
  br i1 %cmp316, label %while.cond319.preheader, label %while.end299.if.end334_crit_edge

while.end299.if.end334_crit_edge:                 ; preds = %while.end299
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end334

while.cond319.preheader:                          ; preds = %while.end299
  %call7.i = call i32 @probe_irq_on() #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !339
  call void @arm_heavy_mb() #13
  %78 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %base, align 4
  %add.ptr.i565 = getelementptr i8, ptr %79, i32 92
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i565, i32 128) #13, !srcloc !325
  br label %do.body11.i

do.body11.i:                                      ; preds = %do.body11.i.do.body11.i_crit_edge, %while.cond319.preheader
  %timeout.0.i = phi i32 [ 20, %while.cond319.preheader ], [ %dec.i, %do.body11.i.do.body11.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %80 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %80(i32 noundef 2147480) #13
  %81 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %base, align 4
  %add.ptr13.i = getelementptr i8, ptr %82, i32 92
  %83 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13.i) #13, !srcloc !326
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !340
  %.mask.i = and i32 %83, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask.i)
  %tobool17.not.i = icmp ne i32 %.mask.i, 0
  %dec.i = add nsw i32 %timeout.0.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %tobool21.not.i = icmp eq i32 %dec.i, 0
  %or.cond.i = select i1 %tobool17.not.i, i1 true, i1 %tobool21.not.i
  br i1 %or.cond.i, label %smc911x_findirq.exit, label %do.body11.i.do.body11.i_crit_edge

do.body11.i.do.body11.i_crit_edge:                ; preds = %do.body11.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body11.i

smc911x_findirq.exit:                             ; preds = %do.body11.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !341
  call void @arm_heavy_mb() #13
  %84 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %base, align 4
  %add.ptr27.i = getelementptr i8, ptr %85, i32 92
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr27.i, i32 0) #13, !srcloc !325
  %call28.i = call i32 @probe_irq_off(i32 noundef %call7.i) #13
  %86 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %call28.i, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.i)
  %tobool325.not = icmp eq i32 %call28.i, 0
  br i1 %tobool325.not, label %if.end327, label %smc911x_findirq.exit.if.end334_crit_edge

smc911x_findirq.exit.if.end334_crit_edge:         ; preds = %smc911x_findirq.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end334

if.end327:                                        ; preds = %smc911x_findirq.exit
  call fastcc void @smc911x_reset(ptr noundef %dev)
  %call7.i.1 = call i32 @probe_irq_on() #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !339
  call void @arm_heavy_mb() #13
  %87 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %base, align 4
  %add.ptr.i565.1 = getelementptr i8, ptr %88, i32 92
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i565.1, i32 128) #13, !srcloc !325
  br label %do.body11.i.1

do.body11.i.1:                                    ; preds = %do.body11.i.1.do.body11.i.1_crit_edge, %if.end327
  %timeout.0.i.1 = phi i32 [ 20, %if.end327 ], [ %dec.i.1, %do.body11.i.1.do.body11.i.1_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %89 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %89(i32 noundef 2147480) #13
  %90 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %base, align 4
  %add.ptr13.i.1 = getelementptr i8, ptr %91, i32 92
  %92 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13.i.1) #13, !srcloc !326
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !340
  %.mask.i.1 = and i32 %92, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask.i.1)
  %tobool17.not.i.1 = icmp ne i32 %.mask.i.1, 0
  %dec.i.1 = add nsw i32 %timeout.0.i.1, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.1)
  %tobool21.not.i.1 = icmp eq i32 %dec.i.1, 0
  %or.cond.i.1 = select i1 %tobool17.not.i.1, i1 true, i1 %tobool21.not.i.1
  br i1 %or.cond.i.1, label %smc911x_findirq.exit.1, label %do.body11.i.1.do.body11.i.1_crit_edge

do.body11.i.1.do.body11.i.1_crit_edge:            ; preds = %do.body11.i.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body11.i.1

smc911x_findirq.exit.1:                           ; preds = %do.body11.i.1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !341
  call void @arm_heavy_mb() #13
  %93 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %base, align 4
  %add.ptr27.i.1 = getelementptr i8, ptr %94, i32 92
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr27.i.1, i32 0) #13, !srcloc !325
  %call28.i.1 = call i32 @probe_irq_off(i32 noundef %call7.i.1) #13
  %95 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %call28.i.1, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.i.1)
  %tobool325.not.1 = icmp eq i32 %call28.i.1, 0
  br i1 %tobool325.not.1, label %if.end327.1, label %smc911x_findirq.exit.1.if.end334_crit_edge

smc911x_findirq.exit.1.if.end334_crit_edge:       ; preds = %smc911x_findirq.exit.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end334

if.end327.1:                                      ; preds = %smc911x_findirq.exit.1
  call fastcc void @smc911x_reset(ptr noundef %dev)
  %call7.i.2 = call i32 @probe_irq_on() #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !339
  call void @arm_heavy_mb() #13
  %96 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %base, align 4
  %add.ptr.i565.2 = getelementptr i8, ptr %97, i32 92
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i565.2, i32 128) #13, !srcloc !325
  br label %do.body11.i.2

do.body11.i.2:                                    ; preds = %do.body11.i.2.do.body11.i.2_crit_edge, %if.end327.1
  %timeout.0.i.2 = phi i32 [ 20, %if.end327.1 ], [ %dec.i.2, %do.body11.i.2.do.body11.i.2_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %98 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %98(i32 noundef 2147480) #13
  %99 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %base, align 4
  %add.ptr13.i.2 = getelementptr i8, ptr %100, i32 92
  %101 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13.i.2) #13, !srcloc !326
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !340
  %.mask.i.2 = and i32 %101, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask.i.2)
  %tobool17.not.i.2 = icmp ne i32 %.mask.i.2, 0
  %dec.i.2 = add nsw i32 %timeout.0.i.2, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.2)
  %tobool21.not.i.2 = icmp eq i32 %dec.i.2, 0
  %or.cond.i.2 = select i1 %tobool17.not.i.2, i1 true, i1 %tobool21.not.i.2
  br i1 %or.cond.i.2, label %smc911x_findirq.exit.2, label %do.body11.i.2.do.body11.i.2_crit_edge

do.body11.i.2.do.body11.i.2_crit_edge:            ; preds = %do.body11.i.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body11.i.2

smc911x_findirq.exit.2:                           ; preds = %do.body11.i.2
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !341
  call void @arm_heavy_mb() #13
  %102 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %base, align 4
  %add.ptr27.i.2 = getelementptr i8, ptr %103, i32 92
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr27.i.2, i32 0) #13, !srcloc !325
  %call28.i.2 = call i32 @probe_irq_off(i32 noundef %call7.i.2) #13
  %104 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %call28.i.2, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.i.2)
  %tobool325.not.2 = icmp eq i32 %call28.i.2, 0
  br i1 %tobool325.not.2, label %if.end327.2, label %smc911x_findirq.exit.2.if.end334_crit_edge

smc911x_findirq.exit.2.if.end334_crit_edge:       ; preds = %smc911x_findirq.exit.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end334

if.end327.2:                                      ; preds = %smc911x_findirq.exit.2
  call fastcc void @smc911x_reset(ptr noundef %dev)
  %105 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %105)
  %.pr = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp331 = icmp eq i32 %.pr, 0
  br i1 %cmp331, label %if.then333, label %if.end327.2.if.end334_crit_edge

if.end327.2.if.end334_crit_edge:                  ; preds = %if.end327.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end334

if.then333:                                       ; preds = %if.end327.2
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %dev, ptr noundef nonnull @.str.16) #16
  br label %err_out

if.end334:                                        ; preds = %if.end327.2.if.end334_crit_edge, %smc911x_findirq.exit.2.if.end334_crit_edge, %smc911x_findirq.exit.1.if.end334_crit_edge, %smc911x_findirq.exit.if.end334_crit_edge, %while.end299.if.end334_crit_edge
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 16
  %106 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr @smc911x_netdev_ops, ptr %netdev_ops, align 8
  %107 = load i32, ptr @watchdog, align 4
  %call2.i = call i32 @__msecs_to_jiffies(i32 noundef %107) #13
  %watchdog_timeo = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 115
  %108 = ptrtoint ptr %watchdog_timeo to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %call2.i, ptr %watchdog_timeo, align 4
  %ethtool_ops = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 44
  %109 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr @smc911x_ethtool_ops, ptr %ethtool_ops, align 16
  %phy_configure = getelementptr i8, ptr %dev, i32 2376
  call void @__init_work(ptr noundef %phy_configure, i32 noundef 0) #13
  %110 = ptrtoint ptr %phy_configure to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 -64, ptr %phy_configure, align 4
  %lockdep_map = getelementptr i8, ptr %dev, i32 2392
  call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.18, ptr noundef nonnull @smc911x_probe.__key.17, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #13
  %entry342 = getelementptr i8, ptr %dev, i32 2380
  %111 = ptrtoint ptr %entry342 to i32
  call void @__asan_store4_noabort(i32 %111)
  store volatile ptr %entry342, ptr %entry342, align 4
  %prev.i = getelementptr i8, ptr %dev, i32 2384
  %112 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr %entry342, ptr %prev.i, align 4
  %func = getelementptr i8, ptr %dev, i32 2388
  %113 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr @smc911x_phy_configure, ptr %func, align 4
  %phy_id_mask = getelementptr i8, ptr %dev, i32 2352
  %114 = ptrtoint ptr %phy_id_mask to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 31, ptr %phy_id_mask, align 4
  %reg_num_mask = getelementptr i8, ptr %dev, i32 2356
  %115 = ptrtoint ptr %reg_num_mask to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 31, ptr %reg_num_mask, align 4
  %force_media = getelementptr i8, ptr %dev, i32 2360
  %116 = ptrtoint ptr %force_media to i32
  call void @__asan_load1_noabort(i32 %116)
  %bf.load = load i8, ptr %force_media, align 4
  %bf.clear350 = and i8 %bf.load, 63
  store i8 %bf.clear350, ptr %force_media, align 4
  %dev353 = getelementptr i8, ptr %dev, i32 2364
  %117 = ptrtoint ptr %dev353 to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr %dev, ptr %dev353, align 4
  %mdio_read = getelementptr i8, ptr %dev, i32 2368
  %118 = ptrtoint ptr %mdio_read to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr @smc911x_phy_read, ptr %mdio_read, align 4
  %mdio_write = getelementptr i8, ptr %dev, i32 2372
  %119 = ptrtoint ptr %mdio_write to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr @smc911x_phy_write, ptr %mdio_write, align 4
  %phy_type.i = getelementptr i8, ptr %dev, i32 2340
  %120 = ptrtoint ptr %phy_type.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 0, ptr %phy_type.i, align 4
  %121 = ptrtoint ptr %version to i32
  call void @__asan_load2_noabort(i32 %121)
  %122 = load i16, ptr %version, align 4
  %123 = zext i16 %122 to i64
  call void @__sanitizer_cov_trace_switch(i64 %123, ptr @__sancov_gen_cov_switch_values.105)
  switch i16 %122, label %if.end334.while.cond412.i.preheader_crit_edge [
    i16 277, label %if.end334.sw.bb.i_crit_edge
    i16 279, label %if.end334.sw.bb.i_crit_edge612
    i16 4442, label %if.end334.sw.bb.i_crit_edge613
    i16 4474, label %if.end334.sw.bb.i_crit_edge614
  ]

if.end334.sw.bb.i_crit_edge614:                   ; preds = %if.end334
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb.i

if.end334.sw.bb.i_crit_edge613:                   ; preds = %if.end334
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb.i

if.end334.sw.bb.i_crit_edge612:                   ; preds = %if.end334
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb.i

if.end334.sw.bb.i_crit_edge:                      ; preds = %if.end334
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb.i

if.end334.while.cond412.i.preheader_crit_edge:    ; preds = %if.end334
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond412.i.preheader

sw.bb.i:                                          ; preds = %if.end334.sw.bb.i_crit_edge, %if.end334.sw.bb.i_crit_edge612, %if.end334.sw.bb.i_crit_edge613, %if.end334.sw.bb.i_crit_edge614
  %124 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %base, align 4
  %add.ptr.i567 = getelementptr i8, ptr %125, i32 116
  %126 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i567) #13, !srcloc !326
  %127 = call i32 @llvm.bswap.i32(i32 %126) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !342
  %and.i = and i32 %127, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool10.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool10.not.i, label %sw.bb.i.while.cond412.i.preheader_crit_edge, label %if.then11.i

sw.bb.i.while.cond412.i.preheader_crit_edge:      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond412.i.preheader

if.then11.i:                                      ; preds = %sw.bb.i
  %and12.i = and i32 %127, -97
  %or.i = or i32 %and12.i, 64
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !343
  call void @arm_heavy_mb() #13
  %128 = call i32 @llvm.bswap.i32(i32 %or.i) #13
  %129 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %base, align 4
  %add.ptr17.i = getelementptr i8, ptr %130, i32 116
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17.i, i32 %128) #13, !srcloc !325
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %131 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %131(i32 noundef 2147480) #13
  %or18.i = or i32 %and12.i, 68
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !344
  call void @arm_heavy_mb() #13
  %132 = call i32 @llvm.bswap.i32(i32 %or18.i) #13
  %133 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %base, align 4
  %add.ptr23.i = getelementptr i8, ptr %134, i32 116
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr23.i, i32 %132) #13, !srcloc !325
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %135 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %135(i32 noundef 2147480) #13
  %or25.i = or i32 %and12.i, 36
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !345
  call void @arm_heavy_mb() #13
  %136 = call i32 @llvm.bswap.i32(i32 %or25.i) #13
  %137 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %base, align 4
  %add.ptr30.i = getelementptr i8, ptr %138, i32 116
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr30.i, i32 %136) #13, !srcloc !325
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %139 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %139(i32 noundef 2147480) #13
  %or31.i = or i32 %and12.i, 52
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !346
  call void @arm_heavy_mb() #13
  %140 = call i32 @llvm.bswap.i32(i32 %or31.i) #13
  %141 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %base, align 4
  %add.ptr36.i = getelementptr i8, ptr %142, i32 116
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr36.i, i32 %140) #13, !srcloc !325
  br label %do.body40.preheader.i

do.body40.preheader.i:                            ; preds = %for.inc.i.do.body40.preheader.i_crit_edge, %if.then11.i
  %cmp911.i = phi i1 [ true, %if.then11.i ], [ %cmp.i568, %for.inc.i.do.body40.preheader.i_crit_edge ]
  %phyaddr.0910.i = phi i32 [ 1, %if.then11.i ], [ %inc.i, %for.inc.i.do.body40.preheader.i_crit_edge ]
  br label %while.cond42.i

while.cond42.i:                                   ; preds = %while.cond42.i.backedge, %do.body40.preheader.i
  %143 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %base, align 4
  %add.ptr46.i = getelementptr i8, ptr %144, i32 164
  %145 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr46.i) #13, !srcloc !326
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !347
  %.mask890.i = and i32 %145, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask890.i)
  %tobool51.not.i = icmp eq i32 %.mask890.i, 0
  br i1 %tobool51.not.i, label %do.body54.i, label %while.cond42.i.while.cond42.i.backedge_crit_edge

while.cond42.i.while.cond42.i.backedge_crit_edge: ; preds = %while.cond42.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond42.i.backedge

while.cond42.i.backedge:                          ; preds = %while.end70.i.while.cond42.i.backedge_crit_edge, %while.cond42.i.while.cond42.i.backedge_crit_edge
  br label %while.cond42.i

do.body54.i:                                      ; preds = %while.cond42.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !348
  call void @arm_heavy_mb() #13
  %146 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %base, align 4
  %add.ptr58.i = getelementptr i8, ptr %147, i32 164
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr58.i, i32 100663488) #13, !srcloc !325
  br label %while.cond59.i

while.cond59.i:                                   ; preds = %while.cond59.i.while.cond59.i_crit_edge, %do.body54.i
  %148 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %base, align 4
  %add.ptr63.i = getelementptr i8, ptr %149, i32 164
  %150 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr63.i) #13, !srcloc !326
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !349
  %.mask891.i = and i32 %150, 128
  %tobool68.not.i = icmp eq i32 %.mask891.i, 0
  br i1 %tobool68.not.i, label %while.end70.i, label %while.cond59.i.while.cond59.i_crit_edge

while.cond59.i.while.cond59.i_crit_edge:          ; preds = %while.cond59.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond59.i

while.end70.i:                                    ; preds = %while.cond59.i
  %151 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %base, align 4
  %add.ptr74.i = getelementptr i8, ptr %152, i32 168
  %153 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr74.i) #13, !srcloc !326
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !350
  %154 = and i32 %153, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %154)
  %tobool82.not.i = icmp eq i32 %154, 0
  br i1 %tobool82.not.i, label %while.end70.i.while.cond85.i_crit_edge, label %while.end70.i.while.cond42.i.backedge_crit_edge

while.end70.i.while.cond42.i.backedge_crit_edge:  ; preds = %while.end70.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond42.i.backedge

while.end70.i.while.cond85.i_crit_edge:           ; preds = %while.end70.i
  br label %while.cond85.i

while.cond85.i:                                   ; preds = %while.cond85.i.while.cond85.i_crit_edge, %while.end70.i.while.cond85.i_crit_edge
  %155 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %base, align 4
  %add.ptr89.i = getelementptr i8, ptr %156, i32 164
  %157 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr89.i) #13, !srcloc !326
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !351
  %.mask892.i = and i32 %157, 128
  %tobool94.not.i = icmp eq i32 %.mask892.i, 0
  br i1 %tobool94.not.i, label %do.body97.i, label %while.cond85.i.while.cond85.i_crit_edge

while.cond85.i.while.cond85.i_crit_edge:          ; preds = %while.cond85.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond85.i

do.body97.i:                                      ; preds = %while.cond85.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !352
  call void @arm_heavy_mb() #13
  %shl.i = shl nuw nsw i32 %phyaddr.0910.i, 11
  %or102.i = or i32 %shl.i, 129
  %158 = call i32 @llvm.bswap.i32(i32 %or102.i) #13
  %159 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %base, align 4
  %add.ptr104.i = getelementptr i8, ptr %160, i32 168
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr104.i, i32 %158) #13, !srcloc !325
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !353
  call void @arm_heavy_mb() #13
  %161 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %base, align 4
  %add.ptr109.i = getelementptr i8, ptr %162, i32 164
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr109.i, i32 100663424) #13, !srcloc !325
  br label %while.cond110.i

while.cond110.i:                                  ; preds = %while.cond110.i.while.cond110.i_crit_edge, %do.body97.i
  %163 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %base, align 4
  %add.ptr114.i = getelementptr i8, ptr %164, i32 164
  %165 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr114.i) #13, !srcloc !326
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !354
  %.mask893.i = and i32 %165, 128
  %tobool119.not.i = icmp eq i32 %.mask893.i, 0
  br i1 %tobool119.not.i, label %while.cond110.i.while.cond126.i_crit_edge, label %while.cond110.i.while.cond110.i_crit_edge

while.cond110.i.while.cond110.i_crit_edge:        ; preds = %while.cond110.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond110.i

while.cond110.i.while.cond126.i_crit_edge:        ; preds = %while.cond110.i
  br label %while.cond126.i

while.cond126.i:                                  ; preds = %while.cond126.i.backedge, %while.cond110.i.while.cond126.i_crit_edge
  %166 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %base, align 4
  %add.ptr130.i = getelementptr i8, ptr %167, i32 164
  %168 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr130.i) #13, !srcloc !326
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !355
  %.mask894.i = and i32 %168, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask894.i)
  %tobool135.not.i = icmp eq i32 %.mask894.i, 0
  br i1 %tobool135.not.i, label %do.body138.i, label %while.cond126.i.while.cond126.i.backedge_crit_edge

while.cond126.i.while.cond126.i.backedge_crit_edge: ; preds = %while.cond126.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond126.i.backedge

while.cond126.i.backedge:                         ; preds = %while.end154.i.while.cond126.i.backedge_crit_edge, %while.cond126.i.while.cond126.i.backedge_crit_edge
  br label %while.cond126.i

do.body138.i:                                     ; preds = %while.cond126.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !356
  call void @arm_heavy_mb() #13
  %169 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %base, align 4
  %add.ptr142.i = getelementptr i8, ptr %170, i32 164
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr142.i, i32 100663488) #13, !srcloc !325
  br label %while.cond143.i

while.cond143.i:                                  ; preds = %while.cond143.i.while.cond143.i_crit_edge, %do.body138.i
  %171 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %base, align 4
  %add.ptr147.i = getelementptr i8, ptr %172, i32 164
  %173 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr147.i) #13, !srcloc !326
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !357
  %.mask895.i = and i32 %173, 128
  %tobool152.not.i = icmp eq i32 %.mask895.i, 0
  br i1 %tobool152.not.i, label %while.end154.i, label %while.cond143.i.while.cond143.i_crit_edge

while.cond143.i.while.cond143.i_crit_edge:        ; preds = %while.cond143.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond143.i

while.end154.i:                                   ; preds = %while.cond143.i
  %174 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %base, align 4
  %add.ptr158.i = getelementptr i8, ptr %175, i32 168
  %176 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr158.i) #13, !srcloc !326
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !358
  %177 = and i32 %176, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %177)
  %tobool166.not.i = icmp eq i32 %177, 0
  br i1 %tobool166.not.i, label %while.end154.i.while.cond169.i_crit_edge, label %while.end154.i.while.cond126.i.backedge_crit_edge

while.end154.i.while.cond126.i.backedge_crit_edge: ; preds = %while.end154.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond126.i.backedge

while.end154.i.while.cond169.i_crit_edge:         ; preds = %while.end154.i
  br label %while.cond169.i

while.cond169.i:                                  ; preds = %while.cond169.i.while.cond169.i_crit_edge, %while.end154.i.while.cond169.i_crit_edge
  %178 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %base, align 4
  %add.ptr173.i = getelementptr i8, ptr %179, i32 164
  %180 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr173.i) #13, !srcloc !326
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !359
  %.mask896.i = and i32 %180, 128
  %tobool178.not.i = icmp eq i32 %.mask896.i, 0
  br i1 %tobool178.not.i, label %do.body181.i, label %while.cond169.i.while.cond169.i_crit_edge

while.cond169.i.while.cond169.i_crit_edge:        ; preds = %while.cond169.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond169.i

do.body181.i:                                     ; preds = %while.cond169.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !360
  call void @arm_heavy_mb() #13
  %181 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %base, align 4
  %add.ptr185.i = getelementptr i8, ptr %182, i32 164
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr185.i, i32 117440704) #13, !srcloc !325
  br label %while.cond186.i

while.cond186.i:                                  ; preds = %while.cond186.i.while.cond186.i_crit_edge, %do.body181.i
  %183 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %base, align 4
  %add.ptr190.i = getelementptr i8, ptr %184, i32 164
  %185 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr190.i) #13, !srcloc !326
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !361
  %.mask897.i = and i32 %185, 128
  %tobool195.not.i = icmp eq i32 %.mask897.i, 0
  br i1 %tobool195.not.i, label %while.end197.i, label %while.cond186.i.while.cond186.i_crit_edge

while.cond186.i.while.cond186.i_crit_edge:        ; preds = %while.cond186.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond186.i

while.end197.i:                                   ; preds = %while.cond186.i
  %186 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %base, align 4
  %add.ptr201.i = getelementptr i8, ptr %187, i32 168
  %188 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr201.i) #13, !srcloc !326
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !362
  br label %while.cond213.i

while.cond213.i:                                  ; preds = %while.cond213.i.backedge, %while.end197.i
  %189 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %base, align 4
  %add.ptr217.i = getelementptr i8, ptr %190, i32 164
  %191 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr217.i) #13, !srcloc !326
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !363
  %.mask898.i = and i32 %191, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask898.i)
  %tobool222.not.i = icmp eq i32 %.mask898.i, 0
  br i1 %tobool222.not.i, label %do.body225.i, label %while.cond213.i.while.cond213.i.backedge_crit_edge

while.cond213.i.while.cond213.i.backedge_crit_edge: ; preds = %while.cond213.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond213.i.backedge

while.cond213.i.backedge:                         ; preds = %while.end241.i.while.cond213.i.backedge_crit_edge, %while.cond213.i.while.cond213.i.backedge_crit_edge
  br label %while.cond213.i

do.body225.i:                                     ; preds = %while.cond213.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !364
  call void @arm_heavy_mb() #13
  %192 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %base, align 4
  %add.ptr229.i = getelementptr i8, ptr %193, i32 164
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr229.i, i32 100663488) #13, !srcloc !325
  br label %while.cond230.i

while.cond230.i:                                  ; preds = %while.cond230.i.while.cond230.i_crit_edge, %do.body225.i
  %194 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %base, align 4
  %add.ptr234.i = getelementptr i8, ptr %195, i32 164
  %196 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr234.i) #13, !srcloc !326
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !365
  %.mask899.i = and i32 %196, 128
  %tobool239.not.i = icmp eq i32 %.mask899.i, 0
  br i1 %tobool239.not.i, label %while.end241.i, label %while.cond230.i.while.cond230.i_crit_edge

while.cond230.i.while.cond230.i_crit_edge:        ; preds = %while.cond230.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond230.i

while.end241.i:                                   ; preds = %while.cond230.i
  %197 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %base, align 4
  %add.ptr245.i = getelementptr i8, ptr %198, i32 168
  %199 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr245.i) #13, !srcloc !326
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !366
  %200 = and i32 %199, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %200)
  %tobool253.not.i = icmp eq i32 %200, 0
  br i1 %tobool253.not.i, label %while.end241.i.while.cond256.i_crit_edge, label %while.end241.i.while.cond213.i.backedge_crit_edge

while.end241.i.while.cond213.i.backedge_crit_edge: ; preds = %while.end241.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond213.i.backedge

while.end241.i.while.cond256.i_crit_edge:         ; preds = %while.end241.i
  br label %while.cond256.i

while.cond256.i:                                  ; preds = %while.cond256.i.while.cond256.i_crit_edge, %while.end241.i.while.cond256.i_crit_edge
  %201 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %base, align 4
  %add.ptr260.i = getelementptr i8, ptr %202, i32 164
  %203 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr260.i) #13, !srcloc !326
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !367
  %.mask900.i = and i32 %203, 128
  %tobool265.not.i = icmp eq i32 %.mask900.i, 0
  br i1 %tobool265.not.i, label %do.body268.i, label %while.cond256.i.while.cond256.i_crit_edge

while.cond256.i.while.cond256.i_crit_edge:        ; preds = %while.cond256.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond256.i

do.body268.i:                                     ; preds = %while.cond256.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !368
  call void @arm_heavy_mb() #13
  %or274.i = or i32 %shl.i, 193
  %204 = call i32 @llvm.bswap.i32(i32 %or274.i) #13
  %205 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %base, align 4
  %add.ptr276.i = getelementptr i8, ptr %206, i32 168
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr276.i, i32 %204) #13, !srcloc !325
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !369
  call void @arm_heavy_mb() #13
  %207 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %base, align 4
  %add.ptr281.i = getelementptr i8, ptr %208, i32 164
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr281.i, i32 100663424) #13, !srcloc !325
  br label %while.cond282.i

while.cond282.i:                                  ; preds = %while.cond282.i.while.cond282.i_crit_edge, %do.body268.i
  %209 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %base, align 4
  %add.ptr286.i = getelementptr i8, ptr %210, i32 164
  %211 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr286.i) #13, !srcloc !326
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !370
  %.mask901.i = and i32 %211, 128
  %tobool291.not.i = icmp eq i32 %.mask901.i, 0
  br i1 %tobool291.not.i, label %while.cond282.i.while.cond298.i_crit_edge, label %while.cond282.i.while.cond282.i_crit_edge

while.cond282.i.while.cond282.i_crit_edge:        ; preds = %while.cond282.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond282.i

while.cond282.i.while.cond298.i_crit_edge:        ; preds = %while.cond282.i
  br label %while.cond298.i

while.cond298.i:                                  ; preds = %while.cond298.i.backedge, %while.cond282.i.while.cond298.i_crit_edge
  %212 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %base, align 4
  %add.ptr302.i = getelementptr i8, ptr %213, i32 164
  %214 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr302.i) #13, !srcloc !326
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !371
  %.mask902.i = and i32 %214, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask902.i)
  %tobool307.not.i = icmp eq i32 %.mask902.i, 0
  br i1 %tobool307.not.i, label %do.body310.i, label %while.cond298.i.while.cond298.i.backedge_crit_edge

while.cond298.i.while.cond298.i.backedge_crit_edge: ; preds = %while.cond298.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond298.i.backedge

while.cond298.i.backedge:                         ; preds = %while.end326.i.while.cond298.i.backedge_crit_edge, %while.cond298.i.while.cond298.i.backedge_crit_edge
  br label %while.cond298.i

do.body310.i:                                     ; preds = %while.cond298.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !372
  call void @arm_heavy_mb() #13
  %215 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %base, align 4
  %add.ptr314.i = getelementptr i8, ptr %216, i32 164
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr314.i, i32 100663488) #13, !srcloc !325
  br label %while.cond315.i

while.cond315.i:                                  ; preds = %while.cond315.i.while.cond315.i_crit_edge, %do.body310.i
  %217 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %base, align 4
  %add.ptr319.i = getelementptr i8, ptr %218, i32 164
  %219 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr319.i) #13, !srcloc !326
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !373
  %.mask903.i = and i32 %219, 128
  %tobool324.not.i = icmp eq i32 %.mask903.i, 0
  br i1 %tobool324.not.i, label %while.end326.i, label %while.cond315.i.while.cond315.i_crit_edge

while.cond315.i.while.cond315.i_crit_edge:        ; preds = %while.cond315.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond315.i

while.end326.i:                                   ; preds = %while.cond315.i
  %220 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %base, align 4
  %add.ptr330.i = getelementptr i8, ptr %221, i32 168
  %222 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr330.i) #13, !srcloc !326
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !374
  %223 = and i32 %222, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %223)
  %tobool338.not.i = icmp eq i32 %223, 0
  br i1 %tobool338.not.i, label %while.end326.i.while.cond341.i_crit_edge, label %while.end326.i.while.cond298.i.backedge_crit_edge

while.end326.i.while.cond298.i.backedge_crit_edge: ; preds = %while.end326.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond298.i.backedge

while.end326.i.while.cond341.i_crit_edge:         ; preds = %while.end326.i
  br label %while.cond341.i

while.cond341.i:                                  ; preds = %while.cond341.i.while.cond341.i_crit_edge, %while.end326.i.while.cond341.i_crit_edge
  %224 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %base, align 4
  %add.ptr345.i = getelementptr i8, ptr %225, i32 164
  %226 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr345.i) #13, !srcloc !326
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !375
  %.mask904.i = and i32 %226, 128
  %tobool350.not.i = icmp eq i32 %.mask904.i, 0
  br i1 %tobool350.not.i, label %do.body353.i, label %while.cond341.i.while.cond341.i_crit_edge

while.cond341.i.while.cond341.i_crit_edge:        ; preds = %while.cond341.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond341.i

do.body353.i:                                     ; preds = %while.cond341.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !376
  call void @arm_heavy_mb() #13
  %227 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %base, align 4
  %add.ptr357.i = getelementptr i8, ptr %228, i32 164
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr357.i, i32 117440704) #13, !srcloc !325
  br label %while.cond358.i

while.cond358.i:                                  ; preds = %while.cond358.i.while.cond358.i_crit_edge, %do.body353.i
  %229 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %base, align 4
  %add.ptr362.i = getelementptr i8, ptr %230, i32 164
  %231 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr362.i) #13, !srcloc !326
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !377
  %.mask905.i = and i32 %231, 128
  %tobool367.not.i = icmp eq i32 %.mask905.i, 0
  br i1 %tobool367.not.i, label %while.end369.i, label %while.cond358.i.while.cond358.i_crit_edge

while.cond358.i.while.cond358.i_crit_edge:        ; preds = %while.cond358.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond358.i

while.end369.i:                                   ; preds = %while.cond358.i
  %232 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %base, align 4
  %add.ptr373.i = getelementptr i8, ptr %233, i32 168
  %234 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr373.i) #13, !srcloc !326
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !378
  %235 = zext i32 %188 to i64
  call void @__sanitizer_cov_trace_switch(i64 %235, ptr @__sancov_gen_cov_switch_values.106)
  switch i32 %188, label %land.lhs.true388.i [
    i32 0, label %while.end369.i.for.inc.i_crit_edge
    i32 -65536, label %while.end369.i.for.inc.i_crit_edge615
    i32 8388608, label %while.end369.i.for.inc.i_crit_edge616
  ]

while.end369.i.for.inc.i_crit_edge616:            ; preds = %while.end369.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

while.end369.i.for.inc.i_crit_edge615:            ; preds = %while.end369.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

while.end369.i.for.inc.i_crit_edge:               ; preds = %while.end369.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

land.lhs.true388.i:                               ; preds = %while.end369.i
  %236 = zext i32 %234 to i64
  call void @__sanitizer_cov_trace_switch(i64 %236, ptr @__sancov_gen_cov_switch_values.107)
  switch i32 %234, label %if.then397.i [
    i32 0, label %land.lhs.true388.i.for.inc.i_crit_edge
    i32 -65536, label %land.lhs.true388.i.for.inc.i_crit_edge617
    i32 8388608, label %land.lhs.true388.i.for.inc.i_crit_edge618
  ]

land.lhs.true388.i.for.inc.i_crit_edge618:        ; preds = %land.lhs.true388.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

land.lhs.true388.i.for.inc.i_crit_edge617:        ; preds = %land.lhs.true388.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

land.lhs.true388.i.for.inc.i_crit_edge:           ; preds = %land.lhs.true388.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

if.then397.i:                                     ; preds = %land.lhs.true388.i
  %237 = call i32 @llvm.bswap.i32(i32 %188) #13
  %238 = call i32 @llvm.bswap.i32(i32 %234) #13
  %mii.i = getelementptr i8, ptr %dev, i32 2344
  %239 = ptrtoint ptr %mii.i to i32
  call void @__asan_store4_noabort(i32 %239)
  store i32 %phyaddr.0910.i, ptr %mii.i, align 4
  %shl399.i = shl i32 %237, 16
  %or400.i = or i32 %238, %shl399.i
  %240 = ptrtoint ptr %phy_type.i to i32
  call void @__asan_store4_noabort(i32 %240)
  store i32 %or400.i, ptr %phy_type.i, align 4
  br i1 %cmp911.i, label %if.then397.i.smc911x_phy_detect.exit_crit_edge, label %if.then397.i.while.cond412.i.preheader_crit_edge

if.then397.i.while.cond412.i.preheader_crit_edge: ; preds = %if.then397.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond412.i.preheader

if.then397.i.smc911x_phy_detect.exit_crit_edge:   ; preds = %if.then397.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %smc911x_phy_detect.exit

for.inc.i:                                        ; preds = %land.lhs.true388.i.for.inc.i_crit_edge, %land.lhs.true388.i.for.inc.i_crit_edge617, %land.lhs.true388.i.for.inc.i_crit_edge618, %while.end369.i.for.inc.i_crit_edge, %while.end369.i.for.inc.i_crit_edge615, %while.end369.i.for.inc.i_crit_edge616
  %inc.i = add nuw nsw i32 %phyaddr.0910.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %phyaddr.0910.i)
  %cmp.i568 = icmp ult i32 %phyaddr.0910.i, 31
  %exitcond.not.i = icmp eq i32 %inc.i, 32
  br i1 %exitcond.not.i, label %for.inc.i.while.cond412.i.preheader_crit_edge, label %for.inc.i.do.body40.preheader.i_crit_edge

for.inc.i.do.body40.preheader.i_crit_edge:        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body40.preheader.i

for.inc.i.while.cond412.i.preheader_crit_edge:    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond412.i.preheader

while.cond412.i.preheader:                        ; preds = %for.inc.i.while.cond412.i.preheader_crit_edge, %if.then397.i.while.cond412.i.preheader_crit_edge, %sw.bb.i.while.cond412.i.preheader_crit_edge, %if.end334.while.cond412.i.preheader_crit_edge
  br label %while.cond412.i

while.cond412.i:                                  ; preds = %while.cond412.i.backedge, %while.cond412.i.preheader
  %241 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %base, align 4
  %add.ptr416.i = getelementptr i8, ptr %242, i32 164
  %243 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr416.i) #13, !srcloc !326
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !379
  %.mask.i569 = and i32 %243, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask.i569)
  %tobool421.not.i = icmp eq i32 %.mask.i569, 0
  br i1 %tobool421.not.i, label %do.body424.i, label %while.cond412.i.while.cond412.i.backedge_crit_edge

while.cond412.i.while.cond412.i.backedge_crit_edge: ; preds = %while.cond412.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond412.i.backedge

while.cond412.i.backedge:                         ; preds = %while.end440.i.while.cond412.i.backedge_crit_edge, %while.cond412.i.while.cond412.i.backedge_crit_edge
  br label %while.cond412.i

do.body424.i:                                     ; preds = %while.cond412.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !380
  call void @arm_heavy_mb() #13
  %244 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %base, align 4
  %add.ptr428.i = getelementptr i8, ptr %245, i32 164
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr428.i, i32 100663488) #13, !srcloc !325
  br label %while.cond429.i

while.cond429.i:                                  ; preds = %while.cond429.i.while.cond429.i_crit_edge, %do.body424.i
  %246 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %base, align 4
  %add.ptr433.i = getelementptr i8, ptr %247, i32 164
  %248 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr433.i) #13, !srcloc !326
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !381
  %.mask875.i = and i32 %248, 128
  %tobool438.not.i = icmp eq i32 %.mask875.i, 0
  br i1 %tobool438.not.i, label %while.end440.i, label %while.cond429.i.while.cond429.i_crit_edge

while.cond429.i.while.cond429.i_crit_edge:        ; preds = %while.cond429.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond429.i

while.end440.i:                                   ; preds = %while.cond429.i
  %249 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %base, align 4
  %add.ptr444.i = getelementptr i8, ptr %250, i32 168
  %251 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr444.i) #13, !srcloc !326
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !382
  %252 = and i32 %251, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %252)
  %tobool452.not.i = icmp eq i32 %252, 0
  br i1 %tobool452.not.i, label %while.end440.i.while.cond455.i_crit_edge, label %while.end440.i.while.cond412.i.backedge_crit_edge

while.end440.i.while.cond412.i.backedge_crit_edge: ; preds = %while.end440.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond412.i.backedge

while.end440.i.while.cond455.i_crit_edge:         ; preds = %while.end440.i
  br label %while.cond455.i

while.cond455.i:                                  ; preds = %while.cond455.i.while.cond455.i_crit_edge, %while.end440.i.while.cond455.i_crit_edge
  %253 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %base, align 4
  %add.ptr459.i = getelementptr i8, ptr %254, i32 164
  %255 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr459.i) #13, !srcloc !326
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !383
  %.mask876.i = and i32 %255, 128
  %tobool464.not.i = icmp eq i32 %.mask876.i, 0
  br i1 %tobool464.not.i, label %do.body467.i, label %while.cond455.i.while.cond455.i_crit_edge

while.cond455.i.while.cond455.i_crit_edge:        ; preds = %while.cond455.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond455.i

do.body467.i:                                     ; preds = %while.cond455.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !384
  call void @arm_heavy_mb() #13
  %256 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %base, align 4
  %add.ptr471.i = getelementptr i8, ptr %257, i32 168
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr471.i, i32 -2130182144) #13, !srcloc !325
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !385
  call void @arm_heavy_mb() #13
  %258 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %base, align 4
  %add.ptr476.i = getelementptr i8, ptr %259, i32 164
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr476.i, i32 100663424) #13, !srcloc !325
  br label %while.cond477.i

while.cond477.i:                                  ; preds = %while.cond477.i.while.cond477.i_crit_edge, %do.body467.i
  %260 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %base, align 4
  %add.ptr481.i = getelementptr i8, ptr %261, i32 164
  %262 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr481.i) #13, !srcloc !326
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !386
  %.mask877.i = and i32 %262, 128
  %tobool486.not.i = icmp eq i32 %.mask877.i, 0
  br i1 %tobool486.not.i, label %while.cond477.i.while.cond493.i_crit_edge, label %while.cond477.i.while.cond477.i_crit_edge

while.cond477.i.while.cond477.i_crit_edge:        ; preds = %while.cond477.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond477.i

while.cond477.i.while.cond493.i_crit_edge:        ; preds = %while.cond477.i
  br label %while.cond493.i

while.cond493.i:                                  ; preds = %while.cond493.i.backedge, %while.cond477.i.while.cond493.i_crit_edge
  %263 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %base, align 4
  %add.ptr497.i = getelementptr i8, ptr %264, i32 164
  %265 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr497.i) #13, !srcloc !326
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !387
  %.mask878.i = and i32 %265, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask878.i)
  %tobool502.not.i = icmp eq i32 %.mask878.i, 0
  br i1 %tobool502.not.i, label %do.body505.i, label %while.cond493.i.while.cond493.i.backedge_crit_edge

while.cond493.i.while.cond493.i.backedge_crit_edge: ; preds = %while.cond493.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond493.i.backedge

while.cond493.i.backedge:                         ; preds = %while.end521.i.while.cond493.i.backedge_crit_edge, %while.cond493.i.while.cond493.i.backedge_crit_edge
  br label %while.cond493.i

do.body505.i:                                     ; preds = %while.cond493.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !388
  call void @arm_heavy_mb() #13
  %266 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %base, align 4
  %add.ptr509.i = getelementptr i8, ptr %267, i32 164
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr509.i, i32 100663488) #13, !srcloc !325
  br label %while.cond510.i

while.cond510.i:                                  ; preds = %while.cond510.i.while.cond510.i_crit_edge, %do.body505.i
  %268 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %base, align 4
  %add.ptr514.i = getelementptr i8, ptr %269, i32 164
  %270 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr514.i) #13, !srcloc !326
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !389
  %.mask879.i = and i32 %270, 128
  %tobool519.not.i = icmp eq i32 %.mask879.i, 0
  br i1 %tobool519.not.i, label %while.end521.i, label %while.cond510.i.while.cond510.i_crit_edge

while.cond510.i.while.cond510.i_crit_edge:        ; preds = %while.cond510.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond510.i

while.end521.i:                                   ; preds = %while.cond510.i
  %271 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %base, align 4
  %add.ptr525.i = getelementptr i8, ptr %272, i32 168
  %273 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr525.i) #13, !srcloc !326
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !390
  %274 = and i32 %273, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %274)
  %tobool533.not.i = icmp eq i32 %274, 0
  br i1 %tobool533.not.i, label %while.end521.i.while.cond536.i_crit_edge, label %while.end521.i.while.cond493.i.backedge_crit_edge

while.end521.i.while.cond493.i.backedge_crit_edge: ; preds = %while.end521.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond493.i.backedge

while.end521.i.while.cond536.i_crit_edge:         ; preds = %while.end521.i
  br label %while.cond536.i

while.cond536.i:                                  ; preds = %while.cond536.i.while.cond536.i_crit_edge, %while.end521.i.while.cond536.i_crit_edge
  %275 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %base, align 4
  %add.ptr540.i = getelementptr i8, ptr %276, i32 164
  %277 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr540.i) #13, !srcloc !326
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !391
  %.mask880.i = and i32 %277, 128
  %tobool545.not.i = icmp eq i32 %.mask880.i, 0
  br i1 %tobool545.not.i, label %do.body548.i, label %while.cond536.i.while.cond536.i_crit_edge

while.cond536.i.while.cond536.i_crit_edge:        ; preds = %while.cond536.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond536.i

do.body548.i:                                     ; preds = %while.cond536.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !392
  call void @arm_heavy_mb() #13
  %278 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %base, align 4
  %add.ptr552.i = getelementptr i8, ptr %279, i32 164
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr552.i, i32 117440704) #13, !srcloc !325
  br label %while.cond553.i

while.cond553.i:                                  ; preds = %while.cond553.i.while.cond553.i_crit_edge, %do.body548.i
  %280 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %base, align 4
  %add.ptr557.i = getelementptr i8, ptr %281, i32 164
  %282 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr557.i) #13, !srcloc !326
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !393
  %.mask881.i = and i32 %282, 128
  %tobool562.not.i = icmp eq i32 %.mask881.i, 0
  br i1 %tobool562.not.i, label %while.end564.i, label %while.cond553.i.while.cond553.i_crit_edge

while.cond553.i.while.cond553.i_crit_edge:        ; preds = %while.cond553.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond553.i

while.end564.i:                                   ; preds = %while.cond553.i
  %283 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load ptr, ptr %base, align 4
  %add.ptr568.i = getelementptr i8, ptr %284, i32 168
  %285 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr568.i) #13, !srcloc !326
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !394
  br label %while.cond580.i

while.cond580.i:                                  ; preds = %while.cond580.i.backedge, %while.end564.i
  %286 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %base, align 4
  %add.ptr584.i = getelementptr i8, ptr %287, i32 164
  %288 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr584.i) #13, !srcloc !326
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !395
  %.mask882.i = and i32 %288, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask882.i)
  %tobool589.not.i = icmp eq i32 %.mask882.i, 0
  br i1 %tobool589.not.i, label %do.body592.i, label %while.cond580.i.while.cond580.i.backedge_crit_edge

while.cond580.i.while.cond580.i.backedge_crit_edge: ; preds = %while.cond580.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond580.i.backedge

while.cond580.i.backedge:                         ; preds = %while.end608.i.while.cond580.i.backedge_crit_edge, %while.cond580.i.while.cond580.i.backedge_crit_edge
  br label %while.cond580.i

do.body592.i:                                     ; preds = %while.cond580.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !396
  call void @arm_heavy_mb() #13
  %289 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load ptr, ptr %base, align 4
  %add.ptr596.i = getelementptr i8, ptr %290, i32 164
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr596.i, i32 100663488) #13, !srcloc !325
  br label %while.cond597.i

while.cond597.i:                                  ; preds = %while.cond597.i.while.cond597.i_crit_edge, %do.body592.i
  %291 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load ptr, ptr %base, align 4
  %add.ptr601.i = getelementptr i8, ptr %292, i32 164
  %293 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr601.i) #13, !srcloc !326
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !397
  %.mask883.i = and i32 %293, 128
  %tobool606.not.i = icmp eq i32 %.mask883.i, 0
  br i1 %tobool606.not.i, label %while.end608.i, label %while.cond597.i.while.cond597.i_crit_edge

while.cond597.i.while.cond597.i_crit_edge:        ; preds = %while.cond597.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond597.i

while.end608.i:                                   ; preds = %while.cond597.i
  %294 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load ptr, ptr %base, align 4
  %add.ptr612.i = getelementptr i8, ptr %295, i32 168
  %296 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr612.i) #13, !srcloc !326
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !398
  %297 = and i32 %296, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %297)
  %tobool620.not.i = icmp eq i32 %297, 0
  br i1 %tobool620.not.i, label %while.end608.i.while.cond623.i_crit_edge, label %while.end608.i.while.cond580.i.backedge_crit_edge

while.end608.i.while.cond580.i.backedge_crit_edge: ; preds = %while.end608.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond580.i.backedge

while.end608.i.while.cond623.i_crit_edge:         ; preds = %while.end608.i
  br label %while.cond623.i

while.cond623.i:                                  ; preds = %while.cond623.i.while.cond623.i_crit_edge, %while.end608.i.while.cond623.i_crit_edge
  %298 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load ptr, ptr %base, align 4
  %add.ptr627.i = getelementptr i8, ptr %299, i32 164
  %300 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr627.i) #13, !srcloc !326
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !399
  %.mask884.i = and i32 %300, 128
  %tobool632.not.i = icmp eq i32 %.mask884.i, 0
  br i1 %tobool632.not.i, label %do.body635.i, label %while.cond623.i.while.cond623.i_crit_edge

while.cond623.i.while.cond623.i_crit_edge:        ; preds = %while.cond623.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond623.i

do.body635.i:                                     ; preds = %while.cond623.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !400
  call void @arm_heavy_mb() #13
  %301 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load ptr, ptr %base, align 4
  %add.ptr639.i = getelementptr i8, ptr %302, i32 168
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr639.i, i32 -1056440320) #13, !srcloc !325
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !401
  call void @arm_heavy_mb() #13
  %303 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load ptr, ptr %base, align 4
  %add.ptr644.i = getelementptr i8, ptr %304, i32 164
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr644.i, i32 100663424) #13, !srcloc !325
  br label %while.cond645.i

while.cond645.i:                                  ; preds = %while.cond645.i.while.cond645.i_crit_edge, %do.body635.i
  %305 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load ptr, ptr %base, align 4
  %add.ptr649.i = getelementptr i8, ptr %306, i32 164
  %307 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr649.i) #13, !srcloc !326
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !402
  %.mask885.i = and i32 %307, 128
  %tobool654.not.i = icmp eq i32 %.mask885.i, 0
  br i1 %tobool654.not.i, label %while.cond645.i.while.cond661.i_crit_edge, label %while.cond645.i.while.cond645.i_crit_edge

while.cond645.i.while.cond645.i_crit_edge:        ; preds = %while.cond645.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond645.i

while.cond645.i.while.cond661.i_crit_edge:        ; preds = %while.cond645.i
  br label %while.cond661.i

while.cond661.i:                                  ; preds = %while.cond661.i.backedge, %while.cond645.i.while.cond661.i_crit_edge
  %308 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load ptr, ptr %base, align 4
  %add.ptr665.i = getelementptr i8, ptr %309, i32 164
  %310 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr665.i) #13, !srcloc !326
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !403
  %.mask886.i = and i32 %310, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask886.i)
  %tobool670.not.i = icmp eq i32 %.mask886.i, 0
  br i1 %tobool670.not.i, label %do.body673.i, label %while.cond661.i.while.cond661.i.backedge_crit_edge

while.cond661.i.while.cond661.i.backedge_crit_edge: ; preds = %while.cond661.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond661.i.backedge

while.cond661.i.backedge:                         ; preds = %while.end689.i.while.cond661.i.backedge_crit_edge, %while.cond661.i.while.cond661.i.backedge_crit_edge
  br label %while.cond661.i

do.body673.i:                                     ; preds = %while.cond661.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !404
  call void @arm_heavy_mb() #13
  %311 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load ptr, ptr %base, align 4
  %add.ptr677.i = getelementptr i8, ptr %312, i32 164
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr677.i, i32 100663488) #13, !srcloc !325
  br label %while.cond678.i

while.cond678.i:                                  ; preds = %while.cond678.i.while.cond678.i_crit_edge, %do.body673.i
  %313 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load ptr, ptr %base, align 4
  %add.ptr682.i = getelementptr i8, ptr %314, i32 164
  %315 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr682.i) #13, !srcloc !326
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !405
  %.mask887.i = and i32 %315, 128
  %tobool687.not.i = icmp eq i32 %.mask887.i, 0
  br i1 %tobool687.not.i, label %while.end689.i, label %while.cond678.i.while.cond678.i_crit_edge

while.cond678.i.while.cond678.i_crit_edge:        ; preds = %while.cond678.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond678.i

while.end689.i:                                   ; preds = %while.cond678.i
  %316 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load ptr, ptr %base, align 4
  %add.ptr693.i = getelementptr i8, ptr %317, i32 168
  %318 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr693.i) #13, !srcloc !326
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !406
  %319 = and i32 %318, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %319)
  %tobool701.not.i = icmp eq i32 %319, 0
  br i1 %tobool701.not.i, label %while.end689.i.while.cond704.i_crit_edge, label %while.end689.i.while.cond661.i.backedge_crit_edge

while.end689.i.while.cond661.i.backedge_crit_edge: ; preds = %while.end689.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond661.i.backedge

while.end689.i.while.cond704.i_crit_edge:         ; preds = %while.end689.i
  br label %while.cond704.i

while.cond704.i:                                  ; preds = %while.cond704.i.while.cond704.i_crit_edge, %while.end689.i.while.cond704.i_crit_edge
  %320 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load ptr, ptr %base, align 4
  %add.ptr708.i = getelementptr i8, ptr %321, i32 164
  %322 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr708.i) #13, !srcloc !326
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !407
  %.mask888.i = and i32 %322, 128
  %tobool713.not.i = icmp eq i32 %.mask888.i, 0
  br i1 %tobool713.not.i, label %do.body716.i, label %while.cond704.i.while.cond704.i_crit_edge

while.cond704.i.while.cond704.i_crit_edge:        ; preds = %while.cond704.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond704.i

do.body716.i:                                     ; preds = %while.cond704.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !408
  call void @arm_heavy_mb() #13
  %323 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load ptr, ptr %base, align 4
  %add.ptr720.i = getelementptr i8, ptr %324, i32 164
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr720.i, i32 117440704) #13, !srcloc !325
  br label %while.cond721.i

while.cond721.i:                                  ; preds = %while.cond721.i.while.cond721.i_crit_edge, %do.body716.i
  %325 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load ptr, ptr %base, align 4
  %add.ptr725.i = getelementptr i8, ptr %326, i32 164
  %327 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr725.i) #13, !srcloc !326
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !409
  %.mask889.i = and i32 %327, 128
  %tobool730.not.i = icmp eq i32 %.mask889.i, 0
  br i1 %tobool730.not.i, label %while.end732.i, label %while.cond721.i.while.cond721.i_crit_edge

while.cond721.i.while.cond721.i_crit_edge:        ; preds = %while.cond721.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond721.i

while.end732.i:                                   ; preds = %while.cond721.i
  call void @__sanitizer_cov_trace_pc() #15
  %328 = call i32 @llvm.bswap.i32(i32 %285) #13
  %329 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load ptr, ptr %base, align 4
  %add.ptr736.i = getelementptr i8, ptr %330, i32 168
  %331 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr736.i) #13, !srcloc !326
  %332 = call i32 @llvm.bswap.i32(i32 %331) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !410
  %mii744.i = getelementptr i8, ptr %dev, i32 2344
  %333 = ptrtoint ptr %mii744.i to i32
  call void @__asan_store4_noabort(i32 %333)
  store i32 1, ptr %mii744.i, align 4
  %shl746.i = shl i32 %328, 16
  %or747.i = or i32 %332, %shl746.i
  %334 = ptrtoint ptr %phy_type.i to i32
  call void @__asan_store4_noabort(i32 %334)
  store i32 %or747.i, ptr %phy_type.i, align 4
  br label %smc911x_phy_detect.exit

smc911x_phy_detect.exit:                          ; preds = %while.end732.i, %if.then397.i.smc911x_phy_detect.exit_crit_edge
  %msg_enable = getelementptr i8, ptr %dev, i32 2336
  %335 = ptrtoint ptr %msg_enable to i32
  call void @__asan_store4_noabort(i32 %335)
  store i32 4, ptr %msg_enable, align 4
  %ctl_rfduplx = getelementptr i8, ptr %dev, i32 2328
  %336 = ptrtoint ptr %ctl_rfduplx to i32
  call void @__asan_store4_noabort(i32 %336)
  store i32 1, ptr %ctl_rfduplx, align 4
  %ctl_rspeed = getelementptr i8, ptr %dev, i32 2332
  %337 = ptrtoint ptr %ctl_rspeed to i32
  call void @__asan_store4_noabort(i32 %337)
  store i32 100, ptr %ctl_rspeed, align 4
  %338 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load i32, ptr %irq, align 4
  %call.i = call i32 @request_threaded_irq(i32 noundef %339, ptr noundef nonnull @smc911x_interrupt, ptr noundef null, i32 noundef 136, ptr noundef %dev, ptr noundef %dev) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool360.not = icmp eq i32 %call.i, 0
  br i1 %tobool360.not, label %if.end362, label %smc911x_phy_detect.exit.err_out_crit_edge

smc911x_phy_detect.exit.err_out_crit_edge:        ; preds = %smc911x_phy_detect.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_out

if.end362:                                        ; preds = %smc911x_phy_detect.exit
  %call363 = call i32 @register_netdev(ptr noundef %dev) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call363)
  %cmp364 = icmp eq i32 %call363, 0
  br i1 %cmp364, label %if.then366, label %if.end362.err_out_crit_edge

if.end362.err_out_crit_edge:                      ; preds = %if.end362
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_out

if.then366:                                       ; preds = %if.end362
  %340 = ptrtoint ptr %revision141 to i32
  call void @__asan_load2_noabort(i32 %340)
  %341 = load i16, ptr %revision141, align 2
  %conv368 = zext i16 %341 to i32
  %base_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 5
  %342 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load i32, ptr %base_addr, align 32
  %344 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %344)
  %345 = load i32, ptr %irq, align 4
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %dev, ptr noundef nonnull @.str.19, ptr noundef %17, i32 noundef %conv368, i32 noundef %343, i32 noundef %345) #16
  %call374 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20) #16
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 86
  %346 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load ptr, ptr %dev_addr, align 64
  %348 = ptrtoint ptr %347 to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load i32, ptr %347, align 4
  %350 = and i32 %349, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %350)
  %tobool.i.not.i = icmp eq i32 %350, 0
  br i1 %tobool.i.not.i, label %is_valid_ether_addr.exit, label %if.then366.if.then376_crit_edge

if.then366.if.then376_crit_edge:                  ; preds = %if.then366
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then376

is_valid_ether_addr.exit:                         ; preds = %if.then366
  %add.ptr.i.i = getelementptr i8, ptr %347, i32 4
  %351 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %351)
  %352 = load i16, ptr %add.ptr.i.i, align 2
  %conv.i.i = zext i16 %352 to i32
  %or.i.i = or i32 %349, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i.not = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i.not, label %is_valid_ether_addr.exit.if.then376_crit_edge, label %if.else

is_valid_ether_addr.exit.if.then376_crit_edge:    ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then376

if.then376:                                       ; preds = %is_valid_ether_addr.exit.if.then376_crit_edge, %if.then366.if.then376_crit_edge
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %dev, ptr noundef nonnull @.str.21) #16
  br label %if.end378

if.else:                                          ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %dev, ptr noundef nonnull @.str.22, ptr noundef %347) #16
  br label %if.end378

if.end378:                                        ; preds = %if.else, %if.then376
  %353 = ptrtoint ptr %phy_type.i to i32
  call void @__asan_load4_noabort(i32 %353)
  %354 = load i32, ptr %phy_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %354)
  %cmp379 = icmp eq i32 %354, 0
  br i1 %cmp379, label %do.body383, label %if.else401

do.body383:                                       ; preds = %if.end378
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smc911x_probe.__UNIQUE_ID_ddebug414, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smc911x_probe, %if.then395)) #13
          to label %err_out [label %if.then395], !srcloc !330

if.then395:                                       ; preds = %do.body383
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @smc911x_probe.__UNIQUE_ID_ddebug414, ptr noundef %dev, ptr noundef nonnull @.str.23) #13
  br label %err_out

if.else401:                                       ; preds = %if.end378
  %and403 = and i32 %354, -256
  call void @__sanitizer_cov_trace_const_cmp4(i32 507904, i32 %and403)
  %cmp404 = icmp eq i32 %and403, 507904
  br i1 %cmp404, label %do.body408, label %do.body428

do.body408:                                       ; preds = %if.else401
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smc911x_probe.__UNIQUE_ID_ddebug415, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smc911x_probe, %if.then420)) #13
          to label %err_out [label %if.then420], !srcloc !330

if.then420:                                       ; preds = %do.body408
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @smc911x_probe.__UNIQUE_ID_ddebug415, ptr noundef %dev, ptr noundef nonnull @.str.24) #13
  br label %err_out

do.body428:                                       ; preds = %if.else401
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smc911x_probe.__UNIQUE_ID_ddebug416, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smc911x_probe, %if.then440)) #13
          to label %err_out [label %if.then440], !srcloc !330

if.then440:                                       ; preds = %do.body428
  call void @__sanitizer_cov_trace_pc() #15
  %355 = ptrtoint ptr %phy_type.i to i32
  call void @__asan_load4_noabort(i32 %355)
  %356 = load i32, ptr %phy_type.i, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @smc911x_probe.__UNIQUE_ID_ddebug416, ptr noundef %dev, ptr noundef nonnull @.str.25, i32 noundef %356) #13
  br label %err_out

err_out:                                          ; preds = %if.then440, %do.body428, %if.then420, %do.body408, %if.then395, %do.body383, %if.end362.err_out_crit_edge, %smc911x_phy_detect.exit.err_out_crit_edge, %if.then333, %if.then136, %if.then76, %if.then33
  %retval1.0 = phi i32 [ -19, %if.then33 ], [ -22, %if.then136 ], [ -19, %if.then333 ], [ %call.i, %smc911x_phy_detect.exit.err_out_crit_edge ], [ 0, %if.then395 ], [ 0, %if.then420 ], [ 0, %if.then440 ], [ %call363, %if.end362.err_out_crit_edge ], [ -19, %if.then76 ], [ 0, %do.body383 ], [ 0, %do.body408 ], [ 0, %do.body428 ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr) #13
  ret i32 %retval1.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__release_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @smc911x_reset(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %base = getelementptr i8, ptr %dev, i32 2472
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 132
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !411
  %3 = and i32 %2, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %do.body11, label %entry.do.body55_crit_edge

entry.do.body55_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body55

do.body11:                                        ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !412
  tail call void @arm_heavy_mb() #13
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base, align 4
  %add.ptr15 = getelementptr i8, ptr %5, i32 100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15, i32 0) #13, !srcloc !325
  br label %do.body16

do.body16:                                        ; preds = %do.body16.do.body16_crit_edge, %do.body11
  %timeout.0 = phi i32 [ 10, %do.body11 ], [ %dec, %do.body16.do.body16_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 2147480) #13
  %7 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base, align 4
  %add.ptr20 = getelementptr i8, ptr %8, i32 132
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !413
  %dec = add nsw i32 %timeout.0, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool26.not = icmp ne i32 %dec, 0
  %10 = and i32 %9, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool27.not = icmp eq i32 %10, 0
  %or.cond = select i1 %tobool26.not, i1 %tobool27.not, i1 false
  br i1 %or.cond, label %do.body16.do.body16_crit_edge, label %do.end30

do.body16.do.body16_crit_edge:                    ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body16

do.end30:                                         ; preds = %do.body16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp31 = icmp eq i32 %dec, 0
  br i1 %cmp31, label %do.body34, label %do.end30.do.body55_crit_edge

do.end30.do.body55_crit_edge:                     ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body55

do.body34:                                        ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smc911x_reset.__UNIQUE_ID_ddebug347, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smc911x_reset, %if.then46)) #13
          to label %cleanup [label %if.then46], !srcloc !330

if.then46:                                        ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @smc911x_reset.__UNIQUE_ID_ddebug347, ptr noundef %dev, ptr noundef nonnull @.str.35) #13
  br label %cleanup

do.body55:                                        ; preds = %do.end30.do.body55_crit_edge, %entry.do.body55_crit_edge
  %lock = getelementptr i8, ptr %dev, i32 2424
  %call59 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !414
  tail call void @arm_heavy_mb() #13
  %11 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base, align 4
  %add.ptr68 = getelementptr i8, ptr %12, i32 92
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr68, i32 0) #13, !srcloc !325
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call59) #13
  br label %do.body74

do.body74:                                        ; preds = %do.end117.do.body74_crit_edge, %do.body55
  %dec71317 = phi i32 [ 0, %do.body55 ], [ %dec71, %do.end117.do.body74_crit_edge ]
  %resets.0316 = phi i32 [ 1, %do.body55 ], [ %resets.1, %do.end117.do.body74_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !415
  tail call void @arm_heavy_mb() #13
  %13 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base, align 4
  %add.ptr78 = getelementptr i8, ptr %14, i32 116
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr78, i32 16777216) #13, !srcloc !325
  br label %do.body79

do.body79:                                        ; preds = %do.cond110.do.body79_crit_edge, %do.body74
  %timeout.3 = phi i32 [ 10, %do.body74 ], [ %dec111, %do.cond110.do.body79_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 2147480) #13
  %16 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base, align 4
  %add.ptr83 = getelementptr i8, ptr %17, i32 116
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr83) #13, !srcloc !326
  %19 = tail call i32 @llvm.bswap.i32(i32 %18)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !416
  %and87 = and i32 %19, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and87)
  %tobool88.not = icmp eq i32 %and87, 0
  br i1 %tobool88.not, label %do.cond110, label %do.body91

do.body91:                                        ; preds = %do.body79
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smc911x_reset.__UNIQUE_ID_ddebug348, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smc911x_reset, %if.then103)) #13
          to label %do.end117 [label %if.then103], !srcloc !330

if.then103:                                       ; preds = %do.body91
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @smc911x_reset.__UNIQUE_ID_ddebug348, ptr noundef %dev, ptr noundef nonnull @.str.36) #13
  br label %do.end117

do.cond110:                                       ; preds = %do.body79
  %dec111 = add nsw i32 %timeout.3, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec111)
  %tobool112.not = icmp eq i32 %dec111, 0
  %and114 = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and114)
  %tobool115.not = icmp eq i32 %and114, 0
  %or.cond319 = select i1 %tobool112.not, i1 true, i1 %tobool115.not
  br i1 %or.cond319, label %do.cond110.do.end117_crit_edge, label %do.cond110.do.body79_crit_edge

do.cond110.do.body79_crit_edge:                   ; preds = %do.cond110
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body79

do.cond110.do.end117_crit_edge:                   ; preds = %do.cond110
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end117

do.end117:                                        ; preds = %do.cond110.do.end117_crit_edge, %if.then103, %do.body91
  %resets.1 = phi i32 [ %resets.0316, %if.then103 ], [ %resets.0316, %do.body91 ], [ %dec71317, %do.cond110.do.end117_crit_edge ]
  %cmp119 = phi i1 [ false, %if.then103 ], [ false, %do.body91 ], [ %tobool112.not, %do.cond110.do.end117_crit_edge ]
  %dec71 = add i32 %resets.1, -1
  %tobool72.not = icmp eq i32 %resets.1, 0
  br i1 %tobool72.not, label %while.end118, label %do.end117.do.body74_crit_edge

do.end117.do.body74_crit_edge:                    ; preds = %do.end117
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body74

while.end118:                                     ; preds = %do.end117
  br i1 %cmp119, label %do.body123, label %while.end118.land.rhs145_crit_edge

while.end118.land.rhs145_crit_edge:               ; preds = %while.end118
  br label %land.rhs145

do.body123:                                       ; preds = %while.end118
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smc911x_reset.__UNIQUE_ID_ddebug349, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smc911x_reset, %if.then135)) #13
          to label %cleanup [label %if.then135], !srcloc !330

if.then135:                                       ; preds = %do.body123
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @smc911x_reset.__UNIQUE_ID_ddebug349, ptr noundef %dev, ptr noundef nonnull @.str.37) #13
  br label %cleanup

land.rhs145:                                      ; preds = %while.body156.land.rhs145_crit_edge, %while.end118.land.rhs145_crit_edge
  %dec143318 = phi i32 [ %dec143, %while.body156.land.rhs145_crit_edge ], [ 999, %while.end118.land.rhs145_crit_edge ]
  %20 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base, align 4
  %add.ptr149 = getelementptr i8, ptr %21, i32 176
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr149) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !417
  %.mask301 = and i32 %22, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask301)
  %tobool154.not = icmp eq i32 %.mask301, 0
  br i1 %tobool154.not, label %do.body181, label %while.body156

while.body156:                                    ; preds = %land.rhs145
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %23(i32 noundef 2147480) #13
  %dec143 = add nsw i32 %dec143318, -1
  %cond = icmp eq i32 %dec143, 0
  br i1 %cond, label %do.body162, label %while.body156.land.rhs145_crit_edge

while.body156.land.rhs145_crit_edge:              ; preds = %while.body156
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.rhs145

do.body162:                                       ; preds = %while.body156
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smc911x_reset.__UNIQUE_ID_ddebug350, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smc911x_reset, %if.then174)) #13
          to label %cleanup [label %if.then174], !srcloc !330

if.then174:                                       ; preds = %do.body162
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @smc911x_reset.__UNIQUE_ID_ddebug350, ptr noundef %dev, ptr noundef nonnull @.str.38) #13
  br label %cleanup

do.body181:                                       ; preds = %land.rhs145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !418
  tail call void @arm_heavy_mb() #13
  %24 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %base, align 4
  %add.ptr185 = getelementptr i8, ptr %25, i32 92
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr185, i32 0) #13, !srcloc !325
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !419
  tail call void @arm_heavy_mb() #13
  %26 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %base, align 4
  %add.ptr190 = getelementptr i8, ptr %27, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr190, i32 -1) #13, !srcloc !325
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !420
  tail call void @arm_heavy_mb() #13
  %tx_fifo_kb = getelementptr i8, ptr %dev, i32 2312
  %28 = ptrtoint ptr %tx_fifo_kb to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %tx_fifo_kb, align 4
  %30 = shl i32 %29, 8
  %31 = and i32 %30, 3840
  %32 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %base, align 4
  %add.ptr196 = getelementptr i8, ptr %33, i32 116
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr196, i32 %31) #13, !srcloc !325
  br label %while.cond198

while.cond198:                                    ; preds = %while.cond198.while.cond198_crit_edge, %do.body181
  %34 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %base, align 4
  %add.ptr202 = getelementptr i8, ptr %35, i32 164
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr202) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !421
  %.mask = and i32 %36, 128
  %tobool207.not = icmp eq i32 %.mask, 0
  br i1 %tobool207.not, label %do.body210, label %while.cond198.while.cond198_crit_edge

while.cond198.while.cond198_crit_edge:            ; preds = %while.cond198
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond198

do.body210:                                       ; preds = %while.cond198
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !422
  tail call void @arm_heavy_mb() #13
  %37 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %base, align 4
  %add.ptr214 = getelementptr i8, ptr %38, i32 168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr214, i32 33619967) #13, !srcloc !325
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !423
  tail call void @arm_heavy_mb() #13
  %39 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %base, align 4
  %add.ptr219 = getelementptr i8, ptr %40, i32 164
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr219, i32 134217856) #13, !srcloc !325
  br label %while.cond220

while.cond220:                                    ; preds = %while.cond220.while.cond220_crit_edge, %do.body210
  %41 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %base, align 4
  %add.ptr224 = getelementptr i8, ptr %42, i32 164
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr224) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !424
  %.mask300 = and i32 %43, 128
  %tobool229.not = icmp eq i32 %.mask300, 0
  br i1 %tobool229.not, label %do.body234, label %while.cond220.while.cond220_crit_edge

while.cond220.while.cond220_crit_edge:            ; preds = %while.cond220
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond220

do.body234:                                       ; preds = %while.cond220
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !425
  tail call void @arm_heavy_mb() #13
  %afc_cfg = getelementptr i8, ptr %dev, i32 2324
  %44 = ptrtoint ptr %afc_cfg to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %afc_cfg, align 4
  %46 = tail call i32 @llvm.bswap.i32(i32 %45)
  %47 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %base, align 4
  %add.ptr238 = getelementptr i8, ptr %48, i32 172
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr238, i32 %46) #13, !srcloc !325
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !426
  tail call void @arm_heavy_mb() #13
  %49 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %base, align 4
  %add.ptr243 = getelementptr i8, ptr %50, i32 136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr243, i32 1904) #13, !srcloc !325
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !427
  tail call void @arm_heavy_mb() #13
  %51 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %base, align 4
  %add.ptr248 = getelementptr i8, ptr %52, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr248, i32 16842753) #13, !srcloc !325
  %53 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %add.ptr.i, align 4
  %cmp249.not = icmp eq ptr %54, null
  br i1 %cmp249.not, label %do.body234.cleanup_crit_edge, label %if.then251

do.body234.cleanup_crit_edge:                     ; preds = %do.body234
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then251:                                       ; preds = %do.body234
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @consume_skb(ptr noundef nonnull %54) #13
  %55 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr null, ptr %add.ptr.i, align 4
  %tx_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 5
  %56 = ptrtoint ptr %tx_errors to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %tx_errors, align 4
  %inc254 = add i32 %57, 1
  store i32 %inc254, ptr %tx_errors, align 4
  %tx_aborted_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 16
  %58 = ptrtoint ptr %tx_aborted_errors to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %tx_aborted_errors, align 8
  %inc256 = add i32 %59, 1
  store i32 %inc256, ptr %tx_aborted_errors, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then251, %do.body234.cleanup_crit_edge, %if.then174, %do.body162, %if.then135, %do.body123, %if.then46, %do.body34
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @smc911x_phy_configure(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %netdev = getelementptr i8, ptr %work, i32 92
  %0 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netdev, align 4
  %mii = getelementptr i8, ptr %work, i32 -32
  %2 = ptrtoint ptr %mii to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mii, align 4
  %phy_type = getelementptr i8, ptr %work, i32 -36
  %4 = ptrtoint ptr %phy_type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %phy_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end8

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end8:                                          ; preds = %entry
  %lock.i = getelementptr i8, ptr %1, i32 2424
  %call11.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #13
  %base.i = getelementptr i8, ptr %1, i32 2472
  %6 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 132
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !428
  %9 = and i32 %8, -821362688
  %10 = or i32 %9, 262144
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !429
  tail call void @arm_heavy_mb() #13
  %11 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base.i, align 4
  %add.ptr23.i = getelementptr i8, ptr %12, i32 132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr23.i, i32 %10) #13, !srcloc !325
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call11.i) #13
  tail call void @msleep(i32 noundef 50) #13
  %call35.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #13
  %13 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base.i, align 4
  %add.ptr43.i = getelementptr i8, ptr %14, i32 132
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr43.i) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !430
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call35.i) #13
  %16 = and i32 %15, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool49.not.i = icmp eq i32 %16, 0
  br i1 %tobool49.not.i, label %if.end8.do.body14_crit_edge, label %for.cond.i

if.end8.do.body14_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body14

for.cond.i:                                       ; preds = %if.end8
  tail call void @msleep(i32 noundef 50) #13
  %call35.1.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #13
  %17 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %base.i, align 4
  %add.ptr43.1.i = getelementptr i8, ptr %18, i32 132
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr43.1.i) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !430
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call35.1.i) #13
  %20 = and i32 %19, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool49.not.1.i = icmp eq i32 %20, 0
  br i1 %tobool49.not.1.i, label %for.cond.i.do.body14_crit_edge, label %if.then11

for.cond.i.do.body14_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body14

if.then11:                                        ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %1, ptr noundef nonnull @.str.66) #16
  br label %cleanup

do.body14:                                        ; preds = %for.cond.i.do.body14_crit_edge, %if.end8.do.body14_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %21(i32 noundef 107374000) #13
  %lock = getelementptr i8, ptr %work, i32 48
  %call18 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #13
  %base = getelementptr i8, ptr %work, i32 96
  br label %while.cond26

while.cond26:                                     ; preds = %while.cond26.backedge, %do.body14
  %22 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %base, align 4
  %add.ptr28 = getelementptr i8, ptr %23, i32 164
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr28) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !431
  %.mask = and i32 %24, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask)
  %tobool32.not = icmp eq i32 %.mask, 0
  br i1 %tobool32.not, label %do.body35, label %while.cond26.while.cond26.backedge_crit_edge

while.cond26.while.cond26.backedge_crit_edge:     ; preds = %while.cond26
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond26.backedge

while.cond26.backedge:                            ; preds = %while.end51.while.cond26.backedge_crit_edge, %while.cond26.while.cond26.backedge_crit_edge
  br label %while.cond26

do.body35:                                        ; preds = %while.cond26
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !432
  tail call void @arm_heavy_mb() #13
  %25 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %base, align 4
  %add.ptr39 = getelementptr i8, ptr %26, i32 164
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr39, i32 100663488) #13, !srcloc !325
  br label %while.cond40

while.cond40:                                     ; preds = %while.cond40.while.cond40_crit_edge, %do.body35
  %27 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %base, align 4
  %add.ptr44 = getelementptr i8, ptr %28, i32 164
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr44) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !433
  %.mask1081 = and i32 %29, 128
  %tobool49.not = icmp eq i32 %.mask1081, 0
  br i1 %tobool49.not, label %while.end51, label %while.cond40.while.cond40_crit_edge

while.cond40.while.cond40_crit_edge:              ; preds = %while.cond40
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond40

while.end51:                                      ; preds = %while.cond40
  %30 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %base, align 4
  %add.ptr55 = getelementptr i8, ptr %31, i32 168
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr55) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !434
  %33 = and i32 %32, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool63.not = icmp eq i32 %33, 0
  br i1 %tobool63.not, label %while.end51.while.cond66_crit_edge, label %while.end51.while.cond26.backedge_crit_edge

while.end51.while.cond26.backedge_crit_edge:      ; preds = %while.end51
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond26.backedge

while.end51.while.cond66_crit_edge:               ; preds = %while.end51
  br label %while.cond66

while.cond66:                                     ; preds = %while.cond66.while.cond66_crit_edge, %while.end51.while.cond66_crit_edge
  %34 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %base, align 4
  %add.ptr70 = getelementptr i8, ptr %35, i32 164
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr70) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !435
  %.mask1082 = and i32 %36, 128
  %tobool75.not = icmp eq i32 %.mask1082, 0
  br i1 %tobool75.not, label %do.body78, label %while.cond66.while.cond66_crit_edge

while.cond66.while.cond66_crit_edge:              ; preds = %while.cond66
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond66

do.body78:                                        ; preds = %while.cond66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !436
  tail call void @arm_heavy_mb() #13
  %37 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %base, align 4
  %add.ptr82 = getelementptr i8, ptr %38, i32 168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82, i32 -268435456) #13, !srcloc !325
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !437
  tail call void @arm_heavy_mb() #13
  %39 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %base, align 4
  %add.ptr87 = getelementptr i8, ptr %40, i32 164
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr87, i32 117440640) #13, !srcloc !325
  br label %while.cond88

while.cond88:                                     ; preds = %while.cond88.while.cond88_crit_edge, %do.body78
  %41 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %base, align 4
  %add.ptr92 = getelementptr i8, ptr %42, i32 164
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr92) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !438
  %.mask1083 = and i32 %43, 128
  %tobool97.not = icmp eq i32 %.mask1083, 0
  br i1 %tobool97.not, label %while.cond88.while.cond103_crit_edge, label %while.cond88.while.cond88_crit_edge

while.cond88.while.cond88_crit_edge:              ; preds = %while.cond88
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond88

while.cond88.while.cond103_crit_edge:             ; preds = %while.cond88
  br label %while.cond103

while.cond103:                                    ; preds = %while.cond103.while.cond103_crit_edge, %while.cond88.while.cond103_crit_edge
  %44 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %base, align 4
  %add.ptr107 = getelementptr i8, ptr %45, i32 164
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr107) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !439
  %.mask1084 = and i32 %46, 128
  %tobool112.not = icmp eq i32 %.mask1084, 0
  br i1 %tobool112.not, label %do.body115, label %while.cond103.while.cond103_crit_edge

while.cond103.while.cond103_crit_edge:            ; preds = %while.cond103
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond103

do.body115:                                       ; preds = %while.cond103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !440
  tail call void @arm_heavy_mb() #13
  %shl = shl i32 %3, 11
  %or119 = or i32 %shl, 1923
  %47 = tail call i32 @llvm.bswap.i32(i32 %or119)
  %48 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %base, align 4
  %add.ptr121 = getelementptr i8, ptr %49, i32 168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr121, i32 %47) #13, !srcloc !325
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !441
  tail call void @arm_heavy_mb() #13
  %50 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %base, align 4
  %add.ptr126 = getelementptr i8, ptr %51, i32 164
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr126, i32 100663424) #13, !srcloc !325
  br label %while.cond127

while.cond127:                                    ; preds = %while.cond127.while.cond127_crit_edge, %do.body115
  %52 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %base, align 4
  %add.ptr131 = getelementptr i8, ptr %53, i32 164
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr131) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !442
  %.mask1085 = and i32 %54, 128
  %tobool136.not = icmp eq i32 %.mask1085, 0
  br i1 %tobool136.not, label %while.cond127.while.cond143_crit_edge, label %while.cond127.while.cond127_crit_edge

while.cond127.while.cond127_crit_edge:            ; preds = %while.cond127
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond127

while.cond127.while.cond143_crit_edge:            ; preds = %while.cond127
  br label %while.cond143

while.cond143:                                    ; preds = %while.cond143.backedge, %while.cond127.while.cond143_crit_edge
  %55 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %base, align 4
  %add.ptr147 = getelementptr i8, ptr %56, i32 164
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr147) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !443
  %.mask1086 = and i32 %57, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask1086)
  %tobool152.not = icmp eq i32 %.mask1086, 0
  br i1 %tobool152.not, label %do.body155, label %while.cond143.while.cond143.backedge_crit_edge

while.cond143.while.cond143.backedge_crit_edge:   ; preds = %while.cond143
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond143.backedge

while.cond143.backedge:                           ; preds = %while.end171.while.cond143.backedge_crit_edge, %while.cond143.while.cond143.backedge_crit_edge
  br label %while.cond143

do.body155:                                       ; preds = %while.cond143
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !444
  tail call void @arm_heavy_mb() #13
  %58 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %base, align 4
  %add.ptr159 = getelementptr i8, ptr %59, i32 164
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr159, i32 100663488) #13, !srcloc !325
  br label %while.cond160

while.cond160:                                    ; preds = %while.cond160.while.cond160_crit_edge, %do.body155
  %60 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %base, align 4
  %add.ptr164 = getelementptr i8, ptr %61, i32 164
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr164) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !445
  %.mask1087 = and i32 %62, 128
  %tobool169.not = icmp eq i32 %.mask1087, 0
  br i1 %tobool169.not, label %while.end171, label %while.cond160.while.cond160_crit_edge

while.cond160.while.cond160_crit_edge:            ; preds = %while.cond160
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond160

while.end171:                                     ; preds = %while.cond160
  %63 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %base, align 4
  %add.ptr175 = getelementptr i8, ptr %64, i32 168
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr175) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !446
  %66 = and i32 %65, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool183.not = icmp eq i32 %66, 0
  br i1 %tobool183.not, label %do.end184, label %while.end171.while.cond143.backedge_crit_edge

while.end171.while.cond143.backedge_crit_edge:    ; preds = %while.end171
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond143.backedge

do.end184:                                        ; preds = %while.end171
  %force_media = getelementptr i8, ptr %work, i32 -16
  %67 = ptrtoint ptr %force_media to i32
  call void @__asan_load1_noabort(i32 %67)
  %bf.load = load i8, ptr %force_media, align 4
  %68 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %68)
  %tobool188.not = icmp eq i8 %68, 0
  br i1 %tobool188.not, label %do.end184.while.cond196_crit_edge, label %if.then189

do.end184.while.cond196_crit_edge:                ; preds = %do.end184
  br label %while.cond196

if.then189:                                       ; preds = %do.end184
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @smc911x_phy_fixed(ptr noundef %1)
  br label %smc911x_phy_configure_exit

while.cond196:                                    ; preds = %while.cond196.backedge, %do.end184.while.cond196_crit_edge
  %69 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %base, align 4
  %add.ptr200 = getelementptr i8, ptr %70, i32 164
  %71 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr200) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !447
  %.mask1088 = and i32 %71, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask1088)
  %tobool205.not = icmp eq i32 %.mask1088, 0
  br i1 %tobool205.not, label %do.body208, label %while.cond196.while.cond196.backedge_crit_edge

while.cond196.while.cond196.backedge_crit_edge:   ; preds = %while.cond196
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond196.backedge

while.cond196.backedge:                           ; preds = %while.end224.while.cond196.backedge_crit_edge, %while.cond196.while.cond196.backedge_crit_edge
  br label %while.cond196

do.body208:                                       ; preds = %while.cond196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !448
  tail call void @arm_heavy_mb() #13
  %72 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %base, align 4
  %add.ptr212 = getelementptr i8, ptr %73, i32 164
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr212, i32 100663488) #13, !srcloc !325
  br label %while.cond213

while.cond213:                                    ; preds = %while.cond213.while.cond213_crit_edge, %do.body208
  %74 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %base, align 4
  %add.ptr217 = getelementptr i8, ptr %75, i32 164
  %76 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr217) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !449
  %.mask1089 = and i32 %76, 128
  %tobool222.not = icmp eq i32 %.mask1089, 0
  br i1 %tobool222.not, label %while.end224, label %while.cond213.while.cond213_crit_edge

while.cond213.while.cond213_crit_edge:            ; preds = %while.cond213
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond213

while.end224:                                     ; preds = %while.cond213
  %77 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %base, align 4
  %add.ptr228 = getelementptr i8, ptr %78, i32 168
  %79 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr228) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !450
  %80 = and i32 %79, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %tobool236.not = icmp eq i32 %80, 0
  br i1 %tobool236.not, label %while.end224.while.cond239_crit_edge, label %while.end224.while.cond196.backedge_crit_edge

while.end224.while.cond196.backedge_crit_edge:    ; preds = %while.end224
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond196.backedge

while.end224.while.cond239_crit_edge:             ; preds = %while.end224
  br label %while.cond239

while.cond239:                                    ; preds = %while.cond239.while.cond239_crit_edge, %while.end224.while.cond239_crit_edge
  %81 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %base, align 4
  %add.ptr243 = getelementptr i8, ptr %82, i32 164
  %83 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr243) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !451
  %.mask1090 = and i32 %83, 128
  %tobool248.not = icmp eq i32 %.mask1090, 0
  br i1 %tobool248.not, label %do.body251, label %while.cond239.while.cond239_crit_edge

while.cond239.while.cond239_crit_edge:            ; preds = %while.cond239
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond239

do.body251:                                       ; preds = %while.cond239
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !452
  tail call void @arm_heavy_mb() #13
  %or256 = or i32 %shl, 65
  %84 = tail call i32 @llvm.bswap.i32(i32 %or256)
  %85 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %base, align 4
  %add.ptr258 = getelementptr i8, ptr %86, i32 168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr258, i32 %84) #13, !srcloc !325
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !453
  tail call void @arm_heavy_mb() #13
  %87 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %base, align 4
  %add.ptr263 = getelementptr i8, ptr %88, i32 164
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr263, i32 100663424) #13, !srcloc !325
  br label %while.cond264

while.cond264:                                    ; preds = %while.cond264.while.cond264_crit_edge, %do.body251
  %89 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %base, align 4
  %add.ptr268 = getelementptr i8, ptr %90, i32 164
  %91 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr268) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !454
  %.mask1091 = and i32 %91, 128
  %tobool273.not = icmp eq i32 %.mask1091, 0
  br i1 %tobool273.not, label %while.cond264.while.cond280_crit_edge, label %while.cond264.while.cond264_crit_edge

while.cond264.while.cond264_crit_edge:            ; preds = %while.cond264
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond264

while.cond264.while.cond280_crit_edge:            ; preds = %while.cond264
  br label %while.cond280

while.cond280:                                    ; preds = %while.cond280.backedge, %while.cond264.while.cond280_crit_edge
  %92 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %base, align 4
  %add.ptr284 = getelementptr i8, ptr %93, i32 164
  %94 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr284) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !455
  %.mask1092 = and i32 %94, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask1092)
  %tobool289.not = icmp eq i32 %.mask1092, 0
  br i1 %tobool289.not, label %do.body292, label %while.cond280.while.cond280.backedge_crit_edge

while.cond280.while.cond280.backedge_crit_edge:   ; preds = %while.cond280
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond280.backedge

while.cond280.backedge:                           ; preds = %while.end308.while.cond280.backedge_crit_edge, %while.cond280.while.cond280.backedge_crit_edge
  br label %while.cond280

do.body292:                                       ; preds = %while.cond280
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !456
  tail call void @arm_heavy_mb() #13
  %95 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %base, align 4
  %add.ptr296 = getelementptr i8, ptr %96, i32 164
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr296, i32 100663488) #13, !srcloc !325
  br label %while.cond297

while.cond297:                                    ; preds = %while.cond297.while.cond297_crit_edge, %do.body292
  %97 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %base, align 4
  %add.ptr301 = getelementptr i8, ptr %98, i32 164
  %99 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr301) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !457
  %.mask1093 = and i32 %99, 128
  %tobool306.not = icmp eq i32 %.mask1093, 0
  br i1 %tobool306.not, label %while.end308, label %while.cond297.while.cond297_crit_edge

while.cond297.while.cond297_crit_edge:            ; preds = %while.cond297
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond297

while.end308:                                     ; preds = %while.cond297
  %100 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %base, align 4
  %add.ptr312 = getelementptr i8, ptr %101, i32 168
  %102 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr312) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !458
  %103 = and i32 %102, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %103)
  %tobool320.not = icmp eq i32 %103, 0
  br i1 %tobool320.not, label %while.end308.while.cond323_crit_edge, label %while.end308.while.cond280.backedge_crit_edge

while.end308.while.cond280.backedge_crit_edge:    ; preds = %while.end308
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond280.backedge

while.end308.while.cond323_crit_edge:             ; preds = %while.end308
  br label %while.cond323

while.cond323:                                    ; preds = %while.cond323.while.cond323_crit_edge, %while.end308.while.cond323_crit_edge
  %104 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %base, align 4
  %add.ptr327 = getelementptr i8, ptr %105, i32 164
  %106 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr327) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !459
  %.mask1094 = and i32 %106, 128
  %tobool332.not = icmp eq i32 %.mask1094, 0
  br i1 %tobool332.not, label %do.body335, label %while.cond323.while.cond323_crit_edge

while.cond323.while.cond323_crit_edge:            ; preds = %while.cond323
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond323

do.body335:                                       ; preds = %while.cond323
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !460
  tail call void @arm_heavy_mb() #13
  %107 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %base, align 4
  %add.ptr339 = getelementptr i8, ptr %108, i32 164
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr339, i32 117440704) #13, !srcloc !325
  br label %while.cond340

while.cond340:                                    ; preds = %while.cond340.while.cond340_crit_edge, %do.body335
  %109 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %base, align 4
  %add.ptr344 = getelementptr i8, ptr %110, i32 164
  %111 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr344) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !461
  %.mask1095 = and i32 %111, 128
  %tobool349.not = icmp eq i32 %.mask1095, 0
  br i1 %tobool349.not, label %while.end351, label %while.cond340.while.cond340_crit_edge

while.cond340.while.cond340_crit_edge:            ; preds = %while.cond340
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond340

while.end351:                                     ; preds = %while.cond340
  %112 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %base, align 4
  %add.ptr355 = getelementptr i8, ptr %113, i32 168
  %114 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr355) #13, !srcloc !326
  %115 = tail call i32 @llvm.bswap.i32(i32 %114)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !462
  %and363 = and i32 %115, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and363)
  %tobool364.not = icmp eq i32 %and363, 0
  br i1 %tobool364.not, label %if.then365, label %if.end367

if.then365:                                       ; preds = %while.end351
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %1, ptr noundef nonnull @.str.67) #16
  tail call fastcc void @smc911x_phy_fixed(ptr noundef %1)
  br label %smc911x_phy_configure_exit

if.end367:                                        ; preds = %while.end351
  %and368 = and i32 %115, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and368)
  %tobool369.not = icmp eq i32 %and368, 0
  %spec.select = select i1 %tobool369.not, i32 3073, i32 3585
  %and373 = lshr i32 %115, 6
  %116 = and i32 %and373, 480
  %117 = or i32 %116, %spec.select
  %ctl_rspeed = getelementptr i8, ptr %work, i32 -44
  %118 = ptrtoint ptr %ctl_rspeed to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %ctl_rspeed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %119)
  %cmp393.not = icmp eq i32 %119, 100
  %and396 = and i32 %117, 3169
  %my_ad_caps.5 = select i1 %cmp393.not, i32 %117, i32 %and396
  %ctl_rfduplx = getelementptr i8, ptr %work, i32 -48
  %120 = ptrtoint ptr %ctl_rfduplx to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %ctl_rfduplx, align 4
  %and400 = and i32 %my_ad_caps.5, 3745
  br label %while.cond406

while.cond406:                                    ; preds = %while.cond406.backedge, %if.end367
  %122 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %base, align 4
  %add.ptr410 = getelementptr i8, ptr %123, i32 164
  %124 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr410) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !463
  %.mask1096 = and i32 %124, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask1096)
  %tobool415.not = icmp eq i32 %.mask1096, 0
  br i1 %tobool415.not, label %do.body418, label %while.cond406.while.cond406.backedge_crit_edge

while.cond406.while.cond406.backedge_crit_edge:   ; preds = %while.cond406
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond406.backedge

while.cond406.backedge:                           ; preds = %while.end434.while.cond406.backedge_crit_edge, %while.cond406.while.cond406.backedge_crit_edge
  br label %while.cond406

do.body418:                                       ; preds = %while.cond406
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !464
  tail call void @arm_heavy_mb() #13
  %125 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %base, align 4
  %add.ptr422 = getelementptr i8, ptr %126, i32 164
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr422, i32 100663488) #13, !srcloc !325
  br label %while.cond423

while.cond423:                                    ; preds = %while.cond423.while.cond423_crit_edge, %do.body418
  %127 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %base, align 4
  %add.ptr427 = getelementptr i8, ptr %128, i32 164
  %129 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr427) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !465
  %.mask1097 = and i32 %129, 128
  %tobool432.not = icmp eq i32 %.mask1097, 0
  br i1 %tobool432.not, label %while.end434, label %while.cond423.while.cond423_crit_edge

while.cond423.while.cond423_crit_edge:            ; preds = %while.cond423
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond423

while.end434:                                     ; preds = %while.cond423
  %130 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %base, align 4
  %add.ptr438 = getelementptr i8, ptr %131, i32 168
  %132 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr438) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !466
  %133 = and i32 %132, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %133)
  %tobool446.not = icmp eq i32 %133, 0
  br i1 %tobool446.not, label %while.cond449.preheader, label %while.end434.while.cond406.backedge_crit_edge

while.end434.while.cond406.backedge_crit_edge:    ; preds = %while.end434
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond406.backedge

while.cond449.preheader:                          ; preds = %while.end434
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %121)
  %tobool398.not = icmp eq i32 %121, 0
  br label %while.cond449

while.cond449:                                    ; preds = %while.cond449.while.cond449_crit_edge, %while.cond449.preheader
  %134 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %base, align 4
  %add.ptr453 = getelementptr i8, ptr %135, i32 164
  %136 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr453) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !467
  %.mask1098 = and i32 %136, 128
  %tobool458.not = icmp eq i32 %.mask1098, 0
  br i1 %tobool458.not, label %do.body461, label %while.cond449.while.cond449_crit_edge

while.cond449.while.cond449_crit_edge:            ; preds = %while.cond449
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond449

do.body461:                                       ; preds = %while.cond449
  %my_ad_caps.6 = select i1 %tobool398.not, i32 %and400, i32 %my_ad_caps.5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !468
  tail call void @arm_heavy_mb() #13
  %137 = tail call i32 @llvm.bswap.i32(i32 %my_ad_caps.6)
  %138 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %base, align 4
  %add.ptr465 = getelementptr i8, ptr %139, i32 168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr465, i32 %137) #13, !srcloc !325
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !469
  tail call void @arm_heavy_mb() #13
  %140 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %base, align 4
  %add.ptr470 = getelementptr i8, ptr %141, i32 164
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr470, i32 117440640) #13, !srcloc !325
  br label %while.cond471

while.cond471:                                    ; preds = %while.cond471.while.cond471_crit_edge, %do.body461
  %142 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %base, align 4
  %add.ptr475 = getelementptr i8, ptr %143, i32 164
  %144 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr475) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !470
  %.mask1099 = and i32 %144, 128
  %tobool480.not = icmp eq i32 %.mask1099, 0
  br i1 %tobool480.not, label %while.cond471.while.cond486_crit_edge, label %while.cond471.while.cond471_crit_edge

while.cond471.while.cond471_crit_edge:            ; preds = %while.cond471
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond471

while.cond471.while.cond486_crit_edge:            ; preds = %while.cond471
  br label %while.cond486

while.cond486:                                    ; preds = %while.cond486.while.cond486_crit_edge, %while.cond471.while.cond486_crit_edge
  %145 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %base, align 4
  %add.ptr490 = getelementptr i8, ptr %146, i32 164
  %147 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr490) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !471
  %.mask1100 = and i32 %147, 128
  %tobool495.not = icmp eq i32 %.mask1100, 0
  br i1 %tobool495.not, label %do.body498, label %while.cond486.while.cond486_crit_edge

while.cond486.while.cond486_crit_edge:            ; preds = %while.cond486
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond486

do.body498:                                       ; preds = %while.cond486
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !472
  tail call void @arm_heavy_mb() #13
  %or504 = or i32 %shl, 259
  %148 = tail call i32 @llvm.bswap.i32(i32 %or504)
  %149 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %base, align 4
  %add.ptr506 = getelementptr i8, ptr %150, i32 168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr506, i32 %148) #13, !srcloc !325
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !473
  tail call void @arm_heavy_mb() #13
  %151 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %base, align 4
  %add.ptr511 = getelementptr i8, ptr %152, i32 164
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr511, i32 100663424) #13, !srcloc !325
  br label %while.cond512

while.cond512:                                    ; preds = %while.cond512.while.cond512_crit_edge, %do.body498
  %153 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %base, align 4
  %add.ptr516 = getelementptr i8, ptr %154, i32 164
  %155 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr516) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !474
  %.mask1101 = and i32 %155, 128
  %tobool521.not = icmp eq i32 %.mask1101, 0
  br i1 %tobool521.not, label %while.cond512.while.cond528_crit_edge, label %while.cond512.while.cond512_crit_edge

while.cond512.while.cond512_crit_edge:            ; preds = %while.cond512
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond512

while.cond512.while.cond528_crit_edge:            ; preds = %while.cond512
  br label %while.cond528

while.cond528:                                    ; preds = %while.cond528.backedge, %while.cond512.while.cond528_crit_edge
  %156 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %base, align 4
  %add.ptr532 = getelementptr i8, ptr %157, i32 164
  %158 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr532) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !475
  %.mask1102 = and i32 %158, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask1102)
  %tobool537.not = icmp eq i32 %.mask1102, 0
  br i1 %tobool537.not, label %do.body540, label %while.cond528.while.cond528.backedge_crit_edge

while.cond528.while.cond528.backedge_crit_edge:   ; preds = %while.cond528
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond528.backedge

while.cond528.backedge:                           ; preds = %while.end556.while.cond528.backedge_crit_edge, %while.cond528.while.cond528.backedge_crit_edge
  br label %while.cond528

do.body540:                                       ; preds = %while.cond528
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !476
  tail call void @arm_heavy_mb() #13
  %159 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %base, align 4
  %add.ptr544 = getelementptr i8, ptr %160, i32 164
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr544, i32 100663488) #13, !srcloc !325
  br label %while.cond545

while.cond545:                                    ; preds = %while.cond545.while.cond545_crit_edge, %do.body540
  %161 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %base, align 4
  %add.ptr549 = getelementptr i8, ptr %162, i32 164
  %163 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr549) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !477
  %.mask1103 = and i32 %163, 128
  %tobool554.not = icmp eq i32 %.mask1103, 0
  br i1 %tobool554.not, label %while.end556, label %while.cond545.while.cond545_crit_edge

while.cond545.while.cond545_crit_edge:            ; preds = %while.cond545
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond545

while.end556:                                     ; preds = %while.cond545
  %164 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %base, align 4
  %add.ptr560 = getelementptr i8, ptr %165, i32 168
  %166 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr560) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !478
  %167 = and i32 %166, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %167)
  %tobool568.not = icmp eq i32 %167, 0
  br i1 %tobool568.not, label %do.end569, label %while.end556.while.cond528.backedge_crit_edge

while.end556.while.cond528.backedge_crit_edge:    ; preds = %while.end556
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond528.backedge

do.end569:                                        ; preds = %while.end556
  %advertising = getelementptr i8, ptr %work, i32 -28
  %168 = ptrtoint ptr %advertising to i32
  call void @__asan_store4_noabort(i32 %168)
  store i32 %my_ad_caps.6, ptr %advertising, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %169 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %169(i32 noundef 2147480) #13
  br label %while.cond577

while.cond577:                                    ; preds = %while.cond577.backedge, %do.end569
  %170 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %base, align 4
  %add.ptr581 = getelementptr i8, ptr %171, i32 164
  %172 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr581) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !479
  %.mask1104 = and i32 %172, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask1104)
  %tobool586.not = icmp eq i32 %.mask1104, 0
  br i1 %tobool586.not, label %do.body589, label %while.cond577.while.cond577.backedge_crit_edge

while.cond577.while.cond577.backedge_crit_edge:   ; preds = %while.cond577
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond577.backedge

while.cond577.backedge:                           ; preds = %while.end605.while.cond577.backedge_crit_edge, %while.cond577.while.cond577.backedge_crit_edge
  br label %while.cond577

do.body589:                                       ; preds = %while.cond577
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !480
  tail call void @arm_heavy_mb() #13
  %173 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %base, align 4
  %add.ptr593 = getelementptr i8, ptr %174, i32 164
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr593, i32 100663488) #13, !srcloc !325
  br label %while.cond594

while.cond594:                                    ; preds = %while.cond594.while.cond594_crit_edge, %do.body589
  %175 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %base, align 4
  %add.ptr598 = getelementptr i8, ptr %176, i32 164
  %177 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr598) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !481
  %.mask1105 = and i32 %177, 128
  %tobool603.not = icmp eq i32 %.mask1105, 0
  br i1 %tobool603.not, label %while.end605, label %while.cond594.while.cond594_crit_edge

while.cond594.while.cond594_crit_edge:            ; preds = %while.cond594
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond594

while.end605:                                     ; preds = %while.cond594
  %178 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %base, align 4
  %add.ptr609 = getelementptr i8, ptr %179, i32 168
  %180 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr609) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !482
  %181 = and i32 %180, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %181)
  %tobool617.not = icmp eq i32 %181, 0
  br i1 %tobool617.not, label %while.end605.while.cond620_crit_edge, label %while.end605.while.cond577.backedge_crit_edge

while.end605.while.cond577.backedge_crit_edge:    ; preds = %while.end605
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond577.backedge

while.end605.while.cond620_crit_edge:             ; preds = %while.end605
  br label %while.cond620

while.cond620:                                    ; preds = %while.cond620.while.cond620_crit_edge, %while.end605.while.cond620_crit_edge
  %182 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %base, align 4
  %add.ptr624 = getelementptr i8, ptr %183, i32 164
  %184 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr624) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !483
  %.mask1106 = and i32 %184, 128
  %tobool629.not = icmp eq i32 %.mask1106, 0
  br i1 %tobool629.not, label %do.body632, label %while.cond620.while.cond620_crit_edge

while.cond620.while.cond620_crit_edge:            ; preds = %while.cond620
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond620

do.body632:                                       ; preds = %while.cond620
  %or503 = or i32 %shl, 257
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !484
  tail call void @arm_heavy_mb() #13
  %185 = tail call i32 @llvm.bswap.i32(i32 %or503)
  %186 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %base, align 4
  %add.ptr639 = getelementptr i8, ptr %187, i32 168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr639, i32 %185) #13, !srcloc !325
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !485
  tail call void @arm_heavy_mb() #13
  %188 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %base, align 4
  %add.ptr644 = getelementptr i8, ptr %189, i32 164
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr644, i32 100663424) #13, !srcloc !325
  br label %while.cond645

while.cond645:                                    ; preds = %while.cond645.while.cond645_crit_edge, %do.body632
  %190 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %base, align 4
  %add.ptr649 = getelementptr i8, ptr %191, i32 164
  %192 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr649) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !486
  %.mask1107 = and i32 %192, 128
  %tobool654.not = icmp eq i32 %.mask1107, 0
  br i1 %tobool654.not, label %while.cond645.while.cond661_crit_edge, label %while.cond645.while.cond645_crit_edge

while.cond645.while.cond645_crit_edge:            ; preds = %while.cond645
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond645

while.cond645.while.cond661_crit_edge:            ; preds = %while.cond645
  br label %while.cond661

while.cond661:                                    ; preds = %while.cond661.backedge, %while.cond645.while.cond661_crit_edge
  %193 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %base, align 4
  %add.ptr665 = getelementptr i8, ptr %194, i32 164
  %195 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr665) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !487
  %.mask1108 = and i32 %195, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask1108)
  %tobool670.not = icmp eq i32 %.mask1108, 0
  br i1 %tobool670.not, label %do.body673, label %while.cond661.while.cond661.backedge_crit_edge

while.cond661.while.cond661.backedge_crit_edge:   ; preds = %while.cond661
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond661.backedge

while.cond661.backedge:                           ; preds = %while.end689.while.cond661.backedge_crit_edge, %while.cond661.while.cond661.backedge_crit_edge
  br label %while.cond661

do.body673:                                       ; preds = %while.cond661
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !488
  tail call void @arm_heavy_mb() #13
  %196 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %base, align 4
  %add.ptr677 = getelementptr i8, ptr %197, i32 164
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr677, i32 100663488) #13, !srcloc !325
  br label %while.cond678

while.cond678:                                    ; preds = %while.cond678.while.cond678_crit_edge, %do.body673
  %198 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %base, align 4
  %add.ptr682 = getelementptr i8, ptr %199, i32 164
  %200 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr682) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !489
  %.mask1109 = and i32 %200, 128
  %tobool687.not = icmp eq i32 %.mask1109, 0
  br i1 %tobool687.not, label %while.end689, label %while.cond678.while.cond678_crit_edge

while.cond678.while.cond678_crit_edge:            ; preds = %while.cond678
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond678

while.end689:                                     ; preds = %while.cond678
  %201 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %base, align 4
  %add.ptr693 = getelementptr i8, ptr %202, i32 168
  %203 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr693) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !490
  %204 = and i32 %203, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %204)
  %tobool701.not = icmp eq i32 %204, 0
  br i1 %tobool701.not, label %while.end689.while.cond704_crit_edge, label %while.end689.while.cond661.backedge_crit_edge

while.end689.while.cond661.backedge_crit_edge:    ; preds = %while.end689
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond661.backedge

while.end689.while.cond704_crit_edge:             ; preds = %while.end689
  br label %while.cond704

while.cond704:                                    ; preds = %while.cond704.while.cond704_crit_edge, %while.end689.while.cond704_crit_edge
  %205 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %base, align 4
  %add.ptr708 = getelementptr i8, ptr %206, i32 164
  %207 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr708) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !491
  %.mask1110 = and i32 %207, 128
  %tobool713.not = icmp eq i32 %.mask1110, 0
  br i1 %tobool713.not, label %do.body716, label %while.cond704.while.cond704_crit_edge

while.cond704.while.cond704_crit_edge:            ; preds = %while.cond704
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond704

do.body716:                                       ; preds = %while.cond704
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !492
  tail call void @arm_heavy_mb() #13
  %208 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %base, align 4
  %add.ptr720 = getelementptr i8, ptr %209, i32 164
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr720, i32 117440704) #13, !srcloc !325
  br label %while.cond721

while.cond721:                                    ; preds = %while.cond721.while.cond721_crit_edge, %do.body716
  %210 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %base, align 4
  %add.ptr725 = getelementptr i8, ptr %211, i32 164
  %212 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr725) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !493
  %.mask1111 = and i32 %212, 128
  %tobool730.not = icmp eq i32 %.mask1111, 0
  br i1 %tobool730.not, label %while.end732, label %while.cond721.while.cond721_crit_edge

while.cond721.while.cond721_crit_edge:            ; preds = %while.cond721
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond721

while.end732:                                     ; preds = %while.cond721
  %213 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %base, align 4
  %add.ptr736 = getelementptr i8, ptr %214, i32 168
  %215 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr736) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !494
  br label %while.cond792

while.cond792:                                    ; preds = %while.cond792.backedge, %while.end732
  %216 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %base, align 4
  %add.ptr796 = getelementptr i8, ptr %217, i32 164
  %218 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr796) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !495
  %.mask1112 = and i32 %218, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask1112)
  %tobool801.not = icmp eq i32 %.mask1112, 0
  br i1 %tobool801.not, label %do.body804, label %while.cond792.while.cond792.backedge_crit_edge

while.cond792.while.cond792.backedge_crit_edge:   ; preds = %while.cond792
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond792.backedge

while.cond792.backedge:                           ; preds = %while.end820.while.cond792.backedge_crit_edge, %while.cond792.while.cond792.backedge_crit_edge
  br label %while.cond792

do.body804:                                       ; preds = %while.cond792
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !496
  tail call void @arm_heavy_mb() #13
  %219 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %base, align 4
  %add.ptr808 = getelementptr i8, ptr %220, i32 164
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr808, i32 100663488) #13, !srcloc !325
  br label %while.cond809

while.cond809:                                    ; preds = %while.cond809.while.cond809_crit_edge, %do.body804
  %221 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %base, align 4
  %add.ptr813 = getelementptr i8, ptr %222, i32 164
  %223 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr813) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !497
  %.mask1113 = and i32 %223, 128
  %tobool818.not = icmp eq i32 %.mask1113, 0
  br i1 %tobool818.not, label %while.end820, label %while.cond809.while.cond809_crit_edge

while.cond809.while.cond809_crit_edge:            ; preds = %while.cond809
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond809

while.end820:                                     ; preds = %while.cond809
  %224 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %base, align 4
  %add.ptr824 = getelementptr i8, ptr %225, i32 168
  %226 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr824) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !498
  %227 = and i32 %226, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %227)
  %tobool832.not = icmp eq i32 %227, 0
  br i1 %tobool832.not, label %while.end820.while.cond835_crit_edge, label %while.end820.while.cond792.backedge_crit_edge

while.end820.while.cond792.backedge_crit_edge:    ; preds = %while.end820
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond792.backedge

while.end820.while.cond835_crit_edge:             ; preds = %while.end820
  br label %while.cond835

while.cond835:                                    ; preds = %while.cond835.while.cond835_crit_edge, %while.end820.while.cond835_crit_edge
  %228 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %base, align 4
  %add.ptr839 = getelementptr i8, ptr %229, i32 164
  %230 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr839) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !499
  %.mask1114 = and i32 %230, 128
  %tobool844.not = icmp eq i32 %.mask1114, 0
  br i1 %tobool844.not, label %do.body847, label %while.cond835.while.cond835_crit_edge

while.cond835.while.cond835_crit_edge:            ; preds = %while.cond835
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond835

do.body847:                                       ; preds = %while.cond835
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !500
  tail call void @arm_heavy_mb() #13
  %231 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %base, align 4
  %add.ptr851 = getelementptr i8, ptr %232, i32 168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr851, i32 1179648) #13, !srcloc !325
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !501
  tail call void @arm_heavy_mb() #13
  %233 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %base, align 4
  %add.ptr856 = getelementptr i8, ptr %234, i32 164
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr856, i32 117440640) #13, !srcloc !325
  br label %while.cond857

while.cond857:                                    ; preds = %while.cond857.while.cond857_crit_edge, %do.body847
  %235 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %base, align 4
  %add.ptr861 = getelementptr i8, ptr %236, i32 164
  %237 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr861) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !502
  %.mask1115 = and i32 %237, 128
  %tobool866.not = icmp eq i32 %.mask1115, 0
  br i1 %tobool866.not, label %while.cond857.while.cond872_crit_edge, label %while.cond857.while.cond857_crit_edge

while.cond857.while.cond857_crit_edge:            ; preds = %while.cond857
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond857

while.cond857.while.cond872_crit_edge:            ; preds = %while.cond857
  br label %while.cond872

while.cond872:                                    ; preds = %while.cond872.while.cond872_crit_edge, %while.cond857.while.cond872_crit_edge
  %238 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %base, align 4
  %add.ptr876 = getelementptr i8, ptr %239, i32 164
  %240 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr876) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !503
  %.mask1116 = and i32 %240, 128
  %tobool881.not = icmp eq i32 %.mask1116, 0
  br i1 %tobool881.not, label %do.body884, label %while.cond872.while.cond872_crit_edge

while.cond872.while.cond872_crit_edge:            ; preds = %while.cond872
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond872

do.body884:                                       ; preds = %while.cond872
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !504
  tail call void @arm_heavy_mb() #13
  %or890 = or i32 %shl, 3
  %241 = tail call i32 @llvm.bswap.i32(i32 %or890)
  %242 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %base, align 4
  %add.ptr892 = getelementptr i8, ptr %243, i32 168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr892, i32 %241) #13, !srcloc !325
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !505
  tail call void @arm_heavy_mb() #13
  %244 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %base, align 4
  %add.ptr897 = getelementptr i8, ptr %245, i32 164
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr897, i32 100663424) #13, !srcloc !325
  br label %while.cond898

while.cond898:                                    ; preds = %while.cond898.while.cond898_crit_edge, %do.body884
  %246 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %base, align 4
  %add.ptr902 = getelementptr i8, ptr %247, i32 164
  %248 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr902) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !506
  %.mask1117 = and i32 %248, 128
  %tobool907.not = icmp eq i32 %.mask1117, 0
  br i1 %tobool907.not, label %while.cond898.while.cond914_crit_edge, label %while.cond898.while.cond898_crit_edge

while.cond898.while.cond898_crit_edge:            ; preds = %while.cond898
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond898

while.cond898.while.cond914_crit_edge:            ; preds = %while.cond898
  br label %while.cond914

while.cond914:                                    ; preds = %while.cond914.backedge, %while.cond898.while.cond914_crit_edge
  %249 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %base, align 4
  %add.ptr918 = getelementptr i8, ptr %250, i32 164
  %251 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr918) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !507
  %.mask1118 = and i32 %251, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask1118)
  %tobool923.not = icmp eq i32 %.mask1118, 0
  br i1 %tobool923.not, label %do.body926, label %while.cond914.while.cond914.backedge_crit_edge

while.cond914.while.cond914.backedge_crit_edge:   ; preds = %while.cond914
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond914.backedge

while.cond914.backedge:                           ; preds = %while.end942.while.cond914.backedge_crit_edge, %while.cond914.while.cond914.backedge_crit_edge
  br label %while.cond914

do.body926:                                       ; preds = %while.cond914
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !508
  tail call void @arm_heavy_mb() #13
  %252 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %base, align 4
  %add.ptr930 = getelementptr i8, ptr %253, i32 164
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr930, i32 100663488) #13, !srcloc !325
  br label %while.cond931

while.cond931:                                    ; preds = %while.cond931.while.cond931_crit_edge, %do.body926
  %254 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %base, align 4
  %add.ptr935 = getelementptr i8, ptr %255, i32 164
  %256 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr935) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !509
  %.mask1119 = and i32 %256, 128
  %tobool940.not = icmp eq i32 %.mask1119, 0
  br i1 %tobool940.not, label %while.end942, label %while.cond931.while.cond931_crit_edge

while.cond931.while.cond931_crit_edge:            ; preds = %while.cond931
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond931

while.end942:                                     ; preds = %while.cond931
  %257 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %base, align 4
  %add.ptr946 = getelementptr i8, ptr %258, i32 168
  %259 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr946) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !510
  %260 = and i32 %259, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %260)
  %tobool954.not = icmp eq i32 %260, 0
  br i1 %tobool954.not, label %do.end955, label %while.end942.while.cond914.backedge_crit_edge

while.end942.while.cond914.backedge_crit_edge:    ; preds = %while.end942
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond914.backedge

do.end955:                                        ; preds = %while.end942
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @smc911x_phy_check_media(ptr noundef %1, i32 noundef 1)
  br label %smc911x_phy_configure_exit

smc911x_phy_configure_exit:                       ; preds = %do.end955, %if.then365, %if.then189
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call18) #13
  br label %cleanup

cleanup:                                          ; preds = %smc911x_phy_configure_exit, %if.then11, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smc911x_phy_read(ptr nocapture noundef readonly %dev, i32 noundef %phyaddr, i32 noundef %phyreg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr i8, ptr %dev, i32 2472
  br label %while.cond

while.cond:                                       ; preds = %while.cond.backedge, %entry
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 164
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !511
  %.mask = and i32 %2, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask)
  %tobool.not = icmp eq i32 %.mask, 0
  br i1 %tobool.not, label %do.body6, label %while.cond.while.cond.backedge_crit_edge

while.cond.while.cond.backedge_crit_edge:         ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %while.end20.while.cond.backedge_crit_edge, %while.cond.while.cond.backedge_crit_edge
  br label %while.cond

do.body6:                                         ; preds = %while.cond
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !512
  tail call void @arm_heavy_mb() #13
  %3 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %base, align 4
  %add.ptr8 = getelementptr i8, ptr %4, i32 164
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 100663488) #13, !srcloc !325
  br label %while.cond9

while.cond9:                                      ; preds = %while.cond9.while.cond9_crit_edge, %do.body6
  %5 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base, align 4
  %add.ptr13 = getelementptr i8, ptr %6, i32 164
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !513
  %.mask188 = and i32 %7, 128
  %tobool18.not = icmp eq i32 %.mask188, 0
  br i1 %tobool18.not, label %while.end20, label %while.cond9.while.cond9_crit_edge

while.cond9.while.cond9_crit_edge:                ; preds = %while.cond9
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond9

while.end20:                                      ; preds = %while.cond9
  %8 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base, align 4
  %add.ptr24 = getelementptr i8, ptr %9, i32 168
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr24) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !514
  %11 = and i32 %10, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool32.not = icmp eq i32 %11, 0
  br i1 %tobool32.not, label %while.end20.while.cond35_crit_edge, label %while.end20.while.cond.backedge_crit_edge

while.end20.while.cond.backedge_crit_edge:        ; preds = %while.end20
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond.backedge

while.end20.while.cond35_crit_edge:               ; preds = %while.end20
  br label %while.cond35

while.cond35:                                     ; preds = %while.cond35.while.cond35_crit_edge, %while.end20.while.cond35_crit_edge
  %12 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base, align 4
  %add.ptr39 = getelementptr i8, ptr %13, i32 164
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr39) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !515
  %.mask189 = and i32 %14, 128
  %tobool44.not = icmp eq i32 %.mask189, 0
  br i1 %tobool44.not, label %do.body47, label %while.cond35.while.cond35_crit_edge

while.cond35.while.cond35_crit_edge:              ; preds = %while.cond35
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond35

do.body47:                                        ; preds = %while.cond35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !516
  tail call void @arm_heavy_mb() #13
  %shl = shl i32 %phyaddr, 11
  %shl50 = shl i32 %phyreg, 6
  %or = or i32 %shl, %shl50
  %or51 = or i32 %or, 1
  %15 = tail call i32 @llvm.bswap.i32(i32 %or51)
  %16 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base, align 4
  %add.ptr53 = getelementptr i8, ptr %17, i32 168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr53, i32 %15) #13, !srcloc !325
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !517
  tail call void @arm_heavy_mb() #13
  %18 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base, align 4
  %add.ptr58 = getelementptr i8, ptr %19, i32 164
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr58, i32 100663424) #13, !srcloc !325
  br label %while.cond59

while.cond59:                                     ; preds = %while.cond59.while.cond59_crit_edge, %do.body47
  %20 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base, align 4
  %add.ptr63 = getelementptr i8, ptr %21, i32 164
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr63) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !518
  %.mask190 = and i32 %22, 128
  %tobool68.not = icmp eq i32 %.mask190, 0
  br i1 %tobool68.not, label %while.cond59.while.cond75_crit_edge, label %while.cond59.while.cond59_crit_edge

while.cond59.while.cond59_crit_edge:              ; preds = %while.cond59
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond59

while.cond59.while.cond75_crit_edge:              ; preds = %while.cond59
  br label %while.cond75

while.cond75:                                     ; preds = %while.cond75.backedge, %while.cond59.while.cond75_crit_edge
  %23 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %base, align 4
  %add.ptr79 = getelementptr i8, ptr %24, i32 164
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr79) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !519
  %.mask191 = and i32 %25, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask191)
  %tobool84.not = icmp eq i32 %.mask191, 0
  br i1 %tobool84.not, label %do.body87, label %while.cond75.while.cond75.backedge_crit_edge

while.cond75.while.cond75.backedge_crit_edge:     ; preds = %while.cond75
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond75.backedge

while.cond75.backedge:                            ; preds = %while.end103.while.cond75.backedge_crit_edge, %while.cond75.while.cond75.backedge_crit_edge
  br label %while.cond75

do.body87:                                        ; preds = %while.cond75
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !520
  tail call void @arm_heavy_mb() #13
  %26 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %base, align 4
  %add.ptr91 = getelementptr i8, ptr %27, i32 164
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr91, i32 100663488) #13, !srcloc !325
  br label %while.cond92

while.cond92:                                     ; preds = %while.cond92.while.cond92_crit_edge, %do.body87
  %28 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %base, align 4
  %add.ptr96 = getelementptr i8, ptr %29, i32 164
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr96) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !521
  %.mask192 = and i32 %30, 128
  %tobool101.not = icmp eq i32 %.mask192, 0
  br i1 %tobool101.not, label %while.end103, label %while.cond92.while.cond92_crit_edge

while.cond92.while.cond92_crit_edge:              ; preds = %while.cond92
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond92

while.end103:                                     ; preds = %while.cond92
  %31 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %base, align 4
  %add.ptr107 = getelementptr i8, ptr %32, i32 168
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr107) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !522
  %34 = and i32 %33, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool115.not = icmp eq i32 %34, 0
  br i1 %tobool115.not, label %while.end103.while.cond118_crit_edge, label %while.end103.while.cond75.backedge_crit_edge

while.end103.while.cond75.backedge_crit_edge:     ; preds = %while.end103
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond75.backedge

while.end103.while.cond118_crit_edge:             ; preds = %while.end103
  br label %while.cond118

while.cond118:                                    ; preds = %while.cond118.while.cond118_crit_edge, %while.end103.while.cond118_crit_edge
  %35 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %base, align 4
  %add.ptr122 = getelementptr i8, ptr %36, i32 164
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr122) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !523
  %.mask193 = and i32 %37, 128
  %tobool127.not = icmp eq i32 %.mask193, 0
  br i1 %tobool127.not, label %do.body130, label %while.cond118.while.cond118_crit_edge

while.cond118.while.cond118_crit_edge:            ; preds = %while.cond118
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond118

do.body130:                                       ; preds = %while.cond118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !524
  tail call void @arm_heavy_mb() #13
  %38 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %base, align 4
  %add.ptr134 = getelementptr i8, ptr %39, i32 164
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr134, i32 117440704) #13, !srcloc !325
  br label %while.cond135

while.cond135:                                    ; preds = %while.cond135.while.cond135_crit_edge, %do.body130
  %40 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %base, align 4
  %add.ptr139 = getelementptr i8, ptr %41, i32 164
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr139) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !525
  %.mask194 = and i32 %42, 128
  %tobool144.not = icmp eq i32 %.mask194, 0
  br i1 %tobool144.not, label %while.end146, label %while.cond135.while.cond135_crit_edge

while.cond135.while.cond135_crit_edge:            ; preds = %while.cond135
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond135

while.end146:                                     ; preds = %while.cond135
  call void @__sanitizer_cov_trace_pc() #15
  %43 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %base, align 4
  %add.ptr150 = getelementptr i8, ptr %44, i32 168
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr150) #13, !srcloc !326
  %46 = tail call i32 @llvm.bswap.i32(i32 %45)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !526
  ret i32 %46
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @smc911x_phy_write(ptr nocapture noundef readonly %dev, i32 noundef %phyaddr, i32 noundef %phyreg, i32 noundef %phydata) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr i8, ptr %dev, i32 2472
  br label %while.cond10

while.cond10:                                     ; preds = %while.cond10.backedge, %entry
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 164
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !527
  %.mask = and i32 %2, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask)
  %tobool15.not = icmp eq i32 %.mask, 0
  br i1 %tobool15.not, label %do.body18, label %while.cond10.while.cond10.backedge_crit_edge

while.cond10.while.cond10.backedge_crit_edge:     ; preds = %while.cond10
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond10.backedge

while.cond10.backedge:                            ; preds = %while.end34.while.cond10.backedge_crit_edge, %while.cond10.while.cond10.backedge_crit_edge
  br label %while.cond10

do.body18:                                        ; preds = %while.cond10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !528
  tail call void @arm_heavy_mb() #13
  %3 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %base, align 4
  %add.ptr22 = getelementptr i8, ptr %4, i32 164
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22, i32 100663488) #13, !srcloc !325
  br label %while.cond23

while.cond23:                                     ; preds = %while.cond23.while.cond23_crit_edge, %do.body18
  %5 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base, align 4
  %add.ptr27 = getelementptr i8, ptr %6, i32 164
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr27) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !529
  %.mask187 = and i32 %7, 128
  %tobool32.not = icmp eq i32 %.mask187, 0
  br i1 %tobool32.not, label %while.end34, label %while.cond23.while.cond23_crit_edge

while.cond23.while.cond23_crit_edge:              ; preds = %while.cond23
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond23

while.end34:                                      ; preds = %while.cond23
  %8 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base, align 4
  %add.ptr38 = getelementptr i8, ptr %9, i32 168
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr38) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !530
  %11 = and i32 %10, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool46.not = icmp eq i32 %11, 0
  br i1 %tobool46.not, label %while.end34.while.cond49_crit_edge, label %while.end34.while.cond10.backedge_crit_edge

while.end34.while.cond10.backedge_crit_edge:      ; preds = %while.end34
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond10.backedge

while.end34.while.cond49_crit_edge:               ; preds = %while.end34
  br label %while.cond49

while.cond49:                                     ; preds = %while.cond49.while.cond49_crit_edge, %while.end34.while.cond49_crit_edge
  %12 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base, align 4
  %add.ptr53 = getelementptr i8, ptr %13, i32 164
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr53) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !531
  %.mask188 = and i32 %14, 128
  %tobool58.not = icmp eq i32 %.mask188, 0
  br i1 %tobool58.not, label %do.body61, label %while.cond49.while.cond49_crit_edge

while.cond49.while.cond49_crit_edge:              ; preds = %while.cond49
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond49

do.body61:                                        ; preds = %while.cond49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !532
  tail call void @arm_heavy_mb() #13
  %15 = tail call i32 @llvm.bswap.i32(i32 %phydata)
  %16 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base, align 4
  %add.ptr65 = getelementptr i8, ptr %17, i32 168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr65, i32 %15) #13, !srcloc !325
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !533
  tail call void @arm_heavy_mb() #13
  %18 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base, align 4
  %add.ptr70 = getelementptr i8, ptr %19, i32 164
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr70, i32 117440640) #13, !srcloc !325
  br label %while.cond71

while.cond71:                                     ; preds = %while.cond71.while.cond71_crit_edge, %do.body61
  %20 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base, align 4
  %add.ptr75 = getelementptr i8, ptr %21, i32 164
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr75) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !534
  %.mask189 = and i32 %22, 128
  %tobool80.not = icmp eq i32 %.mask189, 0
  br i1 %tobool80.not, label %while.cond71.while.cond86_crit_edge, label %while.cond71.while.cond71_crit_edge

while.cond71.while.cond71_crit_edge:              ; preds = %while.cond71
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond71

while.cond71.while.cond86_crit_edge:              ; preds = %while.cond71
  br label %while.cond86

while.cond86:                                     ; preds = %while.cond86.while.cond86_crit_edge, %while.cond71.while.cond86_crit_edge
  %23 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %base, align 4
  %add.ptr90 = getelementptr i8, ptr %24, i32 164
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr90) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !535
  %.mask190 = and i32 %25, 128
  %tobool95.not = icmp eq i32 %.mask190, 0
  br i1 %tobool95.not, label %do.body98, label %while.cond86.while.cond86_crit_edge

while.cond86.while.cond86_crit_edge:              ; preds = %while.cond86
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond86

do.body98:                                        ; preds = %while.cond86
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !536
  tail call void @arm_heavy_mb() #13
  %shl = shl i32 %phyaddr, 11
  %shl101 = shl i32 %phyreg, 6
  %or = or i32 %shl, %shl101
  %or103 = or i32 %or, 3
  %26 = tail call i32 @llvm.bswap.i32(i32 %or103)
  %27 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %base, align 4
  %add.ptr105 = getelementptr i8, ptr %28, i32 168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr105, i32 %26) #13, !srcloc !325
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !537
  tail call void @arm_heavy_mb() #13
  %29 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %base, align 4
  %add.ptr110 = getelementptr i8, ptr %30, i32 164
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr110, i32 100663424) #13, !srcloc !325
  br label %while.cond111

while.cond111:                                    ; preds = %while.cond111.while.cond111_crit_edge, %do.body98
  %31 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %base, align 4
  %add.ptr115 = getelementptr i8, ptr %32, i32 164
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr115) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !538
  %.mask191 = and i32 %33, 128
  %tobool120.not = icmp eq i32 %.mask191, 0
  br i1 %tobool120.not, label %while.cond111.while.cond127_crit_edge, label %while.cond111.while.cond111_crit_edge

while.cond111.while.cond111_crit_edge:            ; preds = %while.cond111
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond111

while.cond111.while.cond127_crit_edge:            ; preds = %while.cond111
  br label %while.cond127

while.cond127:                                    ; preds = %while.cond127.backedge, %while.cond111.while.cond127_crit_edge
  %34 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %base, align 4
  %add.ptr131 = getelementptr i8, ptr %35, i32 164
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr131) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !539
  %.mask192 = and i32 %36, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask192)
  %tobool136.not = icmp eq i32 %.mask192, 0
  br i1 %tobool136.not, label %do.body139, label %while.cond127.while.cond127.backedge_crit_edge

while.cond127.while.cond127.backedge_crit_edge:   ; preds = %while.cond127
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond127.backedge

while.cond127.backedge:                           ; preds = %while.end155.while.cond127.backedge_crit_edge, %while.cond127.while.cond127.backedge_crit_edge
  br label %while.cond127

do.body139:                                       ; preds = %while.cond127
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !540
  tail call void @arm_heavy_mb() #13
  %37 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %base, align 4
  %add.ptr143 = getelementptr i8, ptr %38, i32 164
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr143, i32 100663488) #13, !srcloc !325
  br label %while.cond144

while.cond144:                                    ; preds = %while.cond144.while.cond144_crit_edge, %do.body139
  %39 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %base, align 4
  %add.ptr148 = getelementptr i8, ptr %40, i32 164
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr148) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !541
  %.mask193 = and i32 %41, 128
  %tobool153.not = icmp eq i32 %.mask193, 0
  br i1 %tobool153.not, label %while.end155, label %while.cond144.while.cond144_crit_edge

while.cond144.while.cond144_crit_edge:            ; preds = %while.cond144
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond144

while.end155:                                     ; preds = %while.cond144
  %42 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %base, align 4
  %add.ptr159 = getelementptr i8, ptr %43, i32 168
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr159) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !542
  %45 = and i32 %44, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool167.not = icmp eq i32 %45, 0
  br i1 %tobool167.not, label %do.end168, label %while.end155.while.cond127.backedge_crit_edge

while.end155.while.cond127.backedge_crit_edge:    ; preds = %while.end155
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond127.backedge

do.end168:                                        ; preds = %while.end155
  call void @__sanitizer_cov_trace_pc() #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smc911x_interrupt(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr i8, ptr %dev_id, i32 2424
  %call11 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #13
  %base = getelementptr i8, ptr %dev_id, i32 2472
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 84
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !543
  %3 = and i32 %2, 1114112
  call void @__sanitizer_cov_trace_const_cmp4(i32 1114112, i32 %3)
  %cmp19.not = icmp eq i32 %3, 1114112
  br i1 %cmp19.not, label %if.end23, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end23:                                         ; preds = %entry
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base, align 4
  %add.ptr27 = getelementptr i8, ptr %5, i32 92
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr27) #13, !srcloc !326
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !544
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !545
  tail call void @arm_heavy_mb() #13
  %8 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base, align 4
  %add.ptr35 = getelementptr i8, ptr %9, i32 92
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr35, i32 0) #13, !srcloc !325
  %rx_errors = getelementptr inbounds %struct.net_device, ptr %dev_id, i32 0, i32 36, i32 4
  %rx_dropped = getelementptr inbounds %struct.net_device, ptr %dev_id, i32 0, i32 36, i32 6
  %revision = getelementptr i8, ptr %dev_id, i32 2310
  %rx_fifo_errors = getelementptr inbounds %struct.net_device, ptr %dev_id, i32 0, i32 36, i32 14
  %tx_throttle = getelementptr i8, ptr %dev_id, i32 2420
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev_id, i32 0, i32 103
  %tx_packets.i = getelementptr inbounds %struct.net_device, ptr %dev_id, i32 0, i32 36, i32 1
  %tx_bytes.i = getelementptr inbounds %struct.net_device, ptr %dev_id, i32 0, i32 36, i32 3
  %ctl_rfduplx.i = getelementptr i8, ptr %dev_id, i32 2328
  %tx_errors.i = getelementptr inbounds %struct.net_device, ptr %dev_id, i32 0, i32 36, i32 5
  %collisions.i = getelementptr inbounds %struct.net_device, ptr %dev_id, i32 0, i32 36, i32 9
  %tx_aborted_errors.i = getelementptr inbounds %struct.net_device, ptr %dev_id, i32 0, i32 36, i32 16
  %tx_carrier_errors.i = getelementptr inbounds %struct.net_device, ptr %dev_id, i32 0, i32 36, i32 17
  %mii.i = getelementptr i8, ptr %dev_id, i32 2344
  %phy_type.i = getelementptr i8, ptr %dev_id, i32 2340
  br label %do.body36

do.body36:                                        ; preds = %do.cond609.do.body36_crit_edge, %if.end23
  %rx_overrun.0 = phi i32 [ 0, %if.end23 ], [ %rx_overrun.4, %do.cond609.do.body36_crit_edge ]
  %timeout.0 = phi i32 [ 8, %if.end23 ], [ %dec, %do.cond609.do.body36_crit_edge ]
  %mask.0 = phi i32 [ %7, %if.end23 ], [ %mask.1, %do.cond609.do.body36_crit_edge ]
  %10 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base, align 4
  %add.ptr40 = getelementptr i8, ptr %11, i32 88
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr40) #13, !srcloc !326
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !546
  %and67 = and i32 %13, %mask.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and67)
  %tobool68.not = icmp eq i32 %and67, 0
  br i1 %tobool68.not, label %do.body36.do.body612_crit_edge, label %if.end70

do.body36.do.body612_crit_edge:                   ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body612

if.end70:                                         ; preds = %do.body36
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %and67)
  %tobool72.not = icmp sgt i32 %and67, -1
  br i1 %tobool72.not, label %if.end70.if.end80_crit_edge, label %do.body74

if.end70.if.end80_crit_edge:                      ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end80

do.body74:                                        ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !547
  tail call void @arm_heavy_mb() #13
  %14 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base, align 4
  %add.ptr78 = getelementptr i8, ptr %15, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr78, i32 128) #13, !srcloc !325
  %and79 = and i32 %mask.0, 2147483647
  br label %if.end80

if.end80:                                         ; preds = %do.body74, %if.end70.if.end80_crit_edge
  %mask.1 = phi i32 [ %and79, %do.body74 ], [ %mask.0, %if.end70.if.end80_crit_edge ]
  %and81 = and i32 %and67, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and81)
  %tobool82.not = icmp eq i32 %and81, 0
  br i1 %tobool82.not, label %if.end80.if.end89_crit_edge, label %do.body84

if.end80.if.end89_crit_edge:                      ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end89

do.body84:                                        ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !548
  tail call void @arm_heavy_mb() #13
  %16 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base, align 4
  %add.ptr88 = getelementptr i8, ptr %17, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr88, i32 4194304) #13, !srcloc !325
  %18 = ptrtoint ptr %rx_errors to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %rx_errors, align 8
  %inc = add i32 %19, 1
  store i32 %inc, ptr %rx_errors, align 8
  br label %if.end89

if.end89:                                         ; preds = %do.body84, %if.end80.if.end89_crit_edge
  %and90 = and i32 %and67, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and90)
  %tobool91.not = icmp eq i32 %and90, 0
  br i1 %tobool91.not, label %if.end89.if.end106_crit_edge, label %do.body93

if.end89.if.end106_crit_edge:                     ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end106

do.body93:                                        ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !549
  tail call void @arm_heavy_mb() #13
  %20 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base, align 4
  %add.ptr97 = getelementptr i8, ptr %21, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr97, i32 32768) #13, !srcloc !325
  %22 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %base, align 4
  %add.ptr101 = getelementptr i8, ptr %23, i32 160
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr101) #13, !srcloc !326
  %25 = tail call i32 @llvm.bswap.i32(i32 %24)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !550
  %26 = ptrtoint ptr %rx_dropped to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %rx_dropped, align 8
  %add = add i32 %27, %25
  store i32 %add, ptr %rx_dropped, align 8
  br label %if.end106

if.end106:                                        ; preds = %do.body93, %if.end89.if.end106_crit_edge
  %and107 = and i32 %and67, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and107)
  %tobool108.not = icmp eq i32 %and107, 0
  br i1 %tobool108.not, label %if.end106.if.end115_crit_edge, label %do.body110

if.end106.if.end115_crit_edge:                    ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end115

do.body110:                                       ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !551
  tail call void @arm_heavy_mb() #13
  %28 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %base, align 4
  %add.ptr114 = getelementptr i8, ptr %29, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr114, i32 16384) #13, !srcloc !325
  br label %if.end115

if.end115:                                        ; preds = %do.body110, %if.end106.if.end115_crit_edge
  %and116 = and i32 %and67, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and116)
  %tobool117.not = icmp eq i32 %and116, 0
  br i1 %tobool117.not, label %if.end115.if.end234_crit_edge, label %if.then118

if.end115.if.end234_crit_edge:                    ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end234

if.then118:                                       ; preds = %if.end115
  %30 = ptrtoint ptr %revision to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %revision, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %31)
  %cmp121 = icmp eq i16 %31, 0
  br i1 %cmp121, label %if.then118.while.cond125_crit_edge, label %if.then118.do.body229_crit_edge

if.then118.do.body229_crit_edge:                  ; preds = %if.then118
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body229

if.then118.while.cond125_crit_edge:               ; preds = %if.then118
  br label %while.cond125

while.cond125:                                    ; preds = %while.cond125.while.cond125_crit_edge, %if.then118.while.cond125_crit_edge
  %32 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %base, align 4
  %add.ptr129 = getelementptr i8, ptr %33, i32 164
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr129) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !552
  %.mask722 = and i32 %34, 128
  %tobool134.not = icmp eq i32 %.mask722, 0
  br i1 %tobool134.not, label %do.body137, label %while.cond125.while.cond125_crit_edge

while.cond125.while.cond125_crit_edge:            ; preds = %while.cond125
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond125

do.body137:                                       ; preds = %while.cond125
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !553
  tail call void @arm_heavy_mb() #13
  %35 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %base, align 4
  %add.ptr141 = getelementptr i8, ptr %36, i32 164
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr141, i32 16777408) #13, !srcloc !325
  br label %while.cond142

while.cond142:                                    ; preds = %while.cond142.while.cond142_crit_edge, %do.body137
  %37 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %base, align 4
  %add.ptr146 = getelementptr i8, ptr %38, i32 164
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr146) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !554
  %.mask723 = and i32 %39, 128
  %tobool151.not = icmp eq i32 %.mask723, 0
  br i1 %tobool151.not, label %while.end153, label %while.cond142.while.cond142_crit_edge

while.cond142.while.cond142_crit_edge:            ; preds = %while.cond142
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond142

while.end153:                                     ; preds = %while.cond142
  %40 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %base, align 4
  %add.ptr157 = getelementptr i8, ptr %41, i32 168
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr157) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !555
  br label %while.cond165

while.cond165:                                    ; preds = %while.cond165.while.cond165_crit_edge, %while.end153
  %43 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %base, align 4
  %add.ptr169 = getelementptr i8, ptr %44, i32 164
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr169) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !556
  %.mask724 = and i32 %45, 128
  %tobool174.not = icmp eq i32 %.mask724, 0
  br i1 %tobool174.not, label %do.body177, label %while.cond165.while.cond165_crit_edge

while.cond165.while.cond165_crit_edge:            ; preds = %while.cond165
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond165

do.body177:                                       ; preds = %while.cond165
  %46 = and i32 %42, -67108865
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !557
  tail call void @arm_heavy_mb() #13
  %47 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %base, align 4
  %add.ptr181 = getelementptr i8, ptr %48, i32 168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr181, i32 %46) #13, !srcloc !325
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !558
  tail call void @arm_heavy_mb() #13
  %49 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %base, align 4
  %add.ptr186 = getelementptr i8, ptr %50, i32 164
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr186, i32 16777344) #13, !srcloc !325
  br label %while.cond187

while.cond187:                                    ; preds = %while.cond187.while.cond187_crit_edge, %do.body177
  %51 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %base, align 4
  %add.ptr191 = getelementptr i8, ptr %52, i32 164
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr191) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !559
  %.mask725 = and i32 %53, 128
  %tobool196.not = icmp eq i32 %.mask725, 0
  br i1 %tobool196.not, label %while.end222, label %while.cond187.while.cond187_crit_edge

while.cond187.while.cond187_crit_edge:            ; preds = %while.cond187
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond187

while.end222:                                     ; preds = %while.cond187
  call void @__sanitizer_cov_trace_pc() #15
  %54 = ptrtoint ptr %rx_errors to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %rx_errors, align 8
  %inc225 = add i32 %55, 1
  store i32 %inc225, ptr %rx_errors, align 8
  %56 = ptrtoint ptr %rx_fifo_errors to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %rx_fifo_errors, align 8
  %inc227 = add i32 %57, 1
  store i32 %inc227, ptr %rx_fifo_errors, align 8
  br label %do.body229

do.body229:                                       ; preds = %while.end222, %if.then118.do.body229_crit_edge
  %rx_overrun.1 = phi i32 [ 1, %while.end222 ], [ %rx_overrun.0, %if.then118.do.body229_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !560
  tail call void @arm_heavy_mb() #13
  %58 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %base, align 4
  %add.ptr233 = getelementptr i8, ptr %59, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr233, i32 536870912) #13, !srcloc !325
  br label %if.end234

if.end234:                                        ; preds = %do.body229, %if.end115.if.end234_crit_edge
  %rx_overrun.2 = phi i32 [ %rx_overrun.1, %do.body229 ], [ %rx_overrun.0, %if.end115.if.end234_crit_edge ]
  %and235 = and i32 %and67, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and235)
  %tobool236.not = icmp eq i32 %and235, 0
  br i1 %tobool236.not, label %if.end234.if.end355_crit_edge, label %if.then237

if.end234.if.end355_crit_edge:                    ; preds = %if.end234
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end355

if.then237:                                       ; preds = %if.end234
  %60 = ptrtoint ptr %revision to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %revision, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %61)
  %cmp241 = icmp eq i16 %61, 0
  br i1 %cmp241, label %if.then237.do.body350_crit_edge, label %if.then237.while.cond245_crit_edge

if.then237.while.cond245_crit_edge:               ; preds = %if.then237
  br label %while.cond245

if.then237.do.body350_crit_edge:                  ; preds = %if.then237
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body350

while.cond245:                                    ; preds = %while.cond245.while.cond245_crit_edge, %if.then237.while.cond245_crit_edge
  %62 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %base, align 4
  %add.ptr249 = getelementptr i8, ptr %63, i32 164
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr249) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !561
  %.mask = and i32 %64, 128
  %tobool254.not = icmp eq i32 %.mask, 0
  br i1 %tobool254.not, label %do.body257, label %while.cond245.while.cond245_crit_edge

while.cond245.while.cond245_crit_edge:            ; preds = %while.cond245
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond245

do.body257:                                       ; preds = %while.cond245
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !562
  tail call void @arm_heavy_mb() #13
  %65 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %base, align 4
  %add.ptr261 = getelementptr i8, ptr %66, i32 164
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr261, i32 16777408) #13, !srcloc !325
  br label %while.cond262

while.cond262:                                    ; preds = %while.cond262.while.cond262_crit_edge, %do.body257
  %67 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %base, align 4
  %add.ptr266 = getelementptr i8, ptr %68, i32 164
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr266) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !563
  %.mask719 = and i32 %69, 128
  %tobool271.not = icmp eq i32 %.mask719, 0
  br i1 %tobool271.not, label %while.end273, label %while.cond262.while.cond262_crit_edge

while.cond262.while.cond262_crit_edge:            ; preds = %while.cond262
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond262

while.end273:                                     ; preds = %while.cond262
  %70 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %base, align 4
  %add.ptr277 = getelementptr i8, ptr %71, i32 168
  %72 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr277) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !564
  br label %while.cond285

while.cond285:                                    ; preds = %while.cond285.while.cond285_crit_edge, %while.end273
  %73 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %base, align 4
  %add.ptr289 = getelementptr i8, ptr %74, i32 164
  %75 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr289) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !565
  %.mask720 = and i32 %75, 128
  %tobool294.not = icmp eq i32 %.mask720, 0
  br i1 %tobool294.not, label %do.body297, label %while.cond285.while.cond285_crit_edge

while.cond285.while.cond285_crit_edge:            ; preds = %while.cond285
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond285

do.body297:                                       ; preds = %while.cond285
  %76 = and i32 %72, -67108865
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !566
  tail call void @arm_heavy_mb() #13
  %77 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %base, align 4
  %add.ptr301 = getelementptr i8, ptr %78, i32 168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr301, i32 %76) #13, !srcloc !325
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !567
  tail call void @arm_heavy_mb() #13
  %79 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %base, align 4
  %add.ptr306 = getelementptr i8, ptr %80, i32 164
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr306, i32 16777344) #13, !srcloc !325
  br label %while.cond307

while.cond307:                                    ; preds = %while.cond307.while.cond307_crit_edge, %do.body297
  %81 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %base, align 4
  %add.ptr311 = getelementptr i8, ptr %82, i32 164
  %83 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr311) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !568
  %.mask721 = and i32 %83, 128
  %tobool316.not = icmp eq i32 %.mask721, 0
  br i1 %tobool316.not, label %do.end320, label %while.cond307.while.cond307_crit_edge

while.cond307.while.cond307_crit_edge:            ; preds = %while.cond307
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond307

do.end320:                                        ; preds = %while.cond307
  call void @__sanitizer_cov_trace_pc() #15
  %84 = ptrtoint ptr %rx_errors to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %rx_errors, align 8
  %inc345 = add i32 %85, 1
  store i32 %inc345, ptr %rx_errors, align 8
  %86 = ptrtoint ptr %rx_fifo_errors to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %rx_fifo_errors, align 8
  %inc348 = add i32 %87, 1
  store i32 %inc348, ptr %rx_fifo_errors, align 8
  br label %do.body350

do.body350:                                       ; preds = %do.end320, %if.then237.do.body350_crit_edge
  %rx_overrun.3 = phi i32 [ %rx_overrun.2, %if.then237.do.body350_crit_edge ], [ 1, %do.end320 ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !569
  tail call void @arm_heavy_mb() #13
  %88 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %base, align 4
  %add.ptr354 = getelementptr i8, ptr %89, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr354, i32 1073741824) #13, !srcloc !325
  br label %if.end355

if.end355:                                        ; preds = %do.body350, %if.end234.if.end355_crit_edge
  %rx_overrun.4 = phi i32 [ %rx_overrun.3, %do.body350 ], [ %rx_overrun.2, %if.end234.if.end355_crit_edge ]
  %and356 = and i32 %and67, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and356)
  %tobool357.not = icmp eq i32 %and356, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rx_overrun.4)
  %tobool358.not = icmp eq i32 %rx_overrun.4, 0
  %or.cond = select i1 %tobool357.not, i1 %tobool358.not, i1 false
  br i1 %or.cond, label %if.end355.if.end422_crit_edge, label %if.then359

if.end355.if.end422_crit_edge:                    ; preds = %if.end355
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end422

if.then359:                                       ; preds = %if.end355
  %90 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %base, align 4
  %add.ptr385 = getelementptr i8, ptr %91, i32 124
  %92 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr385) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !570
  %93 = and i32 %92, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %93)
  %cmp413.not = icmp eq i32 %93, 0
  br i1 %cmp413.not, label %if.then359.do.body417_crit_edge, label %if.then415

if.then359.do.body417_crit_edge:                  ; preds = %if.then359
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body417

if.then415:                                       ; preds = %if.then359
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @smc911x_rcv(ptr noundef %dev_id)
  br label %do.body417

do.body417:                                       ; preds = %if.then415, %if.then359.do.body417_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !571
  tail call void @arm_heavy_mb() #13
  %94 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %base, align 4
  %add.ptr421 = getelementptr i8, ptr %95, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr421, i32 134217728) #13, !srcloc !325
  br label %if.end422

if.end422:                                        ; preds = %do.body417, %if.end355.if.end422_crit_edge
  %and423 = and i32 %and67, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and423)
  %tobool424.not = icmp eq i32 %and423, 0
  br i1 %tobool424.not, label %if.end422.if.end527_crit_edge, label %do.body448

if.end422.if.end527_crit_edge:                    ; preds = %if.end422
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end527

do.body448:                                       ; preds = %if.end422
  %96 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !572
  %and.i = and i32 %96, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool466.not = icmp eq i32 %and.i, 0
  br i1 %tobool466.not, label %if.then467, label %do.body495.critedge

if.then467:                                       ; preds = %do.body448
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @trace_hardirqs_off() #13
  %97 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %base, align 4
  %add.ptr474.c = getelementptr i8, ptr %98, i32 104
  %99 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr474.c) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !573
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !574
  tail call void @arm_heavy_mb() #13
  %100 = or i32 %99, 255
  %101 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %base, align 4
  %add.ptr483.c = getelementptr i8, ptr %102, i32 104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr483.c, i32 %100) #13, !srcloc !325
  tail call void @trace_hardirqs_on() #13
  br label %do.body495

do.body495.critedge:                              ; preds = %do.body448
  call void @__sanitizer_cov_trace_pc() #15
  %103 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %base, align 4
  %add.ptr474.c730 = getelementptr i8, ptr %104, i32 104
  %105 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr474.c730) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !573
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !574
  tail call void @arm_heavy_mb() #13
  %106 = or i32 %105, 255
  %107 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %base, align 4
  %add.ptr483.c731 = getelementptr i8, ptr %108, i32 104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr483.c731, i32 %106) #13, !srcloc !325
  br label %do.body495

do.body495:                                       ; preds = %do.body495.critedge, %if.then467
  %109 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #13, !srcloc !575
  %and.i.i = and i32 %109, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool503.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool503.not, label %if.then512, label %do.body495.do.end515_crit_edge, !prof !576

do.body495.do.end515_crit_edge:                   ; preds = %do.body495
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end515

if.then512:                                       ; preds = %do.body495
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @warn_bogus_irq_restore() #13
  br label %do.end515

do.end515:                                        ; preds = %if.then512, %do.body495.do.end515_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %96) #13, !srcloc !577
  %110 = ptrtoint ptr %tx_throttle to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 0, ptr %tx_throttle, align 4
  %111 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %_tx.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %112) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !578
  tail call void @arm_heavy_mb() #13
  %113 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %base, align 4
  %add.ptr526 = getelementptr i8, ptr %114, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr526, i32 131072) #13, !srcloc !325
  br label %if.end527

if.end527:                                        ; preds = %do.end515, %if.end422.if.end527_crit_edge
  %and528 = and i32 %and67, 524416
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and528)
  %tobool529.not = icmp eq i32 %and528, 0
  br i1 %tobool529.not, label %if.end527.if.end577_crit_edge, label %while.end561

if.end527.if.end577_crit_edge:                    ; preds = %if.end527
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end577

while.end561:                                     ; preds = %if.end527
  %115 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %base, align 4
  %add.ptr138.i = getelementptr i8, ptr %116, i32 128
  %117 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr138.i) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !579
  %118 = and i32 %117, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %118)
  %cmp.not139.i = icmp eq i32 %118, 0
  br i1 %cmp.not139.i, label %while.end561.smc911x_tx.exit_crit_edge, label %while.end561.while.end42.i_crit_edge

while.end561.while.end42.i_crit_edge:             ; preds = %while.end561
  br label %while.end42.i

while.end561.smc911x_tx.exit_crit_edge:           ; preds = %while.end561
  call void @__sanitizer_cov_trace_pc() #15
  br label %smc911x_tx.exit

while.end42.i:                                    ; preds = %if.end118.i.while.end42.i_crit_edge, %while.end561.while.end42.i_crit_edge
  %119 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %base, align 4
  %add.ptr46.i = getelementptr i8, ptr %120, i32 72
  %121 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr46.i) #13, !srcloc !326
  %122 = tail call i32 @llvm.bswap.i32(i32 %121) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !580
  %123 = ptrtoint ptr %tx_packets.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %tx_packets.i, align 4
  %inc.i = add i32 %124, 1
  store i32 %inc.i, ptr %tx_packets.i, align 4
  %shr50.i = lshr i32 %122, 16
  %125 = ptrtoint ptr %tx_bytes.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %tx_bytes.i, align 4
  %add.i = add i32 %126, %shr50.i
  store i32 %add.i, ptr %tx_bytes.i, align 4
  %and77.i = and i32 %122, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and77.i)
  %tobool78.not.i = icmp eq i32 %and77.i, 0
  br i1 %tobool78.not.i, label %while.end42.i.if.end86.i_crit_edge, label %land.lhs.true.i

while.end42.i.if.end86.i_crit_edge:               ; preds = %while.end42.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end86.i

land.lhs.true.i:                                  ; preds = %while.end42.i
  %127 = ptrtoint ptr %ctl_rfduplx.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %ctl_rfduplx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %128)
  %tobool79.not.i = icmp ne i32 %128, 0
  %and81.i = and i32 %122, 774
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and81.i)
  %tobool82.not.i = icmp eq i32 %and81.i, 0
  %or.cond.i = select i1 %tobool79.not.i, i1 %tobool82.not.i, i1 false
  br i1 %or.cond.i, label %land.lhs.true.i.if.end86.i_crit_edge, label %if.then83.i

land.lhs.true.i.if.end86.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end86.i

if.then83.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  %129 = ptrtoint ptr %tx_errors.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %tx_errors.i, align 4
  %inc85.i = add i32 %130, 1
  store i32 %inc85.i, ptr %tx_errors.i, align 4
  br label %if.end86.i

if.end86.i:                                       ; preds = %if.then83.i, %land.lhs.true.i.if.end86.i_crit_edge, %while.end42.i.if.end86.i_crit_edge
  %and87.i = and i32 %122, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and87.i)
  %tobool88.not.i = icmp eq i32 %and87.i, 0
  br i1 %tobool88.not.i, label %if.else.i, label %if.then89.i

if.then89.i:                                      ; preds = %if.end86.i
  call void @__sanitizer_cov_trace_pc() #15
  %131 = ptrtoint ptr %collisions.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %collisions.i, align 4
  %add91.i = add i32 %132, 16
  store i32 %add91.i, ptr %collisions.i, align 4
  %133 = ptrtoint ptr %tx_aborted_errors.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %tx_aborted_errors.i, align 8
  %inc93.i = add i32 %134, 1
  store i32 %inc93.i, ptr %tx_aborted_errors.i, align 8
  br label %if.end99.i

if.else.i:                                        ; preds = %if.end86.i
  call void @__sanitizer_cov_trace_pc() #15
  %and94.i = lshr i32 %122, 3
  %shr95.i = and i32 %and94.i, 15
  %135 = ptrtoint ptr %collisions.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %collisions.i, align 4
  %add98.i = add i32 %136, %shr95.i
  store i32 %add98.i, ptr %collisions.i, align 4
  br label %if.end99.i

if.end99.i:                                       ; preds = %if.else.i, %if.then89.i
  %and100.i = and i32 %122, 3072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and100.i)
  %tobool101.not.i = icmp eq i32 %and100.i, 0
  br i1 %tobool101.not.i, label %if.end99.i.if.end108.i_crit_edge, label %land.lhs.true102.i

if.end99.i.if.end108.i_crit_edge:                 ; preds = %if.end99.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end108.i

land.lhs.true102.i:                               ; preds = %if.end99.i
  %137 = ptrtoint ptr %ctl_rfduplx.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %ctl_rfduplx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %138)
  %tobool104.not.i = icmp eq i32 %138, 0
  br i1 %tobool104.not.i, label %if.then105.i, label %land.lhs.true102.i.if.end108.i_crit_edge

land.lhs.true102.i.if.end108.i_crit_edge:         ; preds = %land.lhs.true102.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end108.i

if.then105.i:                                     ; preds = %land.lhs.true102.i
  call void @__sanitizer_cov_trace_pc() #15
  %139 = ptrtoint ptr %tx_carrier_errors.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %tx_carrier_errors.i, align 4
  %inc107.i = add i32 %140, 1
  store i32 %inc107.i, ptr %tx_carrier_errors.i, align 4
  br label %if.end108.i

if.end108.i:                                      ; preds = %if.then105.i, %land.lhs.true102.i.if.end108.i_crit_edge, %if.end99.i.if.end108.i_crit_edge
  %and109.i = and i32 %122, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and109.i)
  %tobool110.not.i = icmp eq i32 %and109.i, 0
  br i1 %tobool110.not.i, label %if.end108.i.if.end118.i_crit_edge, label %if.then111.i

if.end108.i.if.end118.i_crit_edge:                ; preds = %if.end108.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end118.i

if.then111.i:                                     ; preds = %if.end108.i
  call void @__sanitizer_cov_trace_pc() #15
  %141 = ptrtoint ptr %collisions.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %collisions.i, align 4
  %inc114.i = add i32 %142, 1
  store i32 %inc114.i, ptr %collisions.i, align 4
  %143 = ptrtoint ptr %tx_aborted_errors.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %tx_aborted_errors.i, align 8
  %inc117.i = add i32 %144, 1
  store i32 %inc117.i, ptr %tx_aborted_errors.i, align 8
  br label %if.end118.i

if.end118.i:                                      ; preds = %if.then111.i, %if.end108.i.if.end118.i_crit_edge
  %145 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %base, align 4
  %add.ptr.i727 = getelementptr i8, ptr %146, i32 128
  %147 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i727) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !579
  %148 = and i32 %147, 65280
  %cmp.not.i = icmp eq i32 %148, 0
  br i1 %cmp.not.i, label %if.end118.i.smc911x_tx.exit_crit_edge, label %if.end118.i.while.end42.i_crit_edge

if.end118.i.while.end42.i_crit_edge:              ; preds = %if.end118.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end42.i

if.end118.i.smc911x_tx.exit_crit_edge:            ; preds = %if.end118.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %smc911x_tx.exit

smc911x_tx.exit:                                  ; preds = %if.end118.i.smc911x_tx.exit_crit_edge, %while.end561.smc911x_tx.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !581
  tail call void @arm_heavy_mb() #13
  %149 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %base, align 4
  %add.ptr566 = getelementptr i8, ptr %150, i32 140
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr566, i32 270991392) #13, !srcloc !325
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !582
  tail call void @arm_heavy_mb() #13
  %151 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %base, align 4
  %add.ptr571 = getelementptr i8, ptr %152, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr571, i32 -2147483648) #13, !srcloc !325
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !583
  tail call void @arm_heavy_mb() #13
  %153 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %base, align 4
  %add.ptr576 = getelementptr i8, ptr %154, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr576, i32 -2147481600) #13, !srcloc !325
  br label %if.end577

if.end577:                                        ; preds = %smc911x_tx.exit, %if.end527.if.end577_crit_edge
  %and578 = and i32 %and67, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and578)
  %tobool579.not = icmp eq i32 %and578, 0
  br i1 %tobool579.not, label %if.end577.do.cond609_crit_edge, label %while.end602

if.end577.do.cond609_crit_edge:                   ; preds = %if.end577
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.cond609

while.end602:                                     ; preds = %if.end577
  %155 = ptrtoint ptr %mii.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %mii.i, align 4
  %157 = ptrtoint ptr %phy_type.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %phy_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %158)
  %cmp.i = icmp eq i32 %158, 0
  br i1 %cmp.i, label %while.end602.smc911x_phy_interrupt.exit_crit_edge, label %if.end8.i

while.end602.smc911x_phy_interrupt.exit_crit_edge: ; preds = %while.end602
  call void @__sanitizer_cov_trace_pc() #15
  br label %smc911x_phy_interrupt.exit

if.end8.i:                                        ; preds = %while.end602
  tail call fastcc void @smc911x_phy_check_media(ptr noundef %dev_id, i32 noundef 0) #13
  br label %while.cond12.i

while.cond12.i:                                   ; preds = %while.cond12.i.backedge, %if.end8.i
  %159 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %base, align 4
  %add.ptr.i729 = getelementptr i8, ptr %160, i32 164
  %161 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i729) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !584
  %.mask.i = and i32 %161, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask.i)
  %tobool17.not.i = icmp eq i32 %.mask.i, 0
  br i1 %tobool17.not.i, label %do.body20.i, label %while.cond12.i.while.cond12.i.backedge_crit_edge

while.cond12.i.while.cond12.i.backedge_crit_edge: ; preds = %while.cond12.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond12.i.backedge

while.cond12.i.backedge:                          ; preds = %while.end36.i.while.cond12.i.backedge_crit_edge, %while.cond12.i.while.cond12.i.backedge_crit_edge
  br label %while.cond12.i

do.body20.i:                                      ; preds = %while.cond12.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !585
  tail call void @arm_heavy_mb() #13
  %162 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %base, align 4
  %add.ptr24.i = getelementptr i8, ptr %163, i32 164
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24.i, i32 100663488) #13, !srcloc !325
  br label %while.cond25.i

while.cond25.i:                                   ; preds = %while.cond25.i.while.cond25.i_crit_edge, %do.body20.i
  %164 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %base, align 4
  %add.ptr29.i = getelementptr i8, ptr %165, i32 164
  %166 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr29.i) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !586
  %.mask246.i = and i32 %166, 128
  %tobool34.not.i = icmp eq i32 %.mask246.i, 0
  br i1 %tobool34.not.i, label %while.end36.i, label %while.cond25.i.while.cond25.i_crit_edge

while.cond25.i.while.cond25.i_crit_edge:          ; preds = %while.cond25.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond25.i

while.end36.i:                                    ; preds = %while.cond25.i
  %167 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %base, align 4
  %add.ptr40.i = getelementptr i8, ptr %168, i32 168
  %169 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr40.i) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !587
  %170 = and i32 %169, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %170)
  %tobool48.not.i = icmp eq i32 %170, 0
  br i1 %tobool48.not.i, label %while.end36.i.while.cond51.i_crit_edge, label %while.end36.i.while.cond12.i.backedge_crit_edge

while.end36.i.while.cond12.i.backedge_crit_edge:  ; preds = %while.end36.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond12.i.backedge

while.end36.i.while.cond51.i_crit_edge:           ; preds = %while.end36.i
  br label %while.cond51.i

while.cond51.i:                                   ; preds = %while.cond51.i.while.cond51.i_crit_edge, %while.end36.i.while.cond51.i_crit_edge
  %171 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %base, align 4
  %add.ptr55.i = getelementptr i8, ptr %172, i32 164
  %173 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr55.i) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !588
  %.mask247.i = and i32 %173, 128
  %tobool60.not.i = icmp eq i32 %.mask247.i, 0
  br i1 %tobool60.not.i, label %do.body63.i, label %while.cond51.i.while.cond51.i_crit_edge

while.cond51.i.while.cond51.i_crit_edge:          ; preds = %while.cond51.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond51.i

do.body63.i:                                      ; preds = %while.cond51.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !589
  tail call void @arm_heavy_mb() #13
  %shl.i = shl i32 %156, 11
  %or66.i = or i32 %shl.i, 1857
  %174 = tail call i32 @llvm.bswap.i32(i32 %or66.i) #13
  %175 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %base, align 4
  %add.ptr68.i = getelementptr i8, ptr %176, i32 168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr68.i, i32 %174) #13, !srcloc !325
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !590
  tail call void @arm_heavy_mb() #13
  %177 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %base, align 4
  %add.ptr73.i = getelementptr i8, ptr %178, i32 164
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr73.i, i32 100663424) #13, !srcloc !325
  br label %while.cond74.i

while.cond74.i:                                   ; preds = %while.cond74.i.while.cond74.i_crit_edge, %do.body63.i
  %179 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %base, align 4
  %add.ptr78.i = getelementptr i8, ptr %180, i32 164
  %181 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr78.i) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !591
  %.mask248.i = and i32 %181, 128
  %tobool83.not.i = icmp eq i32 %.mask248.i, 0
  br i1 %tobool83.not.i, label %while.cond74.i.while.cond90.i_crit_edge, label %while.cond74.i.while.cond74.i_crit_edge

while.cond74.i.while.cond74.i_crit_edge:          ; preds = %while.cond74.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond74.i

while.cond74.i.while.cond90.i_crit_edge:          ; preds = %while.cond74.i
  br label %while.cond90.i

while.cond90.i:                                   ; preds = %while.cond90.i.backedge, %while.cond74.i.while.cond90.i_crit_edge
  %182 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %base, align 4
  %add.ptr94.i = getelementptr i8, ptr %183, i32 164
  %184 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr94.i) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !592
  %.mask249.i = and i32 %184, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask249.i)
  %tobool99.not.i = icmp eq i32 %.mask249.i, 0
  br i1 %tobool99.not.i, label %do.body102.i, label %while.cond90.i.while.cond90.i.backedge_crit_edge

while.cond90.i.while.cond90.i.backedge_crit_edge: ; preds = %while.cond90.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond90.i.backedge

while.cond90.i.backedge:                          ; preds = %while.end118.i.while.cond90.i.backedge_crit_edge, %while.cond90.i.while.cond90.i.backedge_crit_edge
  br label %while.cond90.i

do.body102.i:                                     ; preds = %while.cond90.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !593
  tail call void @arm_heavy_mb() #13
  %185 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %base, align 4
  %add.ptr106.i = getelementptr i8, ptr %186, i32 164
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr106.i, i32 100663488) #13, !srcloc !325
  br label %while.cond107.i

while.cond107.i:                                  ; preds = %while.cond107.i.while.cond107.i_crit_edge, %do.body102.i
  %187 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %base, align 4
  %add.ptr111.i = getelementptr i8, ptr %188, i32 164
  %189 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr111.i) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !594
  %.mask250.i = and i32 %189, 128
  %tobool116.not.i = icmp eq i32 %.mask250.i, 0
  br i1 %tobool116.not.i, label %while.end118.i, label %while.cond107.i.while.cond107.i_crit_edge

while.cond107.i.while.cond107.i_crit_edge:        ; preds = %while.cond107.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond107.i

while.end118.i:                                   ; preds = %while.cond107.i
  %190 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %base, align 4
  %add.ptr122.i = getelementptr i8, ptr %191, i32 168
  %192 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr122.i) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !595
  %193 = and i32 %192, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %193)
  %tobool130.not.i = icmp eq i32 %193, 0
  br i1 %tobool130.not.i, label %while.end118.i.while.cond133.i_crit_edge, label %while.end118.i.while.cond90.i.backedge_crit_edge

while.end118.i.while.cond90.i.backedge_crit_edge: ; preds = %while.end118.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond90.i.backedge

while.end118.i.while.cond133.i_crit_edge:         ; preds = %while.end118.i
  br label %while.cond133.i

while.cond133.i:                                  ; preds = %while.cond133.i.while.cond133.i_crit_edge, %while.end118.i.while.cond133.i_crit_edge
  %194 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %base, align 4
  %add.ptr137.i = getelementptr i8, ptr %195, i32 164
  %196 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr137.i) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !596
  %.mask251.i = and i32 %196, 128
  %tobool142.not.i = icmp eq i32 %.mask251.i, 0
  br i1 %tobool142.not.i, label %do.body145.i, label %while.cond133.i.while.cond133.i_crit_edge

while.cond133.i.while.cond133.i_crit_edge:        ; preds = %while.cond133.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond133.i

do.body145.i:                                     ; preds = %while.cond133.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !597
  tail call void @arm_heavy_mb() #13
  %197 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %base, align 4
  %add.ptr149.i = getelementptr i8, ptr %198, i32 164
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr149.i, i32 117440704) #13, !srcloc !325
  br label %while.cond150.i

while.cond150.i:                                  ; preds = %while.cond150.i.while.cond150.i_crit_edge, %do.body145.i
  %199 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %base, align 4
  %add.ptr154.i = getelementptr i8, ptr %200, i32 164
  %201 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr154.i) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !598
  %.mask252.i = and i32 %201, 128
  %tobool159.not.i = icmp eq i32 %.mask252.i, 0
  br i1 %tobool159.not.i, label %while.end161.i, label %while.cond150.i.while.cond150.i_crit_edge

while.cond150.i.while.cond150.i_crit_edge:        ; preds = %while.cond150.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond150.i

while.end161.i:                                   ; preds = %while.cond150.i
  call void @__sanitizer_cov_trace_pc() #15
  %202 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %base, align 4
  %add.ptr165.i = getelementptr i8, ptr %203, i32 168
  %204 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr165.i) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !599
  br label %smc911x_phy_interrupt.exit

smc911x_phy_interrupt.exit:                       ; preds = %while.end161.i, %while.end602.smc911x_phy_interrupt.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !600
  tail call void @arm_heavy_mb() #13
  %205 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %base, align 4
  %add.ptr607 = getelementptr i8, ptr %206, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr607, i32 1024) #13, !srcloc !325
  br label %do.cond609

do.cond609:                                       ; preds = %smc911x_phy_interrupt.exit, %if.end577.do.cond609_crit_edge
  %dec = add nsw i32 %timeout.0, -1
  %tobool610.not = icmp eq i32 %dec, 0
  br i1 %tobool610.not, label %do.cond609.do.body612_crit_edge, label %do.cond609.do.body36_crit_edge

do.cond609.do.body36_crit_edge:                   ; preds = %do.cond609
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body36

do.cond609.do.body612_crit_edge:                  ; preds = %do.cond609
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body612

do.body612:                                       ; preds = %do.cond609.do.body612_crit_edge, %do.body36.do.body612_crit_edge
  %mask.2 = phi i32 [ %mask.1, %do.cond609.do.body612_crit_edge ], [ %mask.0, %do.body36.do.body612_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !601
  tail call void @arm_heavy_mb() #13
  %207 = tail call i32 @llvm.bswap.i32(i32 %mask.2)
  %208 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %base, align 4
  %add.ptr616 = getelementptr i8, ptr %209, i32 92
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr616, i32 %207) #13, !srcloc !325
  br label %cleanup

cleanup:                                          ; preds = %do.body612, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %do.body612 ], [ 0, %entry.cleanup_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call11) #13
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @probe_irq_on() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @probe_irq_off(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smc911x_open(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @smc911x_reset(ptr noundef %dev)
  %phy_configure = getelementptr i8, ptr %dev, i32 2376
  tail call void @smc911x_phy_configure(ptr noundef %phy_configure)
  tail call fastcc void @smc911x_enable(ptr noundef %dev)
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %0 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %1, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i) #13
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smc911x_close(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %0 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %1, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #13
  tail call void @netif_carrier_off(ptr noundef %dev) #13
  tail call fastcc void @smc911x_shutdown(ptr noundef %dev)
  %phy_type = getelementptr i8, ptr %dev, i32 2340
  %2 = ptrtoint ptr %phy_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %phy_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not = icmp eq i32 %3, 0
  br i1 %cmp.not, label %entry.if.end9_crit_edge, label %if.then7

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end9

if.then7:                                         ; preds = %entry
  %phy_configure = getelementptr i8, ptr %dev, i32 2376
  %call8 = tail call zeroext i1 @cancel_work_sync(ptr noundef %phy_configure) #13
  %mii = getelementptr i8, ptr %dev, i32 2344
  %4 = ptrtoint ptr %mii to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mii, align 4
  %base.i = getelementptr i8, ptr %dev, i32 2472
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i.backedge, %if.then7
  %6 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i, align 4
  %add.ptr.i24 = getelementptr i8, ptr %7, i32 164
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i24) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !602
  %.mask.i = and i32 %8, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask.i)
  %tobool.not.i = icmp eq i32 %.mask.i, 0
  br i1 %tobool.not.i, label %do.body6.i, label %while.cond.i.while.cond.i.backedge_crit_edge

while.cond.i.while.cond.i.backedge_crit_edge:     ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond.i.backedge

while.cond.i.backedge:                            ; preds = %while.end20.i.while.cond.i.backedge_crit_edge, %while.cond.i.while.cond.i.backedge_crit_edge
  br label %while.cond.i

do.body6.i:                                       ; preds = %while.cond.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !603
  tail call void @arm_heavy_mb() #13
  %9 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base.i, align 4
  %add.ptr8.i = getelementptr i8, ptr %10, i32 164
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i, i32 100663488) #13, !srcloc !325
  br label %while.cond9.i

while.cond9.i:                                    ; preds = %while.cond9.i.while.cond9.i_crit_edge, %do.body6.i
  %11 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base.i, align 4
  %add.ptr13.i = getelementptr i8, ptr %12, i32 164
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13.i) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !604
  %.mask363.i = and i32 %13, 128
  %tobool18.not.i = icmp eq i32 %.mask363.i, 0
  br i1 %tobool18.not.i, label %while.end20.i, label %while.cond9.i.while.cond9.i_crit_edge

while.cond9.i.while.cond9.i_crit_edge:            ; preds = %while.cond9.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond9.i

while.end20.i:                                    ; preds = %while.cond9.i
  %14 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base.i, align 4
  %add.ptr24.i = getelementptr i8, ptr %15, i32 168
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr24.i) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !605
  %17 = and i32 %16, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool32.not.i = icmp eq i32 %17, 0
  br i1 %tobool32.not.i, label %while.end20.i.while.cond35.i_crit_edge, label %while.end20.i.while.cond.i.backedge_crit_edge

while.end20.i.while.cond.i.backedge_crit_edge:    ; preds = %while.end20.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond.i.backedge

while.end20.i.while.cond35.i_crit_edge:           ; preds = %while.end20.i
  br label %while.cond35.i

while.cond35.i:                                   ; preds = %while.cond35.i.while.cond35.i_crit_edge, %while.end20.i.while.cond35.i_crit_edge
  %18 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base.i, align 4
  %add.ptr39.i = getelementptr i8, ptr %19, i32 164
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr39.i) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !606
  %.mask364.i = and i32 %20, 128
  %tobool44.not.i = icmp eq i32 %.mask364.i, 0
  br i1 %tobool44.not.i, label %do.body47.i, label %while.cond35.i.while.cond35.i_crit_edge

while.cond35.i.while.cond35.i_crit_edge:          ; preds = %while.cond35.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond35.i

do.body47.i:                                      ; preds = %while.cond35.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !607
  tail call void @arm_heavy_mb() #13
  %shl.i = shl i32 %5, 11
  %or50.i = or i32 %shl.i, 1
  %21 = tail call i32 @llvm.bswap.i32(i32 %or50.i) #13
  %22 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %base.i, align 4
  %add.ptr52.i = getelementptr i8, ptr %23, i32 168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr52.i, i32 %21) #13, !srcloc !325
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !608
  tail call void @arm_heavy_mb() #13
  %24 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %base.i, align 4
  %add.ptr57.i = getelementptr i8, ptr %25, i32 164
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr57.i, i32 100663424) #13, !srcloc !325
  br label %while.cond58.i

while.cond58.i:                                   ; preds = %while.cond58.i.while.cond58.i_crit_edge, %do.body47.i
  %26 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %base.i, align 4
  %add.ptr62.i = getelementptr i8, ptr %27, i32 164
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr62.i) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !609
  %.mask365.i = and i32 %28, 128
  %tobool67.not.i = icmp eq i32 %.mask365.i, 0
  br i1 %tobool67.not.i, label %while.cond58.i.while.cond74.i_crit_edge, label %while.cond58.i.while.cond58.i_crit_edge

while.cond58.i.while.cond58.i_crit_edge:          ; preds = %while.cond58.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond58.i

while.cond58.i.while.cond74.i_crit_edge:          ; preds = %while.cond58.i
  br label %while.cond74.i

while.cond74.i:                                   ; preds = %while.cond74.i.backedge, %while.cond58.i.while.cond74.i_crit_edge
  %29 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %base.i, align 4
  %add.ptr78.i = getelementptr i8, ptr %30, i32 164
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr78.i) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !610
  %.mask366.i = and i32 %31, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask366.i)
  %tobool83.not.i = icmp eq i32 %.mask366.i, 0
  br i1 %tobool83.not.i, label %do.body86.i, label %while.cond74.i.while.cond74.i.backedge_crit_edge

while.cond74.i.while.cond74.i.backedge_crit_edge: ; preds = %while.cond74.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond74.i.backedge

while.cond74.i.backedge:                          ; preds = %while.end102.i.while.cond74.i.backedge_crit_edge, %while.cond74.i.while.cond74.i.backedge_crit_edge
  br label %while.cond74.i

do.body86.i:                                      ; preds = %while.cond74.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !611
  tail call void @arm_heavy_mb() #13
  %32 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %base.i, align 4
  %add.ptr90.i = getelementptr i8, ptr %33, i32 164
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr90.i, i32 100663488) #13, !srcloc !325
  br label %while.cond91.i

while.cond91.i:                                   ; preds = %while.cond91.i.while.cond91.i_crit_edge, %do.body86.i
  %34 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %base.i, align 4
  %add.ptr95.i = getelementptr i8, ptr %35, i32 164
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr95.i) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !612
  %.mask367.i = and i32 %36, 128
  %tobool100.not.i = icmp eq i32 %.mask367.i, 0
  br i1 %tobool100.not.i, label %while.end102.i, label %while.cond91.i.while.cond91.i_crit_edge

while.cond91.i.while.cond91.i_crit_edge:          ; preds = %while.cond91.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond91.i

while.end102.i:                                   ; preds = %while.cond91.i
  %37 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %base.i, align 4
  %add.ptr106.i = getelementptr i8, ptr %38, i32 168
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr106.i) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !613
  %40 = and i32 %39, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool114.not.i = icmp eq i32 %40, 0
  br i1 %tobool114.not.i, label %while.end102.i.while.cond117.i_crit_edge, label %while.end102.i.while.cond74.i.backedge_crit_edge

while.end102.i.while.cond74.i.backedge_crit_edge: ; preds = %while.end102.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond74.i.backedge

while.end102.i.while.cond117.i_crit_edge:         ; preds = %while.end102.i
  br label %while.cond117.i

while.cond117.i:                                  ; preds = %while.cond117.i.while.cond117.i_crit_edge, %while.end102.i.while.cond117.i_crit_edge
  %41 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %base.i, align 4
  %add.ptr121.i = getelementptr i8, ptr %42, i32 164
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr121.i) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !614
  %.mask368.i = and i32 %43, 128
  %tobool126.not.i = icmp eq i32 %.mask368.i, 0
  br i1 %tobool126.not.i, label %do.body129.i, label %while.cond117.i.while.cond117.i_crit_edge

while.cond117.i.while.cond117.i_crit_edge:        ; preds = %while.cond117.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond117.i

do.body129.i:                                     ; preds = %while.cond117.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !615
  tail call void @arm_heavy_mb() #13
  %44 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %base.i, align 4
  %add.ptr133.i = getelementptr i8, ptr %45, i32 164
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr133.i, i32 117440704) #13, !srcloc !325
  br label %while.cond134.i

while.cond134.i:                                  ; preds = %while.cond134.i.while.cond134.i_crit_edge, %do.body129.i
  %46 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %base.i, align 4
  %add.ptr138.i = getelementptr i8, ptr %47, i32 164
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr138.i) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !616
  %.mask369.i = and i32 %48, 128
  %tobool143.not.i = icmp eq i32 %.mask369.i, 0
  br i1 %tobool143.not.i, label %while.end145.i, label %while.cond134.i.while.cond134.i_crit_edge

while.cond134.i.while.cond134.i_crit_edge:        ; preds = %while.cond134.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond134.i

while.end145.i:                                   ; preds = %while.cond134.i
  %49 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %base.i, align 4
  %add.ptr149.i = getelementptr i8, ptr %50, i32 168
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr149.i) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !617
  br label %while.cond162.i

while.cond162.i:                                  ; preds = %while.cond162.i.backedge, %while.end145.i
  %52 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %base.i, align 4
  %add.ptr166.i = getelementptr i8, ptr %53, i32 164
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr166.i) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !618
  %.mask370.i = and i32 %54, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask370.i)
  %tobool171.not.i = icmp eq i32 %.mask370.i, 0
  br i1 %tobool171.not.i, label %do.body174.i, label %while.cond162.i.while.cond162.i.backedge_crit_edge

while.cond162.i.while.cond162.i.backedge_crit_edge: ; preds = %while.cond162.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond162.i.backedge

while.cond162.i.backedge:                         ; preds = %while.end190.i.while.cond162.i.backedge_crit_edge, %while.cond162.i.while.cond162.i.backedge_crit_edge
  br label %while.cond162.i

do.body174.i:                                     ; preds = %while.cond162.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !619
  tail call void @arm_heavy_mb() #13
  %55 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %base.i, align 4
  %add.ptr178.i = getelementptr i8, ptr %56, i32 164
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr178.i, i32 100663488) #13, !srcloc !325
  br label %while.cond179.i

while.cond179.i:                                  ; preds = %while.cond179.i.while.cond179.i_crit_edge, %do.body174.i
  %57 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %base.i, align 4
  %add.ptr183.i = getelementptr i8, ptr %58, i32 164
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr183.i) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !620
  %.mask371.i = and i32 %59, 128
  %tobool188.not.i = icmp eq i32 %.mask371.i, 0
  br i1 %tobool188.not.i, label %while.end190.i, label %while.cond179.i.while.cond179.i_crit_edge

while.cond179.i.while.cond179.i_crit_edge:        ; preds = %while.cond179.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond179.i

while.end190.i:                                   ; preds = %while.cond179.i
  %60 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %base.i, align 4
  %add.ptr194.i = getelementptr i8, ptr %61, i32 168
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr194.i) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !621
  %63 = and i32 %62, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %tobool202.not.i = icmp eq i32 %63, 0
  br i1 %tobool202.not.i, label %while.end190.i.while.cond205.i_crit_edge, label %while.end190.i.while.cond162.i.backedge_crit_edge

while.end190.i.while.cond162.i.backedge_crit_edge: ; preds = %while.end190.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond162.i.backedge

while.end190.i.while.cond205.i_crit_edge:         ; preds = %while.end190.i
  br label %while.cond205.i

while.cond205.i:                                  ; preds = %while.cond205.i.while.cond205.i_crit_edge, %while.end190.i.while.cond205.i_crit_edge
  %64 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %base.i, align 4
  %add.ptr209.i = getelementptr i8, ptr %65, i32 164
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr209.i) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !622
  %.mask372.i = and i32 %66, 128
  %tobool214.not.i = icmp eq i32 %.mask372.i, 0
  br i1 %tobool214.not.i, label %do.body217.i, label %while.cond205.i.while.cond205.i_crit_edge

while.cond205.i.while.cond205.i_crit_edge:        ; preds = %while.cond205.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond205.i

do.body217.i:                                     ; preds = %while.cond205.i
  %67 = or i32 %51, 524288
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !623
  tail call void @arm_heavy_mb() #13
  %68 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %base.i, align 4
  %add.ptr221.i = getelementptr i8, ptr %69, i32 168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr221.i, i32 %67) #13, !srcloc !325
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !624
  tail call void @arm_heavy_mb() #13
  %70 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %base.i, align 4
  %add.ptr226.i = getelementptr i8, ptr %71, i32 164
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr226.i, i32 117440640) #13, !srcloc !325
  br label %while.cond227.i

while.cond227.i:                                  ; preds = %while.cond227.i.while.cond227.i_crit_edge, %do.body217.i
  %72 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %base.i, align 4
  %add.ptr231.i = getelementptr i8, ptr %73, i32 164
  %74 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr231.i) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !625
  %.mask373.i = and i32 %74, 128
  %tobool236.not.i = icmp eq i32 %.mask373.i, 0
  br i1 %tobool236.not.i, label %while.cond227.i.while.cond242.i_crit_edge, label %while.cond227.i.while.cond227.i_crit_edge

while.cond227.i.while.cond227.i_crit_edge:        ; preds = %while.cond227.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond227.i

while.cond227.i.while.cond242.i_crit_edge:        ; preds = %while.cond227.i
  br label %while.cond242.i

while.cond242.i:                                  ; preds = %while.cond242.i.while.cond242.i_crit_edge, %while.cond227.i.while.cond242.i_crit_edge
  %75 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %base.i, align 4
  %add.ptr246.i = getelementptr i8, ptr %76, i32 164
  %77 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr246.i) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !626
  %.mask374.i = and i32 %77, 128
  %tobool251.not.i = icmp eq i32 %.mask374.i, 0
  br i1 %tobool251.not.i, label %do.body254.i, label %while.cond242.i.while.cond242.i_crit_edge

while.cond242.i.while.cond242.i_crit_edge:        ; preds = %while.cond242.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond242.i

do.body254.i:                                     ; preds = %while.cond242.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !627
  tail call void @arm_heavy_mb() #13
  %or260.i = or i32 %shl.i, 3
  %78 = tail call i32 @llvm.bswap.i32(i32 %or260.i) #13
  %79 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %base.i, align 4
  %add.ptr262.i = getelementptr i8, ptr %80, i32 168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr262.i, i32 %78) #13, !srcloc !325
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !628
  tail call void @arm_heavy_mb() #13
  %81 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %base.i, align 4
  %add.ptr267.i = getelementptr i8, ptr %82, i32 164
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr267.i, i32 100663424) #13, !srcloc !325
  br label %while.cond268.i

while.cond268.i:                                  ; preds = %while.cond268.i.while.cond268.i_crit_edge, %do.body254.i
  %83 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %base.i, align 4
  %add.ptr272.i = getelementptr i8, ptr %84, i32 164
  %85 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr272.i) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !629
  %.mask375.i = and i32 %85, 128
  %tobool277.not.i = icmp eq i32 %.mask375.i, 0
  br i1 %tobool277.not.i, label %while.cond268.i.while.cond284.i_crit_edge, label %while.cond268.i.while.cond268.i_crit_edge

while.cond268.i.while.cond268.i_crit_edge:        ; preds = %while.cond268.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond268.i

while.cond268.i.while.cond284.i_crit_edge:        ; preds = %while.cond268.i
  br label %while.cond284.i

while.cond284.i:                                  ; preds = %while.cond284.i.backedge, %while.cond268.i.while.cond284.i_crit_edge
  %86 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %base.i, align 4
  %add.ptr288.i = getelementptr i8, ptr %87, i32 164
  %88 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr288.i) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !630
  %.mask376.i = and i32 %88, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask376.i)
  %tobool293.not.i = icmp eq i32 %.mask376.i, 0
  br i1 %tobool293.not.i, label %do.body296.i, label %while.cond284.i.while.cond284.i.backedge_crit_edge

while.cond284.i.while.cond284.i.backedge_crit_edge: ; preds = %while.cond284.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond284.i.backedge

while.cond284.i.backedge:                         ; preds = %while.end312.i.while.cond284.i.backedge_crit_edge, %while.cond284.i.while.cond284.i.backedge_crit_edge
  br label %while.cond284.i

do.body296.i:                                     ; preds = %while.cond284.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !631
  tail call void @arm_heavy_mb() #13
  %89 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %base.i, align 4
  %add.ptr300.i = getelementptr i8, ptr %90, i32 164
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr300.i, i32 100663488) #13, !srcloc !325
  br label %while.cond301.i

while.cond301.i:                                  ; preds = %while.cond301.i.while.cond301.i_crit_edge, %do.body296.i
  %91 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %base.i, align 4
  %add.ptr305.i = getelementptr i8, ptr %92, i32 164
  %93 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr305.i) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !632
  %.mask377.i = and i32 %93, 128
  %tobool310.not.i = icmp eq i32 %.mask377.i, 0
  br i1 %tobool310.not.i, label %while.end312.i, label %while.cond301.i.while.cond301.i_crit_edge

while.cond301.i.while.cond301.i_crit_edge:        ; preds = %while.cond301.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond301.i

while.end312.i:                                   ; preds = %while.cond301.i
  %94 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %base.i, align 4
  %add.ptr316.i = getelementptr i8, ptr %95, i32 168
  %96 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr316.i) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !633
  %97 = and i32 %96, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %97)
  %tobool324.not.i = icmp eq i32 %97, 0
  br i1 %tobool324.not.i, label %while.end312.i.if.end9_crit_edge, label %while.end312.i.while.cond284.i.backedge_crit_edge

while.end312.i.while.cond284.i.backedge_crit_edge: ; preds = %while.end312.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond284.i.backedge

while.end312.i.if.end9_crit_edge:                 ; preds = %while.end312.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end9

if.end9:                                          ; preds = %while.end312.i.if.end9_crit_edge, %entry.if.end9_crit_edge
  %98 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %add.ptr.i, align 4
  %tobool10.not = icmp eq ptr %99, null
  br i1 %tobool10.not, label %if.end9.if.end14_crit_edge, label %if.then11

if.end9.if.end14_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end14

if.then11:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @consume_skb(ptr noundef nonnull %99) #13
  %100 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr null, ptr %add.ptr.i, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %if.end9.if.end14_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smc911x_hard_start_xmit(ptr noundef %skb, ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %lock = getelementptr i8, ptr %dev, i32 2424
  %call11 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #13
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %cmp17.not = icmp eq ptr %1, null
  br i1 %cmp17.not, label %do.end34, label %do.body26, !prof !634

do.body26:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smc911x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 519, 0\0A.popsection", ""() #13, !srcloc !635
  unreachable

do.end34:                                         ; preds = %entry
  %base = getelementptr i8, ptr %dev, i32 2472
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 128
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !636
  %5 = and i32 %4, -65536
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 3073, i32 %6)
  %cmp60 = icmp ult i32 %6, 3073
  br i1 %cmp60, label %do.body85, label %do.end34.if.end159_crit_edge

do.end34.if.end159_crit_edge:                     ; preds = %do.end34
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end159

do.body85:                                        ; preds = %do.end34
  %7 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !572
  %and.i = and i32 %7, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool103.not = icmp eq i32 %and.i, 0
  br i1 %tobool103.not, label %if.then104, label %do.body85.do.end107_crit_edge

do.body85.do.end107_crit_edge:                    ; preds = %do.body85
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end107

if.then104:                                       ; preds = %do.body85
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @trace_hardirqs_off() #13
  br label %do.end107

do.end107:                                        ; preds = %if.then104, %do.body85.do.end107_crit_edge
  %8 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base, align 4
  %add.ptr111 = getelementptr i8, ptr %9, i32 104
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr111) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !637
  %11 = and i32 %10, -256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !638
  tail call void @arm_heavy_mb() #13
  %12 = or i32 %11, 48
  %13 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base, align 4
  %add.ptr120 = getelementptr i8, ptr %14, i32 104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr120, i32 %12) #13, !srcloc !325
  br i1 %tobool103.not, label %if.then130, label %do.end107.do.body132_crit_edge

do.end107.do.body132_crit_edge:                   ; preds = %do.end107
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body132

if.then130:                                       ; preds = %do.end107
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @trace_hardirqs_on() #13
  br label %do.body132

do.body132:                                       ; preds = %if.then130, %do.end107.do.body132_crit_edge
  %15 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #13, !srcloc !575
  %and.i.i = and i32 %15, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool140.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool140.not, label %if.then149, label %do.body132.do.end152_crit_edge, !prof !576

do.body132.do.end152_crit_edge:                   ; preds = %do.body132
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end152

if.then149:                                       ; preds = %do.body132
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @warn_bogus_irq_restore() #13
  br label %do.end152

do.end152:                                        ; preds = %if.then149, %do.body132.do.end152_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %7) #13, !srcloc !577
  %tx_throttle = getelementptr i8, ptr %dev, i32 2420
  %16 = ptrtoint ptr %tx_throttle to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %tx_throttle, align 4
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %17 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %18, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #13
  br label %if.end159

if.end159:                                        ; preds = %do.end152, %do.end34.if.end159_crit_edge
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %19 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %len, align 4
  %add161 = add i32 %20, 38
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %add161)
  %cmp162 = icmp ult i32 %6, %add161
  br i1 %cmp162, label %if.then170, label %if.end176, !prof !576

if.then170:                                       ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %dev, ptr noundef nonnull @.str.49, i32 noundef %6, i32 noundef %20) #16
  %21 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %add.ptr.i, align 4
  %tx_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 5
  %22 = ptrtoint ptr %tx_errors to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %tx_errors, align 4
  %inc = add i32 %23, 1
  store i32 %inc, ptr %tx_errors, align 4
  %tx_dropped = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 7
  %24 = ptrtoint ptr %tx_dropped to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %tx_dropped, align 4
  %inc174 = add i32 %25, 1
  store i32 %inc174, ptr %tx_dropped, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call11) #13
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #13
  br label %cleanup

if.end176:                                        ; preds = %if.end159
  %26 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %skb, ptr %add.ptr.i, align 4
  %cmp.i = icmp eq ptr %skb, null
  br i1 %cmp.i, label %do.body15.i, label %do.end23.i, !prof !576

do.body15.i:                                      ; preds = %if.end176
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/smsc/smc911x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 453, 0\0A.popsection", ""() #13, !srcloc !639
  unreachable

do.end23.i:                                       ; preds = %if.end176
  %27 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %add.ptr.i, align 4
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %28 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %data.i, align 4
  %30 = ptrtoint ptr %29 to i32
  %and.i204 = and i32 %30, -4
  %31 = inttoptr i32 %and.i204 to ptr
  %32 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %len, align 4
  %add.i = add i32 %33, 3
  %and28.i = and i32 %30, 3
  %add29.i = add i32 %add.i, %and28.i
  %shl.i = shl nuw nsw i32 %and28.i, 16
  %or33.i = or i32 %33, %shl.i
  %or35.i = or i32 %or33.i, 12288
  %shl37.i = shl i32 %33, 16
  %and39.i = and i32 %33, 2047
  %or40.i = or i32 %shl37.i, %and39.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !640
  tail call void @arm_heavy_mb() #13
  %34 = tail call i32 @llvm.bswap.i32(i32 %or35.i) #13
  %35 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %base, align 4
  %add.ptr.i205 = getelementptr i8, ptr %36, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i205, i32 %34) #13, !srcloc !325
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !641
  tail call void @arm_heavy_mb() #13
  %37 = tail call i32 @llvm.bswap.i32(i32 %or40.i) #13
  %38 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %base, align 4
  %add.ptr70.i = getelementptr i8, ptr %39, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr70.i, i32 %37) #13, !srcloc !325
  %40 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %base, align 4
  %add.ptr97.i = getelementptr i8, ptr %41, i32 32
  %shr.i = lshr i32 %add29.i, 2
  tail call void @__raw_writesl(ptr noundef %add.ptr97.i, ptr noundef %31, i32 noundef %shr.i) #13
  %_tx.i.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %42 = ptrtoint ptr %_tx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %_tx.i.i.i, align 128
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %44 = load volatile i32, ptr @jiffies, align 128
  %trans_start.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %43, i32 0, i32 12
  %45 = ptrtoint ptr %trans_start.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %trans_start.i.i.i, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %46, i32 %44)
  %cmp.not.i.i.i = icmp eq i32 %46, %44
  br i1 %cmp.not.i.i.i, label %do.end23.i.netif_trans_update.exit.i_crit_edge, label %do.body5.i.i.i

do.end23.i.netif_trans_update.exit.i_crit_edge:   ; preds = %do.end23.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %netif_trans_update.exit.i

do.body5.i.i.i:                                   ; preds = %do.end23.i
  call void @__sanitizer_cov_trace_pc() #15
  %47 = ptrtoint ptr %trans_start.i.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile i32 %44, ptr %trans_start.i.i.i, align 16
  br label %netif_trans_update.exit.i

netif_trans_update.exit.i:                        ; preds = %do.body5.i.i.i, %do.end23.i.netif_trans_update.exit.i_crit_edge
  tail call void @__dev_kfree_skb_irq(ptr noundef nonnull %skb, i32 noundef 1) #13
  %tx_throttle.i = getelementptr i8, ptr %dev, i32 2420
  %48 = ptrtoint ptr %tx_throttle.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %tx_throttle.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool98.not.i = icmp eq i32 %49, 0
  br i1 %tobool98.not.i, label %if.then99.i, label %netif_trans_update.exit.i.smc911x_hardware_send_pkt.exit_crit_edge

netif_trans_update.exit.i.smc911x_hardware_send_pkt.exit_crit_edge: ; preds = %netif_trans_update.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %smc911x_hardware_send_pkt.exit

if.then99.i:                                      ; preds = %netif_trans_update.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %50 = ptrtoint ptr %_tx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %_tx.i.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %51) #13
  br label %smc911x_hardware_send_pkt.exit

smc911x_hardware_send_pkt.exit:                   ; preds = %if.then99.i, %netif_trans_update.exit.i.smc911x_hardware_send_pkt.exit_crit_edge
  %52 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %base, align 4
  %add.ptr103.i = getelementptr i8, ptr %53, i32 92
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr103.i) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !642
  %55 = or i32 %54, -2147352576
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !643
  tail call void @arm_heavy_mb() #13
  %56 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %base, align 4
  %add.ptr112.i = getelementptr i8, ptr %57, i32 92
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr112.i, i32 %55) #13, !srcloc !325
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call11) #13
  br label %cleanup

cleanup:                                          ; preds = %smc911x_hardware_send_pkt.exit, %if.then170
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @smc911x_set_multicast_list(ptr noundef %dev) #2 align 64 {
entry:
  %multicast_table = alloca [2 x i32], align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %multicast_table) #13
  %0 = ptrtoint ptr %multicast_table to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %multicast_table, align 8, !annotation !644
  %1 = getelementptr inbounds [2 x i32], ptr %multicast_table, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !644
  %lock = getelementptr i8, ptr %dev, i32 2424
  %call11 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #13
  %base = getelementptr i8, ptr %dev, i32 2472
  br label %while.cond17

while.cond17:                                     ; preds = %while.cond17.while.cond17_crit_edge, %entry
  %3 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %4, i32 164
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !645
  %.mask = and i32 %5, 128
  %tobool21.not = icmp eq i32 %.mask, 0
  br i1 %tobool21.not, label %do.body24, label %while.cond17.while.cond17_crit_edge

while.cond17.while.cond17_crit_edge:              ; preds = %while.cond17
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond17

do.body24:                                        ; preds = %while.cond17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !646
  tail call void @arm_heavy_mb() #13
  %6 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base, align 4
  %add.ptr28 = getelementptr i8, ptr %7, i32 164
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr28, i32 16777408) #13, !srcloc !325
  br label %while.cond29

while.cond29:                                     ; preds = %while.cond29.while.cond29_crit_edge, %do.body24
  %8 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base, align 4
  %add.ptr33 = getelementptr i8, ptr %9, i32 164
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr33) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !647
  %.mask389 = and i32 %10, 128
  %tobool38.not = icmp eq i32 %.mask389, 0
  br i1 %tobool38.not, label %while.end40, label %while.cond29.while.cond29_crit_edge

while.cond29.while.cond29_crit_edge:              ; preds = %while.cond29
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond29

while.end40:                                      ; preds = %while.cond29
  %11 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base, align 4
  %add.ptr44 = getelementptr i8, ptr %12, i32 168
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr44) #13, !srcloc !326
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !648
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call11) #13
  %flags51 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 14
  %15 = ptrtoint ptr %flags51 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %flags51, align 8
  %and52 = and i32 %16, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52)
  %tobool53.not = icmp eq i32 %and52, 0
  br i1 %tobool53.not, label %if.else, label %while.end76

while.end76:                                      ; preds = %while.end40
  call void @__sanitizer_cov_trace_pc() #15
  %or = or i32 %14, 262144
  br label %do.body189

if.else:                                          ; preds = %while.end40
  %and78 = and i32 %16, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and78)
  %tobool79.not = icmp eq i32 %and78, 0
  br i1 %tobool79.not, label %lor.lhs.false, label %if.else.while.end104_crit_edge

if.else.while.end104_crit_edge:                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end104

lor.lhs.false:                                    ; preds = %if.else
  %mc = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 66
  %count = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 66, i32 1
  %17 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %18)
  %cmp80 = icmp sgt i32 %18, 16
  br i1 %cmp80, label %lor.lhs.false.while.end104_crit_edge, label %if.else106

lor.lhs.false.while.end104_crit_edge:             ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end104

while.end104:                                     ; preds = %lor.lhs.false.while.end104_crit_edge, %if.else.while.end104_crit_edge
  %or105 = or i32 %14, 524288
  br label %do.body189

if.else106:                                       ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp109 = icmp eq i32 %18, 0
  br i1 %cmp109, label %while.end182, label %if.then111

if.then111:                                       ; preds = %if.else106
  %19 = ptrtoint ptr %multicast_table to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 0, ptr %multicast_table, align 8
  %20 = ptrtoint ptr %mc to i32
  call void @__asan_load4_noabort(i32 %20)
  %ha.0396 = load ptr, ptr %mc, align 4
  %cmp119.not397 = icmp eq ptr %ha.0396, %mc
  br i1 %cmp119.not397, label %if.then111.for.end_crit_edge, label %if.then111.cond.end_crit_edge

if.then111.cond.end_crit_edge:                    ; preds = %if.then111
  br label %cond.end

if.then111.for.end_crit_edge:                     ; preds = %if.then111
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

cond.end:                                         ; preds = %cond.end.cond.end_crit_edge, %if.then111.cond.end_crit_edge
  %ha.0398 = phi ptr [ %ha.0, %cond.end.cond.end_crit_edge ], [ %ha.0396, %if.then111.cond.end_crit_edge ]
  %addr = getelementptr inbounds %struct.netdev_hw_addr, ptr %ha.0398, i32 0, i32 2
  %call124 = tail call i32 @crc32_le(i32 noundef -1, ptr noundef %addr, i32 noundef 6) #17
  %21 = and i32 %call124, 255
  %arrayidx.i.i.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %21
  %22 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx.i.i.i, align 1
  %conv2.i.i = zext i8 %23 to i32
  %shr149 = lshr i32 %conv2.i.i, 2
  %and150 = and i32 %shr149, 31
  %shl151 = shl nuw i32 1, %and150
  %shr152 = lshr i32 %conv2.i.i, 7
  %arrayidx = getelementptr [2 x i32], ptr %multicast_table, i32 0, i32 %shr152
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx, align 4
  %or153 = or i32 %shl151, %25
  store i32 %or153, ptr %arrayidx, align 4
  %26 = ptrtoint ptr %ha.0398 to i32
  call void @__asan_load4_noabort(i32 %26)
  %ha.0 = load ptr, ptr %ha.0398, align 4
  %cmp119.not = icmp eq ptr %ha.0, %mc
  br i1 %cmp119.not, label %cond.end.for.end_crit_edge, label %cond.end.cond.end_crit_edge

cond.end.cond.end_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end

cond.end.for.end_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %cond.end.for.end_crit_edge, %if.then111.for.end_crit_edge
  %or112 = and i32 %14, -794625
  %and159 = or i32 %or112, 8192
  br label %do.body189

while.end182:                                     ; preds = %if.else106
  call void @__sanitizer_cov_trace_pc() #15
  %and183 = and i32 %14, -786433
  %27 = ptrtoint ptr %multicast_table to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 0, ptr %multicast_table, align 8
  br label %do.body189

do.body189:                                       ; preds = %while.end182, %for.end, %while.end104, %while.end76
  %tobool239.not = phi i1 [ true, %while.end104 ], [ false, %while.end182 ], [ false, %for.end ], [ true, %while.end76 ]
  %mcr.0 = phi i32 [ %or105, %while.end104 ], [ %and183, %while.end182 ], [ %and159, %for.end ], [ %or, %while.end76 ]
  %call197 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #13
  br label %while.cond203

while.cond203:                                    ; preds = %while.cond203.while.cond203_crit_edge, %do.body189
  %28 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %base, align 4
  %add.ptr207 = getelementptr i8, ptr %29, i32 164
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr207) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !649
  %.mask390 = and i32 %30, 128
  %tobool212.not = icmp eq i32 %.mask390, 0
  br i1 %tobool212.not, label %do.body215, label %while.cond203.while.cond203_crit_edge

while.cond203.while.cond203_crit_edge:            ; preds = %while.cond203
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond203

do.body215:                                       ; preds = %while.cond203
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !650
  tail call void @arm_heavy_mb() #13
  %31 = tail call i32 @llvm.bswap.i32(i32 %mcr.0)
  %32 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %base, align 4
  %add.ptr219 = getelementptr i8, ptr %33, i32 168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr219, i32 %31) #13, !srcloc !325
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !651
  tail call void @arm_heavy_mb() #13
  %34 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %base, align 4
  %add.ptr224 = getelementptr i8, ptr %35, i32 164
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr224, i32 16777344) #13, !srcloc !325
  br label %while.cond225

while.cond225:                                    ; preds = %while.cond225.while.cond225_crit_edge, %do.body215
  %36 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %base, align 4
  %add.ptr229 = getelementptr i8, ptr %37, i32 164
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr229) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !652
  %.mask391 = and i32 %38, 128
  %tobool234.not = icmp eq i32 %.mask391, 0
  br i1 %tobool234.not, label %do.end238, label %while.cond225.while.cond225_crit_edge

while.cond225.while.cond225_crit_edge:            ; preds = %while.cond225
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond225

do.end238:                                        ; preds = %while.cond225
  br i1 %tobool239.not, label %do.end238.if.end341_crit_edge, label %do.end238.while.cond266_crit_edge

do.end238.while.cond266_crit_edge:                ; preds = %do.end238
  br label %while.cond266

do.end238.if.end341_crit_edge:                    ; preds = %do.end238
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end341

while.cond266:                                    ; preds = %while.cond266.while.cond266_crit_edge, %do.end238.while.cond266_crit_edge
  %39 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %base, align 4
  %add.ptr270 = getelementptr i8, ptr %40, i32 164
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr270) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !653
  %.mask392 = and i32 %41, 128
  %tobool275.not = icmp eq i32 %.mask392, 0
  br i1 %tobool275.not, label %do.body278, label %while.cond266.while.cond266_crit_edge

while.cond266.while.cond266_crit_edge:            ; preds = %while.cond266
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond266

do.body278:                                       ; preds = %while.cond266
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !654
  tail call void @arm_heavy_mb() #13
  %42 = ptrtoint ptr %multicast_table to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %multicast_table, align 8
  %44 = tail call i32 @llvm.bswap.i32(i32 %43)
  %45 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %base, align 4
  %add.ptr283 = getelementptr i8, ptr %46, i32 168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr283, i32 %44) #13, !srcloc !325
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !655
  tail call void @arm_heavy_mb() #13
  %47 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %base, align 4
  %add.ptr288 = getelementptr i8, ptr %48, i32 164
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr288, i32 83886208) #13, !srcloc !325
  br label %while.cond289

while.cond289:                                    ; preds = %while.cond289.while.cond289_crit_edge, %do.body278
  %49 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %base, align 4
  %add.ptr293 = getelementptr i8, ptr %50, i32 164
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr293) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !656
  %.mask393 = and i32 %51, 128
  %tobool298.not = icmp eq i32 %.mask393, 0
  br i1 %tobool298.not, label %while.cond289.while.cond304_crit_edge, label %while.cond289.while.cond289_crit_edge

while.cond289.while.cond289_crit_edge:            ; preds = %while.cond289
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond289

while.cond289.while.cond304_crit_edge:            ; preds = %while.cond289
  br label %while.cond304

while.cond304:                                    ; preds = %while.cond304.while.cond304_crit_edge, %while.cond289.while.cond304_crit_edge
  %52 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %base, align 4
  %add.ptr308 = getelementptr i8, ptr %53, i32 164
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr308) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !657
  %.mask394 = and i32 %54, 128
  %tobool313.not = icmp eq i32 %.mask394, 0
  br i1 %tobool313.not, label %do.body316, label %while.cond304.while.cond304_crit_edge

while.cond304.while.cond304_crit_edge:            ; preds = %while.cond304
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond304

do.body316:                                       ; preds = %while.cond304
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !658
  tail call void @arm_heavy_mb() #13
  %55 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %1, align 4
  %57 = tail call i32 @llvm.bswap.i32(i32 %56)
  %58 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %base, align 4
  %add.ptr321 = getelementptr i8, ptr %59, i32 168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr321, i32 %57) #13, !srcloc !325
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !659
  tail call void @arm_heavy_mb() #13
  %60 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %base, align 4
  %add.ptr326 = getelementptr i8, ptr %61, i32 164
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr326, i32 67108992) #13, !srcloc !325
  br label %while.cond327

while.cond327:                                    ; preds = %while.cond327.while.cond327_crit_edge, %do.body316
  %62 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %base, align 4
  %add.ptr331 = getelementptr i8, ptr %63, i32 164
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr331) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !660
  %.mask395 = and i32 %64, 128
  %tobool336.not = icmp eq i32 %.mask395, 0
  br i1 %tobool336.not, label %while.cond327.if.end341_crit_edge, label %while.cond327.while.cond327_crit_edge

while.cond327.while.cond327_crit_edge:            ; preds = %while.cond327
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond327

while.cond327.if.end341_crit_edge:                ; preds = %while.cond327
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end341

if.end341:                                        ; preds = %while.cond327.if.end341_crit_edge, %do.end238.if.end341_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call197) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %multicast_table) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_mac_addr(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_validate_addr(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @smc911x_timeout(ptr noundef %dev, i32 noundef %txqueue) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr i8, ptr %dev, i32 2424
  %call11 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #13
  %base = getelementptr i8, ptr %dev, i32 2472
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 88
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !661
  %3 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %base, align 4
  %add.ptr22 = getelementptr i8, ptr %4, i32 92
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr22) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !662
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call11) #13
  %6 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base, align 4
  %add.ptr52 = getelementptr i8, ptr %7, i32 112
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr52) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !663
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !664
  tail call void @arm_heavy_mb() #13
  %9 = or i32 %8, 12582912
  %10 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base, align 4
  %add.ptr61 = getelementptr i8, ptr %11, i32 112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr61, i32 %9) #13, !srcloc !325
  %phy_type = getelementptr i8, ptr %dev, i32 2340
  %12 = ptrtoint ptr %phy_type to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %phy_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp62.not = icmp eq i32 %13, 0
  br i1 %cmp62.not, label %entry.if.end66_crit_edge, label %if.then64

entry.if.end66_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end66

if.then64:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %phy_configure = getelementptr i8, ptr %dev, i32 2376
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %14 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %14, ptr noundef %phy_configure) #13
  br label %if.end66

if.end66:                                         ; preds = %if.then64, %entry.if.end66_crit_edge
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %15 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %_tx.i.i, align 128
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %17 = load volatile i32, ptr @jiffies, align 128
  %trans_start.i.i = getelementptr inbounds %struct.netdev_queue, ptr %16, i32 0, i32 12
  %18 = ptrtoint ptr %trans_start.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %trans_start.i.i, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %17)
  %cmp.not.i.i = icmp eq i32 %19, %17
  br i1 %cmp.not.i.i, label %if.end66.netif_trans_update.exit_crit_edge, label %do.body5.i.i

if.end66.netif_trans_update.exit_crit_edge:       ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #15
  br label %netif_trans_update.exit

do.body5.i.i:                                     ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #15
  %20 = ptrtoint ptr %trans_start.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile i32 %17, ptr %trans_start.i.i, align 16
  br label %netif_trans_update.exit

netif_trans_update.exit:                          ; preds = %do.body5.i.i, %if.end66.netif_trans_update.exit_crit_edge
  %21 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %_tx.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %22) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @smc911x_poll_controller(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %irq = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 64
  %0 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %irq, align 4
  tail call void @disable_irq(i32 noundef %1) #13
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  %call = tail call i32 @smc911x_interrupt(i32 noundef %3, ptr noundef %dev)
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq, align 4
  tail call void @enable_irq(i32 noundef %5) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @smc911x_enable(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr i8, ptr %dev, i32 2424
  %call11 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #13
  %base = getelementptr i8, ptr %dev, i32 2472
  br label %while.cond18

while.cond18:                                     ; preds = %while.cond18.while.cond18_crit_edge, %entry
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 164
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !665
  %.mask = and i32 %2, 128
  %tobool22.not = icmp eq i32 %.mask, 0
  br i1 %tobool22.not, label %do.body25, label %while.cond18.while.cond18_crit_edge

while.cond18.while.cond18_crit_edge:              ; preds = %while.cond18
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond18

do.body25:                                        ; preds = %while.cond18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !666
  tail call void @arm_heavy_mb() #13
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 86
  %3 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev_addr, align 64
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %4, align 1
  %conv28 = zext i8 %6 to i32
  %arrayidx30 = getelementptr i8, ptr %4, i32 1
  %7 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx30, align 1
  %conv31 = zext i8 %8 to i32
  %shl = shl nuw nsw i32 %conv31, 8
  %or = or i32 %shl, %conv28
  %arrayidx33 = getelementptr i8, ptr %4, i32 2
  %9 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx33, align 1
  %conv34 = zext i8 %10 to i32
  %shl35 = shl nuw nsw i32 %conv34, 16
  %or36 = or i32 %or, %shl35
  %arrayidx38 = getelementptr i8, ptr %4, i32 3
  %11 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx38, align 1
  %conv39 = zext i8 %12 to i32
  %shl40 = shl nuw i32 %conv39, 24
  %or41 = or i32 %or36, %shl40
  %13 = tail call i32 @llvm.bswap.i32(i32 %or41)
  %14 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base, align 4
  %add.ptr43 = getelementptr i8, ptr %15, i32 168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr43, i32 %13) #13, !srcloc !325
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !667
  tail call void @arm_heavy_mb() #13
  %16 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base, align 4
  %add.ptr48 = getelementptr i8, ptr %17, i32 164
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr48, i32 50331776) #13, !srcloc !325
  br label %while.cond49

while.cond49:                                     ; preds = %while.cond49.while.cond49_crit_edge, %do.body25
  %18 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base, align 4
  %add.ptr53 = getelementptr i8, ptr %19, i32 164
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr53) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !668
  %.mask671 = and i32 %20, 128
  %tobool58.not = icmp eq i32 %.mask671, 0
  br i1 %tobool58.not, label %while.cond49.while.cond64_crit_edge, label %while.cond49.while.cond49_crit_edge

while.cond49.while.cond49_crit_edge:              ; preds = %while.cond49
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond49

while.cond49.while.cond64_crit_edge:              ; preds = %while.cond49
  br label %while.cond64

while.cond64:                                     ; preds = %while.cond64.while.cond64_crit_edge, %while.cond49.while.cond64_crit_edge
  %21 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %base, align 4
  %add.ptr68 = getelementptr i8, ptr %22, i32 164
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr68) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !669
  %.mask672 = and i32 %23, 128
  %tobool73.not = icmp eq i32 %.mask672, 0
  br i1 %tobool73.not, label %do.body76, label %while.cond64.while.cond64_crit_edge

while.cond64.while.cond64_crit_edge:              ; preds = %while.cond64
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond64

do.body76:                                        ; preds = %while.cond64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !670
  tail call void @arm_heavy_mb() #13
  %24 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev_addr, align 64
  %arrayidx80 = getelementptr i8, ptr %25, i32 4
  %26 = ptrtoint ptr %arrayidx80 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx80, align 1
  %conv81 = zext i8 %27 to i32
  %arrayidx83 = getelementptr i8, ptr %25, i32 5
  %28 = ptrtoint ptr %arrayidx83 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx83, align 1
  %conv84 = zext i8 %29 to i32
  %shl85 = shl nuw nsw i32 %conv84, 8
  %or86 = or i32 %shl85, %conv81
  %30 = tail call i32 @llvm.bswap.i32(i32 %or86)
  %31 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %base, align 4
  %add.ptr88 = getelementptr i8, ptr %32, i32 168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr88, i32 %30) #13, !srcloc !325
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !671
  tail call void @arm_heavy_mb() #13
  %33 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %base, align 4
  %add.ptr93 = getelementptr i8, ptr %34, i32 164
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr93, i32 33554560) #13, !srcloc !325
  br label %while.cond94

while.cond94:                                     ; preds = %while.cond94.while.cond94_crit_edge, %do.body76
  %35 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %base, align 4
  %add.ptr98 = getelementptr i8, ptr %36, i32 164
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr98) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !672
  %.mask673 = and i32 %37, 128
  %tobool103.not = icmp eq i32 %.mask673, 0
  br i1 %tobool103.not, label %do.end109, label %while.cond94.while.cond94_crit_edge

while.cond94.while.cond94_crit_edge:              ; preds = %while.cond94
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond94

do.end109:                                        ; preds = %while.cond94
  %38 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %base, align 4
  %add.ptr113 = getelementptr i8, ptr %39, i32 116
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr113) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !673
  %41 = and i32 %40, -15790336
  %42 = or i32 %41, 4096
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !674
  tail call void @arm_heavy_mb() #13
  %43 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %base, align 4
  %add.ptr123 = getelementptr i8, ptr %44, i32 116
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr123, i32 %42) #13, !srcloc !325
  %45 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !572
  %and.i = and i32 %45, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool142.not = icmp eq i32 %and.i, 0
  br i1 %tobool142.not, label %if.then143, label %do.body172.critedge

if.then143:                                       ; preds = %do.end109
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @trace_hardirqs_off() #13
  %46 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %base, align 4
  %add.ptr150.c = getelementptr i8, ptr %47, i32 104
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr150.c) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !675
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !676
  tail call void @arm_heavy_mb() #13
  %49 = or i32 %48, 255
  %50 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %base, align 4
  %add.ptr160.c = getelementptr i8, ptr %51, i32 104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr160.c, i32 %49) #13, !srcloc !325
  tail call void @trace_hardirqs_on() #13
  br label %do.body172

do.body172.critedge:                              ; preds = %do.end109
  call void @__sanitizer_cov_trace_pc() #15
  %52 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %base, align 4
  %add.ptr150.c690 = getelementptr i8, ptr %53, i32 104
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr150.c690) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !675
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !676
  tail call void @arm_heavy_mb() #13
  %55 = or i32 %54, 255
  %56 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %base, align 4
  %add.ptr160.c691 = getelementptr i8, ptr %57, i32 104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr160.c691, i32 %55) #13, !srcloc !325
  br label %do.body172

do.body172:                                       ; preds = %do.body172.critedge, %if.then143
  %58 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #13, !srcloc !575
  %and.i.i = and i32 %58, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool180.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool180.not, label %if.then189, label %do.body172.do.end192_crit_edge, !prof !576

do.body172.do.end192_crit_edge:                   ; preds = %do.body172
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end192

if.then189:                                       ; preds = %do.body172
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @warn_bogus_irq_restore() #13
  br label %do.end192

do.end192:                                        ; preds = %if.then189, %do.body172.do.end192_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %45) #13, !srcloc !577
  %59 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !572
  %and.i681 = and i32 %59, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i681)
  %tobool219.not = icmp eq i32 %and.i681, 0
  br i1 %tobool219.not, label %if.then220, label %do.end192.do.end223_crit_edge

do.end192.do.end223_crit_edge:                    ; preds = %do.end192
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end223

if.then220:                                       ; preds = %do.end192
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @trace_hardirqs_off() #13
  br label %do.end223

do.end223:                                        ; preds = %if.then220, %do.end192.do.end223_crit_edge
  %60 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %base, align 4
  %add.ptr227 = getelementptr i8, ptr %61, i32 104
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr227) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !677
  %63 = and i32 %62, -65281
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !678
  tail call void @arm_heavy_mb() #13
  %64 = or i32 %63, 16384
  %65 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %base, align 4
  %add.ptr237 = getelementptr i8, ptr %66, i32 104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr237, i32 %64) #13, !srcloc !325
  br i1 %tobool219.not, label %if.then247, label %do.end223.do.body249_crit_edge

do.end223.do.body249_crit_edge:                   ; preds = %do.end223
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body249

if.then247:                                       ; preds = %do.end223
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @trace_hardirqs_on() #13
  br label %do.body249

do.body249:                                       ; preds = %if.then247, %do.end223.do.body249_crit_edge
  %67 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #13, !srcloc !575
  %and.i.i683 = and i32 %67, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i683)
  %tobool257.not = icmp eq i32 %and.i.i683, 0
  br i1 %tobool257.not, label %if.then266, label %do.body249.do.end269_crit_edge, !prof !576

do.body249.do.end269_crit_edge:                   ; preds = %do.body249
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end269

if.then266:                                       ; preds = %do.body249
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @warn_bogus_irq_restore() #13
  br label %do.end269

do.end269:                                        ; preds = %if.then266, %do.body249.do.end269_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %59) #13, !srcloc !577
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !679
  tail call void @arm_heavy_mb() #13
  %68 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %base, align 4
  %add.ptr280 = getelementptr i8, ptr %69, i32 140
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr280, i32 270991392) #13, !srcloc !325
  br label %while.cond282

while.cond282:                                    ; preds = %while.cond282.while.cond282_crit_edge, %do.end269
  %70 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %base, align 4
  %add.ptr286 = getelementptr i8, ptr %71, i32 164
  %72 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr286) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !680
  %.mask674 = and i32 %72, 128
  %tobool291.not = icmp eq i32 %.mask674, 0
  br i1 %tobool291.not, label %do.body294, label %while.cond282.while.cond282_crit_edge

while.cond282.while.cond282_crit_edge:            ; preds = %while.cond282
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond282

do.body294:                                       ; preds = %while.cond282
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !681
  tail call void @arm_heavy_mb() #13
  %73 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %base, align 4
  %add.ptr298 = getelementptr i8, ptr %74, i32 164
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr298, i32 16777408) #13, !srcloc !325
  br label %while.cond299

while.cond299:                                    ; preds = %while.cond299.while.cond299_crit_edge, %do.body294
  %75 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %base, align 4
  %add.ptr303 = getelementptr i8, ptr %76, i32 164
  %77 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr303) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !682
  %.mask675 = and i32 %77, 128
  %tobool308.not = icmp eq i32 %.mask675, 0
  br i1 %tobool308.not, label %while.end310, label %while.cond299.while.cond299_crit_edge

while.cond299.while.cond299_crit_edge:            ; preds = %while.cond299
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond299

while.end310:                                     ; preds = %while.cond299
  %78 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %base, align 4
  %add.ptr314 = getelementptr i8, ptr %79, i32 168
  %80 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr314) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !683
  br label %while.cond322

while.cond322:                                    ; preds = %while.cond322.while.cond322_crit_edge, %while.end310
  %81 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %base, align 4
  %add.ptr326 = getelementptr i8, ptr %82, i32 164
  %83 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr326) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !684
  %.mask676 = and i32 %83, 128
  %tobool331.not = icmp eq i32 %.mask676, 0
  br i1 %tobool331.not, label %do.body334, label %while.cond322.while.cond322_crit_edge

while.cond322.while.cond322_crit_edge:            ; preds = %while.cond322
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond322

do.body334:                                       ; preds = %while.cond322
  %84 = or i32 %80, 134217744
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !685
  tail call void @arm_heavy_mb() #13
  %85 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %base, align 4
  %add.ptr338 = getelementptr i8, ptr %86, i32 168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr338, i32 %84) #13, !srcloc !325
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !686
  tail call void @arm_heavy_mb() #13
  %87 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %base, align 4
  %add.ptr343 = getelementptr i8, ptr %88, i32 164
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr343, i32 16777344) #13, !srcloc !325
  br label %while.cond344

while.cond344:                                    ; preds = %while.cond344.while.cond344_crit_edge, %do.body334
  %89 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %base, align 4
  %add.ptr348 = getelementptr i8, ptr %90, i32 164
  %91 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr348) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !687
  %.mask677 = and i32 %91, 128
  %tobool353.not = icmp eq i32 %.mask677, 0
  br i1 %tobool353.not, label %do.body358, label %while.cond344.while.cond344_crit_edge

while.cond344.while.cond344_crit_edge:            ; preds = %while.cond344
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond344

do.body358:                                       ; preds = %while.cond344
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !688
  tail call void @arm_heavy_mb() #13
  %92 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %base, align 4
  %add.ptr362 = getelementptr i8, ptr %93, i32 112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr362, i32 33554432) #13, !srcloc !325
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !689
  tail call void @arm_heavy_mb() #13
  %94 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %base, align 4
  %add.ptr367 = getelementptr i8, ptr %95, i32 108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr367, i32 131072) #13, !srcloc !325
  br label %while.cond395

while.cond395:                                    ; preds = %while.cond395.while.cond395_crit_edge, %do.body358
  %96 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %base, align 4
  %add.ptr399 = getelementptr i8, ptr %97, i32 164
  %98 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr399) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !690
  %.mask678 = and i32 %98, 128
  %tobool404.not = icmp eq i32 %.mask678, 0
  br i1 %tobool404.not, label %do.body407, label %while.cond395.while.cond395_crit_edge

while.cond395.while.cond395_crit_edge:            ; preds = %while.cond395
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond395

do.body407:                                       ; preds = %while.cond395
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !691
  tail call void @arm_heavy_mb() #13
  %99 = or i32 %80, 201326608
  %100 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %base, align 4
  %add.ptr412 = getelementptr i8, ptr %101, i32 168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr412, i32 %99) #13, !srcloc !325
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !692
  tail call void @arm_heavy_mb() #13
  %102 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %base, align 4
  %add.ptr417 = getelementptr i8, ptr %103, i32 164
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr417, i32 16777344) #13, !srcloc !325
  br label %while.cond418

while.cond418:                                    ; preds = %while.cond418.while.cond418_crit_edge, %do.body407
  %104 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %base, align 4
  %add.ptr422 = getelementptr i8, ptr %105, i32 164
  %106 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr422) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !693
  %.mask679 = and i32 %106, 128
  %tobool427.not = icmp eq i32 %.mask679, 0
  br i1 %tobool427.not, label %do.body432, label %while.cond418.while.cond418_crit_edge

while.cond418.while.cond418_crit_edge:            ; preds = %while.cond418
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond418

do.body432:                                       ; preds = %while.cond418
  %107 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !572
  %and.i684 = and i32 %107, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i684)
  %tobool452.not = icmp eq i32 %and.i684, 0
  br i1 %tobool452.not, label %if.then453, label %do.body432.do.end456_crit_edge

do.body432.do.end456_crit_edge:                   ; preds = %do.body432
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end456

if.then453:                                       ; preds = %do.body432
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @trace_hardirqs_off() #13
  br label %do.end456

do.end456:                                        ; preds = %if.then453, %do.body432.do.end456_crit_edge
  %108 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %base, align 4
  %add.ptr460 = getelementptr i8, ptr %109, i32 104
  %110 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr460) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !694
  %111 = and i32 %110, -16711681
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !695
  tail call void @arm_heavy_mb() #13
  %112 = or i32 %111, 65536
  %113 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %base, align 4
  %add.ptr470 = getelementptr i8, ptr %114, i32 104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr470, i32 %112) #13, !srcloc !325
  br i1 %tobool452.not, label %if.then480, label %do.end456.do.body482_crit_edge

do.end456.do.body482_crit_edge:                   ; preds = %do.end456
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body482

if.then480:                                       ; preds = %do.end456
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @trace_hardirqs_on() #13
  br label %do.body482

do.body482:                                       ; preds = %if.then480, %do.end456.do.body482_crit_edge
  %115 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #13, !srcloc !575
  %and.i.i686 = and i32 %115, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i686)
  %tobool490.not = icmp eq i32 %and.i.i686, 0
  br i1 %tobool490.not, label %if.then499, label %do.body482.do.end502_crit_edge, !prof !576

do.body482.do.end502_crit_edge:                   ; preds = %do.body482
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end502

if.then499:                                       ; preds = %do.body482
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @warn_bogus_irq_restore() #13
  br label %do.end502

do.end502:                                        ; preds = %if.then499, %do.body482.do.end502_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %107) #13, !srcloc !577
  %116 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !572
  %and.i687 = and i32 %116, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i687)
  %tobool529.not = icmp eq i32 %and.i687, 0
  br i1 %tobool529.not, label %if.then530, label %do.body559.critedge

if.then530:                                       ; preds = %do.end502
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @trace_hardirqs_off() #13
  %117 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %base, align 4
  %add.ptr537.c = getelementptr i8, ptr %118, i32 104
  %119 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr537.c) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !696
  %120 = and i32 %119, 16777215
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !697
  tail call void @arm_heavy_mb() #13
  %121 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %base, align 4
  %add.ptr547.c = getelementptr i8, ptr %122, i32 104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr547.c, i32 %120) #13, !srcloc !325
  tail call void @trace_hardirqs_on() #13
  br label %do.body559

do.body559.critedge:                              ; preds = %do.end502
  call void @__sanitizer_cov_trace_pc() #15
  %123 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %base, align 4
  %add.ptr537.c692 = getelementptr i8, ptr %124, i32 104
  %125 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr537.c692) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !696
  %126 = and i32 %125, 16777215
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !697
  tail call void @arm_heavy_mb() #13
  %127 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %base, align 4
  %add.ptr547.c693 = getelementptr i8, ptr %128, i32 104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr547.c693, i32 %126) #13, !srcloc !325
  br label %do.body559

do.body559:                                       ; preds = %do.body559.critedge, %if.then530
  %129 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #13, !srcloc !575
  %and.i.i689 = and i32 %129, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i689)
  %tobool567.not = icmp eq i32 %and.i.i689, 0
  br i1 %tobool567.not, label %if.then576, label %do.body559.do.end579_crit_edge, !prof !576

do.body559.do.end579_crit_edge:                   ; preds = %do.body559
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end579

if.then576:                                       ; preds = %do.body559
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @warn_bogus_irq_restore() #13
  br label %do.end579

do.end579:                                        ; preds = %if.then576, %do.body559.do.end579_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %116) #13, !srcloc !577
  %revision = getelementptr i8, ptr %dev, i32 2310
  %130 = ptrtoint ptr %revision to i32
  call void @__asan_load2_noabort(i32 %130)
  %131 = load i16, ptr %revision, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %131)
  %cmp588 = icmp eq i16 %131, 0
  %. = select i1 %cmp588, i32 9192104, i32 9192136
  %132 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %base, align 4
  %add.ptr599 = getelementptr i8, ptr %133, i32 92
  %134 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr599) #13, !srcloc !326
  %135 = tail call i32 @llvm.bswap.i32(i32 %134)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !698
  %or603 = or i32 %135, %.
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !699
  tail call void @arm_heavy_mb() #13
  %136 = tail call i32 @llvm.bswap.i32(i32 %or603)
  %137 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %base, align 4
  %add.ptr608 = getelementptr i8, ptr %138, i32 92
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr608, i32 %136) #13, !srcloc !325
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call11) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @smc911x_shutdown(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !700
  tail call void @arm_heavy_mb() #13
  %base = getelementptr i8, ptr %dev, i32 2472
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 92
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #13, !srcloc !325
  %lock = getelementptr i8, ptr %dev, i32 2424
  %call14 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #13
  br label %while.cond20

while.cond20:                                     ; preds = %while.cond20.while.cond20_crit_edge, %entry
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base, align 4
  %add.ptr22 = getelementptr i8, ptr %3, i32 164
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr22) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !701
  %.mask = and i32 %4, 128
  %tobool26.not = icmp eq i32 %.mask, 0
  br i1 %tobool26.not, label %do.body29, label %while.cond20.while.cond20_crit_edge

while.cond20.while.cond20_crit_edge:              ; preds = %while.cond20
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond20

do.body29:                                        ; preds = %while.cond20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !702
  tail call void @arm_heavy_mb() #13
  %5 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base, align 4
  %add.ptr33 = getelementptr i8, ptr %6, i32 164
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr33, i32 16777408) #13, !srcloc !325
  br label %while.cond34

while.cond34:                                     ; preds = %while.cond34.while.cond34_crit_edge, %do.body29
  %7 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base, align 4
  %add.ptr38 = getelementptr i8, ptr %8, i32 164
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr38) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !703
  %.mask111 = and i32 %9, 128
  %tobool43.not = icmp eq i32 %.mask111, 0
  br i1 %tobool43.not, label %while.end45, label %while.cond34.while.cond34_crit_edge

while.cond34.while.cond34_crit_edge:              ; preds = %while.cond34
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond34

while.end45:                                      ; preds = %while.cond34
  %10 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base, align 4
  %add.ptr49 = getelementptr i8, ptr %11, i32 168
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr49) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !704
  br label %while.cond57

while.cond57:                                     ; preds = %while.cond57.while.cond57_crit_edge, %while.end45
  %13 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base, align 4
  %add.ptr61 = getelementptr i8, ptr %14, i32 164
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr61) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !705
  %.mask112 = and i32 %15, 128
  %tobool66.not = icmp eq i32 %.mask112, 0
  br i1 %tobool66.not, label %do.body69, label %while.cond57.while.cond57_crit_edge

while.cond57.while.cond57_crit_edge:              ; preds = %while.cond57
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond57

do.body69:                                        ; preds = %while.cond57
  %16 = and i32 %12, -201326609
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !706
  tail call void @arm_heavy_mb() #13
  %17 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %base, align 4
  %add.ptr73 = getelementptr i8, ptr %18, i32 168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr73, i32 %16) #13, !srcloc !325
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !707
  tail call void @arm_heavy_mb() #13
  %19 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %base, align 4
  %add.ptr78 = getelementptr i8, ptr %20, i32 164
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr78, i32 16777344) #13, !srcloc !325
  br label %while.cond79

while.cond79:                                     ; preds = %while.cond79.while.cond79_crit_edge, %do.body69
  %21 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %base, align 4
  %add.ptr83 = getelementptr i8, ptr %22, i32 164
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr83) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !708
  %.mask113 = and i32 %23, 128
  %tobool88.not = icmp eq i32 %.mask113, 0
  br i1 %tobool88.not, label %do.body93, label %while.cond79.while.cond79_crit_edge

while.cond79.while.cond79_crit_edge:              ; preds = %while.cond79
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond79

do.body93:                                        ; preds = %while.cond79
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !709
  tail call void @arm_heavy_mb() #13
  %24 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %base, align 4
  %add.ptr97 = getelementptr i8, ptr %25, i32 112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr97, i32 16777216) #13, !srcloc !325
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call14) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_writesl(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_le(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @smc911x_ethtool_getdrvinfo(ptr nocapture noundef readonly %dev, ptr noundef %info) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 1
  %call = tail call i32 @strlcpy(ptr noundef %driver, ptr noundef nonnull @.str, i32 noundef 32) #13
  %version = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 2
  %call2 = tail call i32 @strlcpy(ptr noundef %version, ptr noundef nonnull @version, i32 noundef 32) #13
  %parent = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 133, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %init_name.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.dev_name.exit_crit_edge

entry.dev_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %dev_name.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %entry.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %5, %if.end.i ], [ %3, %entry.dev_name.exit_crit_edge ]
  %bus_info = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 4
  %call6 = tail call i32 @strlcpy(ptr noundef %bus_info, ptr noundef %retval.0.i, i32 noundef 32) #13
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @smc911x_ethtool_getregslen(ptr nocapture noundef readnone %dev) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 276
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @smc911x_ethtool_getregs(ptr noundef %dev, ptr nocapture noundef writeonly %regs, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %version = getelementptr i8, ptr %dev, i32 2308
  %0 = ptrtoint ptr %version to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %version, align 4
  %conv = zext i16 %1 to i32
  %version1 = getelementptr inbounds %struct.ethtool_regs, ptr %regs, i32 0, i32 1
  %2 = ptrtoint ptr %version1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %conv, ptr %version1, align 4
  %base = getelementptr i8, ptr %dev, i32 2472
  br label %for.body

for.cond5.preheader:                              ; preds = %for.body
  %lock = getelementptr i8, ptr %dev, i32 2424
  br label %do.body9

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.0304 = phi i32 [ 80, %entry ], [ %add, %for.body.for.body_crit_edge ]
  %j.0303 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %3 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %4, i32 %i.0304
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #13, !srcloc !326
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !710
  %inc = add nuw nsw i32 %j.0303, 1
  %arrayidx = getelementptr i32, ptr %buf, i32 %j.0303
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %arrayidx, align 4
  %add = add nuw nsw i32 %i.0304, 4
  %exitcond.not = icmp eq i32 %inc, 25
  br i1 %exitcond.not, label %for.cond5.preheader, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.cond57.preheader:                             ; preds = %while.end41
  %mii = getelementptr i8, ptr %dev, i32 2344
  br label %do.body62

do.body9:                                         ; preds = %while.end41.do.body9_crit_edge, %for.cond5.preheader
  %i.1306 = phi i32 [ 1, %for.cond5.preheader ], [ %inc55, %while.end41.do.body9_crit_edge ]
  %j.1305 = phi i32 [ 25, %for.cond5.preheader ], [ %inc52, %while.end41.do.body9_crit_edge ]
  %call14 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #13
  br label %while.cond

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %do.body9
  %8 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base, align 4
  %add.ptr21 = getelementptr i8, ptr %9, i32 164
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr21) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !711
  %.mask301 = and i32 %10, 128
  %tobool.not = icmp eq i32 %.mask301, 0
  br i1 %tobool.not, label %do.body25, label %while.cond.while.cond_crit_edge

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond

do.body25:                                        ; preds = %while.cond
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !712
  tail call void @arm_heavy_mb() #13
  %or = or i32 %i.1306, -1073741824
  %11 = tail call i32 @llvm.bswap.i32(i32 %or)
  %12 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base, align 4
  %add.ptr29 = getelementptr i8, ptr %13, i32 164
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr29, i32 %11) #13, !srcloc !325
  br label %while.cond30

while.cond30:                                     ; preds = %while.cond30.while.cond30_crit_edge, %do.body25
  %14 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base, align 4
  %add.ptr34 = getelementptr i8, ptr %15, i32 164
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr34) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !713
  %.mask302 = and i32 %16, 128
  %tobool39.not = icmp eq i32 %.mask302, 0
  br i1 %tobool39.not, label %while.end41, label %while.cond30.while.cond30_crit_edge

while.cond30.while.cond30_crit_edge:              ; preds = %while.cond30
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond30

while.end41:                                      ; preds = %while.cond30
  %17 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %base, align 4
  %add.ptr45 = getelementptr i8, ptr %18, i32 168
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr45) #13, !srcloc !326
  %20 = tail call i32 @llvm.bswap.i32(i32 %19)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !714
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call14) #13
  %inc52 = add nuw nsw i32 %j.1305, 1
  %arrayidx53 = getelementptr i32, ptr %buf, i32 %j.1305
  %21 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %arrayidx53, align 4
  %inc55 = add nuw nsw i32 %i.1306, 1
  %exitcond309.not = icmp eq i32 %inc55, 13
  br i1 %exitcond309.not, label %for.cond57.preheader, label %while.end41.do.body9_crit_edge

while.end41.do.body9_crit_edge:                   ; preds = %while.end41
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body9

do.body62:                                        ; preds = %while.end234.do.body62_crit_edge, %for.cond57.preheader
  %i.2308 = phi i32 [ 0, %for.cond57.preheader ], [ %inc251, %while.end234.do.body62_crit_edge ]
  %j.2307 = phi i32 [ 37, %for.cond57.preheader ], [ %inc248, %while.end234.do.body62_crit_edge ]
  %call70 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #13
  br label %while.cond79

while.cond79:                                     ; preds = %while.cond79.backedge, %do.body62
  %22 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %base, align 4
  %add.ptr83 = getelementptr i8, ptr %23, i32 164
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr83) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !715
  %.mask = and i32 %24, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask)
  %tobool88.not = icmp eq i32 %.mask, 0
  br i1 %tobool88.not, label %do.body91, label %while.cond79.while.cond79.backedge_crit_edge

while.cond79.while.cond79.backedge_crit_edge:     ; preds = %while.cond79
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond79.backedge

while.cond79.backedge:                            ; preds = %while.end107.while.cond79.backedge_crit_edge, %while.cond79.while.cond79.backedge_crit_edge
  br label %while.cond79

do.body91:                                        ; preds = %while.cond79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !716
  tail call void @arm_heavy_mb() #13
  %25 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %base, align 4
  %add.ptr95 = getelementptr i8, ptr %26, i32 164
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr95, i32 100663488) #13, !srcloc !325
  br label %while.cond96

while.cond96:                                     ; preds = %while.cond96.while.cond96_crit_edge, %do.body91
  %27 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %base, align 4
  %add.ptr100 = getelementptr i8, ptr %28, i32 164
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr100) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !717
  %.mask294 = and i32 %29, 128
  %tobool105.not = icmp eq i32 %.mask294, 0
  br i1 %tobool105.not, label %while.end107, label %while.cond96.while.cond96_crit_edge

while.cond96.while.cond96_crit_edge:              ; preds = %while.cond96
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond96

while.end107:                                     ; preds = %while.cond96
  %30 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %base, align 4
  %add.ptr111 = getelementptr i8, ptr %31, i32 168
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr111) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !718
  %33 = and i32 %32, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool119.not = icmp eq i32 %33, 0
  br i1 %tobool119.not, label %while.end107.while.cond122_crit_edge, label %while.end107.while.cond79.backedge_crit_edge

while.end107.while.cond79.backedge_crit_edge:     ; preds = %while.end107
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond79.backedge

while.end107.while.cond122_crit_edge:             ; preds = %while.end107
  br label %while.cond122

while.cond122:                                    ; preds = %while.cond122.while.cond122_crit_edge, %while.end107.while.cond122_crit_edge
  %34 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %base, align 4
  %add.ptr126 = getelementptr i8, ptr %35, i32 164
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr126) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !719
  %.mask295 = and i32 %36, 128
  %tobool131.not = icmp eq i32 %.mask295, 0
  br i1 %tobool131.not, label %do.body134, label %while.cond122.while.cond122_crit_edge

while.cond122.while.cond122_crit_edge:            ; preds = %while.cond122
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond122

do.body134:                                       ; preds = %while.cond122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !720
  tail call void @arm_heavy_mb() #13
  %37 = ptrtoint ptr %mii to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %mii, align 4
  %shl = shl i32 %38, 11
  %shl137 = shl i32 %i.2308, 6
  %or138 = or i32 %shl137, %shl
  %or139 = or i32 %or138, 1
  %39 = tail call i32 @llvm.bswap.i32(i32 %or139)
  %40 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %base, align 4
  %add.ptr141 = getelementptr i8, ptr %41, i32 168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr141, i32 %39) #13, !srcloc !325
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !721
  tail call void @arm_heavy_mb() #13
  %42 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %base, align 4
  %add.ptr146 = getelementptr i8, ptr %43, i32 164
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr146, i32 100663424) #13, !srcloc !325
  br label %while.cond147

while.cond147:                                    ; preds = %while.cond147.while.cond147_crit_edge, %do.body134
  %44 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %base, align 4
  %add.ptr151 = getelementptr i8, ptr %45, i32 164
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr151) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !722
  %.mask296 = and i32 %46, 128
  %tobool156.not = icmp eq i32 %.mask296, 0
  br i1 %tobool156.not, label %while.cond147.while.cond163_crit_edge, label %while.cond147.while.cond147_crit_edge

while.cond147.while.cond147_crit_edge:            ; preds = %while.cond147
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond147

while.cond147.while.cond163_crit_edge:            ; preds = %while.cond147
  br label %while.cond163

while.cond163:                                    ; preds = %while.cond163.backedge, %while.cond147.while.cond163_crit_edge
  %47 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %base, align 4
  %add.ptr167 = getelementptr i8, ptr %48, i32 164
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr167) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !723
  %.mask297 = and i32 %49, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask297)
  %tobool172.not = icmp eq i32 %.mask297, 0
  br i1 %tobool172.not, label %do.body175, label %while.cond163.while.cond163.backedge_crit_edge

while.cond163.while.cond163.backedge_crit_edge:   ; preds = %while.cond163
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond163.backedge

while.cond163.backedge:                           ; preds = %while.end191.while.cond163.backedge_crit_edge, %while.cond163.while.cond163.backedge_crit_edge
  br label %while.cond163

do.body175:                                       ; preds = %while.cond163
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !724
  tail call void @arm_heavy_mb() #13
  %50 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %base, align 4
  %add.ptr179 = getelementptr i8, ptr %51, i32 164
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr179, i32 100663488) #13, !srcloc !325
  br label %while.cond180

while.cond180:                                    ; preds = %while.cond180.while.cond180_crit_edge, %do.body175
  %52 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %base, align 4
  %add.ptr184 = getelementptr i8, ptr %53, i32 164
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr184) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !725
  %.mask298 = and i32 %54, 128
  %tobool189.not = icmp eq i32 %.mask298, 0
  br i1 %tobool189.not, label %while.end191, label %while.cond180.while.cond180_crit_edge

while.cond180.while.cond180_crit_edge:            ; preds = %while.cond180
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond180

while.end191:                                     ; preds = %while.cond180
  %55 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %base, align 4
  %add.ptr195 = getelementptr i8, ptr %56, i32 168
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr195) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !726
  %58 = and i32 %57, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool203.not = icmp eq i32 %58, 0
  br i1 %tobool203.not, label %while.end191.while.cond206_crit_edge, label %while.end191.while.cond163.backedge_crit_edge

while.end191.while.cond163.backedge_crit_edge:    ; preds = %while.end191
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond163.backedge

while.end191.while.cond206_crit_edge:             ; preds = %while.end191
  br label %while.cond206

while.cond206:                                    ; preds = %while.cond206.while.cond206_crit_edge, %while.end191.while.cond206_crit_edge
  %59 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %base, align 4
  %add.ptr210 = getelementptr i8, ptr %60, i32 164
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr210) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !727
  %.mask299 = and i32 %61, 128
  %tobool215.not = icmp eq i32 %.mask299, 0
  br i1 %tobool215.not, label %do.body218, label %while.cond206.while.cond206_crit_edge

while.cond206.while.cond206_crit_edge:            ; preds = %while.cond206
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond206

do.body218:                                       ; preds = %while.cond206
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !728
  tail call void @arm_heavy_mb() #13
  %62 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %base, align 4
  %add.ptr222 = getelementptr i8, ptr %63, i32 164
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr222, i32 117440704) #13, !srcloc !325
  br label %while.cond223

while.cond223:                                    ; preds = %while.cond223.while.cond223_crit_edge, %do.body218
  %64 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %base, align 4
  %add.ptr227 = getelementptr i8, ptr %65, i32 164
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr227) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !729
  %.mask300 = and i32 %66, 128
  %tobool232.not = icmp eq i32 %.mask300, 0
  br i1 %tobool232.not, label %while.end234, label %while.cond223.while.cond223_crit_edge

while.cond223.while.cond223_crit_edge:            ; preds = %while.cond223
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond223

while.end234:                                     ; preds = %while.cond223
  %67 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %base, align 4
  %add.ptr238 = getelementptr i8, ptr %68, i32 168
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr238) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !730
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call70) #13
  %70 = and i32 %69, -65536
  %71 = tail call i32 @llvm.bswap.i32(i32 %70)
  %inc248 = add nuw nsw i32 %j.2307, 1
  %arrayidx249 = getelementptr i32, ptr %buf, i32 %j.2307
  %72 = ptrtoint ptr %arrayidx249 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %71, ptr %arrayidx249, align 4
  %inc251 = add nuw nsw i32 %i.2308, 1
  %exitcond310.not = icmp eq i32 %inc251, 32
  br i1 %exitcond310.not, label %for.end252, label %while.end234.do.body62_crit_edge

while.end234.do.body62_crit_edge:                 ; preds = %while.end234
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body62

for.end252:                                       ; preds = %while.end234
  call void @__sanitizer_cov_trace_pc() #15
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @smc911x_ethtool_getmsglevel(ptr nocapture noundef readonly %dev) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_enable = getelementptr i8, ptr %dev, i32 2336
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msg_enable, align 4
  ret i32 %1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @smc911x_ethtool_setmsglevel(ptr nocapture noundef writeonly %dev, i32 noundef %level) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_enable = getelementptr i8, ptr %dev, i32 2336
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %level, ptr %msg_enable, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smc911x_ethtool_nwayreset(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %phy_type = getelementptr i8, ptr %dev, i32 2340
  %0 = ptrtoint ptr %phy_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %phy_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %do.body1

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %lock = getelementptr i8, ptr %dev, i32 2424
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #13
  %mii = getelementptr i8, ptr %dev, i32 2344
  %call7 = tail call i32 @mii_nway_restart(ptr noundef %mii) #13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #13
  br label %if.end

if.end:                                           ; preds = %do.body1, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ %call7, %do.body1 ], [ -22, %entry.if.end_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethtool_op_get_link(ptr noundef) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @smc911x_ethtool_geteeprom_len(ptr nocapture noundef readnone %dev) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smc911x_ethtool_geteeprom(ptr noundef %dev, ptr nocapture noundef readonly %eeprom, ptr nocapture noundef writeonly %data) #2 align 64 {
entry:
  %eebuf = alloca [7 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %eebuf) #13
  %base.i = getelementptr i8, ptr %dev, i32 2472
  %0 = call ptr @memset(ptr %eebuf, i32 255, i32 7)
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.018 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %call1.i = tail call fastcc i32 @smc911x_ethtool_wait_eeprom_ready(ptr noundef %dev) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.not.i = icmp eq i32 %call1.i, 0
  br i1 %cmp.not.i, label %if.end, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %for.body
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !731
  tail call void @arm_heavy_mb() #13
  %or3.i = or i32 %i.018, -2147483648
  %1 = tail call i32 @llvm.bswap.i32(i32 %or3.i) #13
  %2 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %1) #13, !srcloc !325
  %call1.i14 = tail call fastcc i32 @smc911x_ethtool_wait_eeprom_ready(ptr noundef %dev) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i14)
  %cmp.not.i15 = icmp eq i32 %call1.i14, 0
  br i1 %cmp.not.i15, label %for.inc, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.inc:                                          ; preds = %if.end
  %arrayidx = getelementptr [7 x i8], ptr %eebuf, i32 0, i32 %i.018
  %4 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i, align 4
  %add.ptr.i17 = getelementptr i8, ptr %5, i32 180
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i17) #13, !srcloc !326
  %7 = lshr i32 %6, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !732
  %conv.i = trunc i32 %7 to i8
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv.i, ptr %arrayidx, align 1
  %inc = add nuw nsw i32 %i.018, 1
  %exitcond.not = icmp eq i32 %inc, 7
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  %offset = getelementptr inbounds %struct.ethtool_eeprom, ptr %eeprom, i32 0, i32 2
  %9 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %offset, align 4
  %add.ptr = getelementptr i8, ptr %eebuf, i32 %10
  %len = getelementptr inbounds %struct.ethtool_eeprom, ptr %eeprom, i32 0, i32 3
  %11 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %len, align 4
  %13 = call ptr @memcpy(ptr %data, ptr %add.ptr, i32 %12)
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end ], [ %call1.i14, %if.end.cleanup_crit_edge ], [ %call1.i, %for.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %eebuf) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smc911x_ethtool_seteeprom(ptr noundef %dev, ptr nocapture noundef readonly %eeprom, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call1.i = tail call fastcc i32 @smc911x_ethtool_wait_eeprom_ready(ptr noundef %dev) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.not.i = icmp eq i32 %call1.i, 0
  br i1 %cmp.not.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !731
  tail call void @arm_heavy_mb() #13
  %base.i = getelementptr i8, ptr %dev, i32 2472
  %0 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 160) #13, !srcloc !325
  %offset = getelementptr inbounds %struct.ethtool_eeprom, ptr %eeprom, i32 0, i32 2
  %2 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %offset, align 4
  %len = getelementptr inbounds %struct.ethtool_eeprom, ptr %eeprom, i32 0, i32 3
  %4 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len, align 4
  %add47 = add i32 %5, %3
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %add47)
  %cmp248 = icmp ult i32 %3, %add47
  br i1 %cmp248, label %if.end.for.body_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.049 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ %3, %if.end.for.body_crit_edge ]
  %call1.i27 = tail call fastcc i32 @smc911x_ethtool_wait_eeprom_ready(ptr noundef %dev) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i27)
  %cmp.not.i28 = icmp eq i32 %call1.i27, 0
  br i1 %cmp.not.i28, label %if.end6, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end6:                                          ; preds = %for.body
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !731
  tail call void @arm_heavy_mb() #13
  %and2.i = and i32 %i.049, 255
  %or3.i = or i32 %and2.i, -805306368
  %6 = tail call i32 @llvm.bswap.i32(i32 %or3.i) #13
  %7 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base.i, align 4
  %add.ptr.i30 = getelementptr i8, ptr %8, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i30, i32 %6) #13, !srcloc !325
  %9 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %data, align 1
  %call1.i33 = tail call fastcc i32 @smc911x_ethtool_wait_eeprom_ready(ptr noundef %dev) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i33)
  %cmp.not.i34 = icmp eq i32 %call1.i33, 0
  br i1 %cmp.not.i34, label %if.end10, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !733
  tail call void @arm_heavy_mb() #13
  %conv.i = zext i8 %10 to i32
  %11 = shl nuw i32 %conv.i, 24
  %12 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base.i, align 4
  %add.ptr.i36 = getelementptr i8, ptr %13, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i36, i32 %11) #13, !srcloc !325
  %call1.i38 = tail call fastcc i32 @smc911x_ethtool_wait_eeprom_ready(ptr noundef %dev) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i38)
  %cmp.not.i39 = icmp eq i32 %call1.i38, 0
  br i1 %cmp.not.i39, label %for.inc, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.inc:                                          ; preds = %if.end10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !731
  tail call void @arm_heavy_mb() #13
  %or3.i42 = or i32 %and2.i, -1342177280
  %14 = tail call i32 @llvm.bswap.i32(i32 %or3.i42) #13
  %15 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base.i, align 4
  %add.ptr.i44 = getelementptr i8, ptr %16, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i44, i32 %14) #13, !srcloc !325
  %inc = add nuw i32 %i.049, 1
  %17 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %offset, align 4
  %19 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %len, align 4
  %add = add i32 %20, %18
  %cmp2 = icmp ult i32 %inc, %add
  br i1 %cmp2, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %for.body.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1.i, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ], [ %call1.i27, %for.body.cleanup_crit_edge ], [ %call1.i33, %if.end6.cleanup_crit_edge ], [ %call1.i38, %if.end10.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smc911x_ethtool_get_link_ksettings(ptr noundef %dev, ptr noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %phy_type = getelementptr i8, ptr %dev, i32 2340
  %0 = ptrtoint ptr %phy_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %phy_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.else, label %do.body9

do.body9:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %lock = getelementptr i8, ptr %dev, i32 2424
  %call13 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #13
  %mii = getelementptr i8, ptr %dev, i32 2344
  tail call void @mii_ethtool_get_link_ksettings(ptr noundef %mii, ptr noundef %cmd) #13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call13) #13
  br label %if.end204

if.else:                                          ; preds = %entry
  %ctl_rspeed = getelementptr i8, ptr %dev, i32 2332
  %2 = ptrtoint ptr %ctl_rspeed to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ctl_rspeed, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.108)
  switch i32 %3, label %if.else.if.end30_crit_edge [
    i32 10, label %if.else.if.end30.sink.split_crit_edge
    i32 100, label %if.else.if.end30.sink.split_crit_edge241
  ]

if.else.if.end30.sink.split_crit_edge241:         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end30.sink.split

if.else.if.end30.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end30.sink.split

if.else.if.end30_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end30

if.end30.sink.split:                              ; preds = %if.else.if.end30.sink.split_crit_edge, %if.else.if.end30.sink.split_crit_edge241
  %speed28 = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 1
  %5 = ptrtoint ptr %speed28 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %3, ptr %speed28, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.end30.sink.split, %if.else.if.end30_crit_edge
  %autoneg = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 5
  %6 = ptrtoint ptr %autoneg to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %autoneg, align 1
  %port = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 3
  %7 = ptrtoint ptr %port to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %port, align 1
  %base38 = getelementptr i8, ptr %dev, i32 2472
  br label %while.cond36

while.cond36:                                     ; preds = %while.cond36.backedge, %if.end30
  %8 = ptrtoint ptr %base38 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base38, align 4
  %add.ptr = getelementptr i8, ptr %9, i32 164
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !734
  %.mask = and i32 %10, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask)
  %tobool42.not = icmp eq i32 %.mask, 0
  br i1 %tobool42.not, label %do.body45, label %while.cond36.while.cond36.backedge_crit_edge

while.cond36.while.cond36.backedge_crit_edge:     ; preds = %while.cond36
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond36.backedge

while.cond36.backedge:                            ; preds = %while.end61.while.cond36.backedge_crit_edge, %while.cond36.while.cond36.backedge_crit_edge
  br label %while.cond36

do.body45:                                        ; preds = %while.cond36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !735
  tail call void @arm_heavy_mb() #13
  %11 = ptrtoint ptr %base38 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base38, align 4
  %add.ptr49 = getelementptr i8, ptr %12, i32 164
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr49, i32 100663488) #13, !srcloc !325
  br label %while.cond50

while.cond50:                                     ; preds = %while.cond50.while.cond50_crit_edge, %do.body45
  %13 = ptrtoint ptr %base38 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base38, align 4
  %add.ptr54 = getelementptr i8, ptr %14, i32 164
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr54) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !736
  %.mask234 = and i32 %15, 128
  %tobool59.not = icmp eq i32 %.mask234, 0
  br i1 %tobool59.not, label %while.end61, label %while.cond50.while.cond50_crit_edge

while.cond50.while.cond50_crit_edge:              ; preds = %while.cond50
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond50

while.end61:                                      ; preds = %while.cond50
  %16 = ptrtoint ptr %base38 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base38, align 4
  %add.ptr65 = getelementptr i8, ptr %17, i32 168
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr65) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !737
  %19 = and i32 %18, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool73.not = icmp eq i32 %19, 0
  br i1 %tobool73.not, label %while.end61.while.cond76_crit_edge, label %while.end61.while.cond36.backedge_crit_edge

while.end61.while.cond36.backedge_crit_edge:      ; preds = %while.end61
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond36.backedge

while.end61.while.cond76_crit_edge:               ; preds = %while.end61
  br label %while.cond76

while.cond76:                                     ; preds = %while.cond76.while.cond76_crit_edge, %while.end61.while.cond76_crit_edge
  %20 = ptrtoint ptr %base38 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base38, align 4
  %add.ptr80 = getelementptr i8, ptr %21, i32 164
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr80) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !738
  %.mask235 = and i32 %22, 128
  %tobool85.not = icmp eq i32 %.mask235, 0
  br i1 %tobool85.not, label %do.body88, label %while.cond76.while.cond76_crit_edge

while.cond76.while.cond76_crit_edge:              ; preds = %while.cond76
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond76

do.body88:                                        ; preds = %while.cond76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !739
  tail call void @arm_heavy_mb() #13
  %mii91 = getelementptr i8, ptr %dev, i32 2344
  %23 = ptrtoint ptr %mii91 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %mii91, align 4
  %shl = shl i32 %24, 11
  %or92 = or i32 %shl, 1985
  %25 = tail call i32 @llvm.bswap.i32(i32 %or92)
  %26 = ptrtoint ptr %base38 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %base38, align 4
  %add.ptr94 = getelementptr i8, ptr %27, i32 168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr94, i32 %25) #13, !srcloc !325
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !740
  tail call void @arm_heavy_mb() #13
  %28 = ptrtoint ptr %base38 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %base38, align 4
  %add.ptr99 = getelementptr i8, ptr %29, i32 164
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr99, i32 100663424) #13, !srcloc !325
  br label %while.cond100

while.cond100:                                    ; preds = %while.cond100.while.cond100_crit_edge, %do.body88
  %30 = ptrtoint ptr %base38 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %base38, align 4
  %add.ptr104 = getelementptr i8, ptr %31, i32 164
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr104) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !741
  %.mask236 = and i32 %32, 128
  %tobool109.not = icmp eq i32 %.mask236, 0
  br i1 %tobool109.not, label %while.cond100.while.cond116_crit_edge, label %while.cond100.while.cond100_crit_edge

while.cond100.while.cond100_crit_edge:            ; preds = %while.cond100
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond100

while.cond100.while.cond116_crit_edge:            ; preds = %while.cond100
  br label %while.cond116

while.cond116:                                    ; preds = %while.cond116.backedge, %while.cond100.while.cond116_crit_edge
  %33 = ptrtoint ptr %base38 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %base38, align 4
  %add.ptr120 = getelementptr i8, ptr %34, i32 164
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr120) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !742
  %.mask237 = and i32 %35, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask237)
  %tobool125.not = icmp eq i32 %.mask237, 0
  br i1 %tobool125.not, label %do.body128, label %while.cond116.while.cond116.backedge_crit_edge

while.cond116.while.cond116.backedge_crit_edge:   ; preds = %while.cond116
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond116.backedge

while.cond116.backedge:                           ; preds = %while.end144.while.cond116.backedge_crit_edge, %while.cond116.while.cond116.backedge_crit_edge
  br label %while.cond116

do.body128:                                       ; preds = %while.cond116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !743
  tail call void @arm_heavy_mb() #13
  %36 = ptrtoint ptr %base38 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %base38, align 4
  %add.ptr132 = getelementptr i8, ptr %37, i32 164
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr132, i32 100663488) #13, !srcloc !325
  br label %while.cond133

while.cond133:                                    ; preds = %while.cond133.while.cond133_crit_edge, %do.body128
  %38 = ptrtoint ptr %base38 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %base38, align 4
  %add.ptr137 = getelementptr i8, ptr %39, i32 164
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr137) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !744
  %.mask238 = and i32 %40, 128
  %tobool142.not = icmp eq i32 %.mask238, 0
  br i1 %tobool142.not, label %while.end144, label %while.cond133.while.cond133_crit_edge

while.cond133.while.cond133_crit_edge:            ; preds = %while.cond133
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond133

while.end144:                                     ; preds = %while.cond133
  %41 = ptrtoint ptr %base38 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %base38, align 4
  %add.ptr148 = getelementptr i8, ptr %42, i32 168
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr148) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !745
  %44 = and i32 %43, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool156.not = icmp eq i32 %44, 0
  br i1 %tobool156.not, label %while.end144.while.cond159_crit_edge, label %while.end144.while.cond116.backedge_crit_edge

while.end144.while.cond116.backedge_crit_edge:    ; preds = %while.end144
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond116.backedge

while.end144.while.cond159_crit_edge:             ; preds = %while.end144
  br label %while.cond159

while.cond159:                                    ; preds = %while.cond159.while.cond159_crit_edge, %while.end144.while.cond159_crit_edge
  %45 = ptrtoint ptr %base38 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %base38, align 4
  %add.ptr163 = getelementptr i8, ptr %46, i32 164
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr163) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !746
  %.mask239 = and i32 %47, 128
  %tobool168.not = icmp eq i32 %.mask239, 0
  br i1 %tobool168.not, label %do.body171, label %while.cond159.while.cond159_crit_edge

while.cond159.while.cond159_crit_edge:            ; preds = %while.cond159
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond159

do.body171:                                       ; preds = %while.cond159
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !747
  tail call void @arm_heavy_mb() #13
  %48 = ptrtoint ptr %base38 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %base38, align 4
  %add.ptr175 = getelementptr i8, ptr %49, i32 164
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr175, i32 117440704) #13, !srcloc !325
  br label %while.cond176

while.cond176:                                    ; preds = %while.cond176.while.cond176_crit_edge, %do.body171
  %50 = ptrtoint ptr %base38 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %base38, align 4
  %add.ptr180 = getelementptr i8, ptr %51, i32 164
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr180) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !748
  %.mask240 = and i32 %52, 128
  %tobool185.not = icmp eq i32 %.mask240, 0
  br i1 %tobool185.not, label %while.end187, label %while.cond176.while.cond176_crit_edge

while.cond176.while.cond176_crit_edge:            ; preds = %while.cond176
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond176

while.end187:                                     ; preds = %while.cond176
  call void @__sanitizer_cov_trace_pc() #15
  %53 = ptrtoint ptr %base38 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %base38, align 4
  %add.ptr191 = getelementptr i8, ptr %54, i32 168
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr191) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !749
  %56 = and i32 %55, 469762048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool200.not = icmp ne i32 %56, 0
  %conv201 = zext i1 %tobool200.not to i8
  %duplex = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 2
  %57 = ptrtoint ptr %duplex to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %conv201, ptr %duplex, align 4
  %link_modes = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %cmd, i32 0, i32 1
  tail call void @ethtool_convert_legacy_u32_to_link_mode(ptr noundef %link_modes, i32 noundef 387) #13
  br label %if.end204

if.end204:                                        ; preds = %while.end187, %do.body9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smc911x_ethtool_set_link_ksettings(ptr noundef %dev, ptr noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %phy_type = getelementptr i8, ptr %dev, i32 2340
  %0 = ptrtoint ptr %phy_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %phy_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.else, label %do.body1

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %lock = getelementptr i8, ptr %dev, i32 2424
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #13
  %mii = getelementptr i8, ptr %dev, i32 2344
  %call7 = tail call i32 @mii_ethtool_set_link_ksettings(ptr noundef %mii, ptr noundef %cmd) #13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #13
  br label %cleanup

if.else:                                          ; preds = %entry
  %autoneg = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 5
  %2 = ptrtoint ptr %autoneg to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %autoneg, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp10.not = icmp eq i8 %3, 0
  br i1 %cmp10.not, label %lor.lhs.false, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.else
  %speed = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 1
  %4 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %speed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %5)
  %cmp13.not = icmp eq i32 %5, 10
  br i1 %cmp13.not, label %lor.lhs.false15, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false15:                                  ; preds = %lor.lhs.false
  %duplex = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 2
  %6 = ptrtoint ptr %duplex to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %duplex, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %7)
  %switch = icmp ult i8 %7, 2
  br i1 %switch, label %lor.lhs.false25, label %lor.lhs.false15.cleanup_crit_edge

lor.lhs.false15.cleanup_crit_edge:                ; preds = %lor.lhs.false15
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false25:                                  ; preds = %lor.lhs.false15
  %port = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 3
  %8 = ptrtoint ptr %port to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %port, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %9)
  %switch56 = icmp ult i8 %9, 2
  br i1 %switch56, label %if.end, label %lor.lhs.false25.cleanup_crit_edge

lor.lhs.false25.cleanup_crit_edge:                ; preds = %lor.lhs.false25
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false25
  call void @__sanitizer_cov_trace_pc() #15
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %7)
  %cmp40 = icmp eq i8 %7, 1
  %conv41 = zext i1 %cmp40 to i32
  %ctl_rfduplx = getelementptr i8, ptr %dev, i32 2328
  %10 = ptrtoint ptr %ctl_rfduplx to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %conv41, ptr %ctl_rfduplx, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false25.cleanup_crit_edge, %lor.lhs.false15.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.else.cleanup_crit_edge, %do.body1
  %retval.0 = phi i32 [ -22, %lor.lhs.false25.cleanup_crit_edge ], [ -22, %lor.lhs.false15.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.else.cleanup_crit_edge ], [ %call7, %do.body1 ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mii_nway_restart(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @smc911x_ethtool_wait_eeprom_ready(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr i8, ptr %dev, i32 2472
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 176
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #13, !srcloc !326
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !750
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %tobool.not58 = icmp sgt i32 %3, -1
  br i1 %tobool.not58, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body:                                         ; preds = %if.end15.for.body_crit_edge, %entry.for.body_crit_edge
  %timeout.060 = phi i32 [ %dec, %if.end15.for.body_crit_edge ], [ 10, %entry.for.body_crit_edge ]
  %e2p_cmd.059 = phi i32 [ %8, %if.end15.for.body_crit_edge ], [ %3, %entry.for.body_crit_edge ]
  %and4 = and i32 %e2p_cmd.059, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.end15, label %do.body6

do.body6:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smc911x_ethtool_wait_eeprom_ready.__UNIQUE_ID_ddebug404, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smc911x_ethtool_wait_eeprom_ready, %if.then12)) #13
          to label %cleanup [label %if.then12], !srcloc !330

if.then12:                                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @smc911x_ethtool_wait_eeprom_ready.__UNIQUE_ID_ddebug404, ptr noundef %dev, ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.60) #13
  br label %cleanup

if.end15:                                         ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 214748000) #13
  %5 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base, align 4
  %add.ptr19 = getelementptr i8, ptr %6, i32 176
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr19) #13, !srcloc !326
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !751
  %dec = add nsw i32 %timeout.060, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %8)
  %tobool.not = icmp sgt i32 %8, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool3.not = icmp eq i32 %dec, 0
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool3.not
  br i1 %or.cond, label %for.end, label %if.end15.for.body_crit_edge

if.end15.for.body_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %if.end15
  br i1 %tobool3.not, label %do.body25, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.body25:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smc911x_ethtool_wait_eeprom_ready.__UNIQUE_ID_ddebug405, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smc911x_ethtool_wait_eeprom_ready, %if.then37)) #13
          to label %cleanup [label %if.then37], !srcloc !330

if.then37:                                        ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @smc911x_ethtool_wait_eeprom_ready.__UNIQUE_ID_ddebug405, ptr noundef %dev, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.60) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then37, %do.body25, %for.end.cleanup_crit_edge, %if.then12, %do.body6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -14, %if.then12 ], [ -110, %if.then37 ], [ 0, %for.end.cleanup_crit_edge ], [ -14, %do.body6 ], [ -110, %do.body25 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mii_ethtool_get_link_ksettings(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ethtool_convert_legacy_u32_to_link_mode(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mii_ethtool_set_link_ksettings(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @smc911x_phy_fixed(ptr noundef readonly %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %mii = getelementptr i8, ptr %dev, i32 2344
  %0 = ptrtoint ptr %mii to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mii, align 4
  %base = getelementptr i8, ptr %dev, i32 2472
  br label %while.cond10

while.cond10:                                     ; preds = %while.cond10.backedge, %entry
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 164
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !752
  %.mask = and i32 %4, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask)
  %tobool15.not = icmp eq i32 %.mask, 0
  br i1 %tobool15.not, label %do.body18, label %while.cond10.while.cond10.backedge_crit_edge

while.cond10.while.cond10.backedge_crit_edge:     ; preds = %while.cond10
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond10.backedge

while.cond10.backedge:                            ; preds = %while.end34.while.cond10.backedge_crit_edge, %while.cond10.while.cond10.backedge_crit_edge
  br label %while.cond10

do.body18:                                        ; preds = %while.cond10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !753
  tail call void @arm_heavy_mb() #13
  %5 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base, align 4
  %add.ptr22 = getelementptr i8, ptr %6, i32 164
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22, i32 100663488) #13, !srcloc !325
  br label %while.cond23

while.cond23:                                     ; preds = %while.cond23.while.cond23_crit_edge, %do.body18
  %7 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base, align 4
  %add.ptr27 = getelementptr i8, ptr %8, i32 164
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr27) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !754
  %.mask1 = and i32 %9, 128
  %tobool32.not = icmp eq i32 %.mask1, 0
  br i1 %tobool32.not, label %while.end34, label %while.cond23.while.cond23_crit_edge

while.cond23.while.cond23_crit_edge:              ; preds = %while.cond23
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond23

while.end34:                                      ; preds = %while.cond23
  %10 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base, align 4
  %add.ptr38 = getelementptr i8, ptr %11, i32 168
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr38) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !755
  %13 = and i32 %12, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool46.not = icmp eq i32 %13, 0
  br i1 %tobool46.not, label %while.end34.while.cond49_crit_edge, label %while.end34.while.cond10.backedge_crit_edge

while.end34.while.cond10.backedge_crit_edge:      ; preds = %while.end34
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond10.backedge

while.end34.while.cond49_crit_edge:               ; preds = %while.end34
  br label %while.cond49

while.cond49:                                     ; preds = %while.cond49.while.cond49_crit_edge, %while.end34.while.cond49_crit_edge
  %14 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base, align 4
  %add.ptr53 = getelementptr i8, ptr %15, i32 164
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr53) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !756
  %.mask2 = and i32 %16, 128
  %tobool58.not = icmp eq i32 %.mask2, 0
  br i1 %tobool58.not, label %do.body61, label %while.cond49.while.cond49_crit_edge

while.cond49.while.cond49_crit_edge:              ; preds = %while.cond49
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond49

do.body61:                                        ; preds = %while.cond49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !757
  tail call void @arm_heavy_mb() #13
  %shl = shl i32 %1, 11
  %or64 = or i32 %shl, 1
  %17 = tail call i32 @llvm.bswap.i32(i32 %or64)
  %18 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base, align 4
  %add.ptr66 = getelementptr i8, ptr %19, i32 168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr66, i32 %17) #13, !srcloc !325
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !758
  tail call void @arm_heavy_mb() #13
  %20 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base, align 4
  %add.ptr71 = getelementptr i8, ptr %21, i32 164
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr71, i32 100663424) #13, !srcloc !325
  br label %while.cond72

while.cond72:                                     ; preds = %while.cond72.while.cond72_crit_edge, %do.body61
  %22 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %base, align 4
  %add.ptr76 = getelementptr i8, ptr %23, i32 164
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr76) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !759
  %.mask3 = and i32 %24, 128
  %tobool81.not = icmp eq i32 %.mask3, 0
  br i1 %tobool81.not, label %while.cond72.while.cond88_crit_edge, label %while.cond72.while.cond72_crit_edge

while.cond72.while.cond72_crit_edge:              ; preds = %while.cond72
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond72

while.cond72.while.cond88_crit_edge:              ; preds = %while.cond72
  br label %while.cond88

while.cond88:                                     ; preds = %while.cond88.backedge, %while.cond72.while.cond88_crit_edge
  %25 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %base, align 4
  %add.ptr92 = getelementptr i8, ptr %26, i32 164
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr92) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !760
  %.mask4 = and i32 %27, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask4)
  %tobool97.not = icmp eq i32 %.mask4, 0
  br i1 %tobool97.not, label %do.body100, label %while.cond88.while.cond88.backedge_crit_edge

while.cond88.while.cond88.backedge_crit_edge:     ; preds = %while.cond88
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond88.backedge

while.cond88.backedge:                            ; preds = %while.end116.while.cond88.backedge_crit_edge, %while.cond88.while.cond88.backedge_crit_edge
  br label %while.cond88

do.body100:                                       ; preds = %while.cond88
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !761
  tail call void @arm_heavy_mb() #13
  %28 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %base, align 4
  %add.ptr104 = getelementptr i8, ptr %29, i32 164
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr104, i32 100663488) #13, !srcloc !325
  br label %while.cond105

while.cond105:                                    ; preds = %while.cond105.while.cond105_crit_edge, %do.body100
  %30 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %base, align 4
  %add.ptr109 = getelementptr i8, ptr %31, i32 164
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr109) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !762
  %.mask5 = and i32 %32, 128
  %tobool114.not = icmp eq i32 %.mask5, 0
  br i1 %tobool114.not, label %while.end116, label %while.cond105.while.cond105_crit_edge

while.cond105.while.cond105_crit_edge:            ; preds = %while.cond105
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond105

while.end116:                                     ; preds = %while.cond105
  %33 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %base, align 4
  %add.ptr120 = getelementptr i8, ptr %34, i32 168
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr120) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !763
  %36 = and i32 %35, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool128.not = icmp eq i32 %36, 0
  br i1 %tobool128.not, label %while.end116.while.cond131_crit_edge, label %while.end116.while.cond88.backedge_crit_edge

while.end116.while.cond88.backedge_crit_edge:     ; preds = %while.end116
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond88.backedge

while.end116.while.cond131_crit_edge:             ; preds = %while.end116
  br label %while.cond131

while.cond131:                                    ; preds = %while.cond131.while.cond131_crit_edge, %while.end116.while.cond131_crit_edge
  %37 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %base, align 4
  %add.ptr135 = getelementptr i8, ptr %38, i32 164
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr135) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !764
  %.mask6 = and i32 %39, 128
  %tobool140.not = icmp eq i32 %.mask6, 0
  br i1 %tobool140.not, label %do.body143, label %while.cond131.while.cond131_crit_edge

while.cond131.while.cond131_crit_edge:            ; preds = %while.cond131
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond131

do.body143:                                       ; preds = %while.cond131
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !765
  tail call void @arm_heavy_mb() #13
  %40 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %base, align 4
  %add.ptr147 = getelementptr i8, ptr %41, i32 164
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr147, i32 117440704) #13, !srcloc !325
  br label %while.cond148

while.cond148:                                    ; preds = %while.cond148.while.cond148_crit_edge, %do.body143
  %42 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %base, align 4
  %add.ptr152 = getelementptr i8, ptr %43, i32 164
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr152) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !766
  %.mask7 = and i32 %44, 128
  %tobool157.not = icmp eq i32 %.mask7, 0
  br i1 %tobool157.not, label %while.end159, label %while.cond148.while.cond148_crit_edge

while.cond148.while.cond148_crit_edge:            ; preds = %while.cond148
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond148

while.end159:                                     ; preds = %while.cond148
  %45 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %base, align 4
  %add.ptr163 = getelementptr i8, ptr %46, i32 168
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr163) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !767
  br label %while.cond176

while.cond176:                                    ; preds = %while.cond176.backedge, %while.end159
  %48 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %base, align 4
  %add.ptr180 = getelementptr i8, ptr %49, i32 164
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr180) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !768
  %.mask8 = and i32 %50, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask8)
  %tobool185.not = icmp eq i32 %.mask8, 0
  br i1 %tobool185.not, label %do.body188, label %while.cond176.while.cond176.backedge_crit_edge

while.cond176.while.cond176.backedge_crit_edge:   ; preds = %while.cond176
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond176.backedge

while.cond176.backedge:                           ; preds = %while.end204.while.cond176.backedge_crit_edge, %while.cond176.while.cond176.backedge_crit_edge
  br label %while.cond176

do.body188:                                       ; preds = %while.cond176
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !769
  tail call void @arm_heavy_mb() #13
  %51 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %base, align 4
  %add.ptr192 = getelementptr i8, ptr %52, i32 164
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr192, i32 100663488) #13, !srcloc !325
  br label %while.cond193

while.cond193:                                    ; preds = %while.cond193.while.cond193_crit_edge, %do.body188
  %53 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %base, align 4
  %add.ptr197 = getelementptr i8, ptr %54, i32 164
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr197) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !770
  %.mask9 = and i32 %55, 128
  %tobool202.not = icmp eq i32 %.mask9, 0
  br i1 %tobool202.not, label %while.end204, label %while.cond193.while.cond193_crit_edge

while.cond193.while.cond193_crit_edge:            ; preds = %while.cond193
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond193

while.end204:                                     ; preds = %while.cond193
  %56 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %base, align 4
  %add.ptr208 = getelementptr i8, ptr %57, i32 168
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr208) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !771
  %59 = and i32 %58, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool216.not = icmp eq i32 %59, 0
  br i1 %tobool216.not, label %while.end204.while.cond219_crit_edge, label %while.end204.while.cond176.backedge_crit_edge

while.end204.while.cond176.backedge_crit_edge:    ; preds = %while.end204
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond176.backedge

while.end204.while.cond219_crit_edge:             ; preds = %while.end204
  br label %while.cond219

while.cond219:                                    ; preds = %while.cond219.while.cond219_crit_edge, %while.end204.while.cond219_crit_edge
  %60 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %base, align 4
  %add.ptr223 = getelementptr i8, ptr %61, i32 164
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr223) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !772
  %.mask10 = and i32 %62, 128
  %tobool228.not = icmp eq i32 %.mask10, 0
  br i1 %tobool228.not, label %do.body231, label %while.cond219.while.cond219_crit_edge

while.cond219.while.cond219_crit_edge:            ; preds = %while.cond219
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond219

do.body231:                                       ; preds = %while.cond219
  %63 = or i32 %47, 524288
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !773
  tail call void @arm_heavy_mb() #13
  %64 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %base, align 4
  %add.ptr235 = getelementptr i8, ptr %65, i32 168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr235, i32 %63) #13, !srcloc !325
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !774
  tail call void @arm_heavy_mb() #13
  %66 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %base, align 4
  %add.ptr240 = getelementptr i8, ptr %67, i32 164
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr240, i32 117440640) #13, !srcloc !325
  br label %while.cond241

while.cond241:                                    ; preds = %while.cond241.while.cond241_crit_edge, %do.body231
  %68 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %base, align 4
  %add.ptr245 = getelementptr i8, ptr %69, i32 164
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr245) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !775
  %.mask11 = and i32 %70, 128
  %tobool250.not = icmp eq i32 %.mask11, 0
  br i1 %tobool250.not, label %while.cond241.while.cond256_crit_edge, label %while.cond241.while.cond241_crit_edge

while.cond241.while.cond241_crit_edge:            ; preds = %while.cond241
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond241

while.cond241.while.cond256_crit_edge:            ; preds = %while.cond241
  br label %while.cond256

while.cond256:                                    ; preds = %while.cond256.while.cond256_crit_edge, %while.cond241.while.cond256_crit_edge
  %71 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %base, align 4
  %add.ptr260 = getelementptr i8, ptr %72, i32 164
  %73 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr260) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !776
  %.mask12 = and i32 %73, 128
  %tobool265.not = icmp eq i32 %.mask12, 0
  br i1 %tobool265.not, label %do.body268, label %while.cond256.while.cond256_crit_edge

while.cond256.while.cond256_crit_edge:            ; preds = %while.cond256
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond256

do.body268:                                       ; preds = %while.cond256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !777
  tail call void @arm_heavy_mb() #13
  %or274 = or i32 %shl, 3
  %74 = tail call i32 @llvm.bswap.i32(i32 %or274)
  %75 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %base, align 4
  %add.ptr276 = getelementptr i8, ptr %76, i32 168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr276, i32 %74) #13, !srcloc !325
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !778
  tail call void @arm_heavy_mb() #13
  %77 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %base, align 4
  %add.ptr281 = getelementptr i8, ptr %78, i32 164
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr281, i32 100663424) #13, !srcloc !325
  br label %while.cond282

while.cond282:                                    ; preds = %while.cond282.while.cond282_crit_edge, %do.body268
  %79 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %base, align 4
  %add.ptr286 = getelementptr i8, ptr %80, i32 164
  %81 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr286) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !779
  %.mask13 = and i32 %81, 128
  %tobool291.not = icmp eq i32 %.mask13, 0
  br i1 %tobool291.not, label %while.cond282.while.cond298_crit_edge, label %while.cond282.while.cond282_crit_edge

while.cond282.while.cond282_crit_edge:            ; preds = %while.cond282
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond282

while.cond282.while.cond298_crit_edge:            ; preds = %while.cond282
  br label %while.cond298

while.cond298:                                    ; preds = %while.cond298.backedge, %while.cond282.while.cond298_crit_edge
  %82 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %base, align 4
  %add.ptr302 = getelementptr i8, ptr %83, i32 164
  %84 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr302) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !780
  %.mask14 = and i32 %84, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask14)
  %tobool307.not = icmp eq i32 %.mask14, 0
  br i1 %tobool307.not, label %do.body310, label %while.cond298.while.cond298.backedge_crit_edge

while.cond298.while.cond298.backedge_crit_edge:   ; preds = %while.cond298
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond298.backedge

while.cond298.backedge:                           ; preds = %while.end326.while.cond298.backedge_crit_edge, %while.cond298.while.cond298.backedge_crit_edge
  br label %while.cond298

do.body310:                                       ; preds = %while.cond298
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !781
  tail call void @arm_heavy_mb() #13
  %85 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %base, align 4
  %add.ptr314 = getelementptr i8, ptr %86, i32 164
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr314, i32 100663488) #13, !srcloc !325
  br label %while.cond315

while.cond315:                                    ; preds = %while.cond315.while.cond315_crit_edge, %do.body310
  %87 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %base, align 4
  %add.ptr319 = getelementptr i8, ptr %88, i32 164
  %89 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr319) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !782
  %.mask15 = and i32 %89, 128
  %tobool324.not = icmp eq i32 %.mask15, 0
  br i1 %tobool324.not, label %while.end326, label %while.cond315.while.cond315_crit_edge

while.cond315.while.cond315_crit_edge:            ; preds = %while.cond315
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond315

while.end326:                                     ; preds = %while.cond315
  %90 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %base, align 4
  %add.ptr330 = getelementptr i8, ptr %91, i32 168
  %92 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr330) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !783
  %93 = and i32 %92, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %93)
  %tobool338.not = icmp eq i32 %93, 0
  br i1 %tobool338.not, label %do.end339, label %while.end326.while.cond298.backedge_crit_edge

while.end326.while.cond298.backedge_crit_edge:    ; preds = %while.end326
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond298.backedge

do.end339:                                        ; preds = %while.end326
  %94 = and i32 %63, -1048577
  %95 = tail call i32 @llvm.bswap.i32(i32 %94)
  %ctl_rfduplx = getelementptr i8, ptr %dev, i32 2328
  %96 = ptrtoint ptr %ctl_rfduplx to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %ctl_rfduplx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %97)
  %tobool343.not = icmp eq i32 %97, 0
  %or345 = or i32 %95, 256
  %spec.select = select i1 %tobool343.not, i32 %95, i32 %or345
  %ctl_rspeed = getelementptr i8, ptr %dev, i32 2332
  %98 = ptrtoint ptr %ctl_rspeed to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %ctl_rspeed, align 4
  %or348 = or i32 %spec.select, 8192
  br label %while.cond354

while.cond354:                                    ; preds = %while.cond354.backedge, %do.end339
  %100 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %base, align 4
  %add.ptr358 = getelementptr i8, ptr %101, i32 164
  %102 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr358) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !784
  %.mask16 = and i32 %102, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask16)
  %tobool363.not = icmp eq i32 %.mask16, 0
  br i1 %tobool363.not, label %do.body366, label %while.cond354.while.cond354.backedge_crit_edge

while.cond354.while.cond354.backedge_crit_edge:   ; preds = %while.cond354
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond354.backedge

while.cond354.backedge:                           ; preds = %while.end382.while.cond354.backedge_crit_edge, %while.cond354.while.cond354.backedge_crit_edge
  br label %while.cond354

do.body366:                                       ; preds = %while.cond354
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !785
  tail call void @arm_heavy_mb() #13
  %103 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %base, align 4
  %add.ptr370 = getelementptr i8, ptr %104, i32 164
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr370, i32 100663488) #13, !srcloc !325
  br label %while.cond371

while.cond371:                                    ; preds = %while.cond371.while.cond371_crit_edge, %do.body366
  %105 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %base, align 4
  %add.ptr375 = getelementptr i8, ptr %106, i32 164
  %107 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr375) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !786
  %.mask17 = and i32 %107, 128
  %tobool380.not = icmp eq i32 %.mask17, 0
  br i1 %tobool380.not, label %while.end382, label %while.cond371.while.cond371_crit_edge

while.cond371.while.cond371_crit_edge:            ; preds = %while.cond371
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond371

while.end382:                                     ; preds = %while.cond371
  %108 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %base, align 4
  %add.ptr386 = getelementptr i8, ptr %109, i32 168
  %110 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr386) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !787
  %111 = and i32 %110, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %111)
  %tobool394.not = icmp eq i32 %111, 0
  br i1 %tobool394.not, label %while.cond397.preheader, label %while.end382.while.cond354.backedge_crit_edge

while.end382.while.cond354.backedge_crit_edge:    ; preds = %while.end382
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond354.backedge

while.cond397.preheader:                          ; preds = %while.end382
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %99)
  %cmp = icmp eq i32 %99, 100
  br label %while.cond397

while.cond397:                                    ; preds = %while.cond397.while.cond397_crit_edge, %while.cond397.preheader
  %112 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %base, align 4
  %add.ptr401 = getelementptr i8, ptr %113, i32 164
  %114 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr401) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !788
  %.mask18 = and i32 %114, 128
  %tobool406.not = icmp eq i32 %.mask18, 0
  br i1 %tobool406.not, label %do.body409, label %while.cond397.while.cond397_crit_edge

while.cond397.while.cond397_crit_edge:            ; preds = %while.cond397
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond397

do.body409:                                       ; preds = %while.cond397
  %bmcr.1 = select i1 %cmp, i32 %or348, i32 %spec.select
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !789
  tail call void @arm_heavy_mb() #13
  %115 = tail call i32 @llvm.bswap.i32(i32 %bmcr.1)
  %116 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %base, align 4
  %add.ptr413 = getelementptr i8, ptr %117, i32 168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr413, i32 %115) #13, !srcloc !325
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !790
  tail call void @arm_heavy_mb() #13
  %118 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %base, align 4
  %add.ptr418 = getelementptr i8, ptr %119, i32 164
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr418, i32 117440640) #13, !srcloc !325
  br label %while.cond419

while.cond419:                                    ; preds = %while.cond419.while.cond419_crit_edge, %do.body409
  %120 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %base, align 4
  %add.ptr423 = getelementptr i8, ptr %121, i32 164
  %122 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr423) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !791
  %.mask19 = and i32 %122, 128
  %tobool428.not = icmp eq i32 %.mask19, 0
  br i1 %tobool428.not, label %while.cond419.while.cond434_crit_edge, label %while.cond419.while.cond419_crit_edge

while.cond419.while.cond419_crit_edge:            ; preds = %while.cond419
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond419

while.cond419.while.cond434_crit_edge:            ; preds = %while.cond419
  br label %while.cond434

while.cond434:                                    ; preds = %while.cond434.while.cond434_crit_edge, %while.cond419.while.cond434_crit_edge
  %123 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %base, align 4
  %add.ptr438 = getelementptr i8, ptr %124, i32 164
  %125 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr438) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !792
  %.mask20 = and i32 %125, 128
  %tobool443.not = icmp eq i32 %.mask20, 0
  br i1 %tobool443.not, label %do.body446, label %while.cond434.while.cond434_crit_edge

while.cond434.while.cond434_crit_edge:            ; preds = %while.cond434
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond434

do.body446:                                       ; preds = %while.cond434
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !793
  tail call void @arm_heavy_mb() #13
  %126 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %base, align 4
  %add.ptr454 = getelementptr i8, ptr %127, i32 168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr454, i32 %74) #13, !srcloc !325
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !794
  tail call void @arm_heavy_mb() #13
  %128 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %base, align 4
  %add.ptr459 = getelementptr i8, ptr %129, i32 164
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr459, i32 100663424) #13, !srcloc !325
  br label %while.cond460

while.cond460:                                    ; preds = %while.cond460.while.cond460_crit_edge, %do.body446
  %130 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %base, align 4
  %add.ptr464 = getelementptr i8, ptr %131, i32 164
  %132 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr464) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !795
  %.mask21 = and i32 %132, 128
  %tobool469.not = icmp eq i32 %.mask21, 0
  br i1 %tobool469.not, label %while.cond460.while.cond476_crit_edge, label %while.cond460.while.cond460_crit_edge

while.cond460.while.cond460_crit_edge:            ; preds = %while.cond460
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond460

while.cond460.while.cond476_crit_edge:            ; preds = %while.cond460
  br label %while.cond476

while.cond476:                                    ; preds = %while.cond476.backedge, %while.cond460.while.cond476_crit_edge
  %133 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %base, align 4
  %add.ptr480 = getelementptr i8, ptr %134, i32 164
  %135 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr480) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !796
  %.mask22 = and i32 %135, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask22)
  %tobool485.not = icmp eq i32 %.mask22, 0
  br i1 %tobool485.not, label %do.body488, label %while.cond476.while.cond476.backedge_crit_edge

while.cond476.while.cond476.backedge_crit_edge:   ; preds = %while.cond476
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond476.backedge

while.cond476.backedge:                           ; preds = %while.end504.while.cond476.backedge_crit_edge, %while.cond476.while.cond476.backedge_crit_edge
  br label %while.cond476

do.body488:                                       ; preds = %while.cond476
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !797
  tail call void @arm_heavy_mb() #13
  %136 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %base, align 4
  %add.ptr492 = getelementptr i8, ptr %137, i32 164
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr492, i32 100663488) #13, !srcloc !325
  br label %while.cond493

while.cond493:                                    ; preds = %while.cond493.while.cond493_crit_edge, %do.body488
  %138 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %base, align 4
  %add.ptr497 = getelementptr i8, ptr %139, i32 164
  %140 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr497) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !798
  %.mask23 = and i32 %140, 128
  %tobool502.not = icmp eq i32 %.mask23, 0
  br i1 %tobool502.not, label %while.end504, label %while.cond493.while.cond493_crit_edge

while.cond493.while.cond493_crit_edge:            ; preds = %while.cond493
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond493

while.end504:                                     ; preds = %while.cond493
  %141 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %base, align 4
  %add.ptr508 = getelementptr i8, ptr %142, i32 168
  %143 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr508) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !799
  %144 = and i32 %143, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %144)
  %tobool516.not = icmp eq i32 %144, 0
  br i1 %tobool516.not, label %while.end504.while.cond525_crit_edge, label %while.end504.while.cond476.backedge_crit_edge

while.end504.while.cond476.backedge_crit_edge:    ; preds = %while.end504
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond476.backedge

while.end504.while.cond525_crit_edge:             ; preds = %while.end504
  br label %while.cond525

while.cond525:                                    ; preds = %while.cond525.backedge, %while.end504.while.cond525_crit_edge
  %145 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %base, align 4
  %add.ptr529 = getelementptr i8, ptr %146, i32 164
  %147 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr529) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !800
  %.mask24 = and i32 %147, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask24)
  %tobool534.not = icmp eq i32 %.mask24, 0
  br i1 %tobool534.not, label %do.body537, label %while.cond525.while.cond525.backedge_crit_edge

while.cond525.while.cond525.backedge_crit_edge:   ; preds = %while.cond525
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond525.backedge

while.cond525.backedge:                           ; preds = %while.end553.while.cond525.backedge_crit_edge, %while.cond525.while.cond525.backedge_crit_edge
  br label %while.cond525

do.body537:                                       ; preds = %while.cond525
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !801
  tail call void @arm_heavy_mb() #13
  %148 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %base, align 4
  %add.ptr541 = getelementptr i8, ptr %149, i32 164
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr541, i32 100663488) #13, !srcloc !325
  br label %while.cond542

while.cond542:                                    ; preds = %while.cond542.while.cond542_crit_edge, %do.body537
  %150 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %base, align 4
  %add.ptr546 = getelementptr i8, ptr %151, i32 164
  %152 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr546) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !802
  %.mask25 = and i32 %152, 128
  %tobool551.not = icmp eq i32 %.mask25, 0
  br i1 %tobool551.not, label %while.end553, label %while.cond542.while.cond542_crit_edge

while.cond542.while.cond542_crit_edge:            ; preds = %while.cond542
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond542

while.end553:                                     ; preds = %while.cond542
  %153 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %base, align 4
  %add.ptr557 = getelementptr i8, ptr %154, i32 168
  %155 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr557) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !803
  %156 = and i32 %155, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %156)
  %tobool565.not = icmp eq i32 %156, 0
  br i1 %tobool565.not, label %while.end553.while.cond568_crit_edge, label %while.end553.while.cond525.backedge_crit_edge

while.end553.while.cond525.backedge_crit_edge:    ; preds = %while.end553
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond525.backedge

while.end553.while.cond568_crit_edge:             ; preds = %while.end553
  br label %while.cond568

while.cond568:                                    ; preds = %while.cond568.while.cond568_crit_edge, %while.end553.while.cond568_crit_edge
  %157 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %base, align 4
  %add.ptr572 = getelementptr i8, ptr %158, i32 164
  %159 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr572) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !804
  %.mask26 = and i32 %159, 128
  %tobool577.not = icmp eq i32 %.mask26, 0
  br i1 %tobool577.not, label %do.body580, label %while.cond568.while.cond568_crit_edge

while.cond568.while.cond568_crit_edge:            ; preds = %while.cond568
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond568

do.body580:                                       ; preds = %while.cond568
  %and520 = and i32 %bmcr.1, -2049
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !805
  tail call void @arm_heavy_mb() #13
  %160 = tail call i32 @llvm.bswap.i32(i32 %and520)
  %161 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %base, align 4
  %add.ptr584 = getelementptr i8, ptr %162, i32 168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr584, i32 %160) #13, !srcloc !325
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !806
  tail call void @arm_heavy_mb() #13
  %163 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %base, align 4
  %add.ptr589 = getelementptr i8, ptr %164, i32 164
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr589, i32 117440640) #13, !srcloc !325
  br label %while.cond590

while.cond590:                                    ; preds = %while.cond590.while.cond590_crit_edge, %do.body580
  %165 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %base, align 4
  %add.ptr594 = getelementptr i8, ptr %166, i32 164
  %167 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr594) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !807
  %.mask27 = and i32 %167, 128
  %tobool599.not = icmp eq i32 %.mask27, 0
  br i1 %tobool599.not, label %while.cond590.while.cond605_crit_edge, label %while.cond590.while.cond590_crit_edge

while.cond590.while.cond590_crit_edge:            ; preds = %while.cond590
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond590

while.cond590.while.cond605_crit_edge:            ; preds = %while.cond590
  br label %while.cond605

while.cond605:                                    ; preds = %while.cond605.while.cond605_crit_edge, %while.cond590.while.cond605_crit_edge
  %168 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %base, align 4
  %add.ptr609 = getelementptr i8, ptr %169, i32 164
  %170 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr609) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !808
  %.mask28 = and i32 %170, 128
  %tobool614.not = icmp eq i32 %.mask28, 0
  br i1 %tobool614.not, label %do.body617, label %while.cond605.while.cond605_crit_edge

while.cond605.while.cond605_crit_edge:            ; preds = %while.cond605
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond605

do.body617:                                       ; preds = %while.cond605
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !809
  tail call void @arm_heavy_mb() #13
  %171 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %base, align 4
  %add.ptr625 = getelementptr i8, ptr %172, i32 168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr625, i32 %74) #13, !srcloc !325
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !810
  tail call void @arm_heavy_mb() #13
  %173 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %base, align 4
  %add.ptr630 = getelementptr i8, ptr %174, i32 164
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr630, i32 100663424) #13, !srcloc !325
  br label %while.cond631

while.cond631:                                    ; preds = %while.cond631.while.cond631_crit_edge, %do.body617
  %175 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %base, align 4
  %add.ptr635 = getelementptr i8, ptr %176, i32 164
  %177 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr635) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !811
  %.mask29 = and i32 %177, 128
  %tobool640.not = icmp eq i32 %.mask29, 0
  br i1 %tobool640.not, label %while.cond631.while.cond647_crit_edge, label %while.cond631.while.cond631_crit_edge

while.cond631.while.cond631_crit_edge:            ; preds = %while.cond631
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond631

while.cond631.while.cond647_crit_edge:            ; preds = %while.cond631
  br label %while.cond647

while.cond647:                                    ; preds = %while.cond647.backedge, %while.cond631.while.cond647_crit_edge
  %178 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %base, align 4
  %add.ptr651 = getelementptr i8, ptr %179, i32 164
  %180 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr651) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !812
  %.mask30 = and i32 %180, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask30)
  %tobool656.not = icmp eq i32 %.mask30, 0
  br i1 %tobool656.not, label %do.body659, label %while.cond647.while.cond647.backedge_crit_edge

while.cond647.while.cond647.backedge_crit_edge:   ; preds = %while.cond647
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond647.backedge

while.cond647.backedge:                           ; preds = %while.end675.while.cond647.backedge_crit_edge, %while.cond647.while.cond647.backedge_crit_edge
  br label %while.cond647

do.body659:                                       ; preds = %while.cond647
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !813
  tail call void @arm_heavy_mb() #13
  %181 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %base, align 4
  %add.ptr663 = getelementptr i8, ptr %182, i32 164
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr663, i32 100663488) #13, !srcloc !325
  br label %while.cond664

while.cond664:                                    ; preds = %while.cond664.while.cond664_crit_edge, %do.body659
  %183 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %base, align 4
  %add.ptr668 = getelementptr i8, ptr %184, i32 164
  %185 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr668) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !814
  %.mask31 = and i32 %185, 128
  %tobool673.not = icmp eq i32 %.mask31, 0
  br i1 %tobool673.not, label %while.end675, label %while.cond664.while.cond664_crit_edge

while.cond664.while.cond664_crit_edge:            ; preds = %while.cond664
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond664

while.end675:                                     ; preds = %while.cond664
  %186 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %base, align 4
  %add.ptr679 = getelementptr i8, ptr %187, i32 168
  %188 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr679) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !815
  %189 = and i32 %188, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %189)
  %tobool687.not = icmp eq i32 %189, 0
  br i1 %tobool687.not, label %do.end688, label %while.end675.while.cond647.backedge_crit_edge

while.end675.while.cond647.backedge_crit_edge:    ; preds = %while.end675
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond647.backedge

do.end688:                                        ; preds = %while.end675
  call void @__sanitizer_cov_trace_pc() #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @smc911x_phy_check_media(ptr noundef %dev, i32 noundef %init) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %mii = getelementptr i8, ptr %dev, i32 2344
  %0 = ptrtoint ptr %mii to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mii, align 4
  %msg_enable = getelementptr i8, ptr %dev, i32 2336
  %2 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %msg_enable, align 4
  %and = and i32 %3, 4
  %call8 = tail call i32 @mii_check_media(ptr noundef %mii, i32 noundef %and, i32 noundef %init) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %entry.if.end474_crit_edge, label %do.body12.preheader

entry.if.end474_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end474

do.body12.preheader:                              ; preds = %entry
  %base = getelementptr i8, ptr %dev, i32 2472
  br label %while.cond14

while.cond14:                                     ; preds = %while.cond14.backedge, %do.body12.preheader
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 164
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !816
  %.mask = and i32 %6, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask)
  %tobool20.not = icmp eq i32 %.mask, 0
  br i1 %tobool20.not, label %do.body23, label %while.cond14.while.cond14.backedge_crit_edge

while.cond14.while.cond14.backedge_crit_edge:     ; preds = %while.cond14
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond14.backedge

while.cond14.backedge:                            ; preds = %while.end39.while.cond14.backedge_crit_edge, %while.cond14.while.cond14.backedge_crit_edge
  br label %while.cond14

do.body23:                                        ; preds = %while.cond14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !817
  tail call void @arm_heavy_mb() #13
  %7 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base, align 4
  %add.ptr27 = getelementptr i8, ptr %8, i32 164
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr27, i32 100663488) #13, !srcloc !325
  br label %while.cond28

while.cond28:                                     ; preds = %while.cond28.while.cond28_crit_edge, %do.body23
  %9 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base, align 4
  %add.ptr32 = getelementptr i8, ptr %10, i32 164
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr32) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !818
  %.mask525 = and i32 %11, 128
  %tobool37.not = icmp eq i32 %.mask525, 0
  br i1 %tobool37.not, label %while.end39, label %while.cond28.while.cond28_crit_edge

while.cond28.while.cond28_crit_edge:              ; preds = %while.cond28
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond28

while.end39:                                      ; preds = %while.cond28
  %12 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base, align 4
  %add.ptr43 = getelementptr i8, ptr %13, i32 168
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr43) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !819
  %15 = and i32 %14, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool51.not = icmp eq i32 %15, 0
  br i1 %tobool51.not, label %while.end39.while.cond54_crit_edge, label %while.end39.while.cond14.backedge_crit_edge

while.end39.while.cond14.backedge_crit_edge:      ; preds = %while.end39
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond14.backedge

while.end39.while.cond54_crit_edge:               ; preds = %while.end39
  br label %while.cond54

while.cond54:                                     ; preds = %while.cond54.while.cond54_crit_edge, %while.end39.while.cond54_crit_edge
  %16 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base, align 4
  %add.ptr58 = getelementptr i8, ptr %17, i32 164
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr58) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !820
  %.mask526 = and i32 %18, 128
  %tobool63.not = icmp eq i32 %.mask526, 0
  br i1 %tobool63.not, label %do.body66, label %while.cond54.while.cond54_crit_edge

while.cond54.while.cond54_crit_edge:              ; preds = %while.cond54
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond54

do.body66:                                        ; preds = %while.cond54
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !821
  tail call void @arm_heavy_mb() #13
  %shl = shl i32 %1, 11
  %or69 = or i32 %shl, 1
  %19 = tail call i32 @llvm.bswap.i32(i32 %or69)
  %20 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base, align 4
  %add.ptr71 = getelementptr i8, ptr %21, i32 168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr71, i32 %19) #13, !srcloc !325
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !822
  tail call void @arm_heavy_mb() #13
  %22 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %base, align 4
  %add.ptr76 = getelementptr i8, ptr %23, i32 164
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr76, i32 100663424) #13, !srcloc !325
  br label %while.cond77

while.cond77:                                     ; preds = %while.cond77.while.cond77_crit_edge, %do.body66
  %24 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %base, align 4
  %add.ptr81 = getelementptr i8, ptr %25, i32 164
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr81) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !823
  %.mask527 = and i32 %26, 128
  %tobool86.not = icmp eq i32 %.mask527, 0
  br i1 %tobool86.not, label %while.cond77.while.cond93_crit_edge, label %while.cond77.while.cond77_crit_edge

while.cond77.while.cond77_crit_edge:              ; preds = %while.cond77
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond77

while.cond77.while.cond93_crit_edge:              ; preds = %while.cond77
  br label %while.cond93

while.cond93:                                     ; preds = %while.cond93.backedge, %while.cond77.while.cond93_crit_edge
  %27 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %base, align 4
  %add.ptr97 = getelementptr i8, ptr %28, i32 164
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr97) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !824
  %.mask528 = and i32 %29, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask528)
  %tobool102.not = icmp eq i32 %.mask528, 0
  br i1 %tobool102.not, label %do.body105, label %while.cond93.while.cond93.backedge_crit_edge

while.cond93.while.cond93.backedge_crit_edge:     ; preds = %while.cond93
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond93.backedge

while.cond93.backedge:                            ; preds = %while.end121.while.cond93.backedge_crit_edge, %while.cond93.while.cond93.backedge_crit_edge
  br label %while.cond93

do.body105:                                       ; preds = %while.cond93
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !825
  tail call void @arm_heavy_mb() #13
  %30 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %base, align 4
  %add.ptr109 = getelementptr i8, ptr %31, i32 164
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr109, i32 100663488) #13, !srcloc !325
  br label %while.cond110

while.cond110:                                    ; preds = %while.cond110.while.cond110_crit_edge, %do.body105
  %32 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %base, align 4
  %add.ptr114 = getelementptr i8, ptr %33, i32 164
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr114) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !826
  %.mask529 = and i32 %34, 128
  %tobool119.not = icmp eq i32 %.mask529, 0
  br i1 %tobool119.not, label %while.end121, label %while.cond110.while.cond110_crit_edge

while.cond110.while.cond110_crit_edge:            ; preds = %while.cond110
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond110

while.end121:                                     ; preds = %while.cond110
  %35 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %base, align 4
  %add.ptr125 = getelementptr i8, ptr %36, i32 168
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr125) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !827
  %38 = and i32 %37, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool133.not = icmp eq i32 %38, 0
  br i1 %tobool133.not, label %while.end121.while.cond136_crit_edge, label %while.end121.while.cond93.backedge_crit_edge

while.end121.while.cond93.backedge_crit_edge:     ; preds = %while.end121
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond93.backedge

while.end121.while.cond136_crit_edge:             ; preds = %while.end121
  br label %while.cond136

while.cond136:                                    ; preds = %while.cond136.while.cond136_crit_edge, %while.end121.while.cond136_crit_edge
  %39 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %base, align 4
  %add.ptr140 = getelementptr i8, ptr %40, i32 164
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr140) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !828
  %.mask530 = and i32 %41, 128
  %tobool145.not = icmp eq i32 %.mask530, 0
  br i1 %tobool145.not, label %do.body148, label %while.cond136.while.cond136_crit_edge

while.cond136.while.cond136_crit_edge:            ; preds = %while.cond136
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond136

do.body148:                                       ; preds = %while.cond136
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !829
  tail call void @arm_heavy_mb() #13
  %42 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %base, align 4
  %add.ptr152 = getelementptr i8, ptr %43, i32 164
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr152, i32 117440704) #13, !srcloc !325
  br label %while.cond153

while.cond153:                                    ; preds = %while.cond153.while.cond153_crit_edge, %do.body148
  %44 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %base, align 4
  %add.ptr157 = getelementptr i8, ptr %45, i32 164
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr157) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !830
  %.mask531 = and i32 %46, 128
  %tobool162.not = icmp eq i32 %.mask531, 0
  br i1 %tobool162.not, label %while.end164, label %while.cond153.while.cond153_crit_edge

while.cond153.while.cond153_crit_edge:            ; preds = %while.cond153
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond153

while.end164:                                     ; preds = %while.cond153
  %47 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %base, align 4
  %add.ptr168 = getelementptr i8, ptr %48, i32 168
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr168) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !831
  br label %while.cond177

while.cond177:                                    ; preds = %while.cond177.while.cond177_crit_edge, %while.end164
  %50 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %base, align 4
  %add.ptr181 = getelementptr i8, ptr %51, i32 164
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr181) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !832
  %.mask532 = and i32 %52, 128
  %tobool186.not = icmp eq i32 %.mask532, 0
  br i1 %tobool186.not, label %do.body189, label %while.cond177.while.cond177_crit_edge

while.cond177.while.cond177_crit_edge:            ; preds = %while.cond177
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond177

do.body189:                                       ; preds = %while.cond177
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !833
  tail call void @arm_heavy_mb() #13
  %53 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %base, align 4
  %add.ptr193 = getelementptr i8, ptr %54, i32 164
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr193, i32 16777408) #13, !srcloc !325
  br label %while.cond194

while.cond194:                                    ; preds = %while.cond194.while.cond194_crit_edge, %do.body189
  %55 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %base, align 4
  %add.ptr198 = getelementptr i8, ptr %56, i32 164
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr198) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !834
  %.mask533 = and i32 %57, 128
  %tobool203.not = icmp eq i32 %.mask533, 0
  br i1 %tobool203.not, label %while.end205, label %while.cond194.while.cond194_crit_edge

while.cond194.while.cond194_crit_edge:            ; preds = %while.cond194
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond194

while.end205:                                     ; preds = %while.cond194
  %58 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %base, align 4
  %add.ptr209 = getelementptr i8, ptr %59, i32 168
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr209) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !835
  %full_duplex = getelementptr i8, ptr %dev, i32 2360
  %61 = ptrtoint ptr %full_duplex to i32
  call void @__asan_load1_noabort(i32 %61)
  %bf.load = load i8, ptr %full_duplex, align 4
  %62 = and i32 %49, -65537
  %63 = and i32 %60, -32769
  %64 = and i8 %bf.load, -128
  %65 = zext i8 %64 to i32
  %66 = shl nuw nsw i32 %65, 16
  %67 = shl nuw nsw i32 %65, 1
  br label %while.cond271

while.cond271:                                    ; preds = %while.cond271.backedge, %while.end205
  %68 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %base, align 4
  %add.ptr275 = getelementptr i8, ptr %69, i32 164
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr275) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !836
  %.mask534 = and i32 %70, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask534)
  %tobool280.not = icmp eq i32 %.mask534, 0
  br i1 %tobool280.not, label %do.body283, label %while.cond271.while.cond271.backedge_crit_edge

while.cond271.while.cond271.backedge_crit_edge:   ; preds = %while.cond271
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond271.backedge

while.cond271.backedge:                           ; preds = %while.end299.while.cond271.backedge_crit_edge, %while.cond271.while.cond271.backedge_crit_edge
  br label %while.cond271

do.body283:                                       ; preds = %while.cond271
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !837
  tail call void @arm_heavy_mb() #13
  %71 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %base, align 4
  %add.ptr287 = getelementptr i8, ptr %72, i32 164
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr287, i32 100663488) #13, !srcloc !325
  br label %while.cond288

while.cond288:                                    ; preds = %while.cond288.while.cond288_crit_edge, %do.body283
  %73 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %base, align 4
  %add.ptr292 = getelementptr i8, ptr %74, i32 164
  %75 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr292) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !838
  %.mask535 = and i32 %75, 128
  %tobool297.not = icmp eq i32 %.mask535, 0
  br i1 %tobool297.not, label %while.end299, label %while.cond288.while.cond288_crit_edge

while.cond288.while.cond288_crit_edge:            ; preds = %while.cond288
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond288

while.end299:                                     ; preds = %while.cond288
  %76 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %base, align 4
  %add.ptr303 = getelementptr i8, ptr %77, i32 168
  %78 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr303) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !839
  %79 = and i32 %78, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %tobool311.not = icmp eq i32 %79, 0
  br i1 %tobool311.not, label %while.cond314.preheader, label %while.end299.while.cond271.backedge_crit_edge

while.end299.while.cond271.backedge_crit_edge:    ; preds = %while.end299
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond271.backedge

while.cond314.preheader:                          ; preds = %while.end299
  %80 = tail call i32 @llvm.bswap.i32(i32 %63)
  %cr.0 = or i32 %66, %80
  br label %while.cond314

while.cond314:                                    ; preds = %while.cond314.while.cond314_crit_edge, %while.cond314.preheader
  %81 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %base, align 4
  %add.ptr318 = getelementptr i8, ptr %82, i32 164
  %83 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr318) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !840
  %.mask536 = and i32 %83, 128
  %tobool323.not = icmp eq i32 %.mask536, 0
  br i1 %tobool323.not, label %do.body326, label %while.cond314.while.cond314_crit_edge

while.cond314.while.cond314_crit_edge:            ; preds = %while.cond314
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond314

do.body326:                                       ; preds = %while.cond314
  %84 = tail call i32 @llvm.bswap.i32(i32 %62)
  %bmcr.0 = or i32 %67, %84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !841
  tail call void @arm_heavy_mb() #13
  %85 = tail call i32 @llvm.bswap.i32(i32 %bmcr.0)
  %86 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %base, align 4
  %add.ptr330 = getelementptr i8, ptr %87, i32 168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr330, i32 %85) #13, !srcloc !325
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !842
  tail call void @arm_heavy_mb() #13
  %88 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %base, align 4
  %add.ptr335 = getelementptr i8, ptr %89, i32 164
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr335, i32 117440640) #13, !srcloc !325
  br label %while.cond336

while.cond336:                                    ; preds = %while.cond336.while.cond336_crit_edge, %do.body326
  %90 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %base, align 4
  %add.ptr340 = getelementptr i8, ptr %91, i32 164
  %92 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr340) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !843
  %.mask537 = and i32 %92, 128
  %tobool345.not = icmp eq i32 %.mask537, 0
  br i1 %tobool345.not, label %while.cond336.while.cond351_crit_edge, label %while.cond336.while.cond336_crit_edge

while.cond336.while.cond336_crit_edge:            ; preds = %while.cond336
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond336

while.cond336.while.cond351_crit_edge:            ; preds = %while.cond336
  br label %while.cond351

while.cond351:                                    ; preds = %while.cond351.while.cond351_crit_edge, %while.cond336.while.cond351_crit_edge
  %93 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %base, align 4
  %add.ptr355 = getelementptr i8, ptr %94, i32 164
  %95 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr355) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !844
  %.mask538 = and i32 %95, 128
  %tobool360.not = icmp eq i32 %.mask538, 0
  br i1 %tobool360.not, label %do.body363, label %while.cond351.while.cond351_crit_edge

while.cond351.while.cond351_crit_edge:            ; preds = %while.cond351
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond351

do.body363:                                       ; preds = %while.cond351
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !845
  tail call void @arm_heavy_mb() #13
  %or369 = or i32 %shl, 3
  %96 = tail call i32 @llvm.bswap.i32(i32 %or369)
  %97 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %base, align 4
  %add.ptr371 = getelementptr i8, ptr %98, i32 168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr371, i32 %96) #13, !srcloc !325
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !846
  tail call void @arm_heavy_mb() #13
  %99 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %base, align 4
  %add.ptr376 = getelementptr i8, ptr %100, i32 164
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr376, i32 100663424) #13, !srcloc !325
  br label %while.cond377

while.cond377:                                    ; preds = %while.cond377.while.cond377_crit_edge, %do.body363
  %101 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %base, align 4
  %add.ptr381 = getelementptr i8, ptr %102, i32 164
  %103 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr381) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !847
  %.mask539 = and i32 %103, 128
  %tobool386.not = icmp eq i32 %.mask539, 0
  br i1 %tobool386.not, label %while.cond377.while.cond393_crit_edge, label %while.cond377.while.cond377_crit_edge

while.cond377.while.cond377_crit_edge:            ; preds = %while.cond377
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond377

while.cond377.while.cond393_crit_edge:            ; preds = %while.cond377
  br label %while.cond393

while.cond393:                                    ; preds = %while.cond393.backedge, %while.cond377.while.cond393_crit_edge
  %104 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %base, align 4
  %add.ptr397 = getelementptr i8, ptr %105, i32 164
  %106 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr397) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !848
  %.mask540 = and i32 %106, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask540)
  %tobool402.not = icmp eq i32 %.mask540, 0
  br i1 %tobool402.not, label %do.body405, label %while.cond393.while.cond393.backedge_crit_edge

while.cond393.while.cond393.backedge_crit_edge:   ; preds = %while.cond393
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond393.backedge

while.cond393.backedge:                           ; preds = %while.end421.while.cond393.backedge_crit_edge, %while.cond393.while.cond393.backedge_crit_edge
  br label %while.cond393

do.body405:                                       ; preds = %while.cond393
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !849
  tail call void @arm_heavy_mb() #13
  %107 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %base, align 4
  %add.ptr409 = getelementptr i8, ptr %108, i32 164
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr409, i32 100663488) #13, !srcloc !325
  br label %while.cond410

while.cond410:                                    ; preds = %while.cond410.while.cond410_crit_edge, %do.body405
  %109 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %base, align 4
  %add.ptr414 = getelementptr i8, ptr %110, i32 164
  %111 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr414) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !850
  %.mask541 = and i32 %111, 128
  %tobool419.not = icmp eq i32 %.mask541, 0
  br i1 %tobool419.not, label %while.end421, label %while.cond410.while.cond410_crit_edge

while.cond410.while.cond410_crit_edge:            ; preds = %while.cond410
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond410

while.end421:                                     ; preds = %while.cond410
  %112 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %base, align 4
  %add.ptr425 = getelementptr i8, ptr %113, i32 168
  %114 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr425) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !851
  %115 = and i32 %114, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %115)
  %tobool433.not = icmp eq i32 %115, 0
  br i1 %tobool433.not, label %while.end421.while.cond438_crit_edge, label %while.end421.while.cond393.backedge_crit_edge

while.end421.while.cond393.backedge_crit_edge:    ; preds = %while.end421
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond393.backedge

while.end421.while.cond438_crit_edge:             ; preds = %while.end421
  br label %while.cond438

while.cond438:                                    ; preds = %while.cond438.while.cond438_crit_edge, %while.end421.while.cond438_crit_edge
  %116 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %base, align 4
  %add.ptr442 = getelementptr i8, ptr %117, i32 164
  %118 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr442) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !852
  %.mask542 = and i32 %118, 128
  %tobool447.not = icmp eq i32 %.mask542, 0
  br i1 %tobool447.not, label %do.body450, label %while.cond438.while.cond438_crit_edge

while.cond438.while.cond438_crit_edge:            ; preds = %while.cond438
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond438

do.body450:                                       ; preds = %while.cond438
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !853
  tail call void @arm_heavy_mb() #13
  %119 = tail call i32 @llvm.bswap.i32(i32 %cr.0)
  %120 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %base, align 4
  %add.ptr454 = getelementptr i8, ptr %121, i32 168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr454, i32 %119) #13, !srcloc !325
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !854
  tail call void @arm_heavy_mb() #13
  %122 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %base, align 4
  %add.ptr459 = getelementptr i8, ptr %123, i32 164
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr459, i32 16777344) #13, !srcloc !325
  br label %while.cond460

while.cond460:                                    ; preds = %while.cond460.while.cond460_crit_edge, %do.body450
  %124 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %base, align 4
  %add.ptr464 = getelementptr i8, ptr %125, i32 164
  %126 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr464) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !855
  %.mask543 = and i32 %126, 128
  %tobool469.not = icmp eq i32 %.mask543, 0
  br i1 %tobool469.not, label %while.cond460.if.end474_crit_edge, label %while.cond460.while.cond460_crit_edge

while.cond460.while.cond460_crit_edge:            ; preds = %while.cond460
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond460

while.cond460.if.end474_crit_edge:                ; preds = %while.cond460
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end474

if.end474:                                        ; preds = %while.cond460.if.end474_crit_edge, %entry.if.end474_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mii_check_media(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @smc911x_rcv(ptr noundef %dev) unnamed_addr #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %base = getelementptr i8, ptr %dev, i32 2472
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 64
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #13, !srcloc !326
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !856
  %and33 = lshr i32 %3, 16
  %shr34 = and i32 %and33, 16383
  %and35 = and i32 %3, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  br i1 %tobool36.not, label %if.else56, label %if.then37

if.then37:                                        ; preds = %entry
  %rx_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 4
  %4 = ptrtoint ptr %rx_errors to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rx_errors, align 8
  %inc = add i32 %5, 1
  store i32 %inc, ptr %rx_errors, align 8
  %and38 = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  br i1 %tobool39.not, label %if.else, label %if.then40

if.then40:                                        ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #15
  %rx_crc_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 12
  br label %if.end55.sink.split

if.else:                                          ; preds = %if.then37
  %and43 = and i32 %3, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43)
  %tobool44.not = icmp eq i32 %and43, 0
  br i1 %tobool44.not, label %if.else.if.end48_crit_edge, label %if.then45

if.else.if.end48_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end48

if.then45:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  %rx_length_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 10
  %6 = ptrtoint ptr %rx_length_errors to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rx_length_errors, align 8
  %inc47 = add i32 %7, 1
  store i32 %inc47, ptr %rx_length_errors, align 8
  br label %if.end48

if.end48:                                         ; preds = %if.then45, %if.else.if.end48_crit_edge
  %and49 = and i32 %3, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49)
  %tobool50.not = icmp eq i32 %and49, 0
  br i1 %tobool50.not, label %if.end48.if.end55_crit_edge, label %if.then51

if.end48.if.end55_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end55

if.then51:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #15
  %multicast = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 8
  br label %if.end55.sink.split

if.end55.sink.split:                              ; preds = %if.then51, %if.then40
  %multicast.sink166 = phi ptr [ %multicast, %if.then51 ], [ %rx_crc_errors, %if.then40 ]
  %8 = ptrtoint ptr %multicast.sink166 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %multicast.sink166, align 8
  %inc53 = add i32 %9, 1
  store i32 %inc53, ptr %multicast.sink166, align 8
  br label %if.end55

if.end55:                                         ; preds = %if.end55.sink.split, %if.end48.if.end55_crit_edge
  %10 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base, align 4
  %add.ptr.i163 = getelementptr i8, ptr %11, i32 124
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i163) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !857
  %13 = and i32 %12, -65536
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %14)
  %cmp.i = icmp ult i32 %14, 5
  br i1 %cmp.i, label %while.cond11.preheader.i, label %do.body22.i

while.cond11.preheader.i:                         ; preds = %if.end55
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool12.not71.i = icmp eq i32 %13, 0
  br i1 %tobool12.not71.i, label %while.cond11.preheader.i.cleanup_crit_edge, label %while.cond11.preheader.i.while.body13.i_crit_edge

while.cond11.preheader.i.while.body13.i_crit_edge: ; preds = %while.cond11.preheader.i
  br label %while.body13.i

while.cond11.preheader.i.cleanup_crit_edge:       ; preds = %while.cond11.preheader.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

while.body13.i:                                   ; preds = %while.body13.i.while.body13.i_crit_edge, %while.cond11.preheader.i.while.body13.i_crit_edge
  %fifo_count.072.i = phi i32 [ %dec.i, %while.body13.i.while.body13.i_crit_edge ], [ %14, %while.cond11.preheader.i.while.body13.i_crit_edge ]
  %dec.i = add i32 %fifo_count.072.i, -1
  %15 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base, align 4
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !858
  %tobool12.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool12.not.i, label %while.body13.i.cleanup_crit_edge, label %while.body13.i.while.body13.i_crit_edge

while.body13.i.while.body13.i_crit_edge:          ; preds = %while.body13.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body13.i

while.body13.i.cleanup_crit_edge:                 ; preds = %while.body13.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.body22.i:                                      ; preds = %if.end55
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !859
  tail call void @arm_heavy_mb() #13
  %18 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base, align 4
  %add.ptr26.i = getelementptr i8, ptr %19, i32 120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr26.i, i32 128) #13, !srcloc !325
  br label %do.body27.i

do.body27.i:                                      ; preds = %do.body27.i.do.body27.i_crit_edge, %do.body22.i
  %timeout.0.i = phi i32 [ 50, %do.body22.i ], [ %dec37.i, %do.body27.i.do.body27.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %20(i32 noundef 2147480) #13
  %21 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %base, align 4
  %add.ptr31.i = getelementptr i8, ptr %22, i32 120
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr31.i) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !860
  %dec37.i = add nsw i32 %timeout.0.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec37.i)
  %tobool38.not.i = icmp eq i32 %dec37.i, 0
  %.mask.i = and i32 %23, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask.i)
  %tobool39.not.i = icmp eq i32 %.mask.i, 0
  %or.cond.i = select i1 %tobool38.not.i, i1 true, i1 %tobool39.not.i
  br i1 %or.cond.i, label %do.end40.i, label %do.body27.i.do.body27.i_crit_edge

do.body27.i.do.body27.i_crit_edge:                ; preds = %do.body27.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body27.i

do.end40.i:                                       ; preds = %do.body27.i
  br i1 %tobool38.not.i, label %do.body44.i, label %do.end40.i.cleanup_crit_edge

do.end40.i.cleanup_crit_edge:                     ; preds = %do.end40.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.body44.i:                                      ; preds = %do.end40.i
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smc911x_drop_pkt.__UNIQUE_ID_ddebug355, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smc911x_rcv, %if.then56.i)) #13
          to label %cleanup [label %if.then56.i], !srcloc !330

if.then56.i:                                      ; preds = %do.body44.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @smc911x_drop_pkt.__UNIQUE_ID_ddebug355, ptr noundef %dev, ptr noundef nonnull @.str.95) #13
  br label %cleanup

if.else56:                                        ; preds = %entry
  %add = add nuw nsw i32 %shr34, 32
  %call.i = tail call ptr @__netdev_alloc_skb(ptr noundef %dev, i32 noundef %add, i32 noundef 2592) #13
  %cmp = icmp eq ptr %call.i, null
  br i1 %cmp, label %do.body66, label %if.end86, !prof !576

do.body66:                                        ; preds = %if.else56
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smc911x_rcv.__UNIQUE_ID_ddebug358, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smc911x_rcv, %if.then78)) #13
          to label %do.end83 [label %if.then78], !srcloc !330

if.then78:                                        ; preds = %do.body66
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @smc911x_rcv.__UNIQUE_ID_ddebug358, ptr noundef %dev, ptr noundef nonnull @.str.92) #13
  br label %do.end83

do.end83:                                         ; preds = %if.then78, %do.body66
  %rx_dropped = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 6
  %24 = ptrtoint ptr %rx_dropped to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %rx_dropped, align 8
  %inc85 = add i32 %25, 1
  store i32 %inc85, ptr %rx_dropped, align 8
  tail call fastcc void @smc911x_drop_pkt(ptr noundef %dev)
  br label %cleanup

if.end86:                                         ; preds = %if.else56
  call void @__sanitizer_cov_trace_pc() #15
  %data87 = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %26 = ptrtoint ptr %data87 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %data87, align 4
  %add.ptr.i164 = getelementptr i8, ptr %27, i32 2
  store ptr %add.ptr.i164, ptr %data87, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 16
  %28 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %tail.i, align 8
  %add.ptr1.i = getelementptr i8, ptr %29, i32 2
  store ptr %add.ptr1.i, ptr %tail.i, align 8
  %sub = add nsw i32 %shr34, -4
  %call88 = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef %sub) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !861
  tail call void @arm_heavy_mb() #13
  %30 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %base, align 4
  %add.ptr93 = getelementptr i8, ptr %31, i32 108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr93, i32 131072) #13, !srcloc !325
  %32 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %base, align 4
  %add97 = add nuw nsw i32 %shr34, 5
  %shr98 = lshr i32 %add97, 2
  tail call void @__raw_readsl(ptr noundef %33, ptr noundef %27, i32 noundef %shr98) #13
  %call124 = tail call zeroext i16 @eth_type_trans(ptr noundef nonnull %call.i, ptr noundef %dev) #13
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 15, i32 0, i32 18
  %34 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %call124, ptr %protocol, align 8
  %call125 = tail call i32 @netif_rx(ptr noundef nonnull %call.i) #13
  %stats126 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36
  %35 = ptrtoint ptr %stats126 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %stats126, align 8
  %inc127 = add i32 %36, 1
  store i32 %inc127, ptr %stats126, align 8
  %rx_bytes = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 2
  %37 = ptrtoint ptr %rx_bytes to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %rx_bytes, align 8
  %add130 = add i32 %38, %sub
  store i32 %add130, ptr %rx_bytes, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end86, %do.end83, %if.then56.i, %do.body44.i, %do.end40.i.cleanup_crit_edge, %while.body13.i.cleanup_crit_edge, %while.cond11.preheader.i.cleanup_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @smc911x_drop_pkt(ptr noundef %dev) unnamed_addr #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %base = getelementptr i8, ptr %dev, i32 2472
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 124
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !857
  %3 = and i32 %2, -65536
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %4)
  %cmp = icmp ult i32 %4, 5
  br i1 %cmp, label %while.cond11.preheader, label %do.body22

while.cond11.preheader:                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool12.not71 = icmp eq i32 %3, 0
  br i1 %tobool12.not71, label %while.cond11.preheader.if.end63_crit_edge, label %while.cond11.preheader.while.body13_crit_edge

while.cond11.preheader.while.body13_crit_edge:    ; preds = %while.cond11.preheader
  br label %while.body13

while.cond11.preheader.if.end63_crit_edge:        ; preds = %while.cond11.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end63

while.body13:                                     ; preds = %while.body13.while.body13_crit_edge, %while.cond11.preheader.while.body13_crit_edge
  %fifo_count.072 = phi i32 [ %dec, %while.body13.while.body13_crit_edge ], [ %4, %while.cond11.preheader.while.body13_crit_edge ]
  %dec = add i32 %fifo_count.072, -1
  %5 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base, align 4
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !858
  %tobool12.not = icmp eq i32 %dec, 0
  br i1 %tobool12.not, label %while.body13.if.end63_crit_edge, label %while.body13.while.body13_crit_edge

while.body13.while.body13_crit_edge:              ; preds = %while.body13
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body13

while.body13.if.end63_crit_edge:                  ; preds = %while.body13
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end63

do.body22:                                        ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !859
  tail call void @arm_heavy_mb() #13
  %8 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base, align 4
  %add.ptr26 = getelementptr i8, ptr %9, i32 120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr26, i32 128) #13, !srcloc !325
  br label %do.body27

do.body27:                                        ; preds = %do.body27.do.body27_crit_edge, %do.body22
  %timeout.0 = phi i32 [ 50, %do.body22 ], [ %dec37, %do.body27.do.body27_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 2147480) #13
  %11 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base, align 4
  %add.ptr31 = getelementptr i8, ptr %12, i32 120
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr31) #13, !srcloc !326
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !860
  %dec37 = add nsw i32 %timeout.0, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec37)
  %tobool38.not = icmp eq i32 %dec37, 0
  %.mask = and i32 %13, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask)
  %tobool39.not = icmp eq i32 %.mask, 0
  %or.cond = select i1 %tobool38.not, i1 true, i1 %tobool39.not
  br i1 %or.cond, label %do.end40, label %do.body27.do.body27_crit_edge

do.body27.do.body27_crit_edge:                    ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body27

do.end40:                                         ; preds = %do.body27
  br i1 %tobool38.not, label %do.body44, label %do.end40.if.end63_crit_edge

do.end40.if.end63_crit_edge:                      ; preds = %do.end40
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end63

do.body44:                                        ; preds = %do.end40
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smc911x_drop_pkt.__UNIQUE_ID_ddebug355, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smc911x_drop_pkt, %if.then56)) #13
          to label %if.end63 [label %if.then56], !srcloc !330

if.then56:                                        ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @smc911x_drop_pkt.__UNIQUE_ID_ddebug355, ptr noundef %dev, ptr noundef nonnull @.str.95) #13
  br label %if.end63

if.end63:                                         ; preds = %if.then56, %do.body44, %do.end40.if.end63_crit_edge, %while.body13.if.end63_crit_edge, %while.cond11.preheader.if.end63_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @eth_type_trans(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_rx(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_readsl(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_detach(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_attach(ptr noundef) local_unnamed_addr #1

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 53)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 53)
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
attributes #11 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { cold nounwind }
attributes #17 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !15, !17, !18, !19, !21, !22, !24, !26, !28, !30, !31, !32, !33, !34, !36, !37, !38, !40, !41, !43, !45, !46, !48, !50, !51, !53, !54, !56, !58, !59, !61, !62, !64, !65, !67, !69, !70, !72, !74, !75, !76, !78, !80, !82, !83, !85, !86, !88, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !110, !112, !113, !115, !116, !118, !119, !121, !122, !124, !125, !127, !129, !130, !132, !133, !135, !136, !138, !139, !141, !142, !143, !145, !146, !148, !149, !151, !152, !154, !156, !157, !159, !160, !162, !163, !165, !166, !168, !169, !171, !172, !174, !175, !177, !178, !180, !181, !183, !184, !186, !188, !190, !191, !192, !194, !195, !197, !198, !200, !201, !202, !204, !206, !208, !209, !211, !212, !214, !215, !217, !218, !220, !221, !223, !224, !226, !227, !229, !230, !231, !233, !234, !235, !237, !238, !240, !241, !243, !244, !246, !247, !249, !250, !252, !254, !255, !257, !258, !260, !261, !263, !264, !266, !267, !269, !270, !272, !273, !275, !276, !278, !279, !281, !282, !284, !285, !287, !288, !290, !291, !293, !294, !296, !297, !299, !300, !302, !303, !305, !306, !308, !309, !311, !312, !314}
!llvm.module.flags = !{!315, !316, !317, !318, !319, !320, !321, !322}
!llvm.ident = !{!323}

!0 = !{ptr @__param_watchdog, !1, !"__param_watchdog", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/smsc/smc911x.c", i32 74, i32 1}
!2 = !{ptr @__UNIQUE_ID_watchdogtype339, !1, !"__UNIQUE_ID_watchdogtype339", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_watchdog340, !4, !"__UNIQUE_ID_watchdog340", i1 false, i1 false}
!4 = !{!"../drivers/net/ethernet/smsc/smc911x.c", i32 75, i32 1}
!5 = !{ptr @__param_tx_fifo_kb, !6, !"__param_tx_fifo_kb", i1 false, i1 false}
!6 = !{!"../drivers/net/ethernet/smsc/smc911x.c", i32 78, i32 1}
!7 = !{ptr @__UNIQUE_ID_tx_fifo_kbtype341, !6, !"__UNIQUE_ID_tx_fifo_kbtype341", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_tx_fifo_kb342, !9, !"__UNIQUE_ID_tx_fifo_kb342", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/smsc/smc911x.c", i32 79, i32 1}
!10 = !{ptr @__UNIQUE_ID_file343, !11, !"__UNIQUE_ID_file343", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/smsc/smc911x.c", i32 81, i32 1}
!12 = !{ptr @__UNIQUE_ID_license344, !11, !"__UNIQUE_ID_license344", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_alias345, !14, !"__UNIQUE_ID_alias345", i1 false, i1 false}
!14 = !{!"../drivers/net/ethernet/smsc/smc911x.c", i32 82, i32 1}
!15 = !{ptr @__initcall__kmod_smc911x__420_2198_smc911x_driver_init6, !16, !"__initcall__kmod_smc911x__420_2198_smc911x_driver_init6", i1 false, i1 false}
!16 = !{!"../drivers/net/ethernet/smsc/smc911x.c", i32 2198, i32 1}
!17 = !{ptr @__exitcall_smc911x_driver_exit, !16, !"__exitcall_smc911x_driver_exit", i1 false, i1 false}
!18 = !{ptr @__param_str_watchdog, !1, !"__param_str_watchdog", i1 false, i1 false}
!19 = !{ptr @watchdog, !20, !"watchdog", i1 false, i1 false}
!20 = !{!"../drivers/net/ethernet/smsc/smc911x.c", i32 73, i32 12}
!21 = !{ptr @__param_str_tx_fifo_kb, !6, !"__param_str_tx_fifo_kb", i1 false, i1 false}
!22 = !{ptr @tx_fifo_kb, !23, !"tx_fifo_kb", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/smsc/smc911x.c", i32 77, i32 12}
!24 = !{ptr @.str, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/smsc/smc911x.c", i32 2194, i32 12}
!26 = !{ptr @smc911x_driver, !27, !"smc911x_driver", i1 false, i1 false}
!27 = !{!"../drivers/net/ethernet/smsc/smc911x.c", i32 2188, i32 31}
!28 = !{ptr @.str.1, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/ethernet/smsc/smc911x.c", i32 2110, i32 3}
!30 = !{ptr @.str.2, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.3, !29, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @smc911x_drv_probe._entry, !29, !"_entry", i1 false, i1 false}
!33 = !{ptr @smc911x_drv_probe._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.4, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/ethernet/smsc/smc911x.c", i32 1793, i32 2}
!36 = distinct !{null, !35, !"<string literal>", i1 false, i1 false}
!37 = distinct !{null, !35, !"__UNIQUE_ID_ddebug407", i1 false, i1 false}
!38 = distinct !{null, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/ethernet/smsc/smc911x.c", i32 1797, i32 2}
!40 = distinct !{null, !39, !"__UNIQUE_ID_ddebug408", i1 false, i1 false}
!41 = !{ptr @.str.7, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/ethernet/smsc/smc911x.c", i32 1800, i32 19}
!43 = distinct !{null, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/net/ethernet/smsc/smc911x.c", i32 1811, i32 2}
!45 = distinct !{null, !44, !"__UNIQUE_ID_ddebug409", i1 false, i1 false}
!46 = !{ptr @.str.9, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/ethernet/smsc/smc911x.c", i32 1817, i32 19}
!48 = distinct !{null, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/ethernet/smsc/smc911x.c", i32 1824, i32 2}
!50 = distinct !{null, !49, !"__UNIQUE_ID_ddebug410", i1 false, i1 false}
!51 = distinct !{null, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/ethernet/smsc/smc911x.c", i32 1827, i32 2}
!53 = distinct !{null, !52, !"__UNIQUE_ID_ddebug411", i1 false, i1 false}
!54 = !{ptr @.str.12, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/ethernet/smsc/smc911x.c", i32 1832, i32 19}
!56 = !{ptr @.str.13, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/ethernet/smsc/smc911x.c", i32 1885, i32 5}
!58 = !{ptr @smc911x_probe.__UNIQUE_ID_ddebug412, !57, !"__UNIQUE_ID_ddebug412", i1 false, i1 false}
!59 = distinct !{null, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/net/ethernet/smsc/smc911x.c", i32 1889, i32 2}
!61 = distinct !{null, !60, !"__UNIQUE_ID_ddebug413", i1 false, i1 false}
!62 = !{ptr @smc911x_probe.__key, !63, !"__key", i1 false, i1 false}
!63 = !{!"../drivers/net/ethernet/smsc/smc911x.c", i32 1893, i32 2}
!64 = !{ptr @.str.15, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @.str.16, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/net/ethernet/smsc/smc911x.c", i32 1922, i32 20}
!67 = !{ptr @smc911x_probe.__key.17, !68, !"__key", i1 false, i1 false}
!68 = !{!"../drivers/net/ethernet/smsc/smc911x.c", i32 1932, i32 2}
!69 = !{ptr @.str.18, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @.str.19, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/ethernet/smsc/smc911x.c", i32 1996, i32 20}
!72 = !{ptr @.str.20, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/ethernet/smsc/smc911x.c", i32 2007, i32 3}
!74 = !{ptr @smc911x_probe._entry, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @smc911x_probe._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.21, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/net/ethernet/smsc/smc911x.c", i32 2009, i32 21}
!78 = !{ptr @.str.22, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/net/ethernet/smsc/smc911x.c", i32 2012, i32 21}
!80 = !{ptr @.str.23, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/net/ethernet/smsc/smc911x.c", i32 2017, i32 4}
!82 = !{ptr @smc911x_probe.__UNIQUE_ID_ddebug414, !81, !"__UNIQUE_ID_ddebug414", i1 false, i1 false}
!83 = !{ptr @.str.24, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/net/ethernet/smsc/smc911x.c", i32 2019, i32 4}
!85 = !{ptr @smc911x_probe.__UNIQUE_ID_ddebug415, !84, !"__UNIQUE_ID_ddebug415", i1 false, i1 false}
!86 = !{ptr @.str.25, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/net/ethernet/smsc/smc911x.c", i32 2021, i32 4}
!88 = !{ptr @smc911x_probe.__UNIQUE_ID_ddebug416, !87, !"__UNIQUE_ID_ddebug416", i1 false, i1 false}
!89 = !{ptr @.str.26, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/net/ethernet/smsc/smc911x.h", i32 674, i32 15}
!91 = !{ptr @.str.27, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/net/ethernet/smsc/smc911x.h", i32 675, i32 15}
!93 = !{ptr @.str.28, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/net/ethernet/smsc/smc911x.h", i32 676, i32 15}
!95 = !{ptr @.str.29, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/net/ethernet/smsc/smc911x.h", i32 677, i32 15}
!97 = !{ptr @.str.30, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/net/ethernet/smsc/smc911x.h", i32 678, i32 15}
!99 = !{ptr @.str.31, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/net/ethernet/smsc/smc911x.h", i32 679, i32 15}
!101 = !{ptr @.str.32, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/net/ethernet/smsc/smc911x.h", i32 680, i32 15}
!103 = !{ptr @.str.33, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/net/ethernet/smsc/smc911x.h", i32 681, i32 15}
!105 = !{ptr @chip_ids, !106, !"chip_ids", i1 false, i1 false}
!106 = !{!"../drivers/net/ethernet/smsc/smc911x.h", i32 673, i32 29}
!107 = !{ptr @.str.34, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/net/ethernet/smsc/smc911x.c", i32 172, i32 2}
!109 = distinct !{null, !108, !"__UNIQUE_ID_ddebug346", i1 false, i1 false}
!110 = !{ptr @.str.35, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/net/ethernet/smsc/smc911x.c", i32 184, i32 4}
!112 = !{ptr @smc911x_reset.__UNIQUE_ID_ddebug347, !111, !"__UNIQUE_ID_ddebug347", i1 false, i1 false}
!113 = !{ptr @.str.36, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/net/ethernet/smsc/smc911x.c", i32 202, i32 5}
!115 = !{ptr @smc911x_reset.__UNIQUE_ID_ddebug348, !114, !"__UNIQUE_ID_ddebug348", i1 false, i1 false}
!116 = !{ptr @.str.37, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/net/ethernet/smsc/smc911x.c", i32 209, i32 3}
!118 = !{ptr @smc911x_reset.__UNIQUE_ID_ddebug349, !117, !"__UNIQUE_ID_ddebug349", i1 false, i1 false}
!119 = !{ptr @.str.38, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/net/ethernet/smsc/smc911x.c", i32 219, i32 3}
!121 = !{ptr @smc911x_reset.__UNIQUE_ID_ddebug350, !120, !"__UNIQUE_ID_ddebug350", i1 false, i1 false}
!122 = distinct !{null, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/net/ethernet/smsc/smc911x.c", i32 1709, i32 2}
!124 = distinct !{null, !123, !"__UNIQUE_ID_ddebug406", i1 false, i1 false}
!125 = !{ptr @smc911x_netdev_ops, !126, !"smc911x_netdev_ops", i1 false, i1 false}
!126 = !{!"../drivers/net/ethernet/smsc/smc911x.c", i32 1744, i32 36}
!127 = distinct !{null, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/net/ethernet/smsc/smc911x.c", i32 1386, i32 2}
!129 = distinct !{null, !128, !"__UNIQUE_ID_ddebug401", i1 false, i1 false}
!130 = distinct !{null, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/net/ethernet/smsc/smc911x.c", i32 266, i32 2}
!132 = distinct !{null, !131, !"__UNIQUE_ID_ddebug351", i1 false, i1 false}
!133 = distinct !{null, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/net/ethernet/smsc/smc911x.c", i32 292, i32 3}
!135 = distinct !{null, !134, !"__UNIQUE_ID_ddebug352", i1 false, i1 false}
!136 = distinct !{null, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/net/ethernet/smsc/smc911x.c", i32 1413, i32 2}
!138 = distinct !{null, !137, !"__UNIQUE_ID_ddebug402", i1 false, i1 false}
!139 = distinct !{null, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/net/ethernet/smsc/smc911x.c", i32 323, i32 2}
!141 = distinct !{null, !140, !"<string literal>", i1 false, i1 false}
!142 = distinct !{null, !140, !"__UNIQUE_ID_ddebug353", i1 false, i1 false}
!143 = distinct !{null, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/net/ethernet/smsc/smc911x.c", i32 514, i32 2}
!145 = distinct !{null, !144, !"__UNIQUE_ID_ddebug363", i1 false, i1 false}
!146 = distinct !{null, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/net/ethernet/smsc/smc911x.c", i32 522, i32 2}
!148 = distinct !{null, !147, !"__UNIQUE_ID_ddebug364", i1 false, i1 false}
!149 = distinct !{null, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/net/ethernet/smsc/smc911x.c", i32 526, i32 3}
!151 = distinct !{null, !150, !"__UNIQUE_ID_ddebug365", i1 false, i1 false}
!152 = !{ptr @.str.49, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/net/ethernet/smsc/smc911x.c", i32 542, i32 20}
!154 = distinct !{null, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/net/ethernet/smsc/smc911x.c", i32 452, i32 2}
!156 = distinct !{null, !155, !"__UNIQUE_ID_ddebug360", i1 false, i1 false}
!157 = distinct !{null, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/net/ethernet/smsc/smc911x.c", i32 477, i32 2}
!159 = distinct !{null, !158, !"__UNIQUE_ID_ddebug361", i1 false, i1 false}
!160 = distinct !{null, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/net/ethernet/smsc/smc911x.c", i32 482, i32 2}
!162 = distinct !{null, !161, !"__UNIQUE_ID_ddebug362", i1 false, i1 false}
!163 = distinct !{null, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/net/ethernet/smsc/smc911x.c", i32 1295, i32 2}
!165 = distinct !{null, !164, !"__UNIQUE_ID_ddebug396", i1 false, i1 false}
!166 = distinct !{null, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/net/ethernet/smsc/smc911x.c", i32 1303, i32 3}
!168 = distinct !{null, !167, !"__UNIQUE_ID_ddebug397", i1 false, i1 false}
!169 = distinct !{null, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/net/ethernet/smsc/smc911x.c", i32 1312, i32 3}
!171 = distinct !{null, !170, !"__UNIQUE_ID_ddebug398", i1 false, i1 false}
!172 = distinct !{null, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/net/ethernet/smsc/smc911x.c", i32 1352, i32 3}
!174 = distinct !{null, !173, !"__UNIQUE_ID_ddebug399", i1 false, i1 false}
!175 = distinct !{null, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/net/ethernet/smsc/smc911x.c", i32 1366, i32 3}
!177 = distinct !{null, !176, !"__UNIQUE_ID_ddebug400", i1 false, i1 false}
!178 = distinct !{null, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/net/ethernet/smsc/smc911x.c", i32 1257, i32 2}
!180 = distinct !{null, !179, !"__UNIQUE_ID_ddebug394", i1 false, i1 false}
!181 = distinct !{null, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/net/ethernet/smsc/smc911x.c", i32 1263, i32 2}
!183 = distinct !{null, !182, !"__UNIQUE_ID_ddebug395", i1 false, i1 false}
!184 = !{ptr @smc911x_ethtool_ops, !185, !"smc911x_ethtool_ops", i1 false, i1 false}
!185 = !{!"../drivers/net/ethernet/smsc/smc911x.c", i32 1682, i32 33}
!186 = !{ptr @version, !187, !"version", i1 false, i1 false}
!187 = !{!"../drivers/net/ethernet/smsc/smc911x.c", i32 17, i32 19}
!188 = !{ptr @.str.60, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/net/ethernet/smsc/smc911x.c", i32 1587, i32 4}
!190 = !{ptr @.str.61, !189, !"<string literal>", i1 false, i1 false}
!191 = !{ptr @smc911x_ethtool_wait_eeprom_ready.__UNIQUE_ID_ddebug404, !189, !"__UNIQUE_ID_ddebug404", i1 false, i1 false}
!192 = !{ptr @.str.62, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/net/ethernet/smsc/smc911x.c", i32 1595, i32 3}
!194 = !{ptr @smc911x_ethtool_wait_eeprom_ready.__UNIQUE_ID_ddebug405, !193, !"__UNIQUE_ID_ddebug405", i1 false, i1 false}
!195 = distinct !{null, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/net/ethernet/smsc/smc911x.c", i32 1449, i32 2}
!197 = distinct !{null, !196, !"__UNIQUE_ID_ddebug403", i1 false, i1 false}
!198 = distinct !{null, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/net/ethernet/smsc/smc911x.c", i32 888, i32 2}
!200 = distinct !{null, !199, !"<string literal>", i1 false, i1 false}
!201 = distinct !{null, !199, !"__UNIQUE_ID_ddebug378", i1 false, i1 false}
!202 = !{ptr @.str.66, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/net/ethernet/smsc/smc911x.c", i32 897, i32 20}
!204 = !{ptr @.str.67, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/net/ethernet/smsc/smc911x.c", i32 919, i32 20}
!206 = distinct !{null, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/net/ethernet/smsc/smc911x.c", i32 957, i32 2}
!208 = distinct !{null, !207, !"__UNIQUE_ID_ddebug379", i1 false, i1 false}
!209 = distinct !{null, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/net/ethernet/smsc/smc911x.c", i32 958, i32 2}
!211 = distinct !{null, !210, !"__UNIQUE_ID_ddebug380", i1 false, i1 false}
!212 = distinct !{null, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/net/ethernet/smsc/smc911x.c", i32 789, i32 2}
!214 = distinct !{null, !213, !"__UNIQUE_ID_ddebug374", i1 false, i1 false}
!215 = distinct !{null, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/net/ethernet/smsc/smc911x.c", i32 742, i32 2}
!217 = distinct !{null, !216, !"__UNIQUE_ID_ddebug373", i1 false, i1 false}
!218 = distinct !{null, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/net/ethernet/smsc/smc911x.c", i32 848, i32 2}
!220 = distinct !{null, !219, !"__UNIQUE_ID_ddebug375", i1 false, i1 false}
!221 = distinct !{null, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/net/ethernet/smsc/smc911x.c", i32 855, i32 4}
!223 = distinct !{null, !222, !"__UNIQUE_ID_ddebug376", i1 false, i1 false}
!224 = distinct !{null, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/net/ethernet/smsc/smc911x.c", i32 859, i32 4}
!226 = distinct !{null, !225, !"__UNIQUE_ID_ddebug377", i1 false, i1 false}
!227 = distinct !{null, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/net/ethernet/smsc/smc911x.c", i32 636, i32 2}
!229 = distinct !{null, !228, !"<string literal>", i1 false, i1 false}
!230 = distinct !{null, !228, !"__UNIQUE_ID_ddebug369", i1 false, i1 false}
!231 = distinct !{null, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/net/ethernet/smsc/smc911x.c", i32 650, i32 2}
!233 = distinct !{null, !232, !"<string literal>", i1 false, i1 false}
!234 = distinct !{null, !232, !"__UNIQUE_ID_ddebug370", i1 false, i1 false}
!235 = distinct !{null, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/net/ethernet/smsc/smc911x.c", i32 666, i32 2}
!237 = distinct !{null, !236, !"__UNIQUE_ID_ddebug371", i1 false, i1 false}
!238 = distinct !{null, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/net/ethernet/smsc/smc911x.c", i32 728, i32 2}
!240 = distinct !{null, !239, !"__UNIQUE_ID_ddebug372", i1 false, i1 false}
!241 = distinct !{null, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/net/ethernet/smsc/smc911x.c", i32 1009, i32 2}
!243 = distinct !{null, !242, !"__UNIQUE_ID_ddebug384", i1 false, i1 false}
!244 = distinct !{null, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/net/ethernet/smsc/smc911x.c", i32 1030, i32 3}
!246 = distinct !{null, !245, !"__UNIQUE_ID_ddebug385", i1 false, i1 false}
!247 = distinct !{null, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/net/ethernet/smsc/smc911x.c", i32 1063, i32 5}
!249 = distinct !{null, !248, !"__UNIQUE_ID_ddebug386", i1 false, i1 false}
!250 = distinct !{null, !251, !"__UNIQUE_ID_ddebug387", i1 false, i1 false}
!251 = !{!"../drivers/net/ethernet/smsc/smc911x.c", i32 1075, i32 5}
!252 = distinct !{null, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/net/ethernet/smsc/smc911x.c", i32 1084, i32 4}
!254 = distinct !{null, !253, !"__UNIQUE_ID_ddebug388", i1 false, i1 false}
!255 = distinct !{null, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/net/ethernet/smsc/smc911x.c", i32 1087, i32 4}
!257 = distinct !{null, !256, !"__UNIQUE_ID_ddebug389", i1 false, i1 false}
!258 = distinct !{null, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../drivers/net/ethernet/smsc/smc911x.c", i32 1110, i32 4}
!260 = distinct !{null, !259, !"__UNIQUE_ID_ddebug390", i1 false, i1 false}
!261 = distinct !{null, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/net/ethernet/smsc/smc911x.c", i32 1122, i32 4}
!263 = distinct !{null, !262, !"__UNIQUE_ID_ddebug391", i1 false, i1 false}
!264 = distinct !{null, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../drivers/net/ethernet/smsc/smc911x.c", i32 1153, i32 4}
!266 = distinct !{null, !265, !"__UNIQUE_ID_ddebug392", i1 false, i1 false}
!267 = distinct !{null, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../drivers/net/ethernet/smsc/smc911x.c", i32 1162, i32 2}
!269 = distinct !{null, !268, !"__UNIQUE_ID_ddebug393", i1 false, i1 false}
!270 = !{ptr @.str.90, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../drivers/net/ethernet/smsc/smc911x.c", i32 376, i32 2}
!272 = distinct !{null, !271, !"__UNIQUE_ID_ddebug356", i1 false, i1 false}
!273 = distinct !{null, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../drivers/net/ethernet/smsc/smc911x.c", i32 379, i32 2}
!275 = distinct !{null, !274, !"__UNIQUE_ID_ddebug357", i1 false, i1 false}
!276 = !{ptr @.str.92, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../drivers/net/ethernet/smsc/smc911x.c", i32 400, i32 4}
!278 = !{ptr @smc911x_rcv.__UNIQUE_ID_ddebug358, !277, !"__UNIQUE_ID_ddebug358", i1 false, i1 false}
!279 = distinct !{null, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../drivers/net/ethernet/smsc/smc911x.c", i32 432, i32 3}
!281 = distinct !{null, !280, !"__UNIQUE_ID_ddebug359", i1 false, i1 false}
!282 = !{ptr @.str.94, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../drivers/net/ethernet/smsc/smc911x.c", i32 342, i32 2}
!284 = distinct !{null, !283, !"__UNIQUE_ID_ddebug354", i1 false, i1 false}
!285 = !{ptr @.str.95, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../drivers/net/ethernet/smsc/smc911x.c", i32 358, i32 4}
!287 = !{ptr @smc911x_drop_pkt.__UNIQUE_ID_ddebug355, !286, !"__UNIQUE_ID_ddebug355", i1 false, i1 false}
!288 = distinct !{null, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../drivers/net/ethernet/smsc/smc911x.c", i32 586, i32 2}
!290 = distinct !{null, !289, !"__UNIQUE_ID_ddebug366", i1 false, i1 false}
!291 = distinct !{null, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../drivers/net/ethernet/smsc/smc911x.c", i32 591, i32 3}
!293 = distinct !{null, !292, !"__UNIQUE_ID_ddebug367", i1 false, i1 false}
!294 = distinct !{null, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../drivers/net/ethernet/smsc/smc911x.c", i32 596, i32 3}
!296 = distinct !{null, !295, !"__UNIQUE_ID_ddebug368", i1 false, i1 false}
!297 = distinct !{null, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../drivers/net/ethernet/smsc/smc911x.c", i32 981, i32 2}
!299 = distinct !{null, !298, !"__UNIQUE_ID_ddebug381", i1 false, i1 false}
!300 = distinct !{null, !301, !"<string literal>", i1 false, i1 false}
!301 = !{!"../drivers/net/ethernet/smsc/smc911x.c", i32 989, i32 2}
!302 = distinct !{null, !301, !"__UNIQUE_ID_ddebug382", i1 false, i1 false}
!303 = distinct !{null, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../drivers/net/ethernet/smsc/smc911x.c", i32 991, i32 2}
!305 = distinct !{null, !304, !"__UNIQUE_ID_ddebug383", i1 false, i1 false}
!306 = distinct !{null, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../drivers/net/ethernet/smsc/smc911x.c", i32 2128, i32 2}
!308 = distinct !{null, !307, !"__UNIQUE_ID_ddebug417", i1 false, i1 false}
!309 = distinct !{null, !310, !"<string literal>", i1 false, i1 false}
!310 = !{!"../drivers/net/ethernet/smsc/smc911x.c", i32 2155, i32 2}
!311 = distinct !{null, !310, !"__UNIQUE_ID_ddebug418", i1 false, i1 false}
!312 = distinct !{null, !313, !"<string literal>", i1 false, i1 false}
!313 = !{!"../drivers/net/ethernet/smsc/smc911x.c", i32 2173, i32 2}
!314 = distinct !{null, !313, !"__UNIQUE_ID_ddebug419", i1 false, i1 false}
!315 = !{i32 1, !"wchar_size", i32 2}
!316 = !{i32 1, !"min_enum_size", i32 4}
!317 = !{i32 8, !"branch-target-enforcement", i32 0}
!318 = !{i32 8, !"sign-return-address", i32 0}
!319 = !{i32 8, !"sign-return-address-all", i32 0}
!320 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!321 = !{i32 7, !"uwtable", i32 1}
!322 = !{i32 7, !"frame-pointer", i32 2}
!323 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!324 = !{i64 2156977819}
!325 = !{i64 4679615}
!326 = !{i64 4680033}
!327 = !{i64 2156939182}
!328 = !{i64 2156942281}
!329 = !{i64 2156945367}
!330 = !{i64 2149009362, i64 2149009367, i64 2149009380, i64 2149009424, i64 2149009458, i64 2149009479}
!331 = !{i64 2156956852}
!332 = !{i64 2156957335}
!333 = !{i64 2156958274}
!334 = !{i64 2156958925}
!335 = !{i64 2156959882}
!336 = !{i64 2156960365}
!337 = !{i64 2156961304}
!338 = !{i64 2156961955}
!339 = !{i64 2156934544}
!340 = !{i64 2156935880}
!341 = !{i64 2156936191}
!342 = !{i64 2156498766}
!343 = !{i64 2156499109}
!344 = !{i64 2156500151}
!345 = !{i64 2156501206}
!346 = !{i64 2156502248}
!347 = !{i64 2156503974}
!348 = !{i64 2156504481}
!349 = !{i64 2156505476}
!350 = !{i64 2156506175}
!351 = !{i64 2156507351}
!352 = !{i64 2156507872}
!353 = !{i64 2156508657}
!354 = !{i64 2156509607}
!355 = !{i64 2156510708}
!356 = !{i64 2156511215}
!357 = !{i64 2156512210}
!358 = !{i64 2156512909}
!359 = !{i64 2156514011}
!360 = !{i64 2156514518}
!361 = !{i64 2156515513}
!362 = !{i64 2156516212}
!363 = !{i64 2156517755}
!364 = !{i64 2156518262}
!365 = !{i64 2156519257}
!366 = !{i64 2156519956}
!367 = !{i64 2156521132}
!368 = !{i64 2156521653}
!369 = !{i64 2156522438}
!370 = !{i64 2156523388}
!371 = !{i64 2156524489}
!372 = !{i64 2156524996}
!373 = !{i64 2156525991}
!374 = !{i64 2156526690}
!375 = !{i64 2156527792}
!376 = !{i64 2156528299}
!377 = !{i64 2156529294}
!378 = !{i64 2156529993}
!379 = !{i64 2156531547}
!380 = !{i64 2156532054}
!381 = !{i64 2156533049}
!382 = !{i64 2156533748}
!383 = !{i64 2156534902}
!384 = !{i64 2156535390}
!385 = !{i64 2156536142}
!386 = !{i64 2156537092}
!387 = !{i64 2156538193}
!388 = !{i64 2156538700}
!389 = !{i64 2156539695}
!390 = !{i64 2156540394}
!391 = !{i64 2156541496}
!392 = !{i64 2156542003}
!393 = !{i64 2156542998}
!394 = !{i64 2156543697}
!395 = !{i64 2156545218}
!396 = !{i64 2156545725}
!397 = !{i64 2156546720}
!398 = !{i64 2156547419}
!399 = !{i64 2156548573}
!400 = !{i64 2156549061}
!401 = !{i64 2156549813}
!402 = !{i64 2156550763}
!403 = !{i64 2156551864}
!404 = !{i64 2156552371}
!405 = !{i64 2156553366}
!406 = !{i64 2156554065}
!407 = !{i64 2156555167}
!408 = !{i64 2156555674}
!409 = !{i64 2156556669}
!410 = !{i64 2156557368}
!411 = !{i64 2156338200}
!412 = !{i64 2156338514}
!413 = !{i64 2156339819}
!414 = !{i64 2156342968}
!415 = !{i64 2156343489}
!416 = !{i64 2156344825}
!417 = !{i64 2156350250}
!418 = !{i64 2156353600}
!419 = !{i64 2156354079}
!420 = !{i64 2156354638}
!421 = !{i64 2156355929}
!422 = !{i64 2156356348}
!423 = !{i64 2156357023}
!424 = !{i64 2156357917}
!425 = !{i64 2156358259}
!426 = !{i64 2156358793}
!427 = !{i64 2156359340}
!428 = !{i64 2156620033}
!429 = !{i64 2156620352}
!430 = !{i64 2156621471}
!431 = !{i64 2156695438}
!432 = !{i64 2156695945}
!433 = !{i64 2156696940}
!434 = !{i64 2156697639}
!435 = !{i64 2156698819}
!436 = !{i64 2156699364}
!437 = !{i64 2156700173}
!438 = !{i64 2156701123}
!439 = !{i64 2156702342}
!440 = !{i64 2156702908}
!441 = !{i64 2156703738}
!442 = !{i64 2156704688}
!443 = !{i64 2156705789}
!444 = !{i64 2156706296}
!445 = !{i64 2156707291}
!446 = !{i64 2156707990}
!447 = !{i64 2156709549}
!448 = !{i64 2156710056}
!449 = !{i64 2156711051}
!450 = !{i64 2156711750}
!451 = !{i64 2156712916}
!452 = !{i64 2156713422}
!453 = !{i64 2156714192}
!454 = !{i64 2156715142}
!455 = !{i64 2156716243}
!456 = !{i64 2156716750}
!457 = !{i64 2156717745}
!458 = !{i64 2156718444}
!459 = !{i64 2156719562}
!460 = !{i64 2156720069}
!461 = !{i64 2156721064}
!462 = !{i64 2156721763}
!463 = !{i64 2156723474}
!464 = !{i64 2156723981}
!465 = !{i64 2156724976}
!466 = !{i64 2156725675}
!467 = !{i64 2156726753}
!468 = !{i64 2156727145}
!469 = !{i64 2156727801}
!470 = !{i64 2156728751}
!471 = !{i64 2156729960}
!472 = !{i64 2156730511}
!473 = !{i64 2156731326}
!474 = !{i64 2156732276}
!475 = !{i64 2156733377}
!476 = !{i64 2156733884}
!477 = !{i64 2156734879}
!478 = !{i64 2156735578}
!479 = !{i64 2156737674}
!480 = !{i64 2156738181}
!481 = !{i64 2156739176}
!482 = !{i64 2156739875}
!483 = !{i64 2156741041}
!484 = !{i64 2156741547}
!485 = !{i64 2156742317}
!486 = !{i64 2156743267}
!487 = !{i64 2156744368}
!488 = !{i64 2156744875}
!489 = !{i64 2156745870}
!490 = !{i64 2156746569}
!491 = !{i64 2156747677}
!492 = !{i64 2156748184}
!493 = !{i64 2156749179}
!494 = !{i64 2156749878}
!495 = !{i64 2156756209}
!496 = !{i64 2156756716}
!497 = !{i64 2156757711}
!498 = !{i64 2156758410}
!499 = !{i64 2156759498}
!500 = !{i64 2156759905}
!501 = !{i64 2156760576}
!502 = !{i64 2156761526}
!503 = !{i64 2156762735}
!504 = !{i64 2156763286}
!505 = !{i64 2156764101}
!506 = !{i64 2156765051}
!507 = !{i64 2156766152}
!508 = !{i64 2156766659}
!509 = !{i64 2156767654}
!510 = !{i64 2156768353}
!511 = !{i64 2156465483}
!512 = !{i64 2156465978}
!513 = !{i64 2156466945}
!514 = !{i64 2156467620}
!515 = !{i64 2156468746}
!516 = !{i64 2156469246}
!517 = !{i64 2156470006}
!518 = !{i64 2156470928}
!519 = !{i64 2156471985}
!520 = !{i64 2156472480}
!521 = !{i64 2156473447}
!522 = !{i64 2156474122}
!523 = !{i64 2156475188}
!524 = !{i64 2156475683}
!525 = !{i64 2156476650}
!526 = !{i64 2156477325}
!527 = !{i64 2156484193}
!528 = !{i64 2156484688}
!529 = !{i64 2156485655}
!530 = !{i64 2156486330}
!531 = !{i64 2156487358}
!532 = !{i64 2156487729}
!533 = !{i64 2156488360}
!534 = !{i64 2156489282}
!535 = !{i64 2156490451}
!536 = !{i64 2156490996}
!537 = !{i64 2156491801}
!538 = !{i64 2156492723}
!539 = !{i64 2156493780}
!540 = !{i64 2156494275}
!541 = !{i64 2156495242}
!542 = !{i64 2156495917}
!543 = !{i64 2156794140}
!544 = !{i64 2156794776}
!545 = !{i64 2156795074}
!546 = !{i64 2156795836}
!547 = !{i64 2156798849}
!548 = !{i64 2156799430}
!549 = !{i64 2156799998}
!550 = !{i64 2156800793}
!551 = !{i64 2156801151}
!552 = !{i64 2156802402}
!553 = !{i64 2156802885}
!554 = !{i64 2156803824}
!555 = !{i64 2156804475}
!556 = !{i64 2156805447}
!557 = !{i64 2156805791}
!558 = !{i64 2156806391}
!559 = !{i64 2156807285}
!560 = !{i64 2156809854}
!561 = !{i64 2156811105}
!562 = !{i64 2156811588}
!563 = !{i64 2156812527}
!564 = !{i64 2156813178}
!565 = !{i64 2156814150}
!566 = !{i64 2156814494}
!567 = !{i64 2156815094}
!568 = !{i64 2156815988}
!569 = !{i64 2156818557}
!570 = !{i64 2156821544}
!571 = !{i64 2156824360}
!572 = !{i64 799685, i64 799746}
!573 = !{i64 2156828476}
!574 = !{i64 2156828848}
!575 = !{i64 802417}
!576 = !{!"branch_weights", i32 1, i32 2000}
!577 = !{i64 802702}
!578 = !{i64 2156830244}
!579 = !{i64 2156456304}
!580 = !{i64 2156461263}
!581 = !{i64 2156835246}
!582 = !{i64 2156835825}
!583 = !{i64 2156836438}
!584 = !{i64 2156772167}
!585 = !{i64 2156772674}
!586 = !{i64 2156773669}
!587 = !{i64 2156774368}
!588 = !{i64 2156775544}
!589 = !{i64 2156776065}
!590 = !{i64 2156776850}
!591 = !{i64 2156777800}
!592 = !{i64 2156778901}
!593 = !{i64 2156779408}
!594 = !{i64 2156780403}
!595 = !{i64 2156781102}
!596 = !{i64 2156782210}
!597 = !{i64 2156782717}
!598 = !{i64 2156783712}
!599 = !{i64 2156784411}
!600 = !{i64 2156839235}
!601 = !{i64 2156839752}
!602 = !{i64 2156623569}
!603 = !{i64 2156624076}
!604 = !{i64 2156625071}
!605 = !{i64 2156625770}
!606 = !{i64 2156626928}
!607 = !{i64 2156627422}
!608 = !{i64 2156628180}
!609 = !{i64 2156629130}
!610 = !{i64 2156630231}
!611 = !{i64 2156630738}
!612 = !{i64 2156631733}
!613 = !{i64 2156632432}
!614 = !{i64 2156633536}
!615 = !{i64 2156634043}
!616 = !{i64 2156635038}
!617 = !{i64 2156635737}
!618 = !{i64 2156637297}
!619 = !{i64 2156637804}
!620 = !{i64 2156638799}
!621 = !{i64 2156639498}
!622 = !{i64 2156640564}
!623 = !{i64 2156640938}
!624 = !{i64 2156641576}
!625 = !{i64 2156642526}
!626 = !{i64 2156643727}
!627 = !{i64 2156644266}
!628 = !{i64 2156645069}
!629 = !{i64 2156646019}
!630 = !{i64 2156647120}
!631 = !{i64 2156647627}
!632 = !{i64 2156648622}
!633 = !{i64 2156649321}
!634 = !{!"branch_weights", i32 2000, i32 1}
!635 = !{i64 2156443687, i64 2156444187, i64 2156443724, i64 2156443780, i64 2156443814, i64 2156443838, i64 2156443879, i64 2156443900, i64 2156443928, i64 2156443962}
!636 = !{i64 2156445536}
!637 = !{i64 2156451926}
!638 = !{i64 2156452331}
!639 = !{i64 2156431829, i64 2156432329, i64 2156431866, i64 2156431922, i64 2156431956, i64 2156431980, i64 2156432021, i64 2156432042, i64 2156432070, i64 2156432104}
!640 = !{i64 2156436223}
!641 = !{i64 2156436722}
!642 = !{i64 2156440165}
!643 = !{i64 2156440490}
!644 = !{!"auto-init"}
!645 = !{i64 2156857400}
!646 = !{i64 2156857883}
!647 = !{i64 2156858822}
!648 = !{i64 2156859473}
!649 = !{i64 2156871896}
!650 = !{i64 2156872243}
!651 = !{i64 2156872846}
!652 = !{i64 2156873740}
!653 = !{i64 2156877403}
!654 = !{i64 2156877795}
!655 = !{i64 2156878443}
!656 = !{i64 2156879337}
!657 = !{i64 2156880340}
!658 = !{i64 2156880732}
!659 = !{i64 2156881380}
!660 = !{i64 2156882274}
!661 = !{i64 2156849565}
!662 = !{i64 2156850149}
!663 = !{i64 2156853127}
!664 = !{i64 2156853550}
!665 = !{i64 2156363512}
!666 = !{i64 2156364225}
!667 = !{i64 2156365194}
!668 = !{i64 2156366088}
!669 = !{i64 2156367060}
!670 = !{i64 2156367527}
!671 = !{i64 2156368250}
!672 = !{i64 2156369144}
!673 = !{i64 2156369741}
!674 = !{i64 2156370071}
!675 = !{i64 2156371738}
!676 = !{i64 2156372110}
!677 = !{i64 2156374653}
!678 = !{i64 2156375052}
!679 = !{i64 2156376499}
!680 = !{i64 2156377730}
!681 = !{i64 2156378213}
!682 = !{i64 2156379152}
!683 = !{i64 2156379803}
!684 = !{i64 2156380788}
!685 = !{i64 2156381132}
!686 = !{i64 2156381732}
!687 = !{i64 2156382626}
!688 = !{i64 2156382983}
!689 = !{i64 2156383564}
!690 = !{i64 2156387152}
!691 = !{i64 2156387541}
!692 = !{i64 2156388186}
!693 = !{i64 2156389080}
!694 = !{i64 2156390585}
!695 = !{i64 2156390987}
!696 = !{i64 2156393549}
!697 = !{i64 2156393936}
!698 = !{i64 2156395911}
!699 = !{i64 2156396236}
!700 = !{i64 2156399060}
!701 = !{i64 2156400584}
!702 = !{i64 2156401067}
!703 = !{i64 2156402006}
!704 = !{i64 2156402657}
!705 = !{i64 2156403655}
!706 = !{i64 2156403999}
!707 = !{i64 2156404599}
!708 = !{i64 2156405493}
!709 = !{i64 2156405850}
!710 = !{i64 2156905112}
!711 = !{i64 2156906381}
!712 = !{i64 2156906837}
!713 = !{i64 2156907733}
!714 = !{i64 2156908360}
!715 = !{i64 2156910126}
!716 = !{i64 2156910621}
!717 = !{i64 2156911588}
!718 = !{i64 2156912263}
!719 = !{i64 2156913393}
!720 = !{i64 2156913899}
!721 = !{i64 2156914665}
!722 = !{i64 2156915587}
!723 = !{i64 2156916644}
!724 = !{i64 2156917139}
!725 = !{i64 2156918106}
!726 = !{i64 2156918781}
!727 = !{i64 2156919839}
!728 = !{i64 2156920334}
!729 = !{i64 2156921301}
!730 = !{i64 2156921976}
!731 = !{i64 2156930156}
!732 = !{i64 2156931253}
!733 = !{i64 2156931731}
!734 = !{i64 2156891456}
!735 = !{i64 2156891963}
!736 = !{i64 2156892958}
!737 = !{i64 2156893657}
!738 = !{i64 2156894847}
!739 = !{i64 2156895389}
!740 = !{i64 2156896195}
!741 = !{i64 2156897145}
!742 = !{i64 2156898246}
!743 = !{i64 2156898753}
!744 = !{i64 2156899748}
!745 = !{i64 2156900447}
!746 = !{i64 2156901555}
!747 = !{i64 2156902062}
!748 = !{i64 2156903057}
!749 = !{i64 2156903756}
!750 = !{i64 2156922561}
!751 = !{i64 2156926976}
!752 = !{i64 2156563730}
!753 = !{i64 2156564237}
!754 = !{i64 2156565232}
!755 = !{i64 2156565931}
!756 = !{i64 2156567097}
!757 = !{i64 2156567603}
!758 = !{i64 2156568373}
!759 = !{i64 2156569323}
!760 = !{i64 2156570424}
!761 = !{i64 2156570931}
!762 = !{i64 2156571926}
!763 = !{i64 2156572625}
!764 = !{i64 2156573729}
!765 = !{i64 2156574236}
!766 = !{i64 2156575231}
!767 = !{i64 2156575930}
!768 = !{i64 2156577498}
!769 = !{i64 2156578005}
!770 = !{i64 2156579000}
!771 = !{i64 2156579699}
!772 = !{i64 2156580765}
!773 = !{i64 2156581139}
!774 = !{i64 2156581777}
!775 = !{i64 2156582727}
!776 = !{i64 2156583936}
!777 = !{i64 2156584487}
!778 = !{i64 2156585302}
!779 = !{i64 2156586252}
!780 = !{i64 2156587353}
!781 = !{i64 2156587860}
!782 = !{i64 2156588855}
!783 = !{i64 2156589554}
!784 = !{i64 2156591149}
!785 = !{i64 2156591656}
!786 = !{i64 2156592651}
!787 = !{i64 2156593350}
!788 = !{i64 2156594416}
!789 = !{i64 2156594790}
!790 = !{i64 2156595428}
!791 = !{i64 2156596378}
!792 = !{i64 2156597587}
!793 = !{i64 2156598138}
!794 = !{i64 2156598953}
!795 = !{i64 2156599903}
!796 = !{i64 2156601004}
!797 = !{i64 2156601511}
!798 = !{i64 2156602506}
!799 = !{i64 2156603205}
!800 = !{i64 2156604786}
!801 = !{i64 2156605293}
!802 = !{i64 2156606288}
!803 = !{i64 2156606987}
!804 = !{i64 2156608053}
!805 = !{i64 2156608427}
!806 = !{i64 2156609065}
!807 = !{i64 2156610015}
!808 = !{i64 2156611224}
!809 = !{i64 2156611775}
!810 = !{i64 2156612590}
!811 = !{i64 2156613540}
!812 = !{i64 2156614641}
!813 = !{i64 2156615148}
!814 = !{i64 2156616143}
!815 = !{i64 2156616842}
!816 = !{i64 2156653251}
!817 = !{i64 2156653758}
!818 = !{i64 2156654753}
!819 = !{i64 2156655452}
!820 = !{i64 2156656618}
!821 = !{i64 2156657124}
!822 = !{i64 2156657894}
!823 = !{i64 2156658844}
!824 = !{i64 2156659945}
!825 = !{i64 2156660452}
!826 = !{i64 2156661447}
!827 = !{i64 2156662146}
!828 = !{i64 2156663250}
!829 = !{i64 2156663757}
!830 = !{i64 2156664752}
!831 = !{i64 2156665451}
!832 = !{i64 2156666448}
!833 = !{i64 2156666931}
!834 = !{i64 2156667870}
!835 = !{i64 2156668521}
!836 = !{i64 2156674938}
!837 = !{i64 2156675445}
!838 = !{i64 2156676440}
!839 = !{i64 2156677139}
!840 = !{i64 2156678205}
!841 = !{i64 2156678579}
!842 = !{i64 2156679217}
!843 = !{i64 2156680167}
!844 = !{i64 2156681376}
!845 = !{i64 2156681927}
!846 = !{i64 2156682742}
!847 = !{i64 2156683692}
!848 = !{i64 2156684793}
!849 = !{i64 2156685300}
!850 = !{i64 2156686295}
!851 = !{i64 2156686994}
!852 = !{i64 2156687966}
!853 = !{i64 2156688310}
!854 = !{i64 2156688910}
!855 = !{i64 2156689804}
!856 = !{i64 2156416836}
!857 = !{i64 2156409148}
!858 = !{i64 2156409738}
!859 = !{i64 2156410086}
!860 = !{i64 2156411426}
!861 = !{i64 2156426456}
